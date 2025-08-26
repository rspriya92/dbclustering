function [range,cn,on]=normal(data,str)

row=size(data,1)
col=size(data,2)
for i=1:col
    max1(i)=max(data(:,i))
end
points(1,1)=1
for i=1:row
    for j=1:col
        points(i,j)=data(i,j)/max1(j);
    end
end
data
points
for i=1:row
    for j=1:row
        dist(i,j)=0;
        for k=1:col
        dist(i,j)=dist(i,j)+abs(points(i,k)-points(j,k));
        end
    end
end
dist
r=0.25;
mp=2;
n=size(dist,1);
visited(1)=0;
for i=1:n
   visited(i)=0;
   assig(i)=0;
   noise(i)=0;
end
for i=1:n
    c1(i)=0;
end
cluster(1,1)=1;

cc=0;

for i=1:n 
    if(assig(i)==0)
    visited(i)=1;
    cindex(1)=1;
    [np,cindex]=region(dist,i,n,r);
    
    
    if(size(np,2)<mp)
        noise(i)=1;
    else
        noise(i)=0;
        cc=cc+1;
       [cluster,assig]=expand(i,np,cc,cluster,n,r,mp,dist,cindex,visited,assig);
       
       
    end
    end
end
elec ={'Fp1','F7','F3','FT7','FC3','T3','C3','TP7','CP3','T5','P3','O1','Fz','FCz','Cz','CPz','Pz','Oz','Fp2','F4','F8','FC4','FT8','C4','T4','CP4','TP8','P4','T6','O2'};
cc=1;
outlier(1)=0;
on(1)={'no'};
fprintf('\n outlier points:');
for i=1:n
    if(noise(i)==1)
        fprintf(' %d ',i);
        outlier(cc)=i;
        on(cc)=elec(i);
        cc=cc+1;
    end
end
if (cc==0)
    fprintf('no');
    outlier(1)='no';
    on(1)={'no'};
end


for i=1:n
    c(i)=1;
end
fprintf('\n clusters');
for i=1:size(cluster,1)
   fprintf('\n cluster %d:',i);
    for j=1:size(cluster,2)
        if(cluster(i,j)>0)
       fprintf(' %d ',cluster(i,j));
        cn(i,j)=elec(cluster(i,j));
        c(cluster(i,j))=i;
    end
end
end

for i=1:size(cluster,1)
   min=points(cluster(i,1),1);
   maxv=points(cluster(i,1),1);
   for j=1:size(cluster,2)
       if(cluster(i,j)>0)
         ccval(j)=points(cluster(i,j),1);
         if((ccval(j)<=min)&&(ccval(j)>0))
             min=ccval(j);
         end
         if((ccval(j)>=maxv)&&(ccval(j)>0))
             maxv=ccval(j);
         end
       end
   end
   
   range(i,1)=min;
   range(i,2)=maxv ;  
   
end
figure,
cn
axis([0 0.7 1 30])
for i=1:n
b=c(i);
scatter(points(i,1),i,10,b,'filled')
text(points(i,1),i+0.1,elec(i),'VerticalAlignment','bottom', ...
                             'HorizontalAlignment','right')
hold on;
end
title(str)
hold off;
 end

    


function  [c,cindex]=region(dist,i,n,r)
        count=1;
        c(1)=i;
        cindex(1)=1;
    for j=1:n
        
        if((i~=j)&&(dist(i,j)<=r))
            count=count+1;
            c(count)=j;
            cindex(count)=j;
            
            
        end
    end
 end
function [cluster,assig]=expand(i,np,cc,cluster,n,r,mp,dist,cindex,visited,assig)
   
   
   if(assig(i)==0)
   temp=1;
   cluster(cc,temp)=i;
   
   assig(i)=1;
  
   snp=size(np,2);
   
    j=1;
    while(j<=snp)
        
     
     if(cindex(j)~=i)
     if(visited(cindex(j))==0)
         visited(cindex(j))=1;
         [np2,cind]=region(dist,cindex(j),n,r);
         if(size(np2,2)>=mp)
                
                for k=1:size(np2,2)
                    count=0;
                    for k1=1:snp
                    if(np2(k)~=np(k1))
                        count=count+1;
                    end
                    end
                    if(count==snp)
                        snp=snp+1;
                        np(snp)=np2(k);
                        cindex(snp)=cind(k);
                    end
                end
                
                
                
         end
     
           
      if(assig(cindex(j))==0)
         temp=temp+1;
         cluster(cc,temp)=cindex(j);
         assig(cindex(j))=1;
      end
    
     end
     
     
     end
     j=j+1;
    end
   end
   
end





        
        
 
    

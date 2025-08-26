clc
clear
P1Cog=xlsread('Dynamic SNA Results\sub1\P1CogAdoVdoMISNA.xlsx','SNA RESULTS','A2:E31');
P1Eop=xlsread('Dynamic SNA Results\sub1\P1EOPMISNA.xlsx','SNA RESULTS','A2:E31');


[range,cluster,outlier]=normal(P1Cog,'P1Cog');
s={'outlier','clusters in row wise','range(min,max)'};
xlswrite('Dynamic SNA Results\sub1\P1CogAdoVdoMISNA.xlsx',s(1),'Sheet4','A1')
xlswrite('Dynamic SNA Results\sub1\P1CogAdoVdoMISNA.xlsx',outlier,'Sheet4','A2')
xlswrite('Dynamic SNA Results\sub1\P1CogAdoVdoMISNA.xlsx',s(2),'Sheet4','A3')
xlswrite('Dynamic SNA Results\sub1\P1CogAdoVdoMISNA.xlsx',cluster,'Sheet4','A4')
xlswrite('Dynamic SNA Results\sub1\P1CogAdoVdoMISNA.xlsx',s(3),'Sheet5','A1')
xlswrite('Dynamic SNA Results\sub1\P1CogAdoVdoMISNA.xlsx',range,'Sheet5','A2')

[range,cluster,outlier]=normal(P1Eop,'P1Eop');
xlswrite('Dynamic SNA Results\sub1\P1EOPMISNA.xlsx',s(1),'Sheet4','A1')
xlswrite('Dynamic SNA Results\sub1\P1EOPMISNA.xlsx',outlier,'Sheet4','A2')
xlswrite('Dynamic SNA Results\sub1\P1EOPMISNA.xlsx',s(2),'Sheet4','A3')
xlswrite('Dynamic SNA Results\sub1\P1EOPMISNA.xlsx',cluster,'Sheet4','A4')
xlswrite('Dynamic SNA Results\sub1\P1EOPMISNA.xlsx',s(3),'Sheet5','A1')
xlswrite('Dynamic SNA Results\sub1\P1EOPMISNA.xlsx',range,'Sheet5','A2')

P2Cog=xlsread('Dynamic SNA Results\sub2\P2CogAdoVdoMISNA.xlsx','SNA RESULTS','A2:E31');
P2Eop=xlsread('Dynamic SNA Results\sub2\P2EOPMISNA.xlsx','SNA RESULTS','A2:E31');

[range,cluster,outlier]=normal(P2Cog,'P2Cog');
xlswrite('Dynamic SNA Results\sub2\P2CogAdoVdoMISNA.xlsx',s(1),'Sheet4','A1')
xlswrite('Dynamic SNA Results\sub2\P2CogAdoVdoMISNA.xlsx',outlier,'Sheet4','A2')
xlswrite('Dynamic SNA Results\sub2\P2CogAdoVdoMISNA.xlsx',s(2),'Sheet4','A3')
xlswrite('Dynamic SNA Results\sub2\P2CogAdoVdoMISNA.xlsx',cluster,'Sheet4','A4')
xlswrite('Dynamic SNA Results\sub2\P2CogAdoVdoMISNA.xlsx',s(3),'Sheet5','A1')
xlswrite('Dynamic SNA Results\sub2\P2CogAdoVdoMISNA.xlsx',range,'Sheet5','A2')

[range,cluster,outlier]=normal(P2Eop,'P2Eop');
xlswrite('Dynamic SNA Results\sub2\P2EOPMISNA.xlsx',s(1),'Sheet4','A1')
xlswrite('Dynamic SNA Results\sub2\P2EOPMISNA.xlsx',outlier,'Sheet4','A2')
xlswrite('Dynamic SNA Results\sub2\P2EOPMISNA.xlsx',s(2),'Sheet4','A3')
xlswrite('Dynamic SNA Results\sub2\P2EOPMISNA.xlsx',cluster,'Sheet4','A4')
xlswrite('Dynamic SNA Results\sub2\P2EOPMISNA.xlsx',s(3),'Sheet5','A1')
xlswrite('Dynamic SNA Results\sub2\P2EOPMISNA.xlsx',range,'Sheet5','A2')

P3Cog=xlsread('Dynamic SNA Results\sub3\P3CogAdoVdoMISNA.xlsx','SNA RESULTS','A2:E31');
P3Eop=xlsread('Dynamic SNA Results\sub3\P3EOPMISNA.xlsx','SNA RESULTS','A2:E31');

[range,cluster,outlier]=normal(P3Cog,'P3Cog');

xlswrite('Dynamic SNA Results\sub3\P3CogAdoVdoMISNA.xlsx',s(1),'Sheet4','A1')
xlswrite('Dynamic SNA Results\sub3\P3CogAdoVdoMISNA.xlsx',outlier,'Sheet4','A2')
xlswrite('Dynamic SNA Results\sub3\P3CogAdoVdoMISNA.xlsx',s(2),'Sheet4','A3')
xlswrite('Dynamic SNA Results\sub3\P3CogAdoVdoMISNA.xlsx',cluster,'Sheet4','A4')
xlswrite('Dynamic SNA Results\sub3\P3CogAdoVdoMISNA.xlsx',s(3),'Sheet5','A1')
xlswrite('Dynamic SNA Results\sub3\P3CogAdoVdoMISNA.xlsx',range,'Sheet5','A2')

[range,cluster,outlier]=normal(P3Eop,'P3Eop');
xlswrite('Dynamic SNA Results\sub3\P3EOPMISNA.xlsx',s(1),'Sheet4','A1')
xlswrite('Dynamic SNA Results\sub3\P3EOPMISNA.xlsx',outlier,'Sheet4','A2')
xlswrite('Dynamic SNA Results\sub3\P3EOPMISNA.xlsx',s(2),'Sheet4','A3')
xlswrite('Dynamic SNA Results\sub3\P3EOPMISNA.xlsx',cluster,'Sheet4','A4')
xlswrite('Dynamic SNA Results\sub3\P3EOPMISNA.xlsx',s(3),'Sheet5','A1')
xlswrite('Dynamic SNA Results\sub3\P3EOPMISNA.xlsx',range,'Sheet5','A2')


P4Cog=xlsread('Dynamic SNA Results\sub4\P4AdoVdoMISNA.xlsx','SNA RESULTS','A2:E31')
P4Eop=xlsread('Dynamic SNA Results\sub4\P4EOPMISNA.xlsx','SNA RESULTS','A2:E31')

[range,cluster,outlier]=normal(P4Cog,'P4Cog');
xlswrite('Dynamic SNA Results\sub4\P4AdoVdoMISNA.xlsx',s(1),'Sheet4','A1')
xlswrite('Dynamic SNA Results\sub4\P4AdoVdoMISNA.xlsx',outlier,'Sheet4','A2')
xlswrite('Dynamic SNA Results\sub4\P4AdoVdoMISNA.xlsx',s(2),'Sheet4','A3')
xlswrite('Dynamic SNA Results\sub4\P4AdoVdoMISNA.xlsx',cluster,'Sheet4','A4')
xlswrite('Dynamic SNA Results\sub4\P4AdoVdoMISNA.xlsx',s(3),'Sheet5','A1')
xlswrite('Dynamic SNA Results\sub4\P4AdoVdoMISNA.xlsx',range,'Sheet5','A2')

[range,cluster,outlier]=normal(P4Eop,'P4Eop');
xlswrite('Dynamic SNA Results\sub4\P4EOPMISNA.xlsx',s(1),'Sheet4','A1')
xlswrite('Dynamic SNA Results\sub4\P4EOPMISNA.xlsx',outlier,'Sheet4','A2')
xlswrite('Dynamic SNA Results\sub4\P4EOPMISNA.xlsx',s(2),'Sheet4','A3')
xlswrite('Dynamic SNA Results\sub4\P4EOPMISNA.xlsx',cluster,'Sheet4','A4')
xlswrite('Dynamic SNA Results\sub4\P4EOPMISNA.xlsx',s(3),'Sheet5','A1')
xlswrite('Dynamic SNA Results\sub4\P4EOPMISNA.xlsx',range,'Sheet5','A2')

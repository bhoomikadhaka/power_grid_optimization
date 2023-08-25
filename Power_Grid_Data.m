clc;clear;closeall;
nVillages = 60;
rng(1,"twister");
% Locations of Villages
x = randi([1,200],1,nVillages);
 y = randi([1,200],1,nVillages);
scatter(x,y,nVillages,"magenta","filled")
xlabel('x in km');
ylabel('y in km');
%  No. of households in each village
HC = randi([200,400],nVillages,1);
% sum(num_houses)

% Electricity requirement of each house in MWh per year
HConsump = 0.3;
RMTCost = randi([200,400],1,nVillages);
 % Plant Installation Cost in each village in lakhs
instl_cost = randi([40000,50000],1,nVillages); 
CF = randi([30,50],1,nVillages);

%Electricity_transport_cost
TC = zeros(nVillages,nVillages);
for i = 1 : nVillages
    for  j = 1: nVillages
            TC(i,j) = (CF(i)+CF(j))*(abs(x(i)-x(j))+abs(y(i)-y(j)));
    end
end


% filename = 'mydata.xlsx';  % Set file name
%  xlswrite(filename,CF);     % Export matrix to Excel file

% energy_req_per_plant = zeros(1,nPlants);


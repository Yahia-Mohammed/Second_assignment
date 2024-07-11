clc
clear
% Define the unit costs from Table (1)
unit_costs = [
    6000 2000 1000; % Product 1
    2000 5000 4000; % Product 2
    4000 3000 2000; % Product 3
    9000 7000 3000  % Product 4
];

% Define the quarterly production volume from Table (2)
production_volume = [
    10 12 13 15; % Product 1
    8 7 6 4;    % Product 2
    12 10 13 9;  % Product 3
    6 4 11 5    % Product 4
];

% Initialize matrices to store quarterly costs
quarterly_costs_material = zeros(4, 4);
quarterly_costs_labor = zeros(4, 4);
quarterly_costs_transportation = zeros(4, 4);

% Calculate quarterly costs
for product = 1:4
    for quarter = 1:4
        quarterly_costs_material(product, quarter) = unit_costs(product, 1) * ...
production_volume(product, quarter);
        quarterly_costs_labor(product, quarter) = unit_costs(product, 2) * ...
production_volume(product, quarter);
        quarterly_costs_transportation(product, quarter) = unit_costs(product, 3) *... 
production_volume(product, quarter);
    end
end

% Calculate total quarterly costs
total_quarterly_costs = quarterly_costs_material + quarterly_costs_labor + ...
quarterly_costs_transportation;

% Calculate total costs for the year for each category
total_cost_material = sum(quarterly_costs_material, 'all');
total_cost_labor = sum(quarterly_costs_labor, 'all');
total_cost_transportation = sum(quarterly_costs_transportation, 'all');

% Calculate total costs for the year
total_annual_cost = total_cost_material + total_cost_labor + total_cost_transportation;

% Display results
disp('Quarterly Costs for Material:');
disp(quarterly_costs_material);

disp('Quarterly Costs for Labor:');
disp(quarterly_costs_labor);

disp('Quarterly Costs for Transportation:');
disp(quarterly_costs_transportation);

disp('Total Quarterly Costs:');
disp(total_quarterly_costs);

disp('Total Annual Cost for Material:');
disp(total_cost_material);

disp('Total Annual Cost for Labor:');
disp(total_cost_labor);

disp('Total Annual Cost for Transportation:');
disp(total_cost_transportation);

disp('Total Annual Cost:');
disp(total_annual_cost);

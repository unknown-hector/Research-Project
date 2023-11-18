%This MATLAB code sets up a simple simulation environment for a Wireless
% Sensor Network (WSN). It generates random coordinates for nodes within a 
% specified area, creates communication links between nodes based on a
% defined communication range, and visualizes both the WSN nodes and 
% communication links. The relevant information is saved in a MAT file 
% (wsn_setup.mat) for later use in simulations. Adjust the parameters 
% such as the number of nodes, area size, and communication range 
% according to your specific requirements.

% Simulation Environment Setup
% Specify the number of nodes in the Wireless Sensor Network (WSN)
numNodes = 50;

% Create random coordinates for the nodes within a specified area
areaWidth = 100; % Adjust the area size as needed
areaHeight = 100;
nodePositions = [randi([1, areaWidth], numNodes, 1), randi([1, areaHeight], numNodes, 1)];

% Plot the WSN nodes
figure;
scatter(nodePositions(:, 1), nodePositions(:, 2), 'filled');
title('Wireless Sensor Network Nodes');
xlabel('X-coordinate');
ylabel('Y-coordinate');
grid on;

% Define communication range for nodes (adjust as needed)
communicationRange = 20;

% Create adjacency matrix based on nodes within communication range
adjacencyMatrix = zeros(numNodes, numNodes);
for i = 1:numNodes
    for j = i+1:numNodes
        distance = norm(nodePositions(i, :) - nodePositions(j, :));
        if distance <= communicationRange
            adjacencyMatrix(i, j) = 1;
            adjacencyMatrix(j, i) = 1;
        end
    end
end

% Visualize the communication links
figure;
gplot(adjacencyMatrix, nodePositions, '-o');
title('Communication Links in Wireless Sensor Network');
xlabel('X-coordinate');
ylabel('Y-coordinate');
grid on;

% Save relevant data for later use in simulations
save('wsn_setup.mat', 'numNodes', 'nodePositions', 'communicationRange', 'adjacencyMatrix');

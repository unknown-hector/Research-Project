% Packet Size Variation

% Load WSN setup data
load('wsn_setup.mat');

% Define a range of packet sizes to be tested
packetSizes = [50, 100, 150, 200]; % Adjust as needed

% Create a cell array to store simulation results for each packet size
simulationResults = cell(length(packetSizes), 1);

% Iterate over different packet sizes
for i = 1:length(packetSizes)
    % Simulate WSN with varying packet size
    currentPacketSize = packetSizes(i);
    
    % Perform simulations using DSR protocol with the specified packet size
    % (You need to implement the simulation function based on your DSR code)
    result = runDSRSimulation(numNodes, nodePositions, communicationRange, currentPacketSize);


    
    % Store simulation results
    simulationResults{i} = result;
end

% Save the results for later analysis
save('packet_size_variation_results.mat', 'packetSizes', 'simulationResults');

% Data Collection and Analysis

% Load experiment results
load('dsr_packet_size_experiments.mat');  % Adjust filename as needed

% Initialize variables for data collection
routingEfficiency = zeros(1, numExperiments);
networkLatency = zeros(1, numExperiments);
energyConsumption = zeros(1, numExperiments);

% Iterate over experiment results
for i = 1:numExperiments
    % Extract relevant metrics from the simulation results
    currentResults = experimentResults{i};
    routingEfficiency(i) = currentResults.routingEfficiency;
    networkLatency(i) = currentResults.networkLatency;
    energyConsumption(i) = currentResults.energyConsumption;
end

% Perform statistical analysis or visualization as needed
% For example, you can generate plots, calculate means, or conduct hypothesis tests.
% This depends on the specific objectives outlined in your research plan.
% Adjust the code based on your analysis requirements.

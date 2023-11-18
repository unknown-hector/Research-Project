% Example usage
node1 = Node(1, [0, 0]);
node2 = Node(2, [1, 1]);

% Display node information
disp(['Node ', num2str(node1.ID), ' Position: ', num2str(node1.position)]);
disp(['Node ', num2str(node2.ID), ' Position: ', num2str(node2.position)]);

% Plot nodes
figure;
hold on;
plot(node1.position(1), node1.position(2), 'ro', 'MarkerSize', 10, 'DisplayName', ['Node ', num2str(node1.ID)]);
plot(node2.position(1), node2.position(2), 'bo', 'MarkerSize', 10, 'DisplayName', ['Node ', num2str(node2.ID)]);
title('Node Positions');
xlabel('X-axis');
ylabel('Y-axis');
legend('show');
grid on;
hold off;

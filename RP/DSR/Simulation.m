% This script sets up the simulation

% Create nodes
node1 = Node(1, [0, 0]);
node2 = Node(2, [1, 1]);
node3 = Node(3, [2, 0]);

nodes = [node1, node2, node3];

% Create DSR protocol instance
dsrProtocol = DSRProtocol(nodes);

% Simulate a route discovery
dsrProtocol.findRoute(1, 3);

% Simulate data transmission
dsrProtocol.sendData(1, 3, 'Hello, Node 3!');

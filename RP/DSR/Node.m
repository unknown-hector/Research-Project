classdef Node
    properties
        ID
        position
    end
    
    methods
        function obj = Node(ID, position)
            if nargin > 0
                obj.ID = ID;
                obj.position = position;
            end
        end
    end
end

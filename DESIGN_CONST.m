classdef DESIGN_CONST
    %DESIGN_CONSTANTS Globally storing all constants
    
    properties (Constant = true)
        T = 1/100e6; % Clock rate
        Td = 1/1e6; % Data rate
        Tsim = 1/9e9; % Simulation rate
        h = 0.5;
        BTd = 0.3;
        B = 0.3 / DESIGN_CONST.Td;
        SIGMA = sqrt(log(2)) * DESIGN_CONST.Td/(2 * pi * DESIGN_CONST.BTd);
    end
    
    methods
        function obj = DESIGN_CONST()
            %DESIGN_CONSTANTS Construct an instance of this class
        end
    end
end


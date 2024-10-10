classdef CLK
    %CLK Clock functions
    
    properties
        value
    end
    
    methods
        function obj = CLK(clk)
            %CLK Construct an instance of this class
            obj.value = clk;
        end
        
        function out = posedge(~, clk)
            %POSEDGE Detects positive edges of the clock
            persistent clk_val
            
            if isempty(clk_val)
                clk_val = 0;
            end
            
            if (clk == 1 && clk_val == 0)
                out = 1;
            else
                out = 0;
            end
            
            clk_val = clk;
        end

    end
end


function out = Tx_data_generator(clk)
%TX_DATA_GENERATOR Generates PRBS at data rate (1/Td) using Bernoulli

persistent output_value output_index clk_val

if isempty(output_index) || (clk - clk_val == 1)
    if isempty(output_index) || output_index == DESIGN_CONST.Td / DESIGN_CONST.T
        output_index = 0;
        output_value = repmat(randi([0 1])*2 - 1, [1 DESIGN_CONST.Td / DESIGN_CONST.T]);
    end
    output_index = output_index + 1;
end
clk_val = clk;

out = output_value(output_index);

end
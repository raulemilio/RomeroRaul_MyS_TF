library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_bit_component is
    Port (
        a_i : in  std_logic;   -- 1-bit input
        b_i : in  std_logic;   -- 1-bit input
        result_o : out std_logic  -- 1-bit output
    );
end;

architecture and_bit_component_arq of and_bit_component is
begin
    process(a_i, b_i)
    begin
        result_o <= a_i and b_i;  -- AND operation
    end process;
end;

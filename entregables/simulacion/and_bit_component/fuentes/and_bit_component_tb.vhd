library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity and_bit_component_tb is
end;

architecture and_bit_component_tb_arq of and_bit_component_tb is

	-- Declaracion de componente
	component and_bit_component is
		port(
        	a_i : in  std_logic;   -- 1-bit input
        	b_i : in  std_logic;   -- 1-bit input
        	result_o : out std_logic  -- 1-bit output
		);
	end component;
	
	-- Declaracion de senales de prueba
	signal a_tb: std_logic := '0';
	signal b_tb: std_logic := '0';
	signal result_o_tb: std_logic;
	
begin

	a_tb <= '1' after 30 ns,'0' after 50 ns;
	b_tb  <= '1' after 20 ns,'0' after 40 ns,'1' after 80 ns;

	DUT: and_bit_component
		port map(
			a_i	 => a_tb, 
			b_i	 => b_tb,
			result_o => result_o_tb
		);
	
end;

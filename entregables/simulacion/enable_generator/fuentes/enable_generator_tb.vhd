library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity enable_generator_tb is
end;

architecture enable_generator_tb_arq of enable_generator_tb is

	-- Declaracion de componente
	component enable_generator is
		port(
            clk_i  : in STD_LOGIC;
            rst_i  : in STD_LOGIC;
            gen_ena_o  : out STD_LOGIC
           );
	end component;
	
	-- Declaracion de senales de prueba
	signal clk_tb: std_logic     := '0';
	signal rst_tb: std_logic     := '0';
	signal gen_ena_o_tb: std_logic;

	
begin

	clk_tb     <= not clk_tb after 1 ns;
	rst_tb     <= '1' after 0 ns,'0' after 10 ns,'1' after 100 ns;

	DUT: enable_generator
		port map(
			clk_i	     => clk_tb, 
			rst_i	     => rst_tb,
			gen_ena_o	 	 => gen_ena_o_tb
		);
	
end;

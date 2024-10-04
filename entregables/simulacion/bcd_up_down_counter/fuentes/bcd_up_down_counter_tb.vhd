library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bcd_up_down_counter_tb is
end;

architecture bcd_up_down_counter_tb_arq of bcd_up_down_counter_tb is

	-- Declaracion de componente
	component bcd_up_down_counter is
		port(
		   clk_i     : in STD_LOGIC;
           rst_i     : in STD_LOGIC;
           ena_i     : in STD_LOGIC;
           up_down_i : in STD_LOGIC;  -- '1' contar hacia arriba, '0' contar hacia abajo
           bcd_o     : out STD_LOGIC_VECTOR (3 downto 0)
           );
	end component;
	
	-- Declaracion de senales de prueba
	signal clk_tb: std_logic     := '0';
	signal rst_tb: std_logic     := '0';
	signal ena_tb: std_logic 	 := '0';
	signal up_down_tb: std_logic := '0';
	signal bcd_o_tb: STD_LOGIC_VECTOR (3 downto 0);
	
begin

	clk_tb     <= not clk_tb after 1 ns;
	rst_tb     <= '1' after 0 ns,'0' after 10 ns,'1' after 100 ns;
	up_down_tb <= '1' after 0 ns,'0' after 50 ns;
	--ena_tb     <= '1' after 11 ns,'0' after 12 ns,'1' after 21 ns,'0' after 22 ns;
	ena_tb     <= not ena_tb after 1 ns;

	DUT: bcd_up_down_counter
		port map(
			clk_i	     => clk_tb, 
			rst_i	     => rst_tb,
			ena_i	 	 => ena_tb,
			up_down_i	 => up_down_tb,
			bcd_o => bcd_o_tb
		);
	
end;

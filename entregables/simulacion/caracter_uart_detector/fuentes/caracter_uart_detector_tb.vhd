library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity caracter_uart_detector_tb is
end;

architecture caracter_uart_detector_arq of caracter_uart_detector_tb is

	component caracter_uart_detector is
		port(
		   clk_i      : in STD_LOGIC;
           rst_i      : in STD_LOGIC;
           rx_data_i  : in STD_LOGIC_VECTOR (7 downto 0); -- Dato recibido por UART (8 bits)
           rx_valid_i : in STD_LOGIC;   -- Señal que indica cuando el dato es válido
           rst_o      : out STD_LOGIC;  -- reset count
           up_down_o  : out STD_LOGIC;  -- 1 asc | 0 desc
           ena_o      : out STD_LOGIC -- salida enable
		);
	end component;

	signal clk_i_tb      : std_logic := '0';
	signal rst_i_tb      : std_logic := '1';
	signal rx_valid_i_tb : STD_LOGIC:= '0' ;   -- Señal que indica cuando el dato es válido
	signal rx_data_i_tb  : STD_LOGIC_VECTOR (7 downto 0):= x"73"; -- Dato recibido por UART (8 bits) valor inicial others
    signal rst_o_tb      : STD_LOGIC;  -- reset count
    signal up_down_o_tb  : STD_LOGIC;  -- 1 asc | 0 desc
    signal ena_o_tb      : STD_LOGIC; -- salida enable
	
begin

	clk_i_tb <= not clk_i_tb after 1 ns;
	rst_i_tb <= '0' after 50 ns;
	rx_valid_i_tb <= '1' after 10 ns,'0' after 90 ns;
	-- caracteres simples
	--rx_data_i_tb <= x"72"; -- r
	--rx_data_i_tb <= x"61"; -- a
	--rx_data_i_tb <= x"64"; -- d
	--rx_data_i_tb <= x"70"; -- p
	--rx_data_i_tb <= x"73"; -- others
	
	-- combinación de caracteres
	rx_data_i_tb <= x"61" after 10 ns, x"64" after 60 ns; 
	
	
	DUT: caracter_uart_detector
		port map(
			clk_i => clk_i_tb,
			rst_i => rst_i_tb,
			rx_valid_i => rx_valid_i_tb,
			rx_data_i => rx_data_i_tb,
			rst_o => rst_o_tb,
			up_down_o => up_down_o_tb,
			ena_o => ena_o_tb
		);
		
end;

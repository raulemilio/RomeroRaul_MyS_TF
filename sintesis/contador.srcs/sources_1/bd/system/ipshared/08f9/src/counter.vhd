-------------------------------------------------------------------------------
--  
--  Copyright (c) 2009 Xilinx Inc.
--
--  Project  : Programmable Wave Generator
--  Module   : uart_led.v
--  Parent   : None
--  Children : uart_rx.v led_ctl.v 
--
--  Description: 
--     Ties the UART receiver to the LED controller
--
--  Parameters:
--     None
--
--  Local Parameters:
--
--  Notes       : 
--
--  Multicycle and False Paths
--    None
--

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity counter is
	port(
		clk_in:	       in std_logic;      				 -- Clock input (from pin)
		rst_in: 	   in std_logic;      				 -- Active HIGH reset (from pin)
		valid_data_in: in std_logic;                     -- Señal que indica dato es válido
		data_in:       in std_logic_vector (7 downto 0); -- Dato recibido
		count_o: 	   out std_logic_vector(3 downto 0)  -- 8 LED outputs
	);
end;

architecture counter_arq of counter is

	component meta_harden is
		port(
			clk_dst: 	in std_logic;	-- Destination clock
			rst_dst: 	in std_logic;	-- Reset - synchronous to destination clock
			signal_src: in std_logic;	-- Asynchronous signal to be synchronized
			signal_dst: out std_logic	-- Synchronized signal
		);
	end component;
	
	component bcd_up_down_counter is
		port(
		   clk_i:     in std_logic;
           rst_i:     in std_logic;
           ena_i:     in std_logic;
           up_down_i: in std_logic;  -- '1' contar hacia arriba, '0' contar hacia abajo
           bcd_o:     out std_logic_vector (3 downto 0)
           );
	end component;
	
	component enable_generator is
		port(
       		 clk_i:     in std_logic;
        	 rst_i:     in std_logic;
        	 gen_ena_o: out std_logic
		);
	end component;

	component caracter_detector is
		port(
		   clk_i:     in std_logic;
           rst_i:     in std_logic;
           data_i:    in std_logic_vector (7 downto 0); -- Dato recibido 
           valid_i:   in std_logic;   -- Señal que indica cuando el dato es válido
           rst_o:     out std_logic;  -- reset count
           up_down_o: out std_logic;  -- 1 asc | 0 desc
           ena_o:     out std_logic   -- salida enable
		);
	end component;

	component and_bit_component is
		port(
        	a_i:      in  std_logic;   -- 1-bit input
        	b_i:      in  std_logic;   -- 1-bit input
        	result_o: out std_logic  -- 1-bit output
			);
	end component;
	
	signal rst_o: std_logic; -- module clock

	-- Señales entre caracter_uart_detector y bcd_up_down_counter
	signal rst_o_s:     std_logic;
	signal up_down_o_s: std_logic;
	
	-- Señal entre caracter_uart_detector y and_bit_component
	signal a_i_s:       std_logic;
	
	-- Señal entre enable_generator y and_bit_component
	signal b_i_s:       std_logic;
	
	-- Señal entre and_bit_component y bcd_up_down_counter
	signal result_o_s:  std_logic;
	
  
begin
	meta_harden_rst_i0: meta_harden
		port map(
			clk_dst 	=> clk_in,
			rst_dst 	=> '0',    		-- No reset on the hardener for reset!
			signal_src 	=> rst_in,
			signal_dst 	=> rst_o 
		);
		
	enable_generator_i0: enable_generator
		port map(
			clk_i     => clk_in,
			rst_i     => rst_o, 
			gen_ena_o => b_i_s
		);

	caracter_detector_i0: caracter_detector
		port map(
			clk_i        => clk_in,
			rst_i        => rst_o, 
			data_i    => data_in,
			valid_i   => valid_data_in,
			rst_o        => rst_o_s,
			up_down_o    => up_down_o_s,
			ena_o        => a_i_s
		);

	bcd_up_down_counter_i0: bcd_up_down_counter
		port map(
			clk_i     => clk_in,
			rst_i     => rst_o_s,
			ena_i     => result_o_s,
			up_down_i => up_down_o_s,
			bcd_o     => count_o
		);

	and_bit_component_i0: and_bit_component
		port map(
			a_i      => a_i_s,
			b_i      => b_i_s,
			result_o => result_o_s
		);

end;

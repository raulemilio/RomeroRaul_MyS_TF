library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity caracter_uart_detector is
    Port ( clk_i      : in STD_LOGIC;
           rst_i      : in STD_LOGIC;
           rx_data_i  : in STD_LOGIC_VECTOR (7 downto 0); -- Dato recibido por UART (8 bits)
           rx_valid_i : in STD_LOGIC;   -- Señal que indica cuando el dato es válido
           rst_o      : out STD_LOGIC;  -- reset count
           up_down_o  : out STD_LOGIC;  -- 1 asc | 0 desc
           ena_o      : out STD_LOGIC); -- salida enable
	end;

architecture caracter_uart_detector_arq of caracter_uart_detector is

begin

    process (clk_i, rst_i)
    begin
        if rst_i = '1' then
            rst_o      <= '0';
            up_down_o  <= '0';
            ena_o      <= '0';
        elsif rising_edge(clk_i) then
            if rx_valid_i = '1' then
                -- Comparar el dato recibido con los caracteres "r", "a", "d", "p"
                case rx_data_i is
                    when x"72" => -- "r" reset
            				rst_o      <= '1';
            				ena_o      <= '0';
            				up_down_o  <= '0';
                    when x"61" => -- "a" ascendente
                        	rst_o      <= '0';
            				ena_o      <= '1';
            				up_down_o  <= '1';
                    when x"64" => -- "d" descendente
                        	rst_o      <= '0';
            				ena_o      <= '1';
            				up_down_o  <= '0';
                    when x"70" => -- "p" pausa
                        	rst_o      <= '0';
            				ena_o      <= '0';  -- pausa por inhabilitación
            				up_down_o  <= '0';
                    when others =>
                        	rst_o      <= '1';
            				up_down_o  <= '0';
            				ena_o      <= '0';
                end case;
            end if;
        end if;
    end process;

end;

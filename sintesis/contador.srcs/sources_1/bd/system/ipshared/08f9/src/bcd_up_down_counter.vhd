library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bcd_up_down_counter is
    Port ( 
   		  clk_i:     in std_logic;
          rst_i:     in std_logic;
          ena_i:     in std_logic;
          up_down_i: in std_logic;  -- '1' contar hacia arriba, '0' contar hacia abajo
          bcd_o:     out std_logic_vector (3 downto 0)
         );
    end;

architecture bcd_up_down_counter_arq of bcd_up_down_counter is

    signal count_s : std_logic_vector(3 downto 0) := "0000";

begin

    process(clk_i, rst_i)
    begin
        if rst_i = '1' then
            count_s <= "0000";  -- Reiniciar el contador a 0
        elsif rising_edge(clk_i) then
            if ena_i = '1' then
                if up_down_i = '1' then
                    if count_s = "1001" then
                        count_s <= "0000";  -- Si llega a 9, vuelve a 0
                    else
                        count_s <= count_s + 1;  -- Incrementar el contador
                    end if;
                else
                    if count_s = "0000" then
                        count_s <= "1001";  -- Si llega a 0, vuelve a 9
                    else
                        count_s <= count_s - 1;  -- Decrementar el contador
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    bcd_o <= count_s;
    
end;

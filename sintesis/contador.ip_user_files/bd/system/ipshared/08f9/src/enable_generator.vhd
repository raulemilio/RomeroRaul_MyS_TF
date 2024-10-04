library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity enable_generator is
    Port (
          clk_i:     in std_logic;
          rst_i:     in std_logic;
          gen_ena_o: out std_logic
    	);
end ;

architecture enable_generator_arq of enable_generator is

    --signal count_s : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal count_s : std_logic_vector(26 downto 0) := "000000000000000000000000000"; --0 125E6
    
begin

    process(clk_i, rst_i)
    begin
        if rst_i = '1' then
            count_s <= "000000000000000000000000000";
            gen_ena_o <= '0';
        elsif rising_edge(clk_i) then
            if count_s = 125E6 then  -- cuenta hasta "11101110011010110010100000"; 125000000
                count_s <= "000000000000000000000000000";
                gen_ena_o  <= '1';         -- Habilitación cuando el contador llega a 9
            else
                count_s <= count_s + 1;
                gen_ena_o  <= '0';
            end if;
        end if;
    end process;

end;

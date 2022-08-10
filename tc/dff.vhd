library ieee;
use ieee.std_logic_1164.all;

entity dff is
port ( d : in std_logic;
    en : in std_logic;
    rst : in std_logic;
    clk : in std_logic;
    q : out std_logic );
end entity dff;

architecture arch_dff of dff is 
    signal data : std_logic;
begin
    process (d, en, rst, clk) --시그널이 변경되는 순간(엣지 상태가 되면)--
    begin
        if ( rst = '1') then
            data <= '0';
        elsif ( en = '1' and clk='0' and clk'event) then
            data <= d;
        end if;
    end process;

    q <= data;
end architecture arch_dff;
library ieee;
use ieee.std_logic_1164.all;
-- use work.entity.all;

entity fa_tb is
end entity fa_tb;

architecture arch_fa_tb of fa_tb is
    signal cin_s		            :		std_logic;
    signal a15_s,a14_s,a13_s,a12_s	:		std_logic;
    signal a11_s,a10_s,a9_s,a8_s	:		std_logic;
    signal a7_s,a6_s,a5_s,a4_s	    :		std_logic;
    signal a3_s,a2_s,a1_s,a0_s	    :		std_logic;
    signal b15_s,b14_s,b13_s,b12_s	:		std_logic;
    signal b11_s,b10_s,b9_s,b8_s	:		std_logic;
    signal b7_s,b6_s,b5_s,b4_s	    :		std_logic;
    signal b3_s,b2_s,b1_s,b0_s	    :		std_logic;	
    signal s15_s,s14_s,s13_s,s12_s	:		std_logic;
    signal s11_s,s10_s,s9_s,s8_s	:		std_logic;
    signal s7_s,s6_s,s5_s,s4_s	    :		std_logic;
    signal s3_s,s2_s,s1_s,s0_s	    :		std_logic;	
    signal cout_s		            :		std_logic;

component fa16 is 
    port ( cin		        :	in	std_logic;
          a15,a14,a13,a12	:	in	std_logic;
          a11,a10,a9,a8	    :	in	std_logic;
          a7,a6,a5,a4	    :	in	std_logic;
          a3,a2,a1,a0	    :	in	std_logic;
          b15,b14,b13,b12	:	in	std_logic;
          b11,b10,b9,b8	    :	in	std_logic;
          b7,b6,b5,b4	    :	in	std_logic;
          b3,b2,b1,b0	    :	in	std_logic;	
          s15,s14,s13,s12	:	out	std_logic;
          s11,s10,s9,s8	    :	out	std_logic;
          s7,s6,s5,s4	    :	out	std_logic;
          s3,s2,s1,s0	    :	out	std_logic;	
          cout		        :	out	std_logic
    );	
end component fa16;

begin
    map0 : fa16 port map(cin_s, 
    a15_s,a14_s,a13_s,a12_s,
    a11_s,a10_s,a9_s,a8_s,
    a7_s,a6_s,a5_s,a4_s, 
    a3_s,a2_s,a1_s,a0_s,	    
    b15_s,b14_s,b13_s,b12_s,	
    b11_s,b10_s,b9_s,b8_s,	
    b7_s,b6_s,b5_s,b4_s,	    
    b3_s,b2_s,b1_s,b0_s,	    	
    s15_s,s14_s,s13_s,s12_s,	
    s11_s,s10_s,s9_s,s8_s,	
    s7_s,s6_s,s5_s,s4_s,	    
    s3_s,s2_s,s1_s,s0_s,	    	
    cout_s);

    input_b : process
    begin 
    cin_s   <=  '0';

    a15_s   <=  '1';
    b15_s   <=  '0';
    a14_s   <=  '1';
    b14_s   <=  '1';
    a13_s   <=  '0';
    b13_s   <=  '0';
    a12_s   <=  '0';
    b12_s   <=  '1';
    a11_s   <=  '1';
    b11_s   <=  '0';
    a10_s   <=  '1';
    b10_s   <=  '1';
    a9_s    <=  '0';
    b9_s    <=  '0';
    a8_s    <=  '0';
    b8_s    <=  '1';
    a7_s    <=  '1';
    b7_s    <=  '0';
    a6_s    <=  '1';
    b6_s    <=  '1';
    a5_s    <=  '0';
    b5_s    <=  '0';
    a4_s    <=  '0';
    b4_s    <=  '1';
    a3_s    <=  '1';
    b3_s    <=  '0';
    a2_s    <=  '1';
    b2_s    <=  '1';
    a1_s    <=  '0';
    b1_s    <=  '0';
    a0_s    <=  '0';
    b0_s    <=  '1';
    wait for 10 ns;

    a15_s   <=  '1';
    b15_s   <=  '1';
    a14_s   <=  '1';
    b14_s   <=  '1';
    a13_s   <=  '1';
    b13_s   <=  '1';
    a12_s   <=  '0';
    b12_s   <=  '0';
    a11_s   <=  '0';
    b11_s   <=  '0';
    a10_s   <=  '1';
    b10_s   <=  '0';
    a9_s    <=  '1';
    b9_s    <=  '1';
    a8_s    <=  '0';
    b8_s    <=  '1';
    a7_s    <=  '1';
    b7_s    <=  '1';
    a6_s    <=  '1';
    b6_s    <=  '0';
    a5_s    <=  '1';
    b5_s    <=  '0';
    a4_s    <=  '0';
    b4_s    <=  '0';
    a3_s    <=  '1';
    b3_s    <=  '1';
    a2_s    <=  '0';
    b2_s    <=  '0';
    a1_s    <=  '1';
    b1_s    <=  '1';
    a0_s    <=  '1';
    b0_s    <=  '0';
    wait for 10 ns;

    a15_s   <=  '0';
    b15_s   <=  '0';
    a14_s   <=  '1';
    b14_s   <=  '1';
    a13_s   <=  '1';
    b13_s   <=  '0';
    a12_s   <=  '1';
    b12_s   <=  '1';
    a11_s   <=  '1';
    b11_s   <=  '0';
    a10_s   <=  '0';
    b10_s   <=  '0';
    a9_s    <=  '0';
    b9_s    <=  '0';
    a8_s    <=  '1';
    b8_s    <=  '1';
    a7_s    <=  '0';
    b7_s    <=  '1';
    a6_s    <=  '0';
    b6_s    <=  '0';
    a5_s    <=  '0';
    b5_s    <=  '1';
    a4_s    <=  '1';
    b4_s    <=  '1';
    a3_s    <=  '1';
    b3_s    <=  '0';
    a2_s    <=  '1';
    b2_s    <=  '1';
    a1_s    <=  '1';
    b1_s    <=  '0';
    a0_s    <=  '1';
    b0_s    <=  '0';
    wait for 10 ns;

    a15_s   <=  '1';
    b15_s   <=  '1';
    a14_s   <=  '0';
    b14_s   <=  '1';
    a13_s   <=  '0';
    b13_s   <=  '0';
    a12_s   <=  '0';
    b12_s   <=  '0';
    a11_s   <=  '0';
    b11_s   <=  '0';
    a10_s   <=  '0';
    b10_s   <=  '1';
    a9_s    <=  '1';
    b9_s    <=  '1';
    a8_s    <=  '1';
    b8_s    <=  '1';
    a7_s    <=  '1';
    b7_s    <=  '1';
    a6_s    <=  '1';
    b6_s    <=  '0';
    a5_s    <=  '1';
    b5_s    <=  '1';
    a4_s    <=  '1';
    b4_s    <=  '0';
    a3_s    <=  '1';
    b3_s    <=  '1';
    a2_s    <=  '0';
    b2_s    <=  '1';
    a1_s    <=  '1';
    b1_s    <=  '1';
    a0_s    <=  '1';
    b0_s    <=  '1';
    wait for 10 ns;

    a15_s   <=  '1';
    b15_s   <=  '1';
    a14_s   <=  '1';
    b14_s   <=  '1';
    a13_s   <=  '1';
    b13_s   <=  '1';
    a12_s   <=  '1';
    b12_s   <=  '1';
    a11_s   <=  '1';
    b11_s   <=  '1';
    a10_s   <=  '1';
    b10_s   <=  '1';
    a9_s    <=  '1';
    b9_s    <=  '1';
    a8_s    <=  '1';
    b8_s    <=  '1';
    a7_s    <=  '1';
    b7_s    <=  '1';
    a6_s    <=  '1';
    b6_s    <=  '1';
    a5_s    <=  '1';
    b5_s    <=  '1';
    a4_s    <=  '1';
    b4_s    <=  '1';
    a3_s    <=  '1';
    b3_s    <=  '1';
    a2_s    <=  '1';
    b2_s    <=  '1';
    a1_s    <=  '1';
    b1_s    <=  '1';
    a0_s    <=  '1';
    b0_s    <=  '1';
    wait for 10 ns;
    
    
    end process;


end architecture arch_fa_tb;

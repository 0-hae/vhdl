library ieee;
use ieee.std_logic_1164.all;
-- use work.entity.all;

entity fa16 is
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
end fa16;


architecture arch_fa16 of fa16 is
	signal c1, c2, c3, c4	    :		std_logic;
	signal c5, c6, c7, c8	    :		std_logic;
	signal c9, c10, c11, c12	:		std_logic;
	signal c13, c14, c15		:		std_logic;
    
    component fa is 
    port( cin, a, b :in std_logic;
            s, cout :out std_logic);
    end component fa;

begin
	stage0: fa port map (cin, a0, b0, s0, c1);
	stage1: fa port map (c1, a1, b1, s1, c2);
	stage2: fa port map (c2, a2, b2, s2, c3);
	stage3: fa port map (c3, a3, b3, s3, c4);
	stage4: fa port map (c4, a4, b4, s4, c5);
	stage5: fa port map (c5, a5, b5, s5, c6);
	stage6: fa port map (c6, a6, b6, s6, c7);
	stage7: fa port map (c7, a7, b7, s7, c8);
	stage8: fa port map (c8, a8, b8, s8, c9);
	stage9: fa port map (c9, a9, b9, s9, c10);
	stage10: fa port map (c10, a10, b10, s10, c11);
	stage11: fa port map (c11, a11, b11, s11, c12);
	stage12: fa port map (c12, a12, b12, s12, c13);
	stage13: fa port map (c13, a13, b13, s13, c14);
	stage14: fa port map (c14, a14, b14, s14, c15);
	stage15: fa port map (c15, a15, b15, s15, cout);
end architecture arch_fa16;

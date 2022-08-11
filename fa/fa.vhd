-- Comment is started wit --
-- library : 라이브러리를 불러온다. IP(반도체 지적재산 설계회로)
-- example : altera, xilnx 등 라이브러리 패키지 이름이 존재함.

library ieee;
-- use : 불러온 라이브러리 내의 패키지 묶음을 사용하도록 볼러옴
use ieee.std_logic_1164.all;

entity fa is --해당 module이 사용할 I/O port를 선언gksek.
port(cin, a, b : in std_logic; -- std_logic : 1, 0, x, z, UNKOWN
				s, cout : out std_logic);
end entity fa;

architecture arch_fa of fa is --이 module이 무슨 기능을 할지를 정의하는 역할
signal temp_b : std_logic; --모듈 내부에서만 사용될 경우 시그널로 선언한다.
begin
				temp_b <= b xor cin; --<= :  connect signal stream, 디지털 로직 신호를 연결해줌
				s <= a xor temp_b;
				cout <= (temp_b and a) or (b and cin);
end architecture arch_fa;

----------------------------------------------------------------------------------

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Mux is
    Port (          I0 : in  STD_LOGIC_VECTOR (31 downto 0);
						  I1 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I2 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I3 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I4 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I5 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I6 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I7 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I8 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I9 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I10 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I11 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I12 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I13 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I14 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I15 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I16 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I17 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I18 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I19 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I20 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I21 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I22 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I23 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I24 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I25 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I26 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I27 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I28 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I29 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I30 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I31 : in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC_VECTOR   (4 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux;
architecture Behavioral of Mux is

begin
O       <=I0 WHEN (s="00000") ELSE
			I1  WHEN (s="00001") ELSE
			I2  WHEN (s="00010") ELSE
			I3  WHEN (s="00011") ELSE
			I4  WHEN (s="00100") ELSE
			I5  WHEN (s="00101") ELSE
			I6  WHEN (s="00110") else
			I7  WHEN (s="00111") ELSE
			I8  WHEN (s="01000") else
			I9  WHEN (s="01001") else	
			I10 WHEN (s="01010") else
			I11 WHEN (s="01011") else	
			I12 WHEN (s="01100") ELSE
			I13 WHEN (s="01101") else	
			I14 WHEN (s="01110") ELSE	
			I15 WHEN (s="01111") else	
			I16 WHEN (s="10000") else	
			I17 WHEN (s="10001") ELSE
			I18 WHEN (s="10010") ELSE
			I19 WHEN (s="10011") ELSE
			I20 WHEN (s="10100") ELSE
			I21 WHEN (s="10101") ELSE
			I22 WHEN (s="10110") ELSE
			I23 WHEN (s="10111") ELSE
			I24 WHEN (s="11000") ELSE
			I25 WHEN (s="11001") ELSE
			I26 WHEN (s="11010") ELSE
			I27 WHEN (s="11011") ELSE
			I28 WHEN (s="11100") ELSE
			I29 WHEN (s="11101") ELSE
			I30 WHEN (s="11110") ELSE
			I31 WHEN (s="11111") ELSE
			(others=>'Z');
end Behavioral;



library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MyPackage is

COMPONENT reg IS
GENERIC(n:NATURAL:=32);
PORT (
I: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
CLK, LOD, INC, CLR: IN STD_LOGIC;
O: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
);
END COMPONENT;

component reg32_1 IS
	PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
 end component;

component Reg32_0 IS
	GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;




component Mux is
    Port (  I0 : in  STD_LOGIC_VECTOR (31 downto 0);
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
end component;



component Decoder is
port(enable  : in std_logic ;
input :in std_logic_vector (4 downto 0);
output :out std_logic_vector (31 downto 0)) ;
end component;

end MyPackage;



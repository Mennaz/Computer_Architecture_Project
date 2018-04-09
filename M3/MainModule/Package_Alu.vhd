--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Package_Alu is

component Alu_1_Bit is
  Port (   A : in  STD_LOGIC ;
           B : in  STD_LOGIC ;
       aluop : in  STD_logic_vector(3 downto 0) ;
    carrryin : in  STD_LOGIC;
        less : in  STD_LOGIC;--keda btd5ol 3l al mux al kbeer wal alu s
    carryout : out  STD_LOGIC;
	     stl : out  STD_LOGIC;
      reslut : out  STD_LOGIC );
end component;
end Package_Alu;



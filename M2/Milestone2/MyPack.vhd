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
package MyPack is
component Reg is
GENERIC(n:NATURAL:=32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
end component;
component Alu_1_Bit is
  Port (   A : in  STD_LOGIC ;
           B : in  STD_LOGIC ;
       aluop : in  STD_logic_vector(3 downto 0) ;
    carrryin : in  STD_LOGIC;
	   less  : in  STD_LOGIC;--keda btd5ol 3l al mux al kbeer wal alu s
    carryout : out  STD_LOGIC;
		 stl : out  STD_LOGIC;
      reslut : out  STD_LOGIC );
end component;
--------------------------------------------------------------------
component ALU is
port (
		data1 : in std_logic_vector(31 downto 0); 
		data2 : in std_logic_vector(31 downto 0) ;
		aluop : in std_logic_vector(3 downto 0);
		cin : in std_logic;
		dataout: out std_logic_vector(31 downto 0); 
		cflag: out std_logic;
		zflag: out std_logic;
		oflag: out std_logic
);
end component;
---------------------------------------------------------------------
component RegisterFile is
port(
read_sel1 : in std_logic_vector(4 downto 0); 
read_sel2 : in std_logic_vector(4 downto 0);
write_sel : in std_logic_vector(4 downto 0);
write_ena : in std_logic;
clk: in std_logic;
write_data: in std_logic_vector(31 downto 0);
data1: out std_logic_vector(31 downto 0);
data2: out std_logic_vector(31 downto 0));
end component;
---------------------------------------------------------------------
component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end component ;
---------------------------------------------------------------------
component TranslationlCircuit is
 Port ( Funct  : in  STD_LOGIC_VECTOR (5 downto 0);
        Alu_Op : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
---------------------------------------------------------------------
component Condition is
 Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
        wr : out  STD_LOGIC);
end component;
---------------------------------------------------------------------
component Funct is
Port ( inputFromIM : in  STD_LOGIC_VECTOR (5 downto 0);
       outputToAlu : out STD_LOGIC_VECTOR (3 downto 0));
end component;
---------------------------------------------------------------------
component Shift_PC_Out is
 Port ( pc_in : in  STD_LOGIC_VECTOR (5 downto 0);
      addout : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
end MyPack;


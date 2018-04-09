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
COMPONENT reg IS
GENERIC(n:NATURAL:=32);
PORT (
I: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
CLK, LOD, INC, CLR: IN STD_LOGIC;
O: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
);
END COMPONENT;
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


component AddRight is

 Port ( x : in  STD_LOGIC_VECTOR (31 downto 0);
	         y  : in  STD_LOGIC_VECTOR (31 downto 0);
			  sum : out  STD_LOGIC_VECTOR (31 downto 0));

end component;

component ADD_4_And_PC is
    Port ( x1 : in  STD_LOGIC_VECTOR (31 downto 0);
           sum1 : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ALUControl is
    Port ( F : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOP : in  STD_LOGIC_VECTOR (1 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
component AndFromALUAndControl is
    Port ( Branchbit : in  STD_LOGIC;
	        Zeroflag : in  STD_LOGIC;
           outFromAnd : out  STD_LOGIC);

end component;
component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);

end component;

component ControlUnit is
   Port ( Op : in  STD_LOGIC_VECTOR (5 downto 0);
          RegDst : out STD_LOGIC;
         JUMP : out STD_LOGIC;   
         Branch   : out STD_LOGIC; 
         Branchnot : out STD_LOGIC;
         MemRead : out STD_LOGIC;            
         MemtoReg : out STD_LOGIC;  
         ALUOp  : out STD_LOGIC_VECTOR (1 downto 0); 
         MemWrite : out STD_LOGIC;  
         ALUSrc : out STD_LOGIC;         
         RegWrite : out STD_LOGIC); 
end component;

component MuxForDataMem is
Port ( ResFromDataMem : in STD_LOGIC_VECTOR (31 downto 0);
  		ResFromAlu: in std_logic_vector(31 downto 0);
       FromAlu : in  STD_LOGIC;
		  wdata: out std_logic_vector(31 downto 0));

end component;
component MuxForRegFile is
Port ( rt: in  STD_LOGIC_VECTOR (4 downto 0);
           rd: in  STD_LOGIC_VECTOR (4 downto 0);
			  s : in  STD_LOGIC;
           dec : out STD_LOGIC_VECTOR (4 downto 0));
end component;

component MuxFromAdd is
Port (ResFromAdd1 : in  STD_LOGIC_VECTOR (31 downto 0);
       ResFromAdd2 : in  STD_LOGIC_VECTOR (31 downto 0);
       selector : in  STD_LOGIC;
		 ResToMux: out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Shift2 is
    Port ( In26Bit : in  STD_LOGIC_VECTOR (25 downto 0);
				out28Bit : out  STD_LOGIC_VECTOR (27 downto 0));
end component;


component ShiftToAdd is
Port ( In32Bit : in  STD_LOGIC_VECTOR (31 downto 0);
				out32Bit : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component SignExtention is
    Port ( mem_16_bit : in  STD_LOGIC_VECTOR (15 downto 0);
           mem_32_bit : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


end MyPack;


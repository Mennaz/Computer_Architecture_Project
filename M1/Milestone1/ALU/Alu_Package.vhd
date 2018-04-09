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
package Alu_Package is
component AndGate is
port (   a : in STD_LOGIC;
			b : in STD_LOGIC;
			x : out STD_LOGIC);
end component;
----------------------------------------------------
component  OrGate is
port (   a : in STD_LOGIC;
			b : in STD_LOGIC;
			x : out STD_LOGIC);
end component;
----------------------------------------------------
component NotGate is
 Port ( a : in  STD_LOGIC;
        b : out  STD_LOGIC);
end component;
----------------------------------------------------
component Full_Adder_1_Bit is
 Port  ( x : in  STD_LOGIC;
	      y : in  STD_LOGIC;
	  input : in  STD_LOGIC;
       sum : out  STD_LOGIC;
	 output : out  STD_LOGIC);
end component;
----------------------------------------------------
component Mux_ALUOperation_Selector is
Port    ( andd : in  STD_LOGIC;
           oor : in  STD_LOGIC;
           add : in  STD_LOGIC;
           less: in  STD_LOGIC;
           muxoutput : out  STD_LOGIC;
			  aluop1 : in  STD_LOGIC_VECTOR (1 downto 0));
end component;
----------------------------------------------------
--component Mux_Alu is
--Port (     and_in : in  STD_LOGIC;
         --   or_in : in  STD_LOGIC;
            --  add : in  STD_LOGIC;
      -- unused_pin : in  STD_LOGIC;
      -- mux_output : out  STD_LOGIC;
        --   alu_op : in  STD_LOGIC_VECTOR (1 downto 0));
			--  end component ;		  
----------------------------------------------------			  
component Mux_2_1 is
 Port ( input1 : in  STD_LOGIC;
        input2: in  STD_LOGIC;
        input2_inverted: in  STD_LOGIC;
       output : out  STD_LOGIC);
end component;
end Alu_Package;






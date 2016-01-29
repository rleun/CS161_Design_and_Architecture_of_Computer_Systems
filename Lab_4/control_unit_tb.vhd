--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:02:14 02/13/2015
-- Design Name:   
-- Module Name:   /home/csmajs/rleun005/Desktop/Lab4/control_unit_tb.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: control_unit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.cpu_constant_library.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY control_unit_tb IS
END control_unit_tb;
 
ARCHITECTURE behavior OF control_unit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control_unit
    PORT(
         instr_op : IN  std_logic_vector(5 downto 0);
         reg_dst : OUT  std_logic;
         branch : OUT  std_logic;
         mem_read : OUT  std_logic;
         mem_to_reg : OUT  std_logic;
         alu_op : OUT  std_logic_vector(1 downto 0);
         mem_write : OUT  std_logic;
         alu_src : OUT  std_logic;
         reg_write : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal instr_op : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal reg_dst : std_logic;
   signal branch : std_logic;
   signal mem_read : std_logic;
   signal mem_to_reg : std_logic;
   signal alu_op : std_logic_vector(1 downto 0);
   signal mem_write : std_logic;
   signal alu_src : std_logic;
   signal reg_write : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_unit PORT MAP (
          instr_op => instr_op,
          reg_dst => reg_dst,
          branch => branch,
          mem_read => mem_read,
          mem_to_reg => mem_to_reg,
          alu_op => alu_op,
          mem_write => mem_write,
          alu_src => alu_src,
          reg_write => reg_write
        );
 
 -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      -- insert stimulus here 
		  -- Test 1
	  report "Test #1: R_TYPE opcode";
	  instr_op <= OPCODE_R_TYPE;
	  wait for 100 ns;
	  
	  assert reg_dst = '1' 											report "Test #1: reg_dst incorrect" 		Severity Warning;
	  assert alu_src = '0'											report "Test #1: alu_src incorrect" 		Severity Warning;
	  assert mem_to_reg = '0'										report "Test #1: mem_to_reg incorrect" 	Severity Warning;
	  assert reg_write = '1'										report "Test #1: reg_write incorrect" 		Severity Warning;
	  assert mem_read = '0' 										report "Test #1: mem_read incorrect" 		Severity Warning;
	  assert mem_write = '0'										report "Test #1: mem_write incorrect" 			Severity Warning;
	  assert branch = '0'										   report "Test #1: branch incorrect" 			Severity Warning;
	  assert alu_op = ALU_AND_R_TYPE								report "Test #1: alu_op incorrect" 			Severity Warning;
	 
	  
	  -- Test 2
	  report "Test #2: LW opcode";			---wat to do for X on map?
	  instr_op <= OPCODE_LOAD_WORD;
	  wait for 100 ns;
	  
	  assert reg_dst = '0' 											report "Test #2: reg_dst incorrect" 		Severity Warning;
	  assert alu_src = '1'											report "Test #2: alu_src incorrect" 		Severity Warning;
	  assert mem_to_reg = '1'										report "Test #2: mem_to_reg incorrect" 	Severity Warning;
	  assert reg_write = '1'										report "Test #2: reg_write incorrect" 		Severity Warning;
	  assert mem_read = '1'											report "Test #2: mem_read incorrect" 		Severity Warning;
	  assert mem_write = '0'										report "Test #2: mem_write incorrect" 			Severity Warning;
	  assert branch = '0'										  	report "Test #2: branch incorrect" 			Severity Warning;
	  assert alu_op = ALU_LW										report "Test #2: alu_op incorrect" 			Severity Warning;
			  
	  -- Test 3
	  report "Test #3: SW opcode";
	  instr_op <= OPCODE_STORE_WORD;
	  wait for 100 ns;
		
	  assert reg_dst = '0' 											report "Test #3: reg_dst incorrect" 		Severity Warning;
	  assert alu_src = '1'											report "Test #3: alu_src incorrect" 		Severity Warning;
	  assert mem_to_reg = '0'										report "Test #3: mem_to_reg incorrect" 	Severity Warning;
	  assert reg_write = '0'										report "Test #3: reg_write incorrect" 		Severity Warning;
	  assert mem_read = '0'											report "Test #3: mem_read incorrect" 		Severity Warning;
	  assert mem_write = '1'										report "Test #3: mem_write incorrect" 			Severity Warning;
	  assert branch = '0'										  	report "Test #3: branch incorrect" 			Severity Warning;
	  assert alu_op = ALU_SW										report "Test #3: alu_op incorrect" 			Severity Warning;
	 
	  
	  -- Test 4
	  report "Test #4: Branch_equals opcode";
	  instr_op <= OPCODE_BEQ;
	  wait for 100 ns;
	  
	  assert reg_dst = '0' 											report "Test #4: reg_dst incorrect" 		Severity Warning;
	  assert alu_src = '0'											report "Test #4: alu_src incorrect" 		Severity Warning;
	  assert mem_to_reg = '0'										report "Test #4: mem_to_reg incorrect" 	Severity Warning;
	  assert reg_write = '0'										report "Test #4: reg_write incorrect" 		Severity Warning;
	  assert mem_read = '0'											report "Test #4: mem_read incorrect" 		Severity Warning;
	  assert mem_write = '0'										report "Test #4: mem_write incorrect" 			Severity Warning;
	  assert branch = '1'										  	report "Test #4: branch incorrect" 			Severity Warning;
	  assert alu_op = ALU_BEQ								report "Test #4: alu_op incorrect" 			Severity Warning;
	 
	  
	  -- Test 5
	  report "Test #5: ADD_I opcode";
	  instr_op <= OPCODE_ADDI;
	  wait for 100 ns;
	  
	  assert reg_dst = '0' 											report "Test #5: reg_dst incorrect" 		Severity Warning;	--is reg_st supposed to = 0?
	  assert alu_src = '1'											report "Test #5: alu_src incorrect" 		Severity Warning;
	  assert mem_to_reg = '0'										report "Test #5: mem_to_reg incorrect" 	Severity Warning;
	  assert reg_write = '1'										report "Test #5: reg_write incorrect" 		Severity Warning;
	  assert mem_read = '0'											report "Test #5: mem_read incorrect" 		Severity Warning;
	  assert mem_write = '0'										report "Test #5: mem_write incorrect" 			Severity Warning;
	  assert branch = '0'									  	   report "Test #5: branch incorrect" 			Severity Warning;
	  assert alu_op = ALU_ADD_I_TYPE									report "Test #5: alu_op incorrect" 			Severity Warning;
	 
   
      wait;
   end process;

END;

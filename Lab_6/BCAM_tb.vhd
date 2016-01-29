--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:51:39 03/01/2015
-- Design Name:   
-- Module Name:   H:/UCR/Winter 15/CS 161/Lab_6/BCAM_tb.vhd
-- Project Name:  Lab_6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CAM_Row
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY BCAM_tb IS
END BCAM_tb;
 
ARCHITECTURE behavior OF BCAM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CAM_Row
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         we : IN  std_logic;
         search_word : IN  std_logic_vector(7 downto 0);
         dont_care_mask : IN  std_logic_vector(7 downto 0);
         row_match : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal we : std_logic := '0';
   signal search_word : std_logic_vector(7 downto 0) := (others => '0');
   signal dont_care_mask : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal row_match : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CAM_Row PORT MAP (
          clk => clk,
          rst => rst,
          we => we,
          search_word => search_word,
          dont_care_mask => dont_care_mask,
          row_match => row_match
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      rst <= '1';
		
		wait for clk_period*2;
		
		rst <= '0';
		
		wait for clk_period*2;
		
		search_word <= "00001111";
		

      -- insert stimulus here 

      wait;
   end process;

END;

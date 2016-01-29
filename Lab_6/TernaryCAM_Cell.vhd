library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity TCAM_Cell is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           we : in  STD_LOGIC;
           cell_search_bit : in  STD_LOGIC;
           cell_dont_care_bit : in  STD_LOGIC;
   	     cell_match_bit_in : in  STD_LOGIC ;
           cell_match_bit_out : out  STD_LOGIC);
end TCAM_Cell;

architecture Behavioral of TCAM_Cell is

signal stored_cell: STD_LOGIC;

begin

	process(clk, rst, we, cell_search_bit, cell_dont_care_bit, cell_match_bit_in, cell_match_bit_out)
	begin
		--If reset, clear store cell
		if(rst = '1') then
			stored_cell <= '0';
			cell_match_bit_out <= '0';
		--If write enabled, store new bit
		elsif(we = '1') then
			stored_cell <= cell_search_bit;
			cell_match_bit_out <= '0';
			dont_care_mask <= cell_dont_care_bit;
		--If previous cell doesn't match, set match_out_bit to 0
		elsif(cell_match_bit_in = '0') then
			cell_match_bit_out <= '0';
		--If cell_match_bit_in = 1 & dont car = 1, set match_out to 1
		elsif(cell_dont_care_bit = '1') then
			cell_match_bit_out <= '1';
		--Else, check stored cell for value
		else 
			if(stored_cell = cell_search_bit) then
				cell_match_bit_out <= '1';
			else
				cell_match_bit_out <= '0';
			end if;
		
		end if;
		
	end process;


end Behavioral ;

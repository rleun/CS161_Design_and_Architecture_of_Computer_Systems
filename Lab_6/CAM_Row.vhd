library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity CAM_Row is
	Generic (CAM_WIDTH : integer := 8) ;
	Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           we : in  STD_LOGIC;
           search_word : in  STD_LOGIC_VECTOR (CAM_WIDTH-1 downto 0);
           dont_care_mask : in  STD_LOGIC_VECTOR (CAM_WIDTH-1 downto 0);
           row_match : out  STD_LOGIC);
end CAM_Row;

architecture Behavioral of CAM_Row is

signal match: STD_LOGIC_VECTOR(CAM_WIDTH downto 0);

--FIX ME
component BCAM_Cell is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           we : in  STD_LOGIC;
           cell_search_bit : in  STD_LOGIC;
           cell_dont_care_bit : in  STD_LOGIC;
	        cell_match_bit_in : in  STD_LOGIC ;
           cell_match_bit_out : out  STD_LOGIC);
end component ;

begin
	--Set msb of match to 1
	match(CAM_WIDTH) <= '1';

	-- Connect the CAM cells here
	GEN_CELLS: 
	for i in CAM_WIDTH-1 downto 0 generate
		cam_cell_unit : BCAM_Cell port map
			(clk => clk,
			 rst => rst,
			 we => we,
			 cell_search_bit => search_word(i),
			 cell_dont_care_bit => dont_care_mask(i),
			 cell_match_bit_in => match(i+1),
			 cell_match_bit_out => match(i) );
	end generate GEN_CELLS;
	
	row_match <= match(0);

end Behavioral;

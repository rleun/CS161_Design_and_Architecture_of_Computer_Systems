library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use STD.textio.all;
use IEEE.std_logic_textio.all;
use work.cpu_component_library.all;
use work.cpu_constant_library.all;

entity cs161_processor is
  port (
    clk            : in std_logic;
    rst            : in std_logic;
    
    -- Debug Signals
    prog_count     : out std_logic_vector(31 downto 0);
    instr_opcode   : out std_logic_vector(5 downto 0);
    reg1_addr      : out std_logic_vector(4 downto 0);
    reg1_data      : out std_logic_vector(31 downto 0);
    reg2_addr      : out std_logic_vector(4 downto 0);
    reg2_data      : out std_logic_vector(31 downto 0);
    write_reg_addr : out std_logic_vector(4 downto 0);
    write_reg_data : out std_logic_vector(31 downto 0)
    );
end cs161_processor;

architecture Behavioral of cs161_processor is

component control_unit
	port(
		instr_op		: in std_logic_vector(5 downto 0);
		reg_dst		: out std_logic;
		branch		: out std_logic;
		mem_read		: out std_logic;
		mem_to_reg	: out std_logic;
		alu_op		: out std_logic_vector(1 downto 0);
		mem_write	: out std_logic;
		alu_src		: out std_logic;
		reg_write	: out std_logic
		);
end component;

component alu_control
	port(
		alu_op		: in std_logic_vector(1 downto 0);
		instruction_5_0	: in std_logic_vector(5 downto 0);
		alu_out		: out std_logic_vector(3 downto 0)
		);
end component;


signal pc_in			: std_logic_vector(31 downto 0);
signal pc_mem			: std_logic_vector(31 downto 0);
signal mux_pc			: std_logic_vector(31 downto 0);
signal instruction	: std_logic_vector(31 downto 0);
signal reg_alu_result : std_logic_vector(31 downto 0);
signal read_data_1	: std_logic_vector(31 downto 0);
signal read_data_2	: std_logic_vector(31 downto 0);
signal mem_read_data	: std_logic_vector(31 downto 0);
signal pc_increment  : std_logic_vector(31 downto 0);
signal mem_mux_out	: std_logic_vector(31 downto 0);
signal select_in_mux : std_logic;

signal reg_dst			: std_logic;
signal branch			: std_logic;
signal mem_read		: std_logic;
signal alu_op			: std_logic_vector(1 downto 0);
signal alu_src			: std_logic;
signal reg_write		: std_logic;
signal mem_to_reg		: std_logic;
signal mem_write		: std_logic;

signal sign_extend_shift : std_logic_vector(31 downto 0);
signal sign_extend	: std_logic_vector(31 downto 0);
signal add_result		: std_logic_vector(31 downto 0);

signal zero_alu		: std_logic;
signal write_reg		: std_logic_vector(4 downto 0);

signal cpu_reg_alu	: std_logic_vector(31 downto 0);
signal alu_out			: std_logic_vector(3 downto 0);

begin


	pc_increment <= pc_mem + 4;
	sign_extend_shift <= "00000000000000" & instruction(15 downto 0) & "00";
	sign_extend <= "0000000000000000" & instruction(15 downto 0);
	select_in_mux <= branch and zero_alu;
	
	
	prog_count <= mux_pc;
	instr_opcode <= instruction(31 downto 26);
	reg1_addr	<= instruction(25 downto 21);
	reg1_data	<= read_data_1;
	reg2_addr	<= instruction(20 downto 16);
	reg2_data	<= read_data_2;
	write_reg_addr	<= write_reg;
	write_reg_data	<= mem_mux_out;
	
	
	I_MEM : memory generic map(
		COE_FILE_NAME => "init.coe"
	)
		port map(
			clk => clk,
			rst => rst,
			instr_read_address => pc_mem(9 downto 2),
			instr_instruction  => instruction,
			data_mem_write		 => mem_write, 
			data_address		 => reg_alu_result(9 downto 2),
			data_write_data    => read_data_2,
			data_read_data		 => mem_read_data
		);
		
	PC : generic_register generic map(
			SIZE => 32
		)
		port map(
			clk => clk,
			rst => rst,
			write_en => '1',
			data_in => mux_pc,
			data_out => pc_mem
		);
		
	
	MEM_MUX : mux_2_1 generic map(
		SIZE => 32
		)
		port map(
			select_in => mem_to_reg,
			data_0_in => reg_alu_result,
			data_1_in => mem_read_data,
			data_out => mem_mux_out
		);
		
	
	PC_MUX  : mux_2_1 generic map(
		SIZE => 32
		)
		port map(
			select_in => select_in_mux,
			data_0_in => pc_increment,
			data_1_in => add_result,
			data_out => mux_pc
		);
		
	REG_MUX  : mux_2_1 generic map(
		SIZE => 5
		)
		port map(
			select_in => reg_dst,
			data_0_in => instruction(20 downto 16),
			data_1_in => instruction(15 downto 11),
			data_out => write_reg
		);
	
	CPU_REG_ALU2	: mux_2_1 generic map(
		size => 32
		)
		port map(
			select_in => alu_src,
			data_0_in => read_data_2,
			data_1_in => sign_extend,
			data_out => cpu_reg_alu
		);
	
	CONTROL : control_unit 
		port map(
			instr_op		=> instruction(31 downto 26),
			reg_dst		=> reg_dst,
			branch		=> branch,
			mem_read		=> mem_read,
			mem_to_reg	=> mem_to_reg,
			alu_op		=> alu_op,
			mem_write	=> mem_write,
			alu_src		=> alu_src,
			reg_write	=>	reg_write
		);
	
	ALU_ADD : alu 
		port map(
			alu_control_in => "0010",
			channel_a_in	=> pc_increment,
			channel_b_in	=> sign_extend_shift,
			zero_out			=> open,
			alu_result_out => add_result
		);
		
	CPU_REG : cpu_registers
		port map(
			clk		=> clk,
			rst		=> rst,
			reg_write => reg_write,
			read_register_1	=> instruction(25 downto 21),
			read_register_2	=> instruction(20 downto 16),
			write_register		=> write_reg,
			write_data			=> mem_mux_out,
			read_data_1			=> read_data_1,
			read_data_2			=> read_data_2
		);
	
	ALU_CTRL : alu_control
		port map(
			alu_op		=> alu_op,
			instruction_5_0	=> instruction(5 downto 0),
			alu_out		=> alu_out
		);
	
	REG_ALU	: alu 
		port map(
			alu_control_in	=> alu_out,
			channel_a_in	=> read_data_1,
			channel_b_in	=> cpu_reg_alu,
			zero_out			=> zero_alu,
			alu_result_out	=> reg_alu_result
		);
		
end Behavioral;


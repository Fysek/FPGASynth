library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity buttons is
	port(
		clk       			: in  std_logic;
		reset     			: in  std_logic;
		button_l 			: in  std_logic;
		button_r 			: in  std_logic;
		out_function       	: out std_logic_vector(3 downto 0)
	);
end entity;

architecture buttons_arch of buttons is

----components-------------
	component prescaler is
		port(
			clk 	: in std_logic;
			reset	: in std_logic;
			ceo 	: out std_logic
			);
	end component;
	
	component debouncer is
		port(
			clk 		: in std_logic;	   -- clk 100...300Hz
			reset 		: in std_logic;	   -- clear	
			cei 		: in std_logic;	   -- clock enable input from prescaler	
			btn_in 		: in std_logic;	   -- pushbutton entry
			btn_out 	: out std_logic    -- debounced output	
			);
	end component;
	
----signals-----------------

	signal s_btn_l : std_logic;
	signal s_btn_r : std_logic;
	signal s_cei : std_logic;
	
begin
----instances---------------
	
	PRESCALER_INST : prescaler
			port map(
				clk    		=> clk 			,
				reset    	=> reset 		,
				ceo			=> s_cei		
			);
			
	BTN_L_DBNC_INST : debouncer
			port map(
				clk 		=> clk 			,
				reset 	 	=> reset 		,
				cei 		=> s_cei		,
				btn_in  	=> button_l     ,
				btn_out		=> s_btn_l		
			);	

	BTN_R_DBNC_INST : debouncer
			port map(
				clk 		=> clk 			,
				reset 	 	=> reset 		,
				cei 		=> s_cei		,
				btn_in  	=> button_r		,
				btn_out		=> s_btn_r
			
			);				
----processes---------------
	process(clk, reset)
		begin
		if reset = '1' then
			out_function <= (others => '0');
		elsif clk'event and clk = '1' then
			if (s_btn_r = '1')
				out_function <= out_function - 1;
			elsif(s_btn_l = '1')
				out_function <= out_function + 1;
			end if;
		end if;
	end process;
end architecture;
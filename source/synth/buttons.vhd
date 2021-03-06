-------------------------------------------------------------------------------
--
-- Title       : buttons
-- Author      : Mateusz Dyrdół
--
-------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;



entity buttons is
	port(
		clk       			: in  std_logic;
		reset     			: in  std_logic;
		button_l 			: in  std_logic;
		button_r 			: in  std_logic;
		out_function      : out std_logic_vector(7 downto 0)
	);
end entity;

architecture buttons_arch of buttons is

----signals-----------------
	signal s_btn_l 	: std_logic;
	signal s_btn_r 	: std_logic;
	signal n_button_l 	: std_logic;
	signal n_button_r 	: std_logic;
	signal cnt      : std_logic_vector( 7 downto 0 );
	
begin
----instances---------------
	
		n_button_l <= not button_l;
		n_button_r <= not button_r;
			
	BTN_L_DBNC_INST : entity work.pb_debouncer
			port map(
				clk     		=> clk		,
				button  		=> n_button_l ,
				debounced_o 	=> s_btn_l
			);	

	BTN_R_DBNC_INST : entity work.pb_debouncer
			port map(
				clk     		=> clk		,
				button  		=> n_button_r ,
				debounced_o 	=> s_btn_r
			);	
			
----processes---------------	
	process(clk, reset)
		begin
		if reset = '0' then
			cnt <= (others => '0');
		elsif clk'event and clk = '1' then
			if (s_btn_l = '1') then
				if(cnt <= x"7") then
					cnt <= cnt + 1;
				end if;
			elsif(s_btn_r = '1') then
				if (cnt >= x"1") then
					cnt <= cnt - 1;
				end if;
			end if;
		end if;
	end process;
	out_function <= cnt;
	
end architecture;
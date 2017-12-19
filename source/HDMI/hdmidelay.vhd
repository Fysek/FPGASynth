library ieee;
use ieee.std_logic_1164.all;

entity hdmi_delay is
	generic(
		G_WIDTH                 : integer := 40;
		G_DEPTH                 : integer := 11
	);
	port (
		I_CLK                   : in  std_logic;
		I_D                     : in  std_logic_vector(G_WIDTH-1 downto 0);
		O_Q                     : out std_logic_vector(G_WIDTH-1 downto 0)
	);
end entity;

architecture hdmi_delay_arch of hdmi_delay is
	type t_q_pipe is array(0 to G_DEPTH-1) of std_logic_vector(G_WIDTH-1 downto 0);
	signal q_pipe          : t_q_pipe;
begin
	process(i_clk)
	begin
		if(rising_edge(i_clk)) then
			q_pipe   <= I_D&q_pipe(0 to q_pipe'length-2);
		end if;
	end process;
	O_Q <= q_pipe(q_pipe'length-1);
end architecture;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity myUartRxTest is
	Port ( 	clk: in std_logic;
				rst: in std_logic;
				led: out std_logic_vector (7 downto 0);
				rx: in std_logic);
end myUartRxTest;

architecture ARCH_myUartRxTest of myUartRxTest is

	type state_t is ( Reset, StandBy, Load);
	signal state: state_t;
	
	signal dataRd, notRst: std_logic;
	signal dataRx:std_logic_vector (7 downto 0);
begin
	notRst<= not(rst);
	P1: process(clk)
	begin
		if Rising_Edge(clk) then
			if notrst = '1' then
				state <= Reset;
			else
				case state is
					--------------------------
					when Reset =>
						led <= X"00";
						state <= StandBy;
					--------------------------
					when StandBy =>
						if dataRd = '1' then
							state <= Load;
						end if;
					--------------------------
					when Load =>
						led <= dataRx;
						state <= StandBy;
					--------------------------
				end case;
			end if;
		end if;
	end process P1;
	
	UartRx:entity work.myUartRx(ARCH_myUartRx)
		Generic Map(sysClk => 100000000)
		PORT MAP(
			clk => clk,
			rst => notrst,
			dataRd => dataRd,
			dataRx => dataRx,
			rx => rx
		);

end ARCH_myUartRxTest;


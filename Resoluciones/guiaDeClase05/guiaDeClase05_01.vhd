library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mySerialALU is
	Port ( 	clk: in std_logic;
				rst: in std_logic;
				tx: out std_logic;
				rx: in std_logic);
end mySerialALU;

architecture ARCH_mySerialALU of mySerialALU is

begin

	MdErx: process(clk)
	begin
		if Rising_Edge(clk) then
			if rst = '1' then
				stateRx <= StandBy;
			else
				case stateRx is
					-------------------------
					when StandBy =>
						--Señales:
						--Transiciones:
							if busy = '0' then
								stateRx <= waitCmd;
							end if;
					-------------------------
					when waitCmd =>
						--Señales:
						--Transiciones:
							if dataRd = '1' then
								stateRx <= waitD0;
								cmd <= DataRx;
							end if;
					-------------------------
					when waitD0 =>
						--Señales:
						--Transiciones:
							if dataRd = '1' then
								stateRx <= waitD1;
								data0 <= DataRx;
							end if;
					-------------------------
					when waitD1 =>
						--Señales:
						--Transiciones:
							if dataRd = '1' then
								stateRx <= StandBy;
								data1 <= DataRx;
								set <= '1';
							end if;
					-------------------------
				end case;
		end if;
	end process MdErx;

end ARCH_mySerialALU;


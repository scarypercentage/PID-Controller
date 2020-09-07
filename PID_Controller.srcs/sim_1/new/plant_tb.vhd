library ieee;
use ieee.std_logic_1164.all;

entity tb_untitled is
end tb_untitled;

architecture tb of tb_untitled is

    component untitled
        port (clk        : in std_logic;
              reset      : in std_logic;
              clk_enable : in std_logic;
              In1        : in std_logic_vector (31 downto 0);
              ce_out     : out std_logic;
              Out1       : out std_logic_vector (31 downto 0));
    end component;

    signal clk        : std_logic;
    signal reset      : std_logic;
    signal clk_enable : std_logic;
    signal In1        : std_logic_vector (31 downto 0);
    signal ce_out     : std_logic;
    signal Out1       : std_logic_vector (31 downto 0);

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : untitled
    port map (clk        => clk,
              reset      => reset,
              clk_enable => clk_enable,
              In1        => In1,
              ce_out     => ce_out,
              Out1       => Out1);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        clk_enable <= '0';
        In1 <= x"00040000";

        -- Reset generation
        -- EDIT: Check that reset is really your reset signal
        reset <= '0';

        -- EDIT Add stimuli here
        wait for 1000 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_untitled of tb_untitled is
    for tb
    end for;
end cfg_tb_untitled;
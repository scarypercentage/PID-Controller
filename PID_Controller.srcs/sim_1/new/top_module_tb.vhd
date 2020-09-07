library ieee;
use ieee.std_logic_1164.all;

entity tb_top_module is
end tb_top_module;

architecture tb of tb_top_module is

    component top_module
        port (i_clk       : in std_logic;
              i_adc_clk   : in std_logic;
              i_reset     : in std_logic;
              i_feedback  : in std_logic_vector (11 downto 0);
              i_reference : in std_logic_vector (11 downto 0);
              i_kp        : in std_logic_vector (31 downto 0);
              i_ki        : in std_logic_vector (31 downto 0);
              i_kd        : in std_logic_vector (31 downto 0);
              o_output    : out std_logic_vector (31 downto 0);
              o_overflow  : out std_logic);
    end component;

    signal i_clk       : std_logic;
    signal i_adc_clk   : std_logic;
    signal i_reset     : std_logic;
    signal i_feedback  : std_logic_vector (11 downto 0);
    signal i_reference : std_logic_vector (11 downto 0);
    signal i_kp        : std_logic_vector (31 downto 0);
    signal i_ki        : std_logic_vector (31 downto 0);
    signal i_kd        : std_logic_vector (31 downto 0);
    signal o_output    : std_logic_vector (31 downto 0);
    signal o_overflow  : std_logic;

    constant TbPeriod : time := 1000 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';
    signal adc_clk : STD_LOGIC := '0';

begin

    dut : top_module
    port map (i_clk       => i_clk,
              i_adc_clk   => adc_clk,
              i_reset     => i_reset,
              i_feedback  => i_feedback,
              i_reference => i_reference,
              i_kp        => i_kp,
              i_ki        => i_ki,
              i_kd        => i_kd,
              o_output    => o_output,
              o_overflow  => o_overflow);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that i_clk is really your main clock signal
    i_clk <= TbClock;
    adc_clk <= not adc_clk after 1000ns;
    

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        i_reset <= '0';
        i_kp <=  "00000001111111101011110010010101";
        i_ki <=  "00000010000100101001001101111111";
        i_kd <= (others => '0');

        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;
    
        Plant : entity work.untitled(RTL)
            port map( 
            clk   => i_clk,                            
            reset => i_reset,                            
            clk_enable => '1',                       
            In1 => o_output,                             
            ce_out => gnd,                           
            Out1 => i_feedback                             
        ); 

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_top_module of tb_top_module is
    for tb
    end for;
end cfg_tb_top_module;
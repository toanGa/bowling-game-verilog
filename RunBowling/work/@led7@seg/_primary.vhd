library verilog;
use verilog.vl_types.all;
entity Led7Seg is
    generic(
        LED_0           : integer := 1;
        LED_1           : integer := 79;
        LED_2           : integer := 18;
        LED_3           : integer := 6;
        LED_4           : integer := 76;
        LED_5           : integer := 36;
        LED_6           : integer := 32;
        LED_7           : integer := 15;
        LED_8           : integer := 0;
        LED_9           : integer := 4
    );
    port(
        \in\            : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(0 to 6)
    );
end Led7Seg;

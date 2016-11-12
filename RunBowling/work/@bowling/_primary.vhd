library verilog;
use verilog.vl_types.all;
entity Bowling is
    generic(
        FRAME_1         : integer := 1;
        FRAME_2         : integer := 2;
        FRAME_3         : integer := 3;
        FRAME_4         : integer := 4;
        FRAME_5         : integer := 5;
        FRAME_6         : integer := 6;
        FRAME_7         : integer := 7;
        FRAME_8         : integer := 8;
        FRAME_9         : integer := 9;
        FRAME_10        : integer := 10;
        FRAME_DONE      : integer := 0;
        true            : integer := 1;
        false           : integer := 0
    );
    port(
        reset           : in     vl_logic;
        pointIn         : in     vl_logic_vector(3 downto 0);
        button          : in     vl_logic;
        pointAll        : out    vl_logic_vector(10 downto 0);
        hundred7SegCode : out    vl_logic_vector(0 to 6);
        ten7SegCode     : out    vl_logic_vector(0 to 6);
        current7SegCode : out    vl_logic_vector(0 to 6)
    );
end Bowling;

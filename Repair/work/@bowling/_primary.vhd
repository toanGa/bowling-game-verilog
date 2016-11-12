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
        point1Test      : out    vl_logic_vector(5 downto 0);
        point2Test      : out    vl_logic_vector(5 downto 0);
        point3Test      : out    vl_logic_vector(5 downto 0);
        point4Test      : out    vl_logic_vector(5 downto 0);
        point5Test      : out    vl_logic_vector(5 downto 0);
        point6Test      : out    vl_logic_vector(5 downto 0);
        point7Test      : out    vl_logic_vector(5 downto 0);
        point8Test      : out    vl_logic_vector(5 downto 0);
        point9Test      : out    vl_logic_vector(5 downto 0);
        point10Test     : out    vl_logic_vector(5 downto 0)
    );
end Bowling;

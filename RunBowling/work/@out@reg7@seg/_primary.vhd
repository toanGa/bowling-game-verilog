library verilog;
use verilog.vl_types.all;
entity OutReg7Seg is
    port(
        point           : in     vl_logic_vector(10 downto 0);
        hundred7SegCode : out    vl_logic_vector(0 to 6);
        ten7SegCode     : out    vl_logic_vector(0 to 6);
        current7SegCode : out    vl_logic_vector(0 to 6)
    );
end OutReg7Seg;

library verilog;
use verilog.vl_types.all;
entity OutPoint is
    port(
        unlock          : in     vl_logic;
        pointIn         : in     vl_logic_vector(0 to 5);
        pointOut        : out    vl_logic_vector(0 to 5)
    );
end OutPoint;

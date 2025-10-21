module demux(
    input [1:0]sel,
    input [3:0]data,
    input enable,
    output [3:0] local_lib, [3:0] fire, [3:0] school, [3:0] rib
);
    
    assign local_lib = enable ? (sel == 0 ? data : 0) : 0;
    assign fire = enable ? (sel == 1 ? data : 0) : 0;
    assign school = enable ? (sel == 2 ? data : 0) : 0;
    assign rib = enable ? (sel == 3 ? data : 0) : 0;
    
endmodule

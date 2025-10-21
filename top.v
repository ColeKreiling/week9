module top(
    input [15:0]sw,
    input btnL,
    input btnU,
    input btnD,
    input btnR,
    input btnC,
    output [15:0]led
   );
   
   wire [1:0] mux_vector;
   assign mux_vector = {btnL, btnU};
   wire [1:0] demux_vector;
   assign demux_vector = {btnD, btnR};
   wire [3:0] out;
   
   mux mux_inst(
   .CEO(sw[3:0]),
   .You(sw[7:4]),
   .Fred(sw[11:8]),
   .Jill(sw[15:12]),
   .Sel(mux_vector),
   .enable(btnC),
   .Y(out)
   );
   
   demux demux_inst(
   .sel(demux_vector),
   .data(out),
   .enable(btnC),
   .local_lib(led[3:0]),
   .fire(led[7:4]),
   .school(led[11:8]),
   .rib(led[15:12])
   );
    
endmodule
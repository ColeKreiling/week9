module mux(
    input [7:0] byte0, [7:0] byte1, [7:0] byte2, [7:0] byte3,
    input [1:0]Sel,
    input enable,
    output [7:0] Y
    );
    
    assign Y = enable ? ((Sel == 0 ? byte0 : (Sel == 1 ? byte1 : (Sel == 2 ? byte2 : (Sel == 3 ? byte3 : 0))))) : 0;
    
endmodule
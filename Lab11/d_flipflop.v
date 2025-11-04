module d_flipflop(
    input D, Clock,
    output reg Q,
    output NOTQ
    );
    
    initial begin
        Q <= 0;
    end
    
    always @(posedge Clock)
        Q <= D;
        
    assign NOTQ = ~Q;
endmodule

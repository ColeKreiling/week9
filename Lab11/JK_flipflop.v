module JK_flipflop(
    input J, K, Clock,
    output Q,
    output NOTQ
    );
    
    wire data;
    assign data = (J & ~Q) | (~K & Q);
    
    d_flipflop d_flipflop_inst2(
        .D(data),
        .Clock(Clock),
        .Q(Q),
        .NOTQ(NOTQ)
    );
        
endmodule

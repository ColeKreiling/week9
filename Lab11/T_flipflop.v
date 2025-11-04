module T_flipflop(
    input T, Clock,
    output Q,
    output NOTQ
    );
        
    JK_flipflop JK_flipflop_inst2(
        .J(T),
        .K(T),
        .Clock(Clock),
        .Q(Q),
        .NOTQ(NOTQ)
    );
endmodule

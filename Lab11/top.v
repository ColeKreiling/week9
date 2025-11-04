module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);
    d_flipflop d_flipflop_inst(
        .D(sw[0]),
        .Clock(btnC),
        .Q(led[0]),
        .NOTQ(led[1])
    );
    
    JK_flipflop JK_flipflop_inst(
        .J(sw[1]),
        .K(sw[2]),
        .Clock(btnC),
        .Q(led[2]),
        .NOTQ(led[3])
    );
    
    T_flipflop T_flipflop_inst(
        .T(sw[3]),
        .Clock(btnC),
        .Q(led[4]),
        .NOTQ(led[5])
    );

endmodule
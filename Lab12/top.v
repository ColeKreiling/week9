module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);
    
    onehot onehot_inst(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .states(led[6:2])
    );
    
    binary binary_inst(
        .w(sw),
        .clk(btnC),
        .z(led[1]),
        .reset(btnU),
        .states(led[9:7])
    );

endmodule
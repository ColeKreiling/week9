module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    wire [3:0] store_enable;
    wire [3:0] store_data;
    wire [7:0] mem[3:0];

    byte_memory byte0(
        .data(store_data[0]),
        .store(store),
        .memory(mem[0])
    );
    byte_memory byte1(
        .data(store_data[1]),
        .store(store),
        .memory(mem[1])
    );
    byte_memory byte2(
        .data(store_data[2]),
        .store(store),
        .memory(mem[2])
    );
    byte_memory byte3(
        .data(store_data[3]),
        .store(store),
        .memory(mem[3])
    );
    
    demux demux_inst(
        .data(data),
        .sel(addr),
        .A(store_data[0]),
        .B(store_data[1]),
        .C(store_data[2]),
        .D(store_data[3])
    );
    
    demux demux_inst2(
        .data(store),
        .sel(addr),
        .A(store_enable[0]),
        .B(store_enable[1]),
        .C(store_enable[2]),
        .D(store_enable[3])
    );
    
    mux mux_inst(
        .byte0(mem[0]),
        .byte1(mem[1]),
        .byte2(mem[2]),
        .byte3(mem[3]),
        .Sel(addr),
        .enable(store),
        .Y(memory)
    );
endmodule
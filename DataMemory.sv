
// Data Memory Module
module DataMemory(
    input wire [7:0] address,  // Address input (8-bit address)
    input wire [31:0] write_data,  // Data input for write operation (32-bit data)
    input wire write_enable,   // Write enable signal
    output reg [31:0] read_data // Data output for read operation (32-bit data)
);
    reg [31:0] mem [0:255]; // Data memory implemented as an array of registers

    // Read operation
    always_comb begin
        read_data = mem[address];
    end

    // Write operation
    always_ff @(posedge write_enable) begin
        if (write_enable)
            mem[address] <= write_data;
    end
endmodule

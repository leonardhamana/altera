
// Multiplexer Module
module Mux4to1(
    input wire [3:0] data_in_0,    // Input data bit 0
    input wire [3:0] data_in_1,    // Input data bit 1
    input wire [3:0] data_in_2,    // Input data bit 2
    input wire [3:0] data_in_3,    // Input data bit 3
    input wire [1:0] sel,          // Select input (2-bit)
    output reg [3:0] data_out      // Output data (4-bit)
);
    always @* begin
        case (sel)
            2'b00: data_out = data_in_0;
            2'b01: data_out = data_in_1;
            2'b10: data_out = data_in_2;
            2'b11: data_out = data_in_3;
            default: data_out = 4'bzzzz; // Default output (can be modified based on requirements)
        endcase
    end
endmodule


// Register Module
module Register(
    input wire clk,        // Clock input
    input wire reset,      // Reset input
    input wire [7:0] data, // Data input (8-bit)
    output reg [7:0] q      // 8-bit output
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 8'b00000000;  // Reset the register to zero
        else
            q <= data;         // Store input data on each clock edge
    end
endmodule

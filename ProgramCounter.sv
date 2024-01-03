// Program Counter Module
module ProgramCounter(
    input wire clk,       // Clock input
    input wire reset,     // Reset input
    output reg [7:0] pc   // 8-bit Program Counter output
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            pc <= 8'b00000000;  // Reset the counter to zero
        else
            pc <= pc + 1;       // Increment the counter on each clock cycle
    end
endmodule


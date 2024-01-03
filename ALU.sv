
// ALU Module
module ALU(
    input wire [31:0] operand_a,     // Operand A (32-bit)
    input wire [31:0] operand_b,     // Operand B (32-bit)
    input wire [2:0] alu_opcode,     // ALU operation code
    output reg [31:0] result         // ALU result (32-bit)
);
    always_comb begin
        case (alu_opcode)
            3'b000: result = operand_a + operand_b; // Addition
            3'b001: result = operand_a - operand_b; // Subtraction
            3'b010: result = operand_a & operand_b; // AND
            3'b011: result = operand_a | operand_b; // OR
            3'b100: result = operand_a ^ operand_b; // XOR
            // Add more operations as needed
            default: result = 32'b0; // Default operation (e.g., zero)
        endcase
    end
endmodule

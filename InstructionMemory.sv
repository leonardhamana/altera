// Extended Instruction Memory Module
module InstructionMemory(
    input wire [15:0] address,    // Address input (16-bit address)
    input wire [1:0] opcode_type,  // Opcode type input (2-bit)
    output reg [31:0] instruction   // 32-bit instruction output
);
    // Example instructions stored in ROM
    reg [31:0] rom [0:65535]; // 64K-word ROM

    // Initialize ROM with example instructions
    initial begin
        // Initialize with example instructions or load from a file
        // Example: Load instruction "ADD R1, R2, R3" at address 0
        rom[0] = 32'b00000000010000100011000000100011;

        // ... Add more instructions as needed
    end

    // Output the instruction based on the address and opcode type
    always_comb begin
        if (opcode_type == 2'b00) begin
            // Type 0 instruction format
            instruction = rom[address];
        end else if (opcode_type == 2'b01) begin
            // Type 1 instruction format (for example)
            instruction = rom[address] | rom[address + 1];
        end else begin
            // Default to type 0 if opcode type is invalid
            instruction = rom[address];
        end
    end
endmodule

// Control Unit Module for a Multiple-Cycle MIPS Processor
module ControlUnit2(
    input wire [5:0] opcode,    // 6-bit opcode input
    output reg reg_write,       // Register write control signal
    output reg mem_read,        // Memory read control signal
    output reg mem_write,       // Memory write control signal
    output reg [1:0] alu_op,     // ALU operation control signal
    output reg reg_dst,         // Register destination control signal
    output reg branch,          // Branch control signal
    output reg jump             // Jump control signal
);
    always @* begin
        // Decode the opcode to generate control signals
        case (opcode)
            6'b000000: begin // R-type instruction
                reg_write = 1;
                mem_read = 0;
                mem_write = 0;
                alu_op = 2'b10; // ALU operation: add
                reg_dst = 1;
                branch = 0;
                jump = 0;
            end
            6'b100011: begin // LW instruction
                reg_write = 1;
                mem_read = 1;
                mem_write = 0;
                alu_op = 2'b00; // ALU operation: add
                reg_dst = 1;
                branch = 0;
                jump = 0;
            end
            6'b101011: begin // SW instruction
                reg_write = 0;
                mem_read = 0;
                mem_write = 1;
                alu_op = 2'b00; // ALU operation: add
                reg_dst = 0;
                branch = 0;
                jump = 0;
            end
            6'b000100: begin // BEQ instruction
                reg_write = 0;
                mem_read = 0;
                mem_write = 0;
                alu_op = 2'b01; // ALU operation: subtract
                reg_dst = 0;
                branch = 1;
                jump = 0;
            end
            6'b000010: begin // J instruction
                reg_write = 0;
                mem_read = 0;
                mem_write = 0;
                alu_op = 2'b00; // ALU operation: add
                reg_dst = 0;
                branch = 0;
                jump = 1;
            end
            // Add more cases for other opcodes as needed
            default: begin // Default control signals for unknown opcode
                reg_write = 0;
                mem_read = 0;
                mem_write = 0;
                alu_op = 2'b00;
                reg_dst = 0;
                branch = 0;
                jump = 0;
            end
        endcase
    end
endmodule


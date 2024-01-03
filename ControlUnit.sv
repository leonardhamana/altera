
// Control Unit Module
module ControlUnit(
    input wire [3:0] opcode,        // 4-bit opcode input
    output reg reg_write_enable,    // Register write enable signal
    output reg alu_op,               // ALU operation signal
    output reg mem_read,             // Memory read signal
    output reg mem_write,            // Memory write signal
    output reg [1:0] mux_sel          // Multiplexer selection signal (2-bit)
);
    always @* begin
        case (opcode)
            4'b0000: begin // Example control signals for opcode 0000
                reg_write_enable = 1;
                alu_op = 0;
                mem_read = 0;
                mem_write = 0;
                mux_sel = 2'b00;
            end
            4'b0001: begin // Example control signals for opcode 0001
                reg_write_enable = 1;
                alu_op = 1;
                mem_read = 0;
                mem_write = 0;
                mux_sel = 2'b01;
            end
            // Add more cases for other opcodes as needed
            default: begin // Default control signals for unknown opcode
                reg_write_enable = 0;
                alu_op = 0;
                mem_read = 0;
                mem_write = 0;
                mux_sel = 2'b00;
            end
        endcase
    end
endmodule

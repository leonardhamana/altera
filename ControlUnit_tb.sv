
// Control Unit Test Bench
module ControlUnit_tb;
    reg [3:0] opcode;
    wire reg_write_enable, alu_op, mem_read, mem_write;
    wire [1:0] mux_sel;

    // Instantiate the Control Unit module
    ControlUnit uut(
        .opcode(opcode),
        .reg_write_enable(reg_write_enable),
        .alu_op(alu_op),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .mux_sel(mux_sel)
    );

    // Stimulus
    initial begin
        // Test case 1: Opcode 0000
        opcode = 4'b0000;
        #10 $display("Opcode = %b", opcode);
        #10 $display("Control Signals: reg_write_enable=%b alu_op=%b mem_read=%b mem_write=%b mux_sel=%b", reg_write_enable, alu_op, mem_read, mem_write, mux_sel);

        // Test case 2: Opcode 0001
        opcode = 4'b0001;
        #10 $display("Opcode = %b", opcode);
        #10 $display("Control Signals: reg_write_enable=%b alu_op=%b mem_read=%b mem_write=%b mux_sel=%b", reg_write_enable, alu_op, mem_read, mem_write, mux_sel);

        // Add more test cases as needed

        #10 $finish;  // Finish simulation
    end
endmodule

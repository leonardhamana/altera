
// Control Unit Test Bench
module ControlUnit2_tb;
    reg [5:0] opcode;
    wire reg_write, mem_read, mem_write;
    wire [1:0] alu_op;
    wire reg_dst, branch, jump;

    // Instantiate the Control Unit module
    ControlUnit2 uut(
        .opcode(opcode),
        .reg_write(reg_write),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .alu_op(alu_op),
        .reg_dst(reg_dst),
        .branch(branch),
        .jump(jump)
    );

    // Stimulus
    initial begin
        // Test case 1: R-type instruction
        opcode = 6'b000000;
        #10 $display("R-type Instruction: opcode=%b reg_write=%b mem_read=%b mem_write=%b alu_op=%b reg_dst=%b branch=%b jump=%b",
                     opcode, reg_write, mem_read, mem_write, alu_op, reg_dst, branch, jump);

        // Test case 2: LW instruction
        opcode = 6'b100011;
        #10 $display("LW Instruction: opcode=%b reg_write=%b mem_read=%b mem_write=%b alu_op=%b reg_dst=%b branch=%b jump=%b",
                     opcode, reg_write, mem_read, mem_write, alu_op, reg_dst, branch, jump);

        // Add more test cases as needed

        #10 $finish;  // Finish simulation
    end
endmodule

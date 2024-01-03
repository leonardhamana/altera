// Extended Instruction Memory Test Bench
module InstructionMemory_tb;
    reg [15:0] address;
    reg [1:0] opcode_type;
    wire [31:0] instruction_out;

    // Instantiate the Extended Instruction Memory module
    InstructionMemory uut(
        .address(address),
        .opcode_type(opcode_type),
        .instruction(instruction_out)
    );

    // Stimulus
    initial begin
        // Test case 1: Type 0 instruction
        address = 16'h0000;
        opcode_type = 2'b00;
        #10 $display("Type 0 Instruction: Address=%h Opcode Type=%b Instruction=%h", address, opcode_type, instruction_out);

        // Test case 2: Type 1 instruction
        address = 16'h0001;
        opcode_type = 2'b01;
        #10 $display("Type 1 Instruction: Address=%h Opcode Type=%b Instruction=%h", address, opcode_type, instruction_out);

        // Add more test cases as needed

        #10 $finish;  // Finish simulation
    end
endmodule

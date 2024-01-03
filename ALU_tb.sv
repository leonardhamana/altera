
// ALU Test Bench
module ALU_tb;
    reg [31:0] operand_a, operand_b;
    reg [2:0] alu_opcode;
    wire [31:0] result_out;

    // Instantiate the ALU module
    ALU uut(
        .operand_a(operand_a),
        .operand_b(operand_b),
        .alu_opcode(alu_opcode),
        .result(result_out)
    );

    // Stimulus
    initial begin
        // Test addition
        operand_a = 32'hAAAAAABB;
        operand_b = 32'h11223344;
        alu_opcode = 3'b000; // Addition
        #10 $display("Addition: %h + %h = %h", operand_a, operand_b, result_out);

        // Test subtraction
        operand_a = 32'h11223344;
        operand_b = 32'hAAAAAABB;
        alu_opcode = 3'b001; // Subtraction
        #10 $display("Subtraction: %h - %h = %h", operand_a, operand_b, result_out);

        // Test AND operation
        operand_a = 32'hAAAAAAAA;
        operand_b = 32'h55555555;
        alu_opcode = 3'b010; // AND
        #10 $display("AND: %h & %h = %h", operand_a, operand_b, result_out);

        // Test OR operation
        operand_a = 32'hAAAAAAAA;
        operand_b = 32'h55555555;
        alu_opcode = 3'b011; // OR
        #10 $display("OR: %h | %h = %h", operand_a, operand_b, result_out);

        // Test XOR operation
        operand_a = 32'hAAAAAAAA;
        operand_b = 32'h55555555;
        alu_opcode = 3'b100; // XOR
        #10 $display("XOR: %h ^ %h = %h", operand_a, operand_b, result_out);

        // Add more test cases as needed

        #10 $finish;  // Finish simulation
    end
endmodule

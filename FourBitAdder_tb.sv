
// 4-Bit Adder Test Bench
module FourBitAdder_tb;
    reg [3:0] operand_a, operand_b;
    wire [4:0] sum_out;

    // Instantiate the 4-Bit Adder module
    FourBitAdder uut(
        .operand_a(operand_a),
        .operand_b(operand_b),
        .sum(sum_out)
    );

    // Stimulus
    initial begin
        // Test case 1: Addition of 4-bit numbers
        operand_a = 4'b1101;
        operand_b = 4'b0011;
        #10 $display("Operand A = %b", operand_a);
        #10 $display("Operand B = %b", operand_b);
        #10 $display("Sum = %b", sum_out);

        // Test case 2: Addition with carry
        operand_a = 4'b1111;
        operand_b = 4'b0001;
        #10 $display("Operand A = %b", operand_a);
        #10 $display("Operand B = %b", operand_b);
        #10 $display("Sum = %b", sum_out);

        // Add more test cases as needed

        #10 $finish;  // Finish simulation
    end
endmodule

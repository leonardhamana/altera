// 4-Bit Adder Module
module FourBitAdder(
    input wire [3:0] operand_a, // 4-bit operand A
    input wire [3:0] operand_b, // 4-bit operand B
    output reg [4:0] sum         // 5-bit sum output (4 bits + carry)
);
    reg carry;

    always @* begin
        {carry, sum} = operand_a + operand_b;
    end
endmodule


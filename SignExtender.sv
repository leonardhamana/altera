
// Sign Extender Module
module SignExtender(
    input wire [3:0] input_value,   // 4-bit input value
    output reg [7:0] extended_value  // 8-bit extended output value
);
    always @* begin
        // Sign extend the 4-bit input to 8 bits
        extended_value = {{4{input_value[3]}}, input_value};
    end
endmodule

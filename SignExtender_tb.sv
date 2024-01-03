
// Sign Extender Test Bench
module SignExtender_tb;
    reg [3:0] input_value;
    wire [7:0] extended_value_out;

    // Instantiate the Sign Extender module
    SignExtender uut(
        .input_value(input_value),
        .extended_value(extended_value_out)
    );

    // Stimulus
    initial begin
        // Test case 1: Positive value
        input_value = 4'b1010;
        #10 $display("Input Value = %b", input_value);
        #10 $display("Extended Value = %b", extended_value_out);

        // Test case 2: Negative value
        input_value = 4'b1101;
        #10 $display("Input Value = %b", input_value);
        #10 $display("Extended Value = %b", extended_value_out);

        // Add more test cases as needed

        #10 $finish;  // Finish simulation
    end
endmodule

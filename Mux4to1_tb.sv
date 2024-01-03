// Multiplexer Test Bench
module Mux4to1_tb;
    reg [3:0] data_in_0, data_in_1, data_in_2, data_in_3;
    reg [1:0] sel;
    wire [3:0] data_out;

    // Instantiate the Multiplexer module
    Mux4to1 uut(
        .data_in_0(data_in_0),
        .data_in_1(data_in_1),
        .data_in_2(data_in_2),
        .data_in_3(data_in_3),
        .sel(sel),
        .data_out(data_out)
    );

    // Stimulus
    initial begin
        // Test case 1: Select input 0
        data_in_0 = 4'b0000;
        data_in_1 = 4'b1111;
        data_in_2 = 4'b0101;
        data_in_3 = 4'b1010;
        sel = 2'b00;
        #10 $display("Input 0 selected: data_out = %h", data_out);

        // Test case 2: Select input 1
        sel = 2'b01;
        #10 $display("Input 1 selected: data_out = %h", data_out);

        // Test case 3: Select input 2
        sel = 2'b10;
        #10 $display("Input 2 selected: data_out = %h", data_out);

        // Test case 4: Select input 3
        sel = 2'b11;
        #10 $display("Input 3 selected: data_out = %h", data_out);

        // Add more test cases as needed

        #10 $finish;  // Finish simulation
    end
endmodule


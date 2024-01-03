
// Register Test Bench
module Register_tb;
    reg clk, reset;
    reg [7:0] data_in;
    wire [7:0] q_out;

    // Instantiate the Register module
    Register uut(
        .clk(clk),
        .reset(reset),
        .data(data_in),
        .q(q_out)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        clk = 0;
        reset = 1;  // Initialize with a reset
        data_in = 8'hA5;  // Input data

        // Monitor the output
        $monitor("Time=%0t clk=%b reset=%b data=%h q=%h", $time, clk, reset, data_in, q_out);

        // Release reset after 10 time units
        #10 reset = 0;

        // Run simulation for 50 time units
        #50 $finish;
    end
endmodule

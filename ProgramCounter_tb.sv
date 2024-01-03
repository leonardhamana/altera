// Program Counter Test Bench
module ProgramCounter_tb;
    reg clk, reset;
    wire [7:0] pc_out;

    // Instantiate the Program Counter module
    ProgramCounter uut(
        .clk(clk),
        .reset(reset),
        .pc(pc_out)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        clk = 0;
        reset = 1;  // Initialize with a reset
        #10 reset = 0;  // Release reset after 10 time units

        // Monitor the PC output
        $monitor("Time=%0t clk=%b reset=%b pc=%h", $time, clk, reset, pc_out);

        // Run simulation for 50 time units
        #50 $finish;
    end
endmodule


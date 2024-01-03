
// Data Memory Test Bench
module DataMemory_tb;
    reg [7:0] address;
    reg [31:0] write_data;
    reg write_enable;
    wire [31:0] read_data_out;

    // Instantiate the Data Memory module
    DataMemory uut(
        .address(address),
        .write_data(write_data),
        .write_enable(write_enable),
        .read_data(read_data_out)
    );

    // Stimulus
    initial begin
        // Write data to memory at address 0
        address = 8'h00;
        write_data = 32'hAABBCCDD;
        write_enable = 1;
        #10 $display("Write: Address=%h Data=%h", address, write_data);

        // Read data from memory at address 0
        address = 8'h00;
        write_enable = 0;
        #10 $display("Read: Address=%h Data=%h", address, read_data_out);

        // Add more test cases as needed

        #10 $finish;  // Finish simulation
    end
endmodule

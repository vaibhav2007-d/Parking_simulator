
`timescale 1ns/1ps

module testbench;

    reg clk;
    reg reset;
    reg [3:0] car_entry;
    reg [3:0] car_exit;

    wire [3:0] occupied;
    wire [2:0] occupied_count;
    wire [2:0] available_count;
    wire full;

    parking uut (
        .clk(clk),
        .reset(reset),
        .car_entry(car_entry),
        .car_exit(car_exit),
        .occupied(occupied),
        .occupied_count(occupied_count),
        .available_count(available_count),
        .full(full)
    );

    // Generate clock
    always #5 clk = ~clk;

    initial begin
        $dumpfile("parking.vcd");
        $dumpvars(0, testbench);

        clk = 0;
        reset = 1;
        car_entry = 4'b0000;
        car_exit = 4'b0000;

        #10;
        reset = 0;

        // Car enters Slot 1
        car_entry = 4'b0001;
        #10;
        car_entry = 4'b0000;
        #1;
        $display("Slot 1 occupied: %b", occupied);
        $display("Occupied: %0d, Available: %0d",
                 occupied_count, available_count);

        // Cars enter remaining slots
        car_entry = 4'b1110;
        #10;
        car_entry = 4'b0000;
        #1;
        $display("All slots occupied: %b", occupied);
        $display("Occupied: %0d, Available: %0d, Full: %b",
                 occupied_count, available_count, full);

        // Car exits Slot 2
        car_exit = 4'b0010;
        #10;
        car_exit = 4'b0000;
        #1;
        $display("After car exit: %b", occupied);
        $display("Occupied: %0d, Available: %0d, Full: %b",
                 occupied_count, available_count, full);

        #10;
        $finish;
    end

endmodule

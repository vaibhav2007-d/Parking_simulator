
module parking (
    input wire clk,
    input wire reset,
    input wire [3:0] car_entry,
    input wire [3:0] car_exit,
    output reg [3:0] occupied,
    output reg [2:0] occupied_count,
    output reg [2:0] available_count,
    output wire full
);

    integer i;

    // Parking slot control
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            occupied <= 4'b0000;
        end
        else begin
            for (i = 0; i < 4; i = i + 1) begin
                if (car_exit[i])
                    occupied[i] <= 1'b0;
                else if (car_entry[i])
                    occupied[i] <= 1'b1;
            end
        end
    end

    // Count occupied and available slots
    always @(*) begin
        occupied_count = occupied[0] + occupied[1]
                       + occupied[2] + occupied[3];

        available_count = 4 - occupied_count;
    end

    // Parking area is full when all 4 slots are occupied
    assign full = &occupied;

endmodule

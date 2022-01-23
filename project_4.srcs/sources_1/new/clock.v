//`timescale 1ns / 1ps

module clock(address, RD, clk);

output reg [15:0] address;
output reg RD;

output reg clk;

always
    begin
        clk = 1'b1;
        #5;
        clk = 1'b0;
        #5;
    end

initial begin
    begin
        #5
        RD = 1'd0;
        #5;
        address = 16'h0104;  
        RD = 1'd1;
        #5;
        address = 1'd0;
        RD = 1'd0;
        #5;
        address = 16'h0105;
        RD = 1'd1;
        #5;
        address = 1'd0;
        RD = 1'd0;
    end
end
endmodule

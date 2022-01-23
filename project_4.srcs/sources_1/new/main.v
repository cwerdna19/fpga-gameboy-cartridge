module top
(
    // 16 address pins
    input  [15:0] address,

    // Data pins (bidirectional)
    inout [7:0] data,

    // Signals from cartridge
    input nWR,   // Write
    input nRD,   // Reada
    input nCS,   // Chip-select
    
    // Output enable for data level shifter
    output OE,

    // 100 MHz clock from FPGA
    input wire          clk
);

reg [7:0] rom[0:32768];

// Read headers & ROM from files
initial
begin
    $readmemh("rom.hex",rom, 0, 32768);
    //$readmemh("rom.mem", rom);//, 0, 4194360);
end

reg [7:0] data_out = 8'd0;
reg output_enable = 1'd0;

// Enable data output if required, otherwise high-impedance
assign data = data_out; //: 8'bzzzzzzzz;
assign OE = output_enable;

always @(posedge clk) begin
    // Don't output signal if WR, CS, or address[15] are asserted
    // Or READ is not asserted   
    
    //if(address[15] || nRD || ~nWR || ~nCS) begin
    if (nRD) begin
        data_out <= rom[address];
        output_enable <= 1'd0;
    end
end
endmodule
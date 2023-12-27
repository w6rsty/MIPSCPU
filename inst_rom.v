`timescale 1ns / 1ps

module inst_rom(
    input      [4 :0] addr,
    output reg [31:0] inst
    );

    wire [31:0] inst_rom[19:0];

    assign inst_rom[ 0] = 32'h


    //��ָ��,ȡ4�ֽ�
    always @(*)
    begin
        case (addr)
            5'd0 : inst <= inst_rom[0 ]; // 00 
            5'd1 : inst <= inst_rom[1 ]; // 04
            5'd2 : inst <= inst_rom[2 ]; // 08
            5'd3 : inst <= inst_rom[3 ]; // 0C
            5'd4 : inst <= inst_rom[4 ]; // 10
            5'd5 : inst <= inst_rom[5 ]; // 14
            5'd6 : inst <= inst_rom[6 ]; // 18
            default: inst <= 32'd0;
        endcase
    end
endmodule
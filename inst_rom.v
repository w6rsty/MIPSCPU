`timescale 1ns / 1ps
//*************************************************************************
//   > �ļ���: inst_rom.v
//   > ����  ���첽ָ��洢��ģ�飬���üĴ�������ɣ����ƼĴ�����
//   >         ��Ƕ��ָ�ֻ�����첽��
//   > ����  : LOONGSON
//   > ����  : 2016-04-14
//*************************************************************************
module inst_rom(
    input      [4 :0] addr, // ָ���ַ
    output reg [31:0] inst       // ָ��
    );

    wire [31:0] inst_rom[19:0];  // ָ��洢�����ֽڵ�ַ7'b000_0000~7'b111_1111
    //------------- ָ����� ---------|ָ���ַ|--- ���ָ�� -----|- ָ���� -----//
    assign inst_rom[ 0] = 32'h2420000A
    assign inst_rom[ 1] = 32'h24400001
    assign inst_rom[ 2] = 32'h24000001
    assign inst_rom[ 3] = 32'h10220010
    assign inst_rom[ 4] = 32'h70220002
    assign inst_rom[ 5] = 32'h24420001
    assign inst_rom[ 6] = 32'h0800000C
    //��ָ��,ȡ4�ֽ�
    always @(*)
    begin
        case (addr)
            5'd0 : inst <= inst_rom[0 ];
            5'd1 : inst <= inst_rom[1 ];
            5'd2 : inst <= inst_rom[2 ];
            5'd3 : inst <= inst_rom[3 ];
            5'd4 : inst <= inst_rom[4 ];
            5'd5 : inst <= inst_rom[5 ];
            5'd6 : inst <= inst_rom[6 ];
            default: inst <= 32'd0;
        endcase
    end
endmodule
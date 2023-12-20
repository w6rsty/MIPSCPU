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
    assign inst_rom[ 0] = 32'h24011111;

    //��ָ��,ȡ4�ֽ�
    always @(*)
    begin
        case (addr)
            5'd0 : inst <= inst_rom[0 ];

            default: inst <= 32'd0;
        endcase
    end
endmodule
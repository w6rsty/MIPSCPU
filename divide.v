module divide (
    input  [31:0] dividend,
    input  [31:0] divisor,
    output [31:0] quotient,
    output [31:0] remainder
);

    reg [31:0] temp_dividend;
    reg [31:0] temp_quotient;
    reg [31:0] temp_remainder;
    reg [4:0]  i;

    always @* begin
        temp_dividend = dividend;
        temp_quotient = 0;
        temp_remainder = 0;

        for (i = 31; i >= 0; i = i - 1) begin
            temp_remainder = temp_remainder << 1;
            temp_remainder[0] = temp_dividend[31];

            if (temp_remainder >= divisor) begin
                temp_remainder = temp_remainder - divisor;
                temp_quotient[i] = 1;
            end

            temp_dividend = temp_dividend << 1;
        end
    end

    assign quotient = temp_quotient;
    assign remainder = temp_remainder;

endmodule

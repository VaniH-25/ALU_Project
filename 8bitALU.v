module alu(a,b,f,y,carry);
input [7:0] a;
input [7:0] b;
input [2:0] f;
output reg [7:0] y;
output reg carry;
always @(*) begin
carry=0; 
 case(f)
	3'b000:{carry,y}=a+b;
	3'b001:{carry,y}=a-b;
	3'b010:y=a&b;
	3'b011:y=a|b;
	3'b100:y=a^b;
	3'b101:y=~a;
	3'b110:y=a[3:0]*b[3:0];
	3'b111:y=8'b00000000;
 endcase
 end
endmodule
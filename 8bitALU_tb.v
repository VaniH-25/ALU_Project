`timescale 1ns/1ns
module alu_tb;
reg [7:0] a;
reg [7:0] b;
reg [2:0] f;
wire [7:0] y;
wire carry;
alu uut(	.a(a),
                .b(b),
                .f(f),
                .y(y),
                .carry(carry)
        );
initial begin
  $dumpfile("alu.vdc");
  $dumpvars(0,alu_tb);
  a=8'h00;
  b=8'hff;
  #10 f=3'b000;
  #10 f=3'b001;
  #10 f=3'b010;
  #10 f=3'b011;
  #10 f=3'b100;
  #10 f=3'b101;
  #10 f=3'b111;
  
  #50 $finish;
end

endmodule


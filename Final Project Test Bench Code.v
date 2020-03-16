`timescale 1ns / 1ps
module proejct_tb();
reg [1:0] SW;
reg CLK;
wire [1:0]LED;
wire [7:0] SSEG_AN;
wire [7:0] SSEG_CA;
reg PBR;
reg PBL;

 project A1( SW, CLK,  LED,SSEG_AN,SSEG_CA, PBR, PBL);

    always  begin
    #1 CLK=~CLK;
    end
initial begin
CLK<=1'b0;
SW<=2'b00;
PBL<=1'b0;
PBR<=1'b0;
#80000;
PBR<= 1'b1;
#80000;
PBR<= 1'b0;
#80000;
PBL<= 1'b1;
#80000;
PBL<= 1'b0;
#80000;
SW<=2'b10;
PBR= 1'b1;
#80000;
PBR<= 1'b0;
#80000;
PBL<= 1'b1;
#80000;
PBL<=1'b0;
	
end
endmodule
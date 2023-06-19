`timescale 1ps/1ps
module test;
     reg clk;
     reg [15:0] in_data0,in_data1,in_data2,in_data3,in_data4,in_data5,in_data6,in_data7,in_data8,in_data9,in_data10,in_data11,in_data12,in_data13,in_data14,in_data15;
     wire [15:0] out_data0,out_data1,out_data2,out_data3,out_data4,out_data5,out_data6,out_data7,out_data8,out_data9,out_data10,out_data11,out_data12,out_data13,out_data14,out_data15;
  wire [9:0] ackout_data0,ackout_data1,ackout_data2,ackout_data3,ackout_data4,ackout_data5,ackout_data6,ackout_data7,ackout_data8,ackout_data9,ackout_data10,ackout_data11,ackout_data12,ackout_data13,ackout_data14,ackout_data15;
  
  
     always #5 clk<=~clk;
     mesh_4x4 m1(clk,in_data0,in_data1,in_data2,in_data3,in_data4,in_data5,in_data6,in_data7,in_data8,in_data9,in_data10,in_data11,in_data12,in_data13,in_data14,in_data15,out_data0,out_data1,out_data2,out_data3,out_data4,out_data5,out_data6,out_data7,out_data8,out_data9,out_data10,out_data11,out_data12,out_data13,out_data14,out_data15,ackout_data0,ackout_data1,ackout_data2,ackout_data3,ackout_data4,ackout_data5,ackout_data6,ackout_data7,ackout_data8,ackout_data9,ackout_data10,ackout_data11,ackout_data12,ackout_data13,ackout_data14,ackout_data15);
  initial begin
    $dumpfile("dump.vcd"); $dumpvars(1,test);
     clk<=1;
     in_data0<=16'h0f55;
    in_data1<=16'h1555;
    in_data2<=16'h2955;
    in_data3<=16'h3755;
    in_data4<=16'h4355;
    in_data5<=16'h5d55;
    in_data6<=16'h6a55;
    in_data7<=16'h7c55;
    in_data8<=16'h8255;
    in_data9<=16'h9b55;
    in_data10<=16'ha155;
    in_data11<=16'hb055;
    in_data12<=16'hc355;
    in_data13<=16'hd655;
    in_data14<=16'he955;
    in_data15<=16'hf455;
    
   
   
    
     
     #1700 $finish;
     end
endmodule

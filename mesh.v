// Code your design here
`timescale 1ps/1ps
module mesh_4x4(
  input wire clk,
  input wire [15:0] in_data0,in_data1,in_data2,in_data3,in_data4,in_data5,in_data6,in_data7,in_data8,in_data9,in_data10,in_data11,in_data12,in_data13,in_data14,in_data15,
  output wire [15:0] out_data0,out_data1,out_data2,out_data3,out_data4,out_data5,out_data6,out_data7,out_data8,out_data9,out_data10,out_data11,out_data12,out_data13,out_data14,out_data15,
  output wire [9:0] ackout_data0,ackout_data1,ackout_data2,ackout_data3,ackout_data4,ackout_data5,ackout_data6,ackout_data7,ackout_data8,ackout_data9,ackout_data10,ackout_data11,ackout_data12,ackout_data13,ackout_data14,ackout_data15
  );
  
  
  wire [15:0] out_n0,out_n1,out_n2,out_n3,out_n4,out_n5,out_n6,out_n7,out_n8,out_n9,out_n10,out_n11,out_n12,out_n13,out_n14,out_n15;
  wire [15:0] out_s0,out_s1,out_s2,out_s3,out_s4,out_s5,out_s6,out_s7,out_s8,out_s9,out_s10,out_s11,out_s12,out_s13,out_s14,out_s15; 
  wire [15:0] out_w0,out_w1,out_w2,out_w3,out_w4,out_w5,out_w6,out_w7,out_w8,out_w9,out_w10,out_w11,out_w12,out_w13,out_w14,out_w15;
  wire [15:0] out_e0,out_e1,out_e2,out_e3,out_e4,out_e5,out_e6,out_e7,out_e8,out_e9,out_e10,out_e11,out_e12,out_e13,out_e14,out_e15; 
     
  wire [9:0] ackin_n0,ackin_n1,ackin_n2,ackin_n3,ackin_n4,ackin_n5,ackin_n6,ackin_n7,ackin_n8,ackin_n9,ackin_n10,ackin_n11,ackin_n12,ackin_n13,ackin_n14,ackin_n15;
  wire [9:0] ackin_s0,ackin_s1,ackin_s2,ackin_s3,ackin_s4,ackin_s5,ackin_s6,ackin_s7,ackin_s8,ackin_s9,ackin_s10,ackin_s11,ackin_s12,ackin_s13,ackin_s14,ackin_s15;
  wire [9:0] ackin_w0,ackin_w1,ackin_w2,ackin_w3,ackin_w4,ackin_w5,ackin_w6,ackin_w7,ackin_w8,ackin_w9,ackin_w10,ackin_w11,ackin_w12,ackin_w13,ackin_w14,ackin_w15;
  wire [9:0] ackin_e0,ackin_e1,ackin_e2,ackin_e3,ackin_e4,ackin_e5,ackin_e6,ackin_e7,ackin_e8,ackin_e9,ackin_e10,ackin_e11,ackin_e12,ackin_e13,ackin_e14,ackin_e15;
   
  wire [9:0] ackout_n0,ackout_n1,ackout_n2,ackout_n3,ackout_n4,ackout_n5,ackout_n6,ackout_n7,ackout_n8,ackout_n9,ackout_n10,ackout_n11,ackout_n12,ackout_n13,ackout_n14,ackout_n15;
  wire [9:0] ackout_s0,ackout_s1,ackout_s2,ackout_s3,ackout_s4,ackout_s5,ackout_s6,ackout_s7,ackout_s8,ackout_s9,ackout_s10,ackout_s11,ackout_s12,ackout_s13,ackout_s14,ackout_s15; 
   wire [9:0] ackout_w0,ackout_w1,ackout_w2,ackout_w3,ackout_w4,ackout_w5,ackout_w6,ackout_w7,ackout_w8,ackout_w9,ackout_w10,ackout_w11,ackout_w12,ackout_w13,ackout_w14,ackout_w15;
   wire [9:0] ackout_e0,ackout_e1,ackout_e2,ackout_e3,ackout_e4,ackout_e5,ackout_e6,ackout_e7,ackout_e8,ackout_e9,ackout_e10,ackout_e11,ackout_e12,ackout_e13,ackout_e14,ackout_e15; 
   
   Router R0(clk,4'b0000,in_data0,16'bx,out_n4,  16'bx    ,out_w1,out_data0,out_n0,out_s0,out_w0,out_e0,ackin_n0,ackin_s0,ackin_w0,ackin_e0,ackout_data0,ackout_n0,ackout_s0,ackout_w0,ackout_e0);
   Router R1(clk,4'b0001,in_data1,16'bx,out_n5,out_e0,out_w2,out_data1,out_n1,out_s1,out_w1,out_e1,ackin_n1,ackin_s1,ackin_w1,ackin_e1,ackout_data1,ackout_n1,ackout_s1,ackout_w1,ackout_e1);
   Router R2(clk,4'b0010,in_data2,16'bx,out_n6,out_e1,out_w3,out_data2,out_n2,out_s2,out_w2,out_e2,ackin_n2,ackin_s2,ackin_w2,ackin_e2,ackout_data2,ackout_n2,ackout_s2,ackout_w2,ackout_e2);
   Router R3(clk,4'b0011,in_data3,16'bx,out_n7,out_e2,16'bx,out_data3,out_n3,out_s3,out_w3,out_e3,ackin_n3,ackin_s3,ackin_w3,ackin_e3,ackout_data3,ackout_n3,ackout_s3,ackout_w3,ackout_e3);
   Router R4(clk,4'b0100,in_data4,out_s0,out_n8,16'bx,out_w5,out_data4,out_n4,out_s4,out_w4,out_e4,ackin_n4,ackin_s4,ackin_w4,ackin_e4,ackout_data4,ackout_n4,ackout_s4,ackout_w4,ackout_e4);
   Router R5(clk,4'b0101,in_data5,out_s1,out_n9,out_e4,out_w6,out_data5,out_n5,out_s5,out_w5,out_e5,ackin_n5,ackin_s5,ackin_w5,ackin_e5,ackout_data5,ackout_n5,ackout_s5,ackout_w5,ackout_e5);
   Router R6(clk,4'b0110,in_data6,out_s2,out_n10,out_e5,out_w7,out_data6,out_n6,out_s6,out_w6,out_e6,ackin_n6,ackin_s6,ackin_w6,ackin_e6,ackout_data6,ackout_n6,ackout_s6,ackout_w6,ackout_e6);
   Router R7(clk,4'b0111,in_data7,out_s3,out_n11,out_e6,16'bx,out_data7,out_n7,out_s7,out_w7,out_e7,ackin_n7,ackin_s7,ackin_w7,ackin_e7,ackout_data7,ackout_n7,ackout_s7,ackout_w7,ackout_e7);
   Router R8(clk,4'b1000,in_data8,out_s4,out_n12,16'bx,out_w9,out_data8,out_n8,out_s8,out_w8,out_e8,ackin_n8,ackin_s8,ackin_w8,ackin_e8,ackout_data8,ackout_n8,ackout_s8,ackout_w8,ackout_e8);
   Router R9(clk,4'b1001,in_data9,out_s5,out_n13,out_e8,out_w10,out_data9,out_n9,out_s9,out_w9,out_e9,ackin_n9,ackin_s9,ackin_w9,ackin_e9,ackout_data9,ackout_n9,ackout_s9,ackout_w9,ackout_e9);
   Router R10(clk,4'b1010,in_data10,out_s6,out_n14,out_e9,out_w11,out_data10,out_n10,out_s10,out_w10,out_e10,ackin_n10,ackin_s10,ackin_w10,ackin_e10,ackout_data10,ackout_n10,ackout_s10,ackout_w10,ackout_e10);
   Router R11(clk,4'b1011,in_data11,out_s7,out_n15,out_e10,16'bx,out_data11,out_n11,out_s11,out_w11,out_e11,ackin_n11,ackin_s11,ackin_w11,ackin_e11,ackout_data11,ackout_n11,ackout_s11,ackout_w11,ackout_e11);
   Router R12(clk,4'b1100,in_data12,out_s8, 16'bx,16'bx,out_w13,out_data12,out_n12,out_s12,out_w12,out_e12,ackin_n12,ackin_s12,ackin_w12,ackin_e12,ackout_data12,ackout_n12,ackout_s12,ackout_w12,ackout_e12);
   Router R13(clk,4'b1101,in_data13,out_s9, 16'bx,out_e12,out_w14,out_data13,out_n13,out_s13,out_w13,out_e13,ackin_n13,ackin_s13,ackin_w13,ackin_e13,ackout_data13,ackout_n13,ackout_s13,ackout_w13,ackout_e13);
   Router R14(clk,4'b1110,in_data14,out_s10,16'bx,out_e13,out_w15,out_data14,out_n14,out_s14,out_w14,out_e14,ackin_n14,ackin_s14,ackin_w14,ackin_e14,ackout_data14,ackout_n14,ackout_s14,ackout_w14,ackout_e14);
   Router R15(clk,4'b1111,in_data15,out_s11,16'bx,out_e14,16'bx,out_data15,out_n15,out_s15,out_w15,out_e15,ackin_n15,ackin_s15,ackin_w15,ackin_e15,ackout_data15,ackout_n15,ackout_s15,ackout_w15,ackout_e15);

    assign ackin_n4=ackout_s0;
   assign ackin_n5=ackout_s1;
   assign ackin_n6=ackout_s2;
   assign ackin_n7=ackout_s3;
   assign ackin_n8=ackout_s4;
   assign ackin_n9=ackout_s5;
   assign ackin_n10=ackout_s6;
   assign ackin_n11=ackout_s7;
   assign ackin_n12=ackout_s8;
   assign ackin_n13=ackout_s9;
   assign ackin_n14=ackout_s10;
   assign ackin_n15=ackout_s11;

   
   assign ackin_s0=ackout_n4;
   assign ackin_s1=ackout_n5;
   assign ackin_s2=ackout_n6;
   assign ackin_s3=ackout_n7;
   assign ackin_s4=ackout_n8;
   assign ackin_s5=ackout_n9;
   assign ackin_s6=ackout_n10;
   assign ackin_s7=ackout_n11;
   assign ackin_s8=ackout_n12;
   assign ackin_s9=ackout_n13;
   assign ackin_s10=ackout_n14;
   assign ackin_s11=ackout_n15;

   
   assign ackin_n5=ackout_s1;
   assign ackin_n6=ackout_s2;
   assign ackin_n7=ackout_s3;
   assign ackin_n8=ackout_s4;
   assign ackin_n9=ackout_s5;
   assign ackin_n10=ackout_s6;
   assign ackin_n11=ackout_s7;
   assign ackin_n12=ackout_s8;
   assign ackin_n13=ackout_s9;
   assign ackin_n14=ackout_s10;
   assign ackin_n15=ackout_s11;
   
   assign ackin_w1=ackout_e0;
   assign ackin_w5=ackout_e4;
   assign ackin_w9=ackout_e8;
   assign ackin_w13=ackout_e12;
   assign ackin_w2=ackout_e1;
   assign ackin_w6=ackout_e5;
   assign ackin_w10=ackout_e9;
   assign ackin_w14=ackout_e13;
   assign ackin_w3=ackout_e2;
   assign ackin_w7=ackout_e6;
   assign ackin_w11=ackout_e10;
   assign ackin_w15=ackout_e14;
           
   assign ackin_e1=ackout_w2;
   assign ackin_e5=ackout_w6;
   assign ackin_e9=ackout_w10;
   assign ackin_e13=ackout_w14;
   assign ackin_e2=ackout_w3;
   assign ackin_e6=ackout_w7;
   assign ackin_e10=ackout_w11;
   assign ackin_e14=ackout_w15;
   assign ackin_e0=ackout_w1;
   assign ackin_e4=ackout_w5;
   assign ackin_e8=ackout_w9;
   assign ackin_e12=ackout_w13;
endmodule



module Router(
    input wire clk,
    input wire [3:0] router_id,
    input wire [15:0] in_data,
    input wire [15:0] in_n,in_s,in_w,in_e,
    output wire [15:0] out_data,
  output wire [15:0] out_n,out_s, out_w, out_e,
  input wire [9:0] in_nack,in_sack,in_wack,in_eack,
    output wire [9:0] out_dataack,
  output wire [9:0] out_nack,out_sack, out_wack, out_eack
    
    );
    
    reg [15:0] in_buff;
    reg [15:0] in_buffn,in_buffs,in_buffe,in_buffw;
    reg [15:0] DATAIN_in,DATAIN_ns,DATAIN_ne,DATAIN_nw,DATAIN_sn,DATAIN_is,DATAIN_se,DATAIN_sw,DATAIN_en,DATAIN_es,DATAIN_ie,DATAIN_ew,DATAIN_wn,DATAIN_ws,DATAIN_we,DATAIN_iw,DATAIN_nn,DATAIN_ss,DATAIN_ww,DATAIN_ee;

  buffer b1(DATAIN_in,DATAIN_sn,DATAIN_en,DATAIN_wn,clk,out_n);
  buffer b2(DATAIN_ns,DATAIN_is,DATAIN_es,DATAIN_ws,clk,out_s);
  buffer b3(DATAIN_ne,DATAIN_se,DATAIN_ie,DATAIN_we,clk,out_e);
  buffer b4(DATAIN_nw,DATAIN_sw,DATAIN_ew,DATAIN_iw,clk,out_w);
  buffer b5(DATAIN_nn,DATAIN_ss,DATAIN_ww,DATAIN_ee,clk,out_data);
  
  reg [9:0] in_buffack;
    reg [9:0] in_buffnack,in_buffsack,in_buffeack,in_buffwack;
  reg [9:0] DATAIN_inack,DATAIN_nsack,DATAIN_neack,DATAIN_nwack,DATAIN_snack,DATAIN_isack,DATAIN_seack,DATAIN_swack,DATAIN_enack,DATAIN_esack,DATAIN_ieack,DATAIN_ewack,DATAIN_wnack,DATAIN_wsack,DATAIN_weack,DATAIN_iwack,DATAIN_nnack,DATAIN_ssack,DATAIN_wwack,DATAIN_eeack;

  bufferack b6(DATAIN_inack,DATAIN_snack,DATAIN_enack,DATAIN_wnack,clk,out_nack);
  bufferack b7(DATAIN_nsack,DATAIN_isack,DATAIN_esack,DATAIN_wsack,clk,out_sack);
  bufferack b8(DATAIN_neack,DATAIN_seack,DATAIN_ieack,DATAIN_weack,clk,out_eack);
  bufferack b9(DATAIN_nwack,DATAIN_swack,DATAIN_ewack,DATAIN_iwack,clk,out_wack);
  bufferack b10(DATAIN_nnack,DATAIN_ssack,DATAIN_wwack,DATAIN_eeack,clk,out_dataack);
  
    always @(posedge clk)
    begin
    
       if (in_data) begin
            in_buff<=in_data;
    if (router_id[3:2] > in_buff[11:10])
          begin  
            DATAIN_in<=in_buff;
            
            
          end
    else if (router_id[3:2] < in_buff[11:10])
            begin  
             
                DATAIN_is<=in_buff;
              
            end
        else 
          begin
            if (router_id[1:0] > in_buff[9:8])
                begin  
               
                DATAIN_iw<=in_buff;
                
                
                end
            else if (router_id[1:0] < in_buff[9:8])
                begin  
             
               
                DATAIN_ie<=in_buff;
                
                end
            
            end
       end
  
       if (in_n)begin
            in_buffn<=in_n;
         if (router_id[3:2] > in_buffn[11:10])
            begin  
             
           
              
            end
         else if (router_id[3:2] < in_buffn[11:10])
            begin  
             
                DATAIN_ns<=in_buffn;
              
            end
        else 
          begin
            if (router_id[1:0] > in_buffn[9:8])
                begin  
               
                DATAIN_nw<=in_buffn;
                
                
                end
            else if (router_id[1:0] < in_buffn[9:8])
                begin  
             
               
                DATAIN_ne<=in_buffn;
                
                end
            else
                begin  
            
           
             DATAIN_nn<=in_buffn; end
        end
    end

       if (in_s) begin
            in_buffs<=in_s;
            
         if (router_id[3:2] > in_buffs[11:10])
          begin  
            DATAIN_sn<=in_buffs;
          end
        else 
          begin
            if (router_id[1:0] > in_buffs[9:8])
                begin  
               
                DATAIN_sw<=in_buffs;
                
                
                end
            else if (router_id[1:0] < in_buffs[9:8])
                begin  
             
               
                DATAIN_se<=in_buffs;
                
                end
            else
                begin  
            
           
             DATAIN_ss<=in_buffs; end
        end
    end
  
       if (in_w) begin
            in_buffw<=in_w;
            
    if (router_id[3:2] > in_buffw[11:10])
          begin  
            DATAIN_wn<=in_buffw;
            
            
          end
    else if (router_id[3:2] < in_buffw[11:10])
            begin  
             
                DATAIN_ws<=in_buffw;
              
            end
        else 
          begin
            if (router_id[1:0] < in_buffw[9:8])
                begin  
             
               
                DATAIN_we<=in_buffw;
                
                end
            else
                begin  
            
           
             DATAIN_ww<=in_buffw; end
        end
    end
      
       if (in_e) begin
            in_buffe<=in_e;
            
    if (router_id[3:2] > in_buffe[11:10])
          begin  
            DATAIN_en<=in_buffe;
            
            
          end
    else if (router_id[3:2] < in_buffe[11:10])
            begin  
             
                DATAIN_es<=in_buffe;
              
            end
        else 
          begin
            if (router_id[1:0] > in_buffe[9:8])
                begin  
               
                DATAIN_ew<=in_buffe;
                
                
                end
            
            else
                begin  
            
           
            DATAIN_ee<=in_buffe; end
        end
    end
     if (out_data) begin
        in_buffack<={1'b1,out_data[15:8]};
         if (router_id[3:2] > in_buffack[7:6])
          begin  
            DATAIN_inack<=in_buffack;
            
            
          end
    else if (router_id[3:2] < in_buffack[7:6])
            begin  
             
                DATAIN_isack<=in_buffack;
              
            end
        else 
          begin
            if (router_id[1:0] > in_buffack[5:4])
                begin  
               
                DATAIN_iwack<=in_buffack;
                
                
                end
            else if (router_id[1:0] < in_buffack[5:4])
                begin  
             
               
                DATAIN_ieack<=in_buffack;
                
                end
            
            end
       end
   
   
       if (in_nack)begin
            in_buffnack<=in_nack;
         if (router_id[3:2] > in_buffnack[7:6])
            begin  
             
           
              
            end
         else if (router_id[3:2] < in_buffnack[7:6])
            begin  
             
                DATAIN_nsack<=in_buffnack;
              
            end
        else 
          begin
            if (router_id[1:0] > in_buffnack[5:4])
                begin  
               
                DATAIN_nwack<=in_buffnack;
                
                
                end
            else if (router_id[1:0] < in_buffnack[5:4])
                begin  
             
               
                DATAIN_neack<=in_buffnack;
                
                end
            else
                begin  
            
           
             DATAIN_nnack<=in_buffnack; end
        end
    end


       if (in_sack) begin
            in_buffsack<=in_sack;
            
         if (router_id[3:2] > in_buffsack[7:6])
          begin  
            DATAIN_snack<=in_buffsack;
          end
        else 
          begin
            if (router_id[1:0] > in_buffsack[5:4])
                begin  
               
                DATAIN_swack<=in_buffsack;
                
                
                end
            else if (router_id[1:0] < in_buffsack[5:4])
                begin  
             
               
                DATAIN_seack<=in_buffsack;
                
                end
            else
                begin  
            
           
             DATAIN_ssack<=in_buffsack; end
        end
    end
   
    
       if (in_wack) begin
            in_buffwack<=in_wack;
            
    if (router_id[3:2] > in_buffwack[7:6])
          begin  
            DATAIN_wnack<=in_buffwack;
            
            
          end
    else if (router_id[3:2] < in_buffwack[7:6])
            begin  
             
                DATAIN_wsack<=in_buffwack;
              
            end
        else 
          begin
            if (router_id[1:0] < in_buffwack[5:4])
                begin  
             
               
                DATAIN_weack<=in_buffwack;
                
                end
            else
                begin  
            
           
             DATAIN_wwack<=in_buffwack; end
        end
    end
  
       
       if (in_eack) begin
            in_buffeack<=in_eack;
            
    if (router_id[3:2] > in_buffeack[7:6])
          begin  
            DATAIN_enack<=in_buffeack;
            
            
          end
    else if (router_id[3:2] < in_buffeack[7:6])
            begin  
             
                DATAIN_esack<=in_buffeack;
              
            end
        else 
          begin
            if (router_id[1:0] > in_buffeack[5:4])
                begin  
               
                DATAIN_ewack<=in_buffeack;
                
                
                end
            
            else
                begin  
            
           
            DATAIN_eeack<=in_buffeack; end
        end
    end
  end
  
endmodule
module buffer(
input wire [15:0] DATAIN0,DATAIN1,DATAIN2,DATAIN3,
input wire clk,
output wire [15:0] dataout );
  
wire [15:0] DATAOUT0,DATAOUT1,DATAOUT2,DATAOUT3;
wire [15:0] D0,D1,D2,D3;


jFIFO q0(DATAOUT0, clk, DATAIN0);
jFIFO q1(DATAOUT1, clk, DATAIN1);
jFIFO q2(DATAOUT2, clk, DATAIN2);
jFIFO q3(DATAOUT3, clk, DATAIN3);
  
  
mux41 m(D0,D1,D2,D3,clk,dataout);

  assign D0=DATAOUT0;
  assign D1=DATAOUT1;
  assign D2=DATAOUT2;
  assign D3=DATAOUT3;
endmodule

module jFIFO(
  output reg [15:0] DATAOUT,
  input wire clk,
  input wire [15:0] DATAIN
  );

  wire full ,empty;
  reg [2:0] wptr;
  reg [15:0] memory1,memory2,memory3,memory4; 
  assign full = ( (wptr == 3'b100)? 1 : 0 );
  assign empty = ((wptr == 3'b000) ? 1 : 0);
  reg [1:0] count;
  
  initial @(clk)

      begin
        memory1 <= 16'bx; memory2 <= 16'bx; memory3 <= 16'bx; memory4 <= 16'bx;
        wptr <= 0; count=2'd3;
         end

      
always @(posedge clk)
  begin
    if (!full)
    begin
        if (memory1)begin
            wptr=3'b001;
            if (memory2)begin
                wptr=3'b010;
                if (memory3)begin
                    wptr=3'b011;
                    if (memory4)begin
                    wptr=3'b100;
                    end
                    else memory4<=DATAIN;
                    end
                else memory3<=DATAIN;
                end
            else memory2<=DATAIN;
        end
        else memory1<=DATAIN;
      end
     if (count == 2'd0) begin
      count <= 2'd3;
      if (!empty)
      begin
        DATAOUT<= memory1;
        memory1<=memory2;
        memory2<=memory3;
        memory3<=memory4;
        memory4<=9'bx;
        wptr=wptr-1;
      end
        if (empty) DATAOUT<=16'bx;

    end 
    if (count != 2'd0) begin
      count <= count - 1;
    end
  end

endmodule
  
  
module counter(input wire clk,output reg s0, s1
    );
  initial {s0,s1}<=2'b00;

always @(posedge clk)
begin
if({s0,s1}==2'b11)
{s0,s1}<= 2'b00;
else
{s0,s1}<={s0,s1}+1;
end 
  
endmodule

module mux41(
  input wire [15:0]in_n,
  input wire [15:0]in_s,
  input wire [15:0]in_e,
  input wire [15:0]in_w,
  input wire clk,
  output reg [15:0] dataout
);
  wire s0,s1;
  counter c1(clk,s0,s1);
  always@(posedge clk)
    begin
      case({s0,s1})
        2'b00 : dataout<=in_n;
        2'b01 : dataout<=in_s;
        2'b10 : dataout<=in_e;
        2'b11 : dataout<=in_w;
      endcase
     end
endmodule

module bufferack(
input wire [9:0] DATAINack0,DATAINack1,DATAINack2,DATAINack3,
input wire clk,
output wire [9:0] dataoutack );
  
 wire [9:0] DATAOUTack0,DATAOUTack1,DATAOUTack2,DATAOUTack3;
 wire [9:0] Dack0,Dack1,Dack2,Dack3;


jFIFOack q0(DATAOUTack0, clk, DATAINack0);
jFIFOack q1(DATAOUTack1, clk, DATAINack1);
jFIFOack q2(DATAOUTack2, clk, DATAINack2);
jFIFOack q3(DATAOUTack3, clk, DATAINack3);

  
  
mux41ack m(Dack0,Dack1,Dack2,Dack3,clk,dataoutack);

  assign Dack0=DATAOUTack0;
  assign Dack1=DATAOUTack1;
  assign Dack2=DATAOUTack2;
  assign Dack3=DATAOUTack3;
endmodule

module jFIFOack(
  output reg [9:0] DATAOUTack,
  input wire clk,
  input wire [9:0] DATAINack
  );
 reg [1:0] countack;
  wire fullack ,emptyack;
  reg [2:0] wptrack;
  reg [9:0] memory1ack,memory2ack,memory3ack,memory4ack; 
  assign fullack = ( (wptrack == 3'b100)? 1 : 0 );
  assign emptyack = ((wptrack == 3'b000) ? 1 : 0);
  
  initial @(clk)

      begin
        memory1ack <= 9'bx; memory2ack <= 9'bx; memory3ack <= 9'bx; memory4ack <= 9'bx;
        wptrack <= 0;countack<=2'd3;
         end

      
always @(posedge clk)
  begin
    if (!fullack)
    begin
        if (memory1ack)begin
            wptrack=3'b001;
            if (memory2ack)begin
                wptrack=3'b010;
                if (memory3ack)begin
                    wptrack=3'b011;
                    if (memory4ack)begin
                    wptrack=3'b100;
                    end
                    else memory4ack<=DATAINack;
                    end
                else memory3ack<=DATAINack;
                end
            else memory2ack<=DATAINack;
        end
        else memory1ack<=DATAINack;
      end
    if (countack == 2'd0) begin
      countack <= 2'd3;
      if (!emptyack)
      begin
        DATAOUTack<= memory1ack;
        memory1ack<=memory2ack;
        memory2ack<=memory3ack;
        memory3ack<=memory4ack;
        memory4ack<=9'bx;
        wptrack=wptrack-1;
      end
        if (emptyack) DATAOUTack<=9'bx;

    end 
    if (countack != 2'd0) begin
      countack <= countack - 1;
    end
  end
  
endmodule


module mux41ack(
  input wire [9:0]in_nack,
  input wire [9:0]in_sack,
  input wire [9:0]in_eack,
  input wire [9:0]in_wack,
  input wire clk,
  output reg [9:0] dataoutack
);
  wire s0,s1;
  counter c1(clk,s0,s1);
  always@(posedge clk)
    begin
      case({s0,s1})
        2'b00 : dataoutack<=in_nack;
        2'b01 : dataoutack<=in_sack;
        2'b10 : dataoutack<=in_eack;
        2'b11 : dataoutack<=in_wack;
      endcase
     end
endmodule

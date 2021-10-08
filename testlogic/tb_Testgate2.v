`timescale 1ns/10ps
/* Test2 게이트 Test2 Bench */
module tb_Testgate2;
  reg A,B,C;
  wire F;
  Testgate2 test2(A, B,C, F);

  //여기부터 waveform을 보기 위한 vcd 파일 작성 코드

  initial
    begin
      $dumpfile("test_Testgate2_out.vcd");
      $dumpvars(0,tb_Testgate2);
      $monitor("%b",F);
    end

    initial
      begin
        A=0; B=0; C=0; #100; //100ns 동안 시간 지연
        A=0; B=0; C=1; #100;
        A=0; B=1; C=0; #100;
        A=0; B=1; C=1; #100;
        A=1; B=0; C=0; #100;
        A=1; B=0; C=1; #100;
        A=1; B=1; C=0; #100;
        A=1; B=1; C=1; #100;

      end
endmodule

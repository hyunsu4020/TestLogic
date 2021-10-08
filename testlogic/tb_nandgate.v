`timescale 1ns/10ps
/* NAND 게이트 Test Bench */
module tb_NANDgate;
  reg A, B;
  wire X;
  NANDgate NAND(A, B, X); // And는 게이트 이름(생략가능)

  // 여기부터 waveform을 보기 위한 vcd 파일 작성 코드

  initial
    begin
      $dumpfile("test_NANDgate_out.vcd");
      $dumpvars(0, tb_NANDgate);
      $monitor("%b", X);
    end

    initial
      begin
        A=0; B=0; #100; //100ns 시간지연
        A=0; B=1; #100;
        A=1; B=0; #100;
        A=1; B=1; #100;
      end
endmodule

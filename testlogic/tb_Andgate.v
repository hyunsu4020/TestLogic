`timescale 1ns/10ps  //시간단위/정밀도
/* AND 회로 설계 */
module tb_Andgate;
  reg A, B;
  wire X;
  Andgate And(A, B, X);  // And 게이트 이름(생략가능)

  // 여기부터 waveform을 보기 위한 vcd 파일 작성 코드

  initial
    begin
      $dumpfile("test_Andgate_out.vcd");
      $dumpvars(0, tb_Andgate);
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

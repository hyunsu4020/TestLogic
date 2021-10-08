`timescale 1ns/10ps
/* NOR 게이트 Test Bench */
module tb_NORgate;
  reg A, B;
  wire F;
  NORgate NOR(A, B, F);

  // 여기부터 waveform을 보기 위한 vcd 파일 작성 코드

  initial
    begin
      $dumpfile("test_NORgate_out.vcd");
      $dumpvars(0, tb_NORgate);
      $monitor("%b", F);
    end

    initial
      begin
        A=0; B=0; #100; //100ns 시간지연
        A=0; B=1; #100;
        A=1; B=0; #100;
        A=1; B=1; #100;
      end
endmodule

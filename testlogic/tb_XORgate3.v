`timescale 1ns/10ps
module tb_XORgate3;
  reg A, B, C;
  wire F;
  XORgate3 XOR3(A, B, C, F);

  // 여기부터 waveform을 보기 위한 vcd 파일 작성 코드

  initial
    begin
      $dumpfile("test_XORgate3_out.vcd");
      $dumpvars(0, tb_XORgate3);
      $monitor("%b", F);
    end

    initial
      begin
        A=0; B=0; C=0; #100; //100ns 시간지연
        A=0; B=0; C=1; #100;
        A=0; B=1; C=0; #100;
        A=0; B=1; C=1; #100;
        A=1; B=0; C=0; #100;
        A=1; B=0; C=1; #100;
        A=1; B=1; C=0; #100;
        A=1; B=1; C=1; #100;
      end
endmodule

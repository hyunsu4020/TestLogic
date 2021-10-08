`timescale 1ns/10ps
/* NOT 게이트 Test Bench */
module tb_NOTgate;
  reg A;
  wire F;
  NOTgate NOT(A, F);

  //여기부터 wavefNOTm을 보기 위한 vcd 파일 작성 코드

  initial
    begin
      $dumpfile("test_NOTgate_out.vcd");
      $dumpvars(0,tb_NOTgate);
      $monitor("%b",F);
    end

    initial
      begin
        A=0; #100; //100ns 시간지연
        A=1; #100;

      end
endmodule

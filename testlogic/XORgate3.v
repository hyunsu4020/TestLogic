/* 3입력에 대한 XOR 회로 설계 */
module XORgate3(A, B, C, F);
  input A, B, C;
  output F;

  assign F = A^B^C;

endmodule

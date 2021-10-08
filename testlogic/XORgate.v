/* XOR 회로 설계 */
module XORgate(A, B, F);
  input A, B;
  output F;

  assign F=A^B;

endmodule

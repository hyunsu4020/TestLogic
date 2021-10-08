/* Test 회로 설계 */
module Testgate(A, B, F);
  input A, B;
  output F;

  assign F=(A&B)^(A|B);
endmodule

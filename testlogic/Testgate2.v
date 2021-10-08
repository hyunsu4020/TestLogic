/* Test2 회로 설계 */
module Testgate2(A, B,C, F);
  input A, B,C;
  output F;

  assign F=(A&B)|C;
endmodule

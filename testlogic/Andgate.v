/* AND 회로 설계 */
module Andgate(A, B, X);
	input A, B;
	output X;

	assign X= A&B;

endmodule
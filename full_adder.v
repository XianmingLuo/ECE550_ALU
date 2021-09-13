module full_adder(sum, c_out, a, b, c_in);
	input a, b, c_in;
	output sum, c_out;
	
	wire w1, w2, s3;
	
	xor xor_1(w1, a,b);
	xor xor_2(sum, w1, c_in);
	and and_1(w2, w1, c_in);
	and and_2(w3, a, b);
	or or_1(c_out, w2, w3);
	
endmodule

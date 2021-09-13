# ECE550_ALU
### Author: 
Mila Zhao(bz82) and Xianming Luo(xl369)
### Design Implementation: 
We used 32-bit CSA as the adder. For the CSA, we built it with 2 16-bit RCAs. As to the adder, we used a 3-input OR gate. This reduces the gate delay of our full adder so that our adder is able to work with a 50MHz clock. Our worst delay is about 15ns, which is less than 20ns, the period of the 50 MHz clock.\
csa_32b_by_rca.v is the source of our 32-bit CSA, which is based on rca_16b.v, our 16-bit RCA.\
rca_16b.v is built with rca_4b.v, which contains the source of 4-bit RCA.\
We built the rca_4b.v using full_adder.v.\
adder_tb.v is used as a test bench for the 32-bit CSA and alu_tb.v is used to test the entire function of our alu.
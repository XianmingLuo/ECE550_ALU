# ECE550_ALU
### Author: 
Mila Zhao(bz82) and Xianming Luo(xl369)
### Design Implementation: 
We used 32-bit CSA as the adder. For the CSA, we built it with 2 16-bit RCAs. As to the adder, we used a 3-input OR gate. This reduces the gate delay of our full adder so that our adder is able to work with a 50MHz clock. Our worst delay is about 15ns, which is less than 20ns, the period of the 50 MHz clock.
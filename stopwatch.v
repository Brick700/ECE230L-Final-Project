//StopWatch: Modulo-60 Counter
module stopwatch(
    input clk,
    input rst,
    input en,
    output [5:0] state     //6-bits to represent the highest number 59
);

//If en=1, count, if en=0, hold state
assign D = en ? Qnext : Q;

//If state==59, next=0, else next=sum
assign Qnext = (Q==6'd59) ? 6'd0 : sum;

wire [5:0] sum; //Stores result of Q+1
wire c0, c1, c2, c3, c4; //Chains each full adder
wire [5:0] Q; //Current state
wire [5:0] D; //Next value
wire [5:0] Qnext; // Next state logic

//6 full adders to computer 6-bits N+1 with each feed into the next
full_adder fa0(
    .A(Q[0]),
    .B(1'b0),
    .Cin(1'b1),
    .Y(sum[0]),
    .Cout(c0)
);

full_adder fa1(
    .A(Q[1]),
    .B(1'b0),
    .Cin(c0),
    .Y(sum[1]),
    .Cout(c1)
);

full_adder fa2(
    .A(Q[2]),
    .B(1'b0),
    .Cin
    .Y
    .Cout
);

full_adder fa3(
    .A
    .B(1'b0),
    .Cin
    .Y
    .Cout
);

full_adder fa4(
    .A
    .B(1'b0),
    .Cin
    .Y
    .Cout
);

full_adder fa5(
    .A
    .B(1'b0),
    .Cin
    .Y
    .Cout
);

//6 D-Flip-Flops to hold the memory of the bits, one per bits
D_Flip_Flop dff0(
    .d(D[0]), //Next value passed into fa
    .clk(clk),
    .rst(rst),
    .q(Q[0]) //Current value of bit 0
);

D_Flip_Flop dff1(
    
);

D_Flip_Flop dff2(
    
);

D_Flip_Flop dff3(
    
);

D_Flip_Flop dff4(
    
);

D_Flip_Flop dff5(
    
);

   
endmodule





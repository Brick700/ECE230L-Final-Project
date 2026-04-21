//Timer: Mod-60 downcounter with synchronous load
module timer(
    input clk,
    input rst,
    input en,               //Enables or Disables clock
    input load,             //If load=1, load the counter with "load_value"
    input [5:0] load_value, //Value to load into counter register. Counter will then start counting from this value
    output [5:0] state     //6-bits to represent the highest number 59
);

wire [5:0] Q; //Current state
wire [5:0] D; //Next value
wire [5:0] dec;

//6 D-Flip-Flops to hold the memory of the bits, one per bits
D_Flip_Flop dff0(
    .D(D[0]), //Next value passed into fa
    .clk(clk),
    .rst(rst),
    .Q(Q[0]) //Current value of bit 0
);

D_Flip_Flop dff1(
    .D(D[1]),
    .clk(clk),
    .rst(rst),
    .Q(Q[1])
);

D_Flip_Flop dff2(
    .D(D[2]),
    .clk(clk),
    .rst(rst),
    .Q(Q[2])
);

D_Flip_Flop dff3(
    .D(D[3]),
    .clk(clk),
    .rst(rst),
    .Q(Q[3])
);

D_Flip_Flop dff4(
    .D(D[4]),
    .clk(clk),
    .rst(rst),
    .Q(Q[4])
);

D_Flip_Flop dff5(
    .D(D[5]),
    .clk(clk),
    .rst(rst),
    .Q(Q[5])
);

//Decrement logic Q-1

assign dec[0] = ~Q[0];
assign dec[1] = Q[1] ^ ~Q[0];
assign dec[2] = Q[2] ^ (~Q[1] & ~Q[0]);
assign dec[3] = Q[3] ^ (~Q[2] & ~Q[1] & ~Q[0]);
assign dec[4] = Q[4] ^ (~Q[3] & ~Q[2] & ~Q[1] & ~Q[0]);
assign dec[5] = Q[5] ^ (~Q[4] & ~Q[3] & ~Q[2] & ~Q[1] & ~Q[0]);


//next load logic
assign D = load ? load_value :
           (Q == 6'd0) ? 6'd0 :
           en ? dec        : Q;

assign state = Q;

endmodule
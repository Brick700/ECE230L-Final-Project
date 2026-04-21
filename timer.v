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
    .d(D[0]), //Next value passed into fa
    .clk(clk),
    .rst(rst),
    .q(Q[0]) //Current value of bit 0
);

D_Flip_Flop dff1(
    .d(D[0]),
    .clk(clk),
    .rst(rst),
    .q(Q[0])
    
);

D_Flip_Flop dff2(
    
);

D_Flip_Flop dff3(
    
);

D_Flip_Flop dff4(
    
);

D_Flip_Flop dff5(
    
);

//Decrenebt logic Q-1

dec[0]
dec[1]
dec[2]
dec[3]
dec[4]
dec[5]






endmodule
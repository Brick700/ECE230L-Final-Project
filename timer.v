//Timer: Mod-60 downcounter with synchronous load
module timer(
    input clk,
    input rst,
    input en,               //Enables or Disables clock
    input load,             //If load=1, load the counter with "load_value"
    input [5:0] load_value, //Value to load into counter register. Counter will then start counting from this value
    output [5:0] state     //6-bits to represent the highest number 59
);
//Chained full adders to computer N+1 with 6-bits
full_adder fa0(
    .A
    .B
    .Cin
    .Y
    .Cout
);

full_adder fa1(
    .A
    .B
    .Cin
    .Y
    .Cout
);

full_adder fa2(
    .A
    .B
    .Cin
    .Y
    .Cout
);

full_adder fa3(
    .A
    .B
    .Cin
    .Y
    .Cout
);

full_adder fa4(
    .A
    .B
    .Cin
    .Y
    .Cout
);

full_adder fa5(
    .A
    .B
    .Cin
    .Y
    .Cout
);






endmodule
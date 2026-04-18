module D_Flip_Flop(
    input D,      //Data input - what were snapshotting
    input Clk,    //Clock - trigger the snapshot
    input Rst,
    output reg Q, //Stored input
    output NotQ   //Oppositer of Q
);

    always @(posedge Clk or posedge Rst) //Only run with Clk goes from 0 to 1
        if (Rst)
            Q <= 0;
        else   
            Q <= D;       //Store input of D

    assign NotQ = ~Q;  

    
endmodule
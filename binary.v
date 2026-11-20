module binary(
input w, clk,rst,
output z,
output [2:0]bin
);


wire[2:0] State;
wire[2:0] Next;
assign Next[0]=(w & State[2])|(State[1]&~w);
assign Next[1]=~w;
assign Next[2]=w;
assign bin=State;

dff zero(
        .D(Next[0]),
        .Default(1'b1),
        .clk(clk),
        .Q(State[0]),
        .reset(rst)
    );

    dff one(
        .D(Next[1]),
        .Default(1'b0),
        .clk(clk),
        .Q(State[1]),
        .reset(rst)
    );
dff two(
        .D(Next[2]),
        .Default(1'b0),
        .clk(clk),
        .Q(State[2]),
        .reset(rst)
    );
    
assign z=(State[0]&State[1])|(State[0]&State[2]);

endmodule
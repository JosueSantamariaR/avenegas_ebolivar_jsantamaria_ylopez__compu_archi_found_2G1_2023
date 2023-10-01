module and2_gate (
    input wire a,
    input wire b,
    output wire y
);
    assign y = a & b;
endmodule

module and3_gate (
    input wire a,
    input wire b,
    input wire c,
    output wire y
);
    assign y = a & b & c;
endmodule

module or2_gate (
    input wire a,
    input wire b,
    output wire y
);
    assign y = a | b;
endmodule

module or3_gate (
    input wire a,
    input wire b,
    input wire c,
    output wire y
);
    assign y = a | b | c;
endmodule

module not_gate (
    input wire a,
    output wire y
);
    assign y = ~a;
endmodule
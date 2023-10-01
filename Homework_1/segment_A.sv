module Segment_A (
    input wire A, // Entrada A
    input wire B, // Entrada B
    input wire C, // Entrada C
    output wire segment_A // Salida para el segmento A del display de 7 segmentos
);

    wire not_A;
    wire not_B;
    wire not_C;
	 wire and1,and2,and3;

    // Compuerta NOT para negar A
    not_gate not_A_inst (
        .a(A),
        .y(not_A)
    );

    // Compuerta NOT para negar B
    not_gate not_B_inst (
        .a(B),
        .y(not_B)
    );

    // Compuerta NOT para negar C
    not_gate not_C_inst (
        .a(C),
        .y(not_C)
    );

    // Compuertas AND de 2 entradas
    and2_gate and1_inst (
        .a(not_C), // Entrada C negada
        .b(not_A), // Entrada A negada
        .y(and1) // Salida para el segmento A
    );

    and2_gate and2_inst (
        .a(B),
        .b(C),
        .y(and2)
    );

    and2_gate and3_inst (
        .a(A),
        .b(not_B), // Entrada B negada
        .y(and3)
    );

    // Compuerta OR de 3 entradas para combinar las salidas de las AND
    or3_gate or_inst (
        .a(and1),
        .b(and2),
        .c(and3),
        .y(segment_A)
    );

endmodule

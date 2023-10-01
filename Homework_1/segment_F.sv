module Segment_F (
    input wire A, // Entrada A
    input wire B, // Entrada B
    input wire C, // Entrada C
    output wire segment_F // Salida para el segmento F del display de 7 segmentos
);

    wire not_A;
    wire not_B;
    wire not_C;

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

    wire and1;
    wire and2;
    wire and3;

    // Compuerta AND de 2 entradas para A y C
    and2_gate and1_inst (
        .a(A),
        .b(C),
        .y(and1)
    );

    // Compuerta AND de 3 entradas para A negado, B y C negado
    and3_gate and2_inst (
        .a(not_A), // Entrada A negada
        .b(B),
        .c(not_C), // Entrada C negada
        .y(and2)
    );

    // Compuerta AND de 2 entradas para A y B
    and2_gate and3_inst (
        .a(A),
        .b(B),
        .y(and3)
    );

    // Compuerta OR de 3 entradas para combinar las salidas de las AND
    or3_gate or_inst (
        .a(and1),
        .b(and2),
        .c(and3),
        .y(segment_F) // Salida para el segmento F
    );

endmodule

module Segment_C (
    input wire A, // Entrada A
    input wire B, // Entrada B
    input wire C, // Entrada C
    output wire segment_C // Salida para el segmento C del display de 7 segmentos
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

    // Compuerta OR de 3 entradas para combinar A, B negada y C negada
    or3_gate or_inst (
        .a(A),
        .b(not_B), // Entrada B negada
        .c(not_C), // Entrada C negada
        .y(segment_C) // Salida para el segmento C
    );

endmodule
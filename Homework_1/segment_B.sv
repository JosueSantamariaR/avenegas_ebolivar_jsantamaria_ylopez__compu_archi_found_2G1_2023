module Segment_B (
    input wire A, // Entrada A
    input wire C, // Entrada C
    output wire segment_B // Salida para el segmento B del display de 7 segmentos
);

    wire not_A;
    wire not_C;

    // Compuerta NOT para negar A
    not_gate not_A_inst (
        .a(A),
        .y(not_A)
    );

    // Compuerta NOT para negar C
    not_gate not_C_inst (
        .a(C),
        .y(not_C)
    );

    // Compuerta OR de 2 entradas para combinar las entradas negadas
    nor2_gate or_inst (
        .a(not_A), // Entrada A negada
        .b(not_C), // Entrada C negada
        .y(segment_B) // Salida para el segmento B
    );

endmodule

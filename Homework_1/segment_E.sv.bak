module Segment_E (
    input wire A, // Entrada A
    input wire B, // Entrada B
    input wire C, // Entrada C
    output wire segment_E // Salida para el segmento E del display de 7 segmentos
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

    // Compuerta AND de 3 entradas para A negado, B negado y C
    and3_gate and1_inst (
        .a(not_A), // Entrada A negada
        .b(not_B), // Entrada B negada
        .c(C),
        .y(and1)
    );

    // Compuerta AND de 3 entradas para A negado, B y C
    and3_gate and2_inst (
        .a(not_A), // Entrada A negada
        .b(B),
        .c(C),
        .y(and2)
    );

    // Compuerta AND de 3 entradas para A, B negado y C
    and3_gate and3_inst (
        .a(A),
        .b(not_B), // Entrada B negada
        .c(C),
        .y(and3)
    );

    // Compuerta OR de 3 entradas para combinar las salidas de las AND
    or3_gate or_inst (
        .a(and1),
        .b(and2),
        .c(and3),
        .y(segment_E) // Salida para el segmento E
    );

endmodule

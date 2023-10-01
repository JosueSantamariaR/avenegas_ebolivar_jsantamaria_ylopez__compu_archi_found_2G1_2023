module Segment_G (
    input wire A, // Entrada A
    input wire B, // Entrada B
    input wire C, // Entrada C
    output wire segment_G // Salida para el segmento G del display de 7 segmentos
);

    wire and1;
    
    // Compuerta AND de 2 entradas para A y C
    and2_gate and_inst (
        .a(A),
        .b(C),
        .y(and1)
    );

    // Compuerta OR de 2 entradas para combinar B y la salida de la compuerta AND
    or2_gate or_inst (
        .a(B),
        .b(and1),
        .y(segment_G) // Salida para el segmento G
    );

endmodule

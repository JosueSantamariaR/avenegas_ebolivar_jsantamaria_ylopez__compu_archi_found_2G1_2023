/*module encoder_7Seg_TB;
    // Señales de entrada
    reg A;
    reg B;
    reg C;

    // Señales de salida
    wire segment_A;
    wire segment_B;
    wire segment_C;
    wire segment_D;
    wire segment_E;
    wire segment_F;
    wire segment_G;

    // Instancia del módulo principal
    encoder_7Seg dut (
        .A(A),
        .B(B),
        .C(C),
        .Segment_A(segment_A),
        .Segment_B(segment_B),
        .Segment_C(segment_C),
        .Segment_D(segment_D),
        .Segment_E(segment_E),
        .Segment_F(segment_F),
        .Segment_G(segment_G)
    );

    // Generación de patrones de entrada
    initial begin
        $monitor("A=%b, B=%b, C=%b, Segment_A=%b, Segment_B=%b, Segment_C=%b, Segment_D=%b, Segment_E=%b, Segment_F=%b, Segment_G=%b",
                 A, B, C, Segment_A, Segment_B, Segment_C, Segment_D, Segment_E, Segment_F, Segment_G);

        // Ciclo de prueba
        A = 0; B = 0; C = 0;
        #10;

        A = 1; B = 0; C = 0;
        #10;

        A = 0; B = 1; C = 0;
        #10;

        A = 1; B = 1; C = 0;
        #10;

        A = 0; B = 0; C = 1;
        #10;

        A = 1; B = 0; C = 1;
        #10;

        A = 0; B = 1; C = 1;
        #10;

        A = 1; B = 1; C = 1;
        #10;

        $finish;
    end

endmodule*/

module encoder_7Seg_TB;



    reg A, B, C;
    wire segment_A, segment_B, segment_C, segment_D, segment_E, segment_F, segment_G;

    // Instancia del módulo principal
    encoder_7Seg encoder_7Seg_inst (
        .A(A),
        .B(B),
        .C(C),
        .segment_A(segment_A),
        .segment_B(segment_B),
        .segment_C(segment_C),
        .segment_D(segment_D),
        .segment_E(segment_E),
        .segment_F(segment_F),
        .segment_G(segment_G)
    );

    // Simulación de estímulos
    initial begin
        // Ciclo de prueba
        A = 0; B = 0; C = 0;
        #10 A = 1;
        #10 B = 1;
        #10 C = 1;
        #10 A = 0;
        #10 B = 0;
        #10 C = 0;

        // Mostrar las salidas de los segmentos en la simulación
        $display("A=%b, B=%b, C=%b, Seg_A=%b, Seg_B=%b, Seg_C=%b, Seg_D=%b, Seg_E=%b, Seg_F=%b, Seg_G=%b", A, B, C, segment_A, segment_B, segment_C, segment_D, segment_E, segment_F, segment_G);

        $finish;
    end

endmodule


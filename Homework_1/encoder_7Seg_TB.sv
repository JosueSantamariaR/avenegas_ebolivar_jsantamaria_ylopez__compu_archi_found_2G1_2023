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


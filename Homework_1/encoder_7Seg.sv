module encoder_7Seg (
    input wire A, // Entrada A
    input wire B, // Entrada B
    input wire C, // Entrada C
    output wire segment_A, // Salida para el segmento A
    output wire segment_B, // Salida para el segmento B
    output wire segment_C, // Salida para el segmento C
    output wire segment_D, // Salida para el segmento D
    output wire segment_E, // Salida para el segmento E
    output wire segment_F, // Salida para el segmento F
    output wire segment_G // Salida para el segmento G
    output wire SalidaMux
);

    // Instancias de los módulos de los segmentos
    Segment_A segment_A_inst (
        .A(A),
        .B(B),
        .C(C),
        .segment_A(segment_A)
    );

    Segment_B segment_B_inst (
        .A(A),
        .C(C),
        .segment_B(segment_B)
    );

    Segment_C segment_C_inst (
        .A(A),
        .B(B),
        .C(C),
        .segment_C(segment_C)
    );

    Segment_D segment_D_inst (
        .A(A),
        .B(B),
        .C(C),
        .segment_D(segment_D)
    );

    Segment_E segment_E_inst (
        .A(A),
        .B(B),
        .C(C),
        .segment_E(segment_E)
    );

    Segment_F segment_F_inst (
        .A(A),
        .B(B),
        .C(C),
        .segment_F(segment_F)
    );

    Segment_G segment_G_inst (
        .A(A),
        .B(B),
        .C(C),
        .segment_G(segment_G)
    );
	 
	 
	  // Definición de las entradas del MUX a través del pin planner
    wire D0; 
    wire D1; 
    wire D2; 
    wire D3; 
    wire D4; 
    wire D5;
    wire D6; 
    wire D7; 
    wire [2:0] mux_select;

    assign mux_select = {A, B, C};


    // Instancia del MUX
    mux_8to1 mux_inst (
        .D0(D0), 
        .D1(D1), 
        .D2(D2),
        .D3(D3), 
        .D4(D4), 
        .D5(D5), 
        .D6(D6), 
        .D7(D7), 
        .select(mux_select), 
	.SalidaMux(y) 
    );
	 
	 

endmodule

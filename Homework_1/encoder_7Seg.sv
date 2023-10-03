module encoder_7Seg (
    input logic A, // Entrada A
    input logic B, // Entrada B
    input logic C, // Entrada C
	 output logic Ao, // Entrada A
    output logic Bo, // Entrada B
    output logic Co, // Entrada C
// Definición de las entradas del MUX a través del pin planner
    input logic D0,
    input logic D1,
    input logic D2,
    input logic D3,
    input logic D4,
    input logic D5,
    input logic D6,
    input logic D7,
    output logic y, //Salida Mux
    output logic segment_A, // Salida para el segmento A
    output logic segment_B, // Salida para el segmento B
    output logic segment_C, // Salida para el segmento C
    output logic segment_D, // Salida para el segmento D
    output logic segment_E, // Salida para el segmento E
    output logic segment_F, // Salida para el segmento F
    output logic segment_G// Salida para el segmento G


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
	 
	 
	 assign Ao=A;
	 assign Bo=B;
	 assign Co=C;
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
		  .y(y) 
    );
	 
	 

endmodule

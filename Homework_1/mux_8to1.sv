module mux_8to1 (
	// Entradas dl Mux
   input wire D0, 
   input wire D1, 
   input wire D2, 
	input wire D3, 
	input wire D4, 
	input wire D5, 
	input wire D6, 
	input wire D7,   
   input wire [2:0] select, // Seleccion, entradas del arduino   
   output wire y     //Salida del Mux        
);

  logic z;
  always @* begin
    case (select)
      3'b000: z = D0;
      3'b001: z = D1;
      3'b011: z = D2;
      3'b010: z = D3;
      3'b110: z = D4;
      3'b111: z = D5;
      3'b101: z = D6;
      3'b100: z = D7;
      default: z = 1'bx;      
    endcase
  end
  
  assign y = z; // Salida del Mux

endmodule
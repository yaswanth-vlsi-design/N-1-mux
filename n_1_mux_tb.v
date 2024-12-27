
module n_1_mux_tb;

 
    parameter N = 3;
    parameter P = 2**N;


    reg [N-1:0] sel; 
    reg [P-1:0] in; 
    wire y; 


    n_1_mux #(N, P) uut (
        .sel(sel),
        .in(in),
        .y(y)
    );


    initial begin
   
        sel = 0;
        in = 0;

        #10 in = 8'b00000001; sel = 3'd0; 
        #10 sel = 3'd1; 
        #10 sel = 3'd2; 

   
        #10 in = 8'b10101010; sel = 3'd3;
        #10 sel = 3'd4; 
        #10 sel = 3'd5;
        
        
        #10 in = 8'b11111111; sel = 3'd6;
        #10 sel = 3'd7; 


        #10 $finish;
    end

endmodule
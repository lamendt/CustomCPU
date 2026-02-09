module tb;
    logic clk = 0;
	 logic [7:0] SW = 0;
	 logic [7:0] LED;
    always #1 clk = ~clk;
	 always #147 SW = ~SW;
    Top dut (clk, SW, LED);
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb);
        $dumpvars(0, dut.R[0]);
    $dumpvars(0, dut.R[1]);
    $dumpvars(0, dut.R[2]);
    $dumpvars(0, dut.R[3]);
        #10000;        // let it run for some time
        $finish;
    end
endmodule
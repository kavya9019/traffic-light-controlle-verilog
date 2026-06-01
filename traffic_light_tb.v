`timescale 1ns/1ps

module traffic_light_tb;

reg clk;
reg rst;
wire [2:0] light;

traffic_light uut(
    .clk(clk),
    .rst(rst),
    .light(light)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;

    #10 rst = 0;

    #100 $finish;
end
initial begin
    $dumpfile("traffic.vcd");
    $dumpvars(0, traffic_light_tb);
end

initial
begin
    $monitor("Time=%0t Light=%b", $time, light);
end

endmodule
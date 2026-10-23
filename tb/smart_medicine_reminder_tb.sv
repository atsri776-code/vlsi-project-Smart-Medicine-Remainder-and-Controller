`timescale 1ns/1ps

module smart_medicine_reminder_tb;

    logic        clk;
    logic        rst_n;
    logic        tick_1hz;
    logic [4:0]  set_hour;
    logic [5:0]  set_min;
    logic [5:0]  miss_window;
    logic        taken;
    logic        load_sched;

    logic        reminder;
    logic        missed_alert;
    logic [4:0]  cur_hour;
    logic [5:0]  cur_min;

    smart_medicine_reminder dut (
        .clk(clk), .rst_n(rst_n), .tick_1hz(tick_1hz),
        .set_hour(set_hour), .set_min(set_min), .miss_window(miss_window),
        .taken(taken), .load_sched(load_sched),
        .reminder(reminder), .missed_alert(missed_alert),
        .cur_hour(cur_hour), .cur_min(cur_min)
    );

    initial begin
        clk = 0;
        forever #50 clk = ~clk;
    end

    initial begin
        tick_1hz = 0;
        forever begin
            #1000; tick_1hz = 1; #100; tick_1hz = 0;
        end
    end

    initial begin
        $dumpfile("waveforms/smart_medicine_reminder.vcd");
        $dumpvars(0, smart_medicine_reminder_tb);

        rst_n = 0; set_hour = 0; set_min = 0; miss_window = 5;
        taken = 0; load_sched = 0;
        #200; rst_n = 1; #200;

        set_hour = 0; set_min = 2; miss_window = 5;
        load_sched = 1; #100; load_sched = 0;
        $display("[%0t] Schedule loaded: 00:02 window 5 min", $time);

        wait (reminder == 1);
        $display("[%0t] REMINDER ON", $time);

        #(3*60*1100);
        #(3*60*1100);

        wait (missed_alert == 1);
        $display("[%0t] MISSED ALERT ON", $time);

        taken = 1; #200; taken = 0;
        $display("[%0t] Taken - alerts cleared", $time);

        #20000;
        $display("[%0t] Simulation finished", $time);
        $finish;
    end

endmodule

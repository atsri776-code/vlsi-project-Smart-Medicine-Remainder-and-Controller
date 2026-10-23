//==============================================================================
// Project  : Smart Medicine Reminder and Missed Alert Controller
// Module   : smart_medicine_reminder
// Language : SystemVerilog
// Description:
//   Synchronous digital controller that issues timed medicine reminders
//   and raises a missed-dose alert when the user fails to acknowledge
//   within a programmable window.
//==============================================================================

module smart_medicine_reminder (
    input  logic        clk,
    input  logic        rst_n,
    input  logic        tick_1hz,
    input  logic [4:0]  set_hour,
    input  logic [5:0]  set_min,
    input  logic [5:0]  miss_window,
    input  logic        taken,
    input  logic        load_sched,

    output logic        reminder,
    output logic        missed_alert,
    output logic [4:0]  cur_hour,
    output logic [5:0]  cur_min
);

    logic [4:0] dose_hour;
    logic [5:0] dose_min;
    logic [5:0] window_min;
    logic [5:0] sec_cnt;
    logic       sched_valid;
    logic       dose_pending;
    logic [5:0] elapsed_min;

    // Load schedule
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            dose_hour   <= 5'd8;
            dose_min    <= 6'd0;
            window_min  <= 6'd15;
            sched_valid <= 1'b1;
        end else if (load_sched) begin
            dose_hour   <= set_hour;
            dose_min    <= set_min;
            window_min  <= (miss_window == 0) ? 6'd1 : miss_window;
            sched_valid <= 1'b1;
        end
    end

    // Real-time clock
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sec_cnt  <= 6'd0;
            cur_min  <= 6'd0;
            cur_hour <= 5'd0;
        end else if (tick_1hz) begin
            if (sec_cnt == 6'd59) begin
                sec_cnt <= 6'd0;
                if (cur_min == 6'd59) begin
                    cur_min <= 6'd0;
                    if (cur_hour == 5'd23)
                        cur_hour <= 5'd0;
                    else
                        cur_hour <= cur_hour + 5'd1;
                end else
                    cur_min <= cur_min + 6'd1;
            end else
                sec_cnt <= sec_cnt + 6'd1;
        end
    end

    // Control logic
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            reminder     <= 1'b0;
            missed_alert <= 1'b0;
            dose_pending <= 1'b0;
            elapsed_min  <= 6'd0;
        end else begin
            if (load_sched) begin
                reminder     <= 1'b0;
                missed_alert <= 1'b0;
                dose_pending <= 1'b0;
                elapsed_min  <= 6'd0;
            end else if (taken) begin
                reminder     <= 1'b0;
                missed_alert <= 1'b0;
                dose_pending <= 1'b0;
                elapsed_min  <= 6'd0;
            end else if (sched_valid && !dose_pending &&
                         cur_hour == dose_hour && cur_min == dose_min &&
                         sec_cnt == 6'd0) begin
                reminder     <= 1'b1;
                dose_pending <= 1'b1;
                elapsed_min  <= 6'd0;
            end else if (dose_pending && tick_1hz && sec_cnt == 6'd0) begin
                if (elapsed_min < window_min)
                    elapsed_min <= elapsed_min + 6'd1;
                else begin
                    reminder     <= 1'b0;
                    missed_alert <= 1'b1;
                end
            end
        end
    end

endmodule

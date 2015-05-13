Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsWDd-0003NO-PW
 for barebox@lists.infradead.org; Wed, 13 May 2015 12:57:05 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 13 May 2015 14:56:24 +0200
Message-Id: <1431521784-27413-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1431521784-27413-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1431521784-27413-1-git-send-email-s.trumtrar@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] ARM: socfpga: update sdram calibration to 15.0
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/include/mach/sequencer.c | 293 +++++--------------------
 arch/arm/mach-socfpga/include/mach/sequencer.h |   2 +
 2 files changed, 61 insertions(+), 234 deletions(-)

diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.c b/arch/arm/mach-socfpga/include/mach/sequencer.c
index 90efcc826b4e..c299f754a841 100644
--- a/arch/arm/mach-socfpga/include/mach/sequencer.c
+++ b/arch/arm/mach-socfpga/include/mach/sequencer.c
@@ -48,11 +48,14 @@
  ******************************************************************************
  ******************************************************************************/
 
+#ifndef ARMCOMPILER
+
 // Temporary workaround to place the initial stack pointer at a safe offset from end
 #define STRINGIFY(s)		STRINGIFY_STR(s)
 #define STRINGIFY_STR(s)	#s
 asm(".global __alt_stack_pointer");
 asm("__alt_stack_pointer = " STRINGIFY(STACK_POINTER));
+#endif
 
 #include <mach/sdram.h>
 
@@ -222,18 +225,13 @@ static int check_test_mem(int start)
 
 static void set_failing_group_stage(uint32_t group, uint32_t stage, uint32_t substage)
 {
-	ALTERA_ASSERT(group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-
-	// Only set the global stage if there was not been any other failing group
 	if (gbl->error_stage == CAL_STAGE_NIL) {
 		gbl->error_substage = substage;
 		gbl->error_stage = stage;
 		gbl->error_group = group;
-		TCLRPT_SET(debug_summary_report->error_sub_stage, substage);
-		TCLRPT_SET(debug_summary_report->error_stage, stage);
-		TCLRPT_SET(debug_summary_report->error_group, group);
 
 	}
+
 }
 
 static inline void reg_file_set_group(uint32_t set_group)
@@ -292,13 +290,6 @@ static inline void select_curr_shadow_reg_using_rank(uint32_t rank)
 
 static void initialize(void)
 {
-	TRACE_FUNC();
-
-	//USER calibration has control over path to memory 
-
-	// In Hard PHY this is a 2-bit control:
-	// 0: AFI Mux Select
-	// 1: DDIO Mux Select
 	IOWR_32DIRECT(PHY_MGR_MUX_SEL, 0, 0x3);
 
 	//USER memory clock is not stable we begin initialization 
@@ -480,27 +471,18 @@ static void scc_mgr_initialize(void)
 
 static inline void scc_mgr_set_dqs_bus_in_delay(uint32_t read_group, uint32_t delay)
 {
-	ALTERA_ASSERT(read_group < RW_MGR_MEM_IF_READ_DQS_WIDTH);
-
-	// Load the setting in the SCC manager
 	WRITE_SCC_DQS_IN_DELAY(read_group, delay);
 
 }
 
 static inline void scc_mgr_set_dqs_io_in_delay(uint32_t write_group, uint32_t delay)
 {
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-
-	// Load the setting in the SCC manager
 	WRITE_SCC_DQS_IO_IN_DELAY(delay);
 
 }
 
 static inline void scc_mgr_set_dqs_en_phase(uint32_t read_group, uint32_t phase)
 {
-	ALTERA_ASSERT(read_group < RW_MGR_MEM_IF_READ_DQS_WIDTH);
-
-	// Load the setting in the SCC manager
 	WRITE_SCC_DQS_EN_PHASE(read_group, phase);
 
 }
@@ -529,9 +511,6 @@ static void scc_mgr_set_dqs_en_phase_all_ranks(uint32_t read_group, uint32_t pha
 
 static inline void scc_mgr_set_dqdqs_output_phase(uint32_t write_group, uint32_t phase)
 {
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-
-	// Load the setting in the SCC manager
 	WRITE_SCC_DQDQS_OUT_PHASE(write_group, phase);
 
 }
@@ -560,9 +539,6 @@ static void scc_mgr_set_dqdqs_output_phase_all_ranks(uint32_t write_group, uint3
 
 static inline void scc_mgr_set_dqs_en_delay(uint32_t read_group, uint32_t delay)
 {
-	ALTERA_ASSERT(read_group < RW_MGR_MEM_IF_READ_DQS_WIDTH);
-
-	// Load the setting in the SCC manager
 	WRITE_SCC_DQS_EN_DELAY(read_group, delay);
 
 }
@@ -592,8 +568,6 @@ static void scc_mgr_set_oct_out1_delay(uint32_t write_group, uint32_t delay)
 {
 	uint32_t read_group;
 
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-
 	// Load the setting in the SCC manager
 	// Although OCT affects only write data, the OCT delay is controlled by the DQS logic block
 	// which is instantiated once per read group. For protocols where a write group consists
@@ -613,8 +587,6 @@ static void scc_mgr_set_oct_out2_delay(uint32_t write_group, uint32_t delay)
 {
 	uint32_t read_group;
 
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-
 	// Load the setting in the SCC manager
 	// Although OCT affects only write data, the OCT delay is controlled by the DQS logic block
 	// which is instantiated once per read group. For protocols where a write group consists
@@ -640,9 +612,6 @@ static inline void scc_mgr_set_dq_out1_delay(uint32_t write_group, uint32_t dq_i
 					     uint32_t delay)
 {
 
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-	ALTERA_ASSERT(dq < RW_MGR_MEM_DATA_WIDTH);
-
 	// Load the setting in the SCC manager
 	WRITE_SCC_DQ_OUT1_DELAY(dq_in_group, delay);
 
@@ -652,9 +621,6 @@ static inline void scc_mgr_set_dq_out2_delay(uint32_t write_group, uint32_t dq_i
 					     uint32_t delay)
 {
 
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-	ALTERA_ASSERT(dq < RW_MGR_MEM_DATA_WIDTH);
-
 	// Load the setting in the SCC manager
 	WRITE_SCC_DQ_OUT2_DELAY(dq_in_group, delay);
 
@@ -664,9 +630,6 @@ static inline void scc_mgr_set_dq_in_delay(uint32_t write_group, uint32_t dq_in_
 					   uint32_t delay)
 {
 
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-	ALTERA_ASSERT(dq < RW_MGR_MEM_DATA_WIDTH);
-
 	// Load the setting in the SCC manager
 	WRITE_SCC_DQ_IN_DELAY(dq_in_group, delay);
 
@@ -706,50 +669,29 @@ static inline void scc_mgr_set_hhp_dqse_map(void)
 
 static inline void scc_mgr_set_dqs_out1_delay(uint32_t write_group, uint32_t delay)
 {
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-
-	// Load the setting in the SCC manager
 	WRITE_SCC_DQS_IO_OUT1_DELAY(delay);
 
 }
 
 static inline void scc_mgr_set_dqs_out2_delay(uint32_t write_group, uint32_t delay)
 {
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-
-	// Load the setting in the SCC manager
 	WRITE_SCC_DQS_IO_OUT2_DELAY(delay);
 
 }
 
 static inline void scc_mgr_set_dm_out1_delay(uint32_t write_group, uint32_t dm, uint32_t delay)
 {
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-	ALTERA_ASSERT(dm < RW_MGR_NUM_DM_PER_WRITE_GROUP);
-
-	// Load the setting in the SCC manager
 	WRITE_SCC_DM_IO_OUT1_DELAY(dm, delay);
-
 }
 
 static inline void scc_mgr_set_dm_out2_delay(uint32_t write_group, uint32_t dm, uint32_t delay)
 {
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-	ALTERA_ASSERT(dm < RW_MGR_NUM_DM_PER_WRITE_GROUP);
-
-	// Load the setting in the SCC manager
 	WRITE_SCC_DM_IO_OUT2_DELAY(dm, delay);
-
 }
 
 static inline void scc_mgr_set_dm_in_delay(uint32_t write_group, uint32_t dm, uint32_t delay)
 {
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-	ALTERA_ASSERT(dm < RW_MGR_NUM_DM_PER_WRITE_GROUP);
-
-	// Load the setting in the SCC manager
 	WRITE_SCC_DM_IO_IN_DELAY(dm, delay);
-
 }
 
 static inline void scc_mgr_set_dm_bypass(uint32_t write_group, uint32_t dm, uint32_t bypass)
@@ -1144,8 +1086,6 @@ static inline void delay_for_n_mem_clocks(const uint32_t clocks)
 	uint8_t outer;
 	uint16_t c_loop;
 
-	TRACE_FUNC("clocks=%lu ... start", clocks);
-
 	afi_clocks = (clocks + AFI_RATE_RATIO - 1) / AFI_RATE_RATIO;	/* scale (rounding up) to get afi clocks */
 
 	// Note, we don't bother accounting for being off a little bit because of a few extra instructions in outer loops
@@ -1204,14 +1144,11 @@ static inline void delay_for_n_mem_clocks(const uint32_t clocks)
 			} while (c_loop-- != 0);
 		}
 	}
-
-	TRACE_FUNC("clocks=%lu ... end", clocks);
 }
 
 // should always use constants as argument to ensure all computations are performed at compile time
 static inline void delay_for_n_ns(const uint32_t nanoseconds)
 {
-	TRACE_FUNC("nanoseconds=%lu ... end", nanoseconds);
 	delay_for_n_mem_clocks((1000 * nanoseconds) / (1000000 / AFI_CLK_FREQ) * AFI_RATE_RATIO);
 }
 
@@ -1230,8 +1167,6 @@ static void rw_mgr_mem_initialize(void)
 {
 	uint32_t r;
 
-	TRACE_FUNC();
-
 	//USER The reset / cke part of initialization is broadcasted to all ranks
 	IOWR_32DIRECT(RW_MGR_SET_CS_AND_ODT_MASK, 0, RW_MGR_RANK_ALL);
 
@@ -1295,6 +1230,7 @@ static void rw_mgr_mem_initialize(void)
 
 			continue;
 		}
+
 		//USER set rank 
 		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_OFF);
 
@@ -1343,8 +1279,6 @@ static void rw_mgr_mem_handoff(void)
 {
 	uint32_t r;
 
-	TRACE_FUNC();
-
 	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r++) {
 		if (param->skip_ranks[r]) {
 			//USER request to skip the rank
@@ -1484,8 +1418,6 @@ static void rw_mgr_mem_calibrate_read_load_patterns(uint32_t rank_bgn, uint32_t
 	uint32_t rank_end =
 	    all_ranks ? RW_MGR_MEM_NUMBER_OF_RANKS : (rank_bgn + NUM_RANKS_PER_SHADOW_REG);
 
-	TRACE_FUNC();
-
 	for (r = rank_bgn; r < rank_end; r++) {
 		if (param->skip_ranks[r]) {
 			//USER request to skip the rank
@@ -1794,7 +1726,7 @@ static void rw_mgr_decr_vfifo(uint32_t grp, uint32_t * v)
 
 static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 {
-	uint32_t i, d, v, p, sr;
+	uint32_t i, d, v, p;
 	uint32_t max_working_cnt;
 	uint32_t fail_cnt;
 	t_btfld bit_chk;
@@ -1804,10 +1736,6 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	uint32_t test_status;
 	uint32_t found_passing_read, found_failing_read, initial_failing_dtap;
 
-	TRACE_FUNC("%lu", grp);
-	BFM_STAGE("find_dqs_en_phase");
-	ALTERA_ASSERT(grp < RW_MGR_MEM_IF_READ_DQS_WIDTH);
-
 	reg_file_set_sub_stage(CAL_SUBSTAGE_VFIFO_CENTER);
 
 	scc_mgr_set_dqs_en_delay_all_ranks(grp, 0);
@@ -1825,9 +1753,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 		tmp_delay += IO_DELAY_PER_DQS_EN_DCHAIN_TAP;
 	}
 	dtaps_per_ptap--;
-	ALTERA_ASSERT(dtaps_per_ptap <= IO_DQS_EN_DELAY_MAX);
 	tmp_delay = 0;
-	TCLRPT_SET(debug_summary_report->computed_dtap_per_ptap, dtaps_per_ptap);
 
 	// VFIFO sweep
 
@@ -1938,35 +1864,6 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 			}
 		}
 
-		// Record the debug data
-		// Currently dqsen is the same for all ranks
-		for (sr = 0; sr < NUM_SHADOW_REGS; sr++) {
-			TCLRPT_SET(debug_cal_report->cal_dqsen_margins[sr][grp].work_begin,
-				   work_bgn);
-			if (found_begin) {
-				TCLRPT_SET(debug_cal_report->cal_dqsen_margins[sr][grp].phase_begin,
-					   p);
-				TCLRPT_SET(debug_cal_report->cal_dqsen_margins[sr][grp].delay_begin,
-					   d);
-				TCLRPT_SET(debug_cal_report->cal_dqsen_margins[sr][grp].vfifo_begin,
-					   v % VFIFO_SIZE);
-			} else if (p == IO_DQS_EN_PHASE_MAX) {
-				TCLRPT_SET(debug_cal_report->cal_dqsen_margins[sr][grp].phase_begin,
-					   0);
-				TCLRPT_SET(debug_cal_report->cal_dqsen_margins[sr][grp].delay_begin,
-					   0);
-				TCLRPT_SET(debug_cal_report->cal_dqsen_margins[sr][grp].vfifo_begin,
-					   (v + 1) % VFIFO_SIZE);
-			} else {
-				TCLRPT_SET(debug_cal_report->cal_dqsen_margins[sr][grp].phase_begin,
-					   p + 1);
-				TCLRPT_SET(debug_cal_report->cal_dqsen_margins[sr][grp].delay_begin,
-					   0);
-				TCLRPT_SET(debug_cal_report->cal_dqsen_margins[sr][grp].vfifo_begin,
-					   v % VFIFO_SIZE);
-			}
-		}
-
 		//USER We have found a working dtap before the ptap found above 
 		if (found_begin == 1) {
 			max_working_cnt++;
@@ -2086,14 +1983,6 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	BFM_GBL_SET(dqs_enable_right_edge[grp].d, d - 1);
 	BFM_GBL_SET(dqs_enable_right_edge[grp].ps, work_end);
 
-	// Record the debug data
-	for (sr = 0; sr < NUM_SHADOW_REGS; sr++) {
-		TCLRPT_SET(debug_cal_report->cal_dqsen_margins[sr][grp].work_end, work_end);
-		TCLRPT_SET(debug_cal_report->cal_dqsen_margins[sr][grp].phase_end, p);
-		TCLRPT_SET(debug_cal_report->cal_dqsen_margins[sr][grp].delay_end, d - 1);
-		TCLRPT_SET(debug_cal_report->cal_dqsen_margins[sr][grp].vfifo_end, v % VFIFO_SIZE);
-	}
-
 	if (work_end >= work_bgn) {
 		//USER we have a working range 
 	} else {
@@ -2168,7 +2057,6 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 		dtaps_per_ptap = d - initial_failing_dtap;
 	}
 
-	ALTERA_ASSERT(dtaps_per_ptap <= IO_DQS_EN_DELAY_MAX);
 	IOWR_32DIRECT(REG_FILE_DTAPS_PER_PTAP, 0, dtaps_per_ptap);
 
 	DPRINT(2, "find_dqs_en_phase: dtaps_per_ptap=%lu - %lu = %lu", d, initial_failing_dtap,
@@ -2196,12 +2084,6 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	     d++, tmp_delay += IO_DELAY_PER_DQS_EN_DCHAIN_TAP) ;
 	DPRINT(2, "new d %ld, tmp_delay=%ld", d, tmp_delay);
 
-	// DQSEN same for all shadow reg
-	for (sr = 0; sr < NUM_SHADOW_REGS; sr++) {
-		TCLRPT_SET(debug_cal_report->cal_dqs_in_margins[sr][grp].dqsen_margin,
-			   max_working_cnt - 1);
-	}
-
 	scc_mgr_set_dqs_en_phase_all_ranks(grp, p - 1);
 	scc_mgr_set_dqs_en_delay_all_ranks(grp, d);
 
@@ -2543,8 +2425,6 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	t_btfld bit_chk;
 	uint32_t delay_per_ptap_mid;
 
-	TRACE_FUNC("%lu", grp);
-
 	reg_file_set_sub_stage(CAL_SUBSTAGE_VFIFO_CENTER);
 
 	scc_mgr_set_dqs_en_delay_all_ranks(grp, 0);
@@ -2667,9 +2547,7 @@ static inline uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase_sweep_dq_in_
 	uint32_t d;
 	uint32_t r;
 
-	const uint32_t delay_step = IO_IO_IN_DELAY_MAX / (RW_MGR_MEM_DQ_PER_READ_DQS - 1);	/* we start at zero, so have one less dq to devide among */
-
-	TRACE_FUNC("(%lu,%lu,%lu)", write_group, read_group, test_bgn);
+	const uint32_t delay_step = IO_IO_IN_DELAY_MAX / (RW_MGR_MEM_DQ_PER_READ_DQS - 1);
 
 	// try different dq_in_delays since the dq path is shorter than dqs
 
@@ -2725,11 +2603,6 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t wr
 	int32_t dq_margin, dqs_margin;
 	uint32_t stop;
 
-	TRACE_FUNC("%lu %lu", read_group, test_bgn);
-
-	ALTERA_ASSERT(read_group < RW_MGR_MEM_IF_READ_DQS_WIDTH);
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-
 	start_dqs = READ_SCC_DQS_IN_DELAY(read_group);
 	if (IO_SHIFT_DQS_EN_WHEN_SHIFT_DQS) {
 		start_dqs_en = READ_SCC_DQS_EN_DELAY(read_group);
@@ -3041,8 +2914,6 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t gr
 	uint32_t dq_margin, dqs_margin;
 	uint32_t start_dqs;
 
-	TRACE_FUNC("%lu %lu", grp, test_bgn);
-
 	//USER per-bit deskew.
 	//USER start of the per-bit sweep with the minimum working delay setting for
 	//USER all bits.
@@ -3177,8 +3048,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo(uint32_t read_group, uint32_t test_bg
 	uint32_t grp_calibrated;
 	uint32_t write_group, write_test_bgn;
 	uint32_t failed_substage;
-
-	TRACE_FUNC("%lu %lu", read_group, test_bgn);
+	uint32_t dqs_in_dtaps, orig_start_dqs;
 
 	//USER update info for sims 
 
@@ -3253,33 +3123,65 @@ static uint32_t rw_mgr_mem_calibrate_vfifo(uint32_t read_group, uint32_t test_bg
 					break;
 				}
 			}
-// case:56390
-			grp_calibrated = 1;
-			if (rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase_sweep_dq_in_delay
-			    (write_group, read_group, test_bgn)) {
-				// USER Read per-bit deskew can be done on a per shadow register basis
+			// Loop over different DQS in delay chains for the purpose of DQS Enable calibration finding one bit working
+			orig_start_dqs = READ_SCC_DQS_IN_DELAY(read_group);
+			for (dqs_in_dtaps = orig_start_dqs;
+			     dqs_in_dtaps <= IO_DQS_IN_DELAY_MAX && grp_calibrated == 0;
+			     dqs_in_dtaps++) {
+
 				for (rank_bgn = 0, sr = 0; rank_bgn < RW_MGR_MEM_NUMBER_OF_RANKS;
 				     rank_bgn += NUM_RANKS_PER_SHADOW_REG, ++sr) {
-					//USER Determine if this set of ranks should be skipped entirely
+
 					if (!param->skip_shadow_regs[sr]) {
 
 						//USER Select shadow register set
 						select_shadow_regs_for_update(rank_bgn, read_group,
 									      1);
 
-						// If doing read after write calibration, do not update FOM now - do it then
-						if (!rw_mgr_mem_calibrate_vfifo_center
-						    (rank_bgn, write_group, read_group, test_bgn, 1,
-						     0)) {
-							grp_calibrated = 0;
-							failed_substage = CAL_SUBSTAGE_VFIFO_CENTER;
+						WRITE_SCC_DQS_IN_DELAY(read_group, dqs_in_dtaps);
+						scc_mgr_load_dqs(read_group);
+						IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+					}
+				}
+
+// case:56390
+				grp_calibrated = 1;
+				if (rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase_sweep_dq_in_delay
+				    (write_group, read_group, test_bgn)) {
+					// USER Read per-bit deskew can be done on a per shadow register basis
+					for (rank_bgn = 0, sr = 0;
+					     rank_bgn < RW_MGR_MEM_NUMBER_OF_RANKS;
+					     rank_bgn += NUM_RANKS_PER_SHADOW_REG, ++sr) {
+						//USER Determine if this set of ranks should be skipped entirely
+						if (!param->skip_shadow_regs[sr]) {
+
+							//USER Select shadow register set
+							select_shadow_regs_for_update(rank_bgn,
+										      read_group,
+										      1);
+
+							// Before doing read deskew, set DQS in back to the reserve value
+							WRITE_SCC_DQS_IN_DELAY(read_group,
+									       orig_start_dqs);
+							scc_mgr_load_dqs(read_group);
+							IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+
+							// If doing read after write calibration, do not update FOM now - do it then
+							if (!rw_mgr_mem_calibrate_vfifo_center
+							    (rank_bgn, write_group, read_group,
+							     test_bgn, 1, 0)) {
+								grp_calibrated = 0;
+								failed_substage =
+								    CAL_SUBSTAGE_VFIFO_CENTER;
+							}
 						}
 					}
+				} else {
+					grp_calibrated = 0;
+					failed_substage = CAL_SUBSTAGE_DQS_EN_PHASE;
 				}
-			} else {
-				grp_calibrated = 0;
-				failed_substage = CAL_SUBSTAGE_DQS_EN_PHASE;
 			}
+
 		}
 	}
 
@@ -3307,8 +3209,6 @@ static uint32_t rw_mgr_mem_calibrate_vfifo(uint32_t g, uint32_t test_bgn)
 	uint32_t grp_calibrated;
 	uint32_t failed_substage;
 
-	TRACE_FUNC("%lu %lu", g, test_bgn);
-
 	//USER update info for sims 
 
 	reg_file_set_stage(CAL_STAGE_VFIFO);
@@ -3380,8 +3280,6 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_end(uint32_t read_group, uint32_t tes
 	uint32_t grp_calibrated;
 	uint32_t write_group;
 
-	TRACE_FUNC("%lu %lu", read_group, test_bgn);
-
 	//USER update info for sims 
 
 	reg_file_set_stage(CAL_STAGE_VFIFO_AFTER_WRITES);
@@ -3432,9 +3330,6 @@ static uint32_t rw_mgr_mem_calibrate_lfifo(void)
 	uint32_t found_one;
 	t_btfld bit_chk;
 
-	TRACE_FUNC();
-	BFM_STAGE("lfifo");
-
 	//USER update info for sims 
 
 	reg_file_set_stage(CAL_STAGE_LFIFO);
@@ -3588,6 +3483,7 @@ static void rw_mgr_mem_calibrate_write_test_issue(uint32_t group, uint32_t test_
 	}
 
 	IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, (group << 2), mcc_instruction);
+
 }
 
 //USER Test writes, can check for a single bit pass or multiple bit pass
@@ -3673,7 +3569,7 @@ static inline uint32_t rw_mgr_mem_calibrate_write_test_all_ranks(uint32_t write_
 //USER Write Levelling -- Full Calibration
 static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 {
-	uint32_t p, d, sr;
+	uint32_t p, d;
 
 	uint32_t num_additional_fr_cycles = 0;
 
@@ -3683,9 +3579,6 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 	uint32_t found_begin;
 	uint32_t dtaps_per_ptap;
 
-	TRACE_FUNC("%lu %lu", g, test_bgn);
-	BFM_STAGE("wlevel");
-
 	//USER update info for sims
 
 	reg_file_set_stage(CAL_STAGE_WLEVEL);
@@ -3864,11 +3757,6 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 	BFM_GBL_SET(dqs_wlevel_right_edge[g].d, d - 1);
 	BFM_GBL_SET(dqs_wlevel_right_edge[g].ps, work_end);
 
-	for (sr = 0; sr < NUM_SHADOW_REGS; sr++) {
-		TCLRPT_SET(debug_cal_report->cal_dqs_out_margins[sr][g].dqdqs_start, work_bgn);
-		TCLRPT_SET(debug_cal_report->cal_dqs_out_margins[sr][g].dqdqs_end, work_end);
-	}
-
 	//USER center 
 
 	work_mid = (work_bgn + work_end) / 2;
@@ -3926,8 +3814,6 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 	uint32_t work_bgn, work_end, work_mid;
 	uint32_t tmp_delay;
 
-	TRACE_FUNC("%lu %lu", g, test_bgn);
-
 	//USER update info for sims
 
 	reg_file_set_stage(CAL_STAGE_WLEVEL);
@@ -4071,11 +3957,6 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 	int32_t end_best = IO_IO_OUT1_DELAY_MAX + 1;
 	int32_t win_best = 0;
 
-	TRACE_FUNC("%lu %lu", write_group, test_bgn);
-	BFM_STAGE("writes_center");
-
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-
 	dm_margin = 0;
 
 	start_dqs = READ_SCC_DQS_IO_OUT1_DELAY();
@@ -4302,20 +4183,13 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
 	}
 
-	//////////////////////
-	//////////////////////
-	//USER Centre DM 
-	//////////////////////
-	//////////////////////
-
-	BFM_STAGE("dm_center");
-
 	DPRINT(2, "write_center: DM");
 
 	//USER set the left and right edge of each bit to an illegal value 
 	//USER use (IO_IO_OUT1_DELAY_MAX + 1) as an illegal value
 	left_edge[0] = IO_IO_OUT1_DELAY_MAX + 1;
 	right_edge[0] = IO_IO_OUT1_DELAY_MAX + 1;
+
 	//USER Search for the/part of the window with DM shift
 	for (d = IO_IO_OUT1_DELAY_MAX; d >= 0; d -= DELTA_D) {
 		scc_mgr_apply_group_dm_out1_delay(write_group, d);
@@ -4447,10 +4321,6 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 	uint32_t start_dqs;
 	uint32_t stop;
 
-	TRACE_FUNC("%lu %lu", write_group, test_bgn);
-
-	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
-
 	//USER per-bit deskew 
 
 	for (i = 0; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++) {
@@ -4622,9 +4492,6 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 
 static uint32_t rw_mgr_mem_calibrate_writes(uint32_t rank_bgn, uint32_t g, uint32_t test_bgn)
 {
-	//USER update info for sims
-
-	TRACE_FUNC("%lu %lu", g, test_bgn);
 
 	reg_file_set_stage(CAL_STAGE_WRITES);
 	reg_file_set_sub_stage(CAL_SUBSTAGE_WRITES_CENTER);
@@ -4681,8 +4548,6 @@ static void mem_config(void)
 	uint32_t rw_wl_nop_cycles;
 	uint32_t max_latency;
 
-	TRACE_FUNC();
-
 	//USER read in write and read latency 
 
 	wlat = IORD_32DIRECT(MEM_T_WL_ADD, 0);
@@ -4771,8 +4636,6 @@ static void mem_skip_calibrate(void)
 	uint32_t vfifo_offset;
 	uint32_t i, j, r;
 
-	TRACE_FUNC();
-
 	// Need to update every shadow register set used by the interface       
 	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r += NUM_RANKS_PER_SHADOW_REG) {
 
@@ -4857,8 +4720,6 @@ static uint32_t mem_calibrate(void)
 	uint32_t group_failed = 0;
 	uint32_t sr_failed = 0;
 
-	TRACE_FUNC();
-
 	// Initialize the data settings
 	DPRINT(1, "Preparing to init data");
 	DPRINT(1, "Init complete");
@@ -4869,9 +4730,6 @@ static uint32_t mem_calibrate(void)
 	gbl->fom_in = 0;
 	gbl->fom_out = 0;
 
-	TCLRPT_SET(debug_summary_report->cal_read_latency, 0);
-	TCLRPT_SET(debug_summary_report->cal_write_latency, 0);
-
 	mem_config();
 
 	if (ARRIAV || CYCLONEV) {
@@ -4991,10 +4849,6 @@ static uint32_t mem_calibrate(void)
 							}
 						}
 						if (sr_failed == 0) {
-							TCLRPT_SET(debug_cal_report->
-								   cal_status_per_group[sr]
-								   [write_group].error_stage,
-								   CAL_STAGE_NIL);
 						} else {
 							group_failed = 1;
 						}
@@ -5057,19 +4911,6 @@ static uint32_t mem_calibrate(void)
 		}
 	}
 
-	TCLRPT_SET(debug_summary_report->cal_write_latency, IORD_32DIRECT(MEM_T_WL_ADD, 0));
-	if (QUARTER_RATE == 1) {
-		// The read latency is in terms of AFI cycles so we multiply by 4 in quarter
-		// rate to get the memory cycles.
-		TCLRPT_SET(debug_summary_report->cal_read_latency, gbl->curr_read_lat * 4);
-	} else if (HALF_RATE == 1) {
-		// The read latency is in terms of AFI cycles so we multiply by 2 in half
-		// rate to get the memory cycles.
-		TCLRPT_SET(debug_summary_report->cal_read_latency, gbl->curr_read_lat * 2);
-	} else {
-		TCLRPT_SET(debug_summary_report->cal_read_latency, gbl->curr_read_lat);
-	}
-
 	//USER Do not remove this line as it makes sure all of our decisions have been applied
 	IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
 	return 1;
@@ -5077,6 +4918,7 @@ static uint32_t mem_calibrate(void)
 
 static uint32_t run_mem_calibrate(void)
 {
+
 	uint32_t pass;
 	uint32_t debug_info;
 	uint32_t ctrlcfg = IORD_32DIRECT(CTRL_CONFIG_REG, 0);
@@ -5085,10 +4927,6 @@ static uint32_t run_mem_calibrate(void)
 	// This should occur before anything else
 	// Reset pass/fail status shown on afi_cal_success/fail
 	IOWR_32DIRECT(PHY_MGR_CAL_STATUS, 0, PHY_MGR_CAL_RESET);
-
-	TRACE_FUNC();
-
-	BFM_STAGE("calibrate");
 	//stop tracking manger
 
 	IOWR_32DIRECT(CTRL_CONFIG_REG, 0, ctrlcfg & 0xFFBFFFFF);
@@ -5106,10 +4944,6 @@ static uint32_t run_mem_calibrate(void)
 	IOWR_32DIRECT(PHY_MGR_CMD_FIFO_RESET, 0, 0);
 
 	if (pass) {
-		TCLRPT_SET(debug_summary_report->error_stage, CAL_STAGE_NIL);
-
-		BFM_STAGE("handoff");
-
 #ifdef TEST_SIZE
 		if (!check_test_mem(0)) {
 			gbl->error_stage = 0x92;
@@ -5173,14 +5007,6 @@ static uint32_t run_mem_calibrate(void)
 
 	}
 
-	// Mark the reports as being ready to read
-	TCLRPT_SET(debug_summary_report->report_flags, debug_summary_report->report_flags |=
-		   DEBUG_REPORT_STATUS_REPORT_READY);
-	TCLRPT_SET(debug_cal_report->report_flags, debug_cal_report->report_flags |=
-		   DEBUG_REPORT_STATUS_REPORT_READY);
-	TCLRPT_SET(debug_margin_report->report_flags, debug_margin_report->report_flags |=
-		   DEBUG_REPORT_STATUS_REPORT_READY);
-
 	// Set the debug status to show that calibration has ended.
 	// This should occur after everything else
 	return pass;
@@ -5349,7 +5175,6 @@ static int socfpga_mem_calibration(void)
 
 	IPRINT("Preparing to start memory calibration");
 
-	TRACE_FUNC();
 	DPRINT(1,
 	       "%s%s %s ranks=%lu cs/dimm=%lu dq/dqs=%lu,%lu vg/dqs=%lu,%lu dqs=%lu,%lu dq=%lu dm=%lu "
 	       "ptap_delay=%lu dtap_delay=%lu dtap_dqsen_delay=%lu, dll=%lu",
diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.h b/arch/arm/mach-socfpga/include/mach/sequencer.h
index 1671849d6dca..dd0378af34f9 100644
--- a/arch/arm/mach-socfpga/include/mach/sequencer.h
+++ b/arch/arm/mach-socfpga/include/mach/sequencer.h
@@ -65,6 +65,8 @@
 
 #define RW_MGR_LOOPBACK_MODE BASE_RW_MGR + 0x0200
 
+#define RW_MGR_ENABLE_REFRESH BASE_RW_MGR + 0x3000
+
 #define RW_MGR_RANK_NONE 0xFF
 #define RW_MGR_RANK_ALL 0x00
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

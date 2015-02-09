Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKltV-0001Tu-B3
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 10:48:46 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  9 Feb 2015 11:47:50 +0100
Message-Id: <1423478871-15276-10-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 09/10] ARM: socfpga: cleanup sequencer warnings
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/include/mach/sequencer.c | 26 ++++++++++----------------
 arch/arm/mach-socfpga/include/mach/sequencer.h |  9 ---------
 2 files changed, 10 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.c b/arch/arm/mach-socfpga/include/mach/sequencer.c
index 18f0b114d91d..ef0a5651bb12 100644
--- a/arch/arm/mach-socfpga/include/mach/sequencer.c
+++ b/arch/arm/mach-socfpga/include/mach/sequencer.c
@@ -137,8 +137,6 @@ static uint16_t skip_delay_mask = 0;	// mask off bits when skipping/not-skipping
 static gbl_t *gbl = 0;
 static param_t *param = 0;
 
-static uint32_t curr_shadow_reg = 0;
-
 static uint32_t rw_mgr_mem_calibrate_write_test(uint32_t rank_bgn, uint32_t write_group,
 						uint32_t use_dm, uint32_t all_correct,
 						t_btfld * bit_chk, uint32_t all_ranks);
@@ -1574,13 +1572,12 @@ static uint32_t rw_mgr_mem_calibrate_read_test(uint32_t rank_bgn, uint32_t group
 	t_btfld tmp_bit_chk;
 	uint32_t rank_end =
 	    all_ranks ? RW_MGR_MEM_NUMBER_OF_RANKS : (rank_bgn + NUM_RANKS_PER_SHADOW_REG);
+	uint32_t quick_read_mode = (((STATIC_CALIB_STEPS) & CALIB_SKIP_DELAY_SWEEPS)
+				    && ENABLE_SUPER_QUICK_CALIBRATION) || BFM_MODE;
 
 	*bit_chk = param->read_correct_mask;
 	correct_mask_vg = param->read_correct_mask_vg;
 
-	uint32_t quick_read_mode = (((STATIC_CALIB_STEPS) & CALIB_SKIP_DELAY_SWEEPS)
-				    && ENABLE_SUPER_QUICK_CALIBRATION) || BFM_MODE;
-
 	for (r = rank_bgn; r < rank_end; r++) {
 		if (param->skip_ranks[r]) {
 			//USER request to skip the rank
@@ -1725,7 +1722,7 @@ static void rw_mgr_decr_vfifo(uint32_t grp, uint32_t * v)
 
 static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 {
-	uint32_t i, d, v, p, sr;
+	uint32_t i, d, v, p;
 	uint32_t max_working_cnt;
 	uint32_t fail_cnt;
 	t_btfld bit_chk;
@@ -3295,7 +3292,6 @@ static uint32_t rw_mgr_mem_calibrate_lfifo(void)
 {
 	uint32_t found_one;
 	t_btfld bit_chk;
-	uint32_t g;
 
 	//USER update info for sims 
 
@@ -3535,7 +3531,7 @@ static inline uint32_t rw_mgr_mem_calibrate_write_test_all_ranks(uint32_t write_
 //USER Write Levelling -- Full Calibration
 static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 {
-	uint32_t p, d, sr;
+	uint32_t p, d;
 
 	uint32_t num_additional_fr_cycles = 0;
 
@@ -3917,6 +3913,11 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 	int32_t new_dqs, start_dqs, shift_dq;
 	int32_t dq_margin, dqs_margin, dm_margin;
 	uint32_t stop;
+	int32_t bgn_curr = IO_IO_OUT1_DELAY_MAX + 1;
+	int32_t end_curr = IO_IO_OUT1_DELAY_MAX + 1;
+	int32_t bgn_best = IO_IO_OUT1_DELAY_MAX + 1;
+	int32_t end_best = IO_IO_OUT1_DELAY_MAX + 1;
+	int32_t win_best = 0;
 
 	dm_margin = 0;
 
@@ -4150,12 +4151,6 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 	//USER use (IO_IO_OUT1_DELAY_MAX + 1) as an illegal value
 	left_edge[0] = IO_IO_OUT1_DELAY_MAX + 1;
 	right_edge[0] = IO_IO_OUT1_DELAY_MAX + 1;
-	int32_t bgn_curr = IO_IO_OUT1_DELAY_MAX + 1;
-	int32_t end_curr = IO_IO_OUT1_DELAY_MAX + 1;
-	int32_t bgn_best = IO_IO_OUT1_DELAY_MAX + 1;
-	int32_t end_best = IO_IO_OUT1_DELAY_MAX + 1;
-	int32_t win_best = 0;
-
 	//USER Search for the/part of the window with DM shift
 	for (d = IO_IO_OUT1_DELAY_MAX; d >= 0; d -= DELTA_D) {
 		scc_mgr_apply_group_dm_out1_delay(write_group, d);
@@ -4886,14 +4881,13 @@ static uint32_t run_mem_calibrate(void)
 {
 	uint32_t pass;
 	uint32_t debug_info;
+	uint32_t ctrlcfg = IORD_32DIRECT(CTRL_CONFIG_REG, 0);
 
 	// Initialize the debug status to show that calibration has started.
 	// This should occur before anything else
 	// Reset pass/fail status shown on afi_cal_success/fail
 	IOWR_32DIRECT(PHY_MGR_CAL_STATUS, 0, PHY_MGR_CAL_RESET);
 	//stop tracking manger
-	uint32_t ctrlcfg = IORD_32DIRECT(CTRL_CONFIG_REG, 0);
-
 	IOWR_32DIRECT(CTRL_CONFIG_REG, 0, ctrlcfg & 0xFFBFFFFF);
 
 	initialize();
diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.h b/arch/arm/mach-socfpga/include/mach/sequencer.h
index 8676b4efdd6b..e5a529b5ed1d 100644
--- a/arch/arm/mach-socfpga/include/mach/sequencer.h
+++ b/arch/arm/mach-socfpga/include/mach/sequencer.h
@@ -422,12 +422,7 @@ static gbl_t *gbl;
 static param_t *param;
 
 // External functions
-static uint32_t rw_mgr_mem_calibrate_full_test(uint32_t min_correct, t_btfld * bit_chk,
-					       uint32_t test_dm);
 static uint32_t run_mem_calibrate(void);
-static void rw_mgr_mem_calibrate_eye_diag_aid(void);
-static void rw_mgr_load_mrs_calib(void);
-static void rw_mgr_load_mrs_exec(void);
 static void rw_mgr_mem_initialize(void);
 static void rw_mgr_mem_dll_lock_wait(void);
 static inline void scc_mgr_set_dq_in_delay(uint32_t write_group, uint32_t dq_in_group,
@@ -440,14 +435,10 @@ static inline void scc_mgr_load_dq(uint32_t dq_in_group);
 static inline void scc_mgr_set_dqs_bus_in_delay(uint32_t read_group, uint32_t delay);
 static inline void scc_mgr_load_dqs(uint32_t dqs);
 static void scc_mgr_set_group_dqs_io_and_oct_out1_gradual(uint32_t write_group, uint32_t delay);
-static void scc_mgr_set_group_dqs_io_and_oct_out2_gradual(uint32_t write_group, uint32_t delay);
 static void scc_mgr_set_dqs_en_delay_all_ranks(uint32_t read_group, uint32_t delay);
 static void scc_mgr_set_dqs_en_phase_all_ranks(uint32_t read_group, uint32_t phase);
 static void scc_mgr_set_dqdqs_output_phase_all_ranks(uint32_t write_group, uint32_t phase);
 static inline void scc_mgr_set_dm_out1_delay(uint32_t write_group, uint32_t dm, uint32_t delay);
 static inline void scc_mgr_set_dm_out2_delay(uint32_t write_group, uint32_t dm, uint32_t delay);
 static inline void scc_mgr_load_dm(uint32_t dm);
-static void rw_mgr_incr_vfifo_auto(uint32_t grp);
-static void rw_mgr_decr_vfifo_auto(uint32_t grp);
-static int sdram_calibration(void);
 #endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

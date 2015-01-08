Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y9BYP-0004Ut-Lz
 for barebox@lists.infradead.org; Thu, 08 Jan 2015 11:47:11 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu,  8 Jan 2015 12:46:24 +0100
Message-Id: <1420717584-15766-10-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1420717584-15766-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1420717584-15766-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 9/9] ARM: socfpga: cleanup sequencer warnings
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/include/mach/sequencer.c | 113 ++-----------------------
 arch/arm/mach-socfpga/include/mach/sequencer.h |   8 --
 2 files changed, 8 insertions(+), 113 deletions(-)

diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.c b/arch/arm/mach-socfpga/include/mach/sequencer.c
index 259a400db49d..7e29a23b68ef 100644
--- a/arch/arm/mach-socfpga/include/mach/sequencer.c
+++ b/arch/arm/mach-socfpga/include/mach/sequencer.c
@@ -1016,17 +1016,6 @@ static void scc_mgr_apply_group_dq_out1_delay(uint32_t write_group, uint32_t gro
 	}
 }
 
-static void scc_mgr_apply_group_dq_out2_delay(uint32_t write_group, uint32_t group_bgn,
-					      uint32_t delay2)
-{
-	uint32_t i, p;
-
-	for (i = 0, p = group_bgn; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++, p++) {
-		scc_mgr_set_dq_out2_delay(write_group, i, delay2);
-		scc_mgr_load_dq(i);
-	}
-}
-
 //USER apply and load a particular output delay for the DM pins in a group
 
 static void scc_mgr_apply_group_dm_out1_delay(uint32_t write_group, uint32_t delay1)
@@ -1049,16 +1038,6 @@ static void scc_mgr_apply_group_dqs_io_and_oct_out1(uint32_t write_group, uint32
 	scc_mgr_load_dqs_for_write_group(write_group);
 }
 
-//USER apply and load delay on both DQS and OCT out2
-static void scc_mgr_apply_group_dqs_io_and_oct_out2(uint32_t write_group, uint32_t delay)
-{
-	scc_mgr_set_dqs_out2_delay(write_group, delay);
-	scc_mgr_load_dqs_io();
-
-	scc_mgr_set_oct_out2_delay(write_group, delay);
-	scc_mgr_load_dqs_for_write_group(write_group);
-}
-
 //USER set delay on both DQS and OCT out1 by incrementally changing
 //USER the settings one dtap at a time towards the target value, to avoid
 //USER breaking the lock of the DLL/PLL on the memory device.
@@ -1084,31 +1063,6 @@ static void scc_mgr_set_group_dqs_io_and_oct_out1_gradual(uint32_t write_group,
 	}
 }
 
-//USER set delay on both DQS and OCT out2 by incrementally changing
-//USER the settings one dtap at a time towards the target value, to avoid
-//USER breaking the lock of the DLL/PLL on the memory device.
-static void scc_mgr_set_group_dqs_io_and_oct_out2_gradual(uint32_t write_group, uint32_t delay)
-{
-	uint32_t d = READ_SCC_DQS_IO_OUT2_DELAY();
-
-	while (d > delay) {
-		--d;
-		scc_mgr_apply_group_dqs_io_and_oct_out2(write_group, d);
-		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
-		if (QDRII) {
-			rw_mgr_mem_dll_lock_wait();
-		}
-	}
-	while (d < delay) {
-		++d;
-		scc_mgr_apply_group_dqs_io_and_oct_out2(write_group, d);
-		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
-		if (QDRII) {
-			rw_mgr_mem_dll_lock_wait();
-		}
-	}
-}
-
 //USER apply a delay to the entire output side: DQ, DM, DQS, OCT 
 
 static void scc_mgr_apply_group_all_out_delay(uint32_t write_group, uint32_t group_bgn,
@@ -1761,13 +1715,12 @@ static uint32_t rw_mgr_mem_calibrate_read_test(uint32_t rank_bgn, uint32_t group
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
@@ -4206,6 +4159,11 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 	int32_t new_dqs, start_dqs, shift_dq;
 	int32_t dq_margin, dqs_margin, dm_margin;
 	uint32_t stop;
+	int32_t bgn_curr = IO_IO_OUT1_DELAY_MAX + 1;
+	int32_t end_curr = IO_IO_OUT1_DELAY_MAX + 1;
+	int32_t bgn_best = IO_IO_OUT1_DELAY_MAX + 1;
+	int32_t end_best = IO_IO_OUT1_DELAY_MAX + 1;
+	int32_t win_best = 0;
 
 	TRACE_FUNC("%lu %lu", write_group, test_bgn);
 	BFM_STAGE("writes_center");
@@ -4452,12 +4410,6 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
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
@@ -4809,38 +4761,6 @@ static uint32_t rw_mgr_mem_calibrate_writes(uint32_t rank_bgn, uint32_t g, uint3
 	return 1;
 }
 
-// helpful for creating eye diagrams 
-// TODO: This is for the TCL DBG... but obviously it serves no purpose...
-// Decide what to do with it!
-
-static void rw_mgr_mem_calibrate_eye_diag_aid(void)
-{
-	// no longer exists
-}
-
-// TODO: This needs to be update to properly handle the number of failures
-// Right now it only checks if the write test was successful or not
-static uint32_t rw_mgr_mem_calibrate_full_test(uint32_t min_correct, t_btfld * bit_chk,
-					       uint32_t test_dm)
-{
-	uint32_t g;
-	uint32_t success = 0;
-	uint32_t run_groups = ~param->skip_groups;
-
-	TRACE_FUNC("%lu %lu", min_correct, test_dm);
-
-	for (g = 0; g < RW_MGR_MEM_IF_READ_DQS_WIDTH; g++) {
-		if (run_groups & ((1 << RW_MGR_NUM_DQS_PER_WRITE_GROUP) - 1)) {
-			success =
-			    rw_mgr_mem_calibrate_write_test_all_ranks(g, test_dm, PASS_ALL_BITS,
-								      bit_chk);
-		}
-		run_groups = run_groups >> RW_MGR_NUM_DQS_PER_WRITE_GROUP;
-	}
-
-	return success;
-}
-
 //USER precharge all banks and activate row 0 in bank "000..." and bank "111..." 
 static void mem_precharge_and_activate(void)
 {
@@ -5277,6 +5197,7 @@ static uint32_t run_mem_calibrate(void)
 {
 	uint32_t pass;
 	uint32_t debug_info;
+	uint32_t ctrlcfg = IORD_32DIRECT(CTRL_CONFIG_REG, 0);
 
 	// Initialize the debug status to show that calibration has started.
 	// This should occur before anything else
@@ -5287,7 +5208,6 @@ static uint32_t run_mem_calibrate(void)
 
 	BFM_STAGE("calibrate");
 	//stop tracking manger
-	uint32_t ctrlcfg = IORD_32DIRECT(CTRL_CONFIG_REG, 0);
 
 	IOWR_32DIRECT(CTRL_CONFIG_REG, 0, ctrlcfg & 0xFFBFFFFF);
 
@@ -5505,23 +5425,6 @@ static void initialize_tracking(void)
 	IOWR_32DIRECT(REG_FILE_TRK_RFSH, 0, concatenated_refresh);
 }
 
-static void user_init_cal_req(void)
-{
-	uint32_t scc_afi_reg;
-
-	scc_afi_reg = IORD_32DIRECT(SCC_MGR_AFI_CAL_INIT, 0);
-
-	if (scc_afi_reg == 1) {	// 1 is initialization request
-		initialize();
-		rw_mgr_mem_initialize();
-		rw_mgr_mem_handoff();
-		IOWR_32DIRECT(PHY_MGR_MUX_SEL, 0, 0);
-		IOWR_32DIRECT(PHY_MGR_CAL_STATUS, 0, PHY_MGR_CAL_SUCCESS);
-	} else if (scc_afi_reg == 2) {
-		run_mem_calibrate();
-	}
-}
-
 static int socfpga_mem_calibration(void)
 {
 	param_t my_param;
diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.h b/arch/arm/mach-socfpga/include/mach/sequencer.h
index 8676b4efdd6b..3cee5b53da49 100644
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
@@ -440,14 +435,11 @@ static inline void scc_mgr_load_dq(uint32_t dq_in_group);
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
 static int sdram_calibration(void);
 #endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

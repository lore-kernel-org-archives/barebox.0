Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoBIO-0002Vk-6t
 for barebox@lists.infradead.org; Wed, 04 Dec 2013 12:11:13 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed,  4 Dec 2013 13:10:39 +0100
Message-Id: <1386159040-22431-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1386159040-22431-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1386159040-22431-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: socfgpa: update sequencer
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Quartus II v13.1 generates updated sequencer.[ch] files.
Integrate the changes into the current driver.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/include/mach/sequencer.c | 59 ++++++++++++++++++--------
 1 file changed, 41 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.c b/arch/arm/mach-socfpga/include/mach/sequencer.c
index 1124dee..fa955ce 100644
--- a/arch/arm/mach-socfpga/include/mach/sequencer.c
+++ b/arch/arm/mach-socfpga/include/mach/sequencer.c
@@ -632,6 +632,22 @@ static void scc_mgr_set_dm_in_delay(uint32_t write_group,
 	WRITE_SCC_DM_IO_IN_DELAY(dm, delay);
 }
 
+static void scc_mgr_load_dqs_for_write_group (uint32_t write_group)
+{
+	uint32_t read_group;
+
+	/*
+	 * Although OCT affects only write data, the OCT delay is controlled
+	 * by the DQS logic block which is instantiated once per read group.
+	 * For protocols where a write group consists of multiple read groups,
+	 * the setting must be scanned multiple times.
+	 */
+	for (read_group = write_group * RW_MGR_NUM_DQS_PER_WRITE_GROUP;
+		read_group < (write_group + 1) * RW_MGR_NUM_DQS_PER_WRITE_GROUP;
+		++read_group)
+		IOWR_32DIRECT(SCC_MGR_DQS_ENA, 0, read_group);
+}
+
 /*
  * USER Zero all DQS config
  * TODO: maybe rename to scc_mgr_zero_dqs_config (or something)
@@ -741,14 +757,26 @@ static void scc_mgr_zero_group (uint32_t write_group, uint32_t test_begin,
 #if ARRIAV || CYCLONEV
 		/* av/cv don't have out2 */
 		scc_mgr_set_dqs_out1_delay(write_group, IO_DQS_OUT_RESERVE);
+		scc_mgr_set_oct_out1_delay(write_group, IO_DQS_OUT_RESERVE);
+		scc_mgr_load_dqs_for_write_group(write_group);
 #else
 		scc_mgr_set_dqs_out1_delay(write_group, 0);
 		scc_mgr_set_dqs_out2_delay(write_group, IO_DQS_OUT_RESERVE);
+		scc_mgr_set_oct_out1_delay(write_group, 0);
+		scc_mgr_set_oct_out2_delay(write_group, IO_DQS_OUT_RESERVE);
+		scc_mgr_load_dqs_for_write_group(write_group);
 #endif
 
 		/* multicast to all DQS IO enables (only 1) */
 		IOWR_32DIRECT(SCC_MGR_DQS_IO_ENA, 0, 0);
 
+#if USE_SHADOW_REGS
+		/*
+		 * in shadow-register mode, SCC_UPDATE is done on a per-group basis
+		 * unless we explicitly ask for a multicast via the group counter
+		 */
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+#endif
 		/* hit update to zero everything */
 		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
 	}
@@ -761,23 +789,6 @@ static void scc_mgr_load_dqs (uint32_t dqs)
 	IOWR_32DIRECT(SCC_MGR_DQS_ENA, 0, dqs);
 }
 
-static void scc_mgr_load_dqs_for_write_group (uint32_t write_group)
-{
-	uint32_t read_group;
-
-	/*
-	 * Although OCT affects only write data, the OCT delay is controlled
-	 * by the DQS logic block which is instantiated once per read group.
-	 * For protocols where a write group consists of multiple read groups,
-	 * the setting must be scanned multiple times.
-	 */
-	for (read_group = write_group * RW_MGR_NUM_DQS_PER_WRITE_GROUP;
-		read_group < (write_group + 1) * RW_MGR_NUM_DQS_PER_WRITE_GROUP;
-		++read_group)
-		IOWR_32DIRECT(SCC_MGR_DQS_ENA, 0, read_group);
-}
-
-
 /* load up dqs io config settings */
 
 static void scc_mgr_load_dqs_io (void)
@@ -3807,6 +3818,14 @@ static void mem_config (void)
 	wlat += IORD_32DIRECT (DATA_MGR_MEM_T_ADD, 0);
 	/* WL for hard phy does not include additive latency */
 
+	/*
+	 * YYONG: add addtional write latency to offset the address/command extra clock cycle
+	 * YYONG: We change the AC mux setting causing AC to be delayed by one mem clock cycle
+	 * YYONG: only do this for DDR3
+	 */
+#if DDR3 || DDR2
+	wlat += 1;
+#endif
 	rlat = IORD_32DIRECT (MEM_T_RL_ADD, 0);
 
 	if (QUARTER_RATE_MODE) {
@@ -4129,7 +4148,11 @@ static void initialize_hps_phy(void)
 	count in 16 LSB. */
 
 	reg = 0;
+#if DDR3 || DDR2
+	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_ACDELAYEN_SET(2);
+#else
 	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_ACDELAYEN_SET(1);
+#endif
 	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQDELAYEN_SET(1);
 	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQSDELAYEN_SET(1);
 	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQSLOGICDELAYEN_SET(1);
@@ -4195,7 +4218,7 @@ static void initialize_tracking(void)
 	concatenated_delays = concatenated_delays ^ 14;
 		/* trcd, worst case */
 	concatenated_delays = concatenated_delays << 8;
-	concatenated_delays = concatenated_delays ^ 5;
+	concatenated_delays = concatenated_delays ^ 10;
 		/* vfifo wait */
 	concatenated_delays = concatenated_delays << 8;
 	concatenated_delays = concatenated_delays ^ 4;
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

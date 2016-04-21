Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m50-134.163.com ([123.125.50.134])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1atCp1-00076I-Gx
 for barebox@lists.infradead.org; Thu, 21 Apr 2016 11:31:14 +0000
From: DU HUANPENG <do_not_rep1y@163.com>
Date: Thu, 21 Apr 2016 19:30:28 +0800
Message-Id: <1461238228-3483-1-git-send-email-do_not_rep1y@163.com>
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
Subject: [PATCH] whole tree: remove trail space
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

From: Du Huanpeng <u74147@gmail.com>

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   2 +-
 arch/arm/boards/freescale-mx21-ads/imx21ads.c     |   4 +-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c     |   2 +-
 arch/arm/boards/freescale-mx27-ads/imx27ads.c     |   2 +-
 arch/arm/boards/phytec-phycard-imx27/pca100.c     |   2 +-
 arch/arm/boards/phytec-phycore-imx27/pcm038.c     |   2 +-
 arch/arm/include/asm/elf.h                        |   4 +-
 arch/arm/mach-netx/clocksource.c                  |   2 +-
 arch/arm/mach-socfpga/include/mach/sequencer.c    | 438 +++++++++++-----------
 arch/blackfin/cpu-bf561/start.S                   |  14 +-
 arch/blackfin/include/asm/cpu/cdefBF561.h         |   4 +-
 arch/blackfin/include/asm/cpu/defBF561.h          | 332 ++++++++--------
 arch/blackfin/lib/udivsi3.S                       |   2 +-
 arch/nios2/lib/longlong.h                         |   2 +-
 arch/ppc/include/asm/elf.h                        |  20 +-
 common/module.c                                   |   2 +-
 common/tlsf.c                                     |   6 +-
 crypto/digest.c                                   |   2 +-
 crypto/sha2.c                                     |   2 +-
 drivers/net/altera_tse.c                          |   2 +-
 drivers/net/fec_imx.h                             |   2 +-
 drivers/net/smc911x.h                             |   2 +-
 drivers/spi/imx_spi.c                             |   2 +-
 fs/cramfs/cramfs.c                                |   2 +-
 fs/ubifs/super.c                                  |   2 +-
 fs/ubifs/ubifs.h                                  |   2 +-
 include/elf.h                                     |   2 +-
 include/fb.h                                      |   4 +-
 include/linux/mount.h                             |   2 +-
 include/linux/rbtree.h                            |   4 +-
 lib/glob.c                                        |   2 +-
 lib/rbtree.c                                      |   4 +-
 32 files changed, 438 insertions(+), 438 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 07fee05..f27dcd6 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -1,7 +1,7 @@
 /*
  * Copyright (C) 2009 Eric Benard, Eukrea Electromatique
  * Based on pcm038.c which is :
- * Copyright (C) 2007 Sascha Hauer, Pengutronix 
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
diff --git a/arch/arm/boards/freescale-mx21-ads/imx21ads.c b/arch/arm/boards/freescale-mx21-ads/imx21ads.c
index 5f0e7bd..8afe9ac 100644
--- a/arch/arm/boards/freescale-mx21-ads/imx21ads.c
+++ b/arch/arm/boards/freescale-mx21-ads/imx21ads.c
@@ -1,8 +1,8 @@
 /*
  * Copyright (C) 2009 Ivo Clarysse
- * 
+ *
  * Based on imx27ads.c,
- *   Copyright (C) 2007 Sascha Hauer, Pengutronix 
+ *   Copyright (C) 2007 Sascha Hauer, Pengutronix
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index 6348692..dd80488 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -139,7 +139,7 @@ static int mx23_evk_console_init(void)
 
 	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 8192,
 			   IORESOURCE_MEM, NULL);
-	
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/freescale-mx27-ads/imx27ads.c b/arch/arm/boards/freescale-mx27-ads/imx27ads.c
index 109f7f9..9818a55 100644
--- a/arch/arm/boards/freescale-mx27-ads/imx27ads.c
+++ b/arch/arm/boards/freescale-mx27-ads/imx27ads.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2007 Sascha Hauer, Pengutronix 
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
index 895fae8..b0fee46 100644
--- a/arch/arm/boards/phytec-phycard-imx27/pca100.c
+++ b/arch/arm/boards/phytec-phycard-imx27/pca100.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2007 Sascha Hauer, Pengutronix 
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm038.c b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
index 01f6a55..f1f8081 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm038.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2007 Sascha Hauer, Pengutronix 
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
diff --git a/arch/arm/include/asm/elf.h b/arch/arm/include/asm/elf.h
index 724ebb0..b98b3e5 100644
--- a/arch/arm/include/asm/elf.h
+++ b/arch/arm/include/asm/elf.h
@@ -90,8 +90,8 @@ extern char elf_platform[];
 
 #define ELF_ET_DYN_BASE	(2 * TASK_SIZE / 3)
 
-/* When the program starts, a1 contains a pointer to a function to be 
-   registered with atexit, as per the SVR4 ABI.  A value of 0 means we 
+/* When the program starts, a1 contains a pointer to a function to be
+   registered with atexit, as per the SVR4 ABI.  A value of 0 means we
    have no such handler.  */
 #define ELF_PLAT_INIT(_r, load_addr)	(_r)->ARM_r0 = 0
 
diff --git a/arch/arm/mach-netx/clocksource.c b/arch/arm/mach-netx/clocksource.c
index 8f53364..2635472 100644
--- a/arch/arm/mach-netx/clocksource.c
+++ b/arch/arm/mach-netx/clocksource.c
@@ -1,7 +1,7 @@
 /*
  *
  * (C) Copyright 2007
- * Sascha Hauer, Pengutronix 
+ * Sascha Hauer, Pengutronix
  *
  * See file CREDITS for list of people who contributed to this
  * project.
diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.c b/arch/arm/mach-socfpga/include/mach/sequencer.c
index c299f75..d2338e6 100644
--- a/arch/arm/mach-socfpga/include/mach/sequencer.c
+++ b/arch/arm/mach-socfpga/include/mach/sequencer.c
@@ -292,11 +292,11 @@ static void initialize(void)
 {
 	IOWR_32DIRECT(PHY_MGR_MUX_SEL, 0, 0x3);
 
-	//USER memory clock is not stable we begin initialization 
+	//USER memory clock is not stable we begin initialization
 
 	IOWR_32DIRECT(PHY_MGR_RESET_MEM_STBL, 0, 0);
 
-	//USER calibration status all set to zero 
+	//USER calibration status all set to zero
 
 	IOWR_32DIRECT(PHY_MGR_CAL_STATUS, 0, 0);
 	IOWR_32DIRECT(PHY_MGR_CAL_DEBUG_INFO, 0, 0);
@@ -451,7 +451,7 @@ static void set_rank_and_odt_mask(uint32_t rank, uint32_t odt_mode)
 
 //USER Given a rank, select the set of shadow registers that is responsible for the
 //USER delays of such rank, so that subsequent SCC updates will go to those shadow
-//USER registers. 
+//USER registers.
 static void select_shadow_regs_for_update(uint32_t rank, uint32_t group,
 					  uint32_t update_scan_chains)
 {
@@ -494,7 +494,7 @@ static void scc_mgr_set_dqs_en_phase_all_ranks(uint32_t read_group, uint32_t pha
 
 	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r += NUM_RANKS_PER_SHADOW_REG) {
 		//USER although the h/w doesn't support different phases per shadow register,
-		//USER for simplicity our scc manager modeling keeps different phase settings per 
+		//USER for simplicity our scc manager modeling keeps different phase settings per
 		//USER shadow reg, and it's important for us to keep them in sync to match h/w.
 		//USER for efficiency, the scan chain update should occur only once to sr0.
 		update_scan_chains = (r == 0) ? 1 : 0;
@@ -522,7 +522,7 @@ static void scc_mgr_set_dqdqs_output_phase_all_ranks(uint32_t write_group, uint3
 
 	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r += NUM_RANKS_PER_SHADOW_REG) {
 		//USER although the h/w doesn't support different phases per shadow register,
-		//USER for simplicity our scc manager modeling keeps different phase settings per 
+		//USER for simplicity our scc manager modeling keeps different phase settings per
 		//USER shadow reg, and it's important for us to keep them in sync to match h/w.
 		//USER for efficiency, the scan chain update should occur only once to sr0.
 		update_scan_chains = (r == 0) ? 1 : 0;
@@ -749,7 +749,7 @@ static void scc_set_bypass_mode(uint32_t write_group, uint32_t mode)
 		DPRINT(1, "Done Setting HHP Extras");
 	}
 
-	//USER multicast to all DQ enables 
+	//USER multicast to all DQ enables
 	IOWR_32DIRECT(SCC_MGR_DQ_ENA, 0, 0xff);
 
 	IOWR_32DIRECT(SCC_MGR_DM_ENA, 0, 0xff);
@@ -802,7 +802,7 @@ static void scc_mgr_zero_group(uint32_t write_group, uint32_t test_begin, int32_
 		//USER multicast to all DQ enables
 		IOWR_32DIRECT(SCC_MGR_DQ_ENA, 0, 0xff);
 
-		//USER Zero all DM config settings 
+		//USER Zero all DM config settings
 		for (i = 0; i < RW_MGR_NUM_DM_PER_WRITE_GROUP; i++) {
 			if (!out_only) {
 				// Do we really need this?
@@ -815,7 +815,7 @@ static void scc_mgr_zero_group(uint32_t write_group, uint32_t test_begin, int32_
 		//USER multicast to all DM enables
 		IOWR_32DIRECT(SCC_MGR_DM_ENA, 0, 0xff);
 
-		//USER zero all DQS io settings 
+		//USER zero all DQS io settings
 		if (!out_only) {
 			scc_mgr_set_dqs_io_in_delay(write_group, 0);
 		}
@@ -827,33 +827,33 @@ static void scc_mgr_zero_group(uint32_t write_group, uint32_t test_begin, int32_
 		//USER multicast to all DQS IO enables (only 1)
 		IOWR_32DIRECT(SCC_MGR_DQS_IO_ENA, 0, 0);
 
-		//USER hit update to zero everything 
+		//USER hit update to zero everything
 		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
 	}
 }
 
-//USER load up dqs config settings 
+//USER load up dqs config settings
 
 static void scc_mgr_load_dqs(uint32_t dqs)
 {
 	IOWR_32DIRECT(SCC_MGR_DQS_ENA, 0, dqs);
 }
 
-//USER load up dqs io config settings 
+//USER load up dqs io config settings
 
 static void scc_mgr_load_dqs_io(void)
 {
 	IOWR_32DIRECT(SCC_MGR_DQS_IO_ENA, 0, 0);
 }
 
-//USER load up dq config settings 
+//USER load up dq config settings
 
 static void scc_mgr_load_dq(uint32_t dq_in_group)
 {
 	IOWR_32DIRECT(SCC_MGR_DQ_ENA, 0, dq_in_group);
 }
 
-//USER load up dm config settings 
+//USER load up dm config settings
 
 static void scc_mgr_load_dm(uint32_t dm)
 {
@@ -934,20 +934,20 @@ static void scc_mgr_set_group_dqs_io_and_oct_out1_gradual(uint32_t write_group,
 	}
 }
 
-//USER apply a delay to the entire output side: DQ, DM, DQS, OCT 
+//USER apply a delay to the entire output side: DQ, DM, DQS, OCT
 
 static void scc_mgr_apply_group_all_out_delay(uint32_t write_group, uint32_t group_bgn,
 					      uint32_t delay)
 {
-	//USER dq shift 
+	//USER dq shift
 
 	scc_mgr_apply_group_dq_out1_delay(write_group, group_bgn, delay);
 
-	//USER dm shift 
+	//USER dm shift
 
 	scc_mgr_apply_group_dm_out1_delay(write_group, delay);
 
-	//USER dqs and oct shift 
+	//USER dqs and oct shift
 
 	scc_mgr_apply_group_dqs_io_and_oct_out1(write_group, delay);
 }
@@ -968,14 +968,14 @@ static void scc_mgr_apply_group_all_out_delay_all_ranks(uint32_t write_group, ui
 	}
 }
 
-//USER apply a delay to the entire output side: DQ, DM, DQS, OCT 
+//USER apply a delay to the entire output side: DQ, DM, DQS, OCT
 
 static void scc_mgr_apply_group_all_out_delay_add(uint32_t write_group, uint32_t group_bgn,
 						  uint32_t delay)
 {
 	uint32_t i, p, new_delay;
 
-	//USER dq shift 
+	//USER dq shift
 
 	for (i = 0, p = group_bgn; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++, p++) {
 
@@ -994,7 +994,7 @@ static void scc_mgr_apply_group_all_out_delay_add(uint32_t write_group, uint32_t
 		scc_mgr_load_dq(i);
 	}
 
-	//USER dm shift 
+	//USER dm shift
 
 	for (i = 0; i < RW_MGR_NUM_DM_PER_WRITE_GROUP; i++) {
 		new_delay = READ_SCC_DM_IO_OUT2_DELAY(i);
@@ -1012,7 +1012,7 @@ static void scc_mgr_apply_group_all_out_delay_add(uint32_t write_group, uint32_t
 		scc_mgr_load_dm(i);
 	}
 
-	//USER dqs shift 
+	//USER dqs shift
 
 	new_delay = READ_SCC_DQS_IO_OUT2_DELAY();
 	new_delay += delay;
@@ -1029,7 +1029,7 @@ static void scc_mgr_apply_group_all_out_delay_add(uint32_t write_group, uint32_t
 	scc_mgr_set_dqs_out2_delay(write_group, new_delay);
 	scc_mgr_load_dqs_io();
 
-	//USER oct shift 
+	//USER oct shift
 
 	new_delay = READ_SCC_OCT_OUT2_DELAY(write_group);
 	new_delay += delay;
@@ -1200,7 +1200,7 @@ static void rw_mgr_mem_initialize(void)
 	//USER indicate that memory is stable
 	IOWR_32DIRECT(PHY_MGR_RESET_MEM_STBL, 0, 1);
 
-	//USER transition the RESET to high 
+	//USER transition the RESET to high
 	//USER Wait for 500us
 	//USER        num_cycles = (CTR2 + 1) * [(CTR1 + 1) * (2 * (CTR0 + 1) + 1) + 1] + 1
 	//USER Load counters
@@ -1215,12 +1215,12 @@ static void rw_mgr_mem_initialize(void)
 
 	IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_INIT_RESET_1_CKE_0);
 
-	//USER bring up clock enable 
+	//USER bring up clock enable
 
 	//USER tXRP < 250 ck cycles
 	delay_for_n_mem_clocks(250);
 
-	// USER initialize RDIMM buffer so MRS and RZQ Calibrate commands will be 
+	// USER initialize RDIMM buffer so MRS and RZQ Calibrate commands will be
 	// USER propagated to discrete memory devices
 	rw_mgr_rdimm_initialize();
 
@@ -1231,7 +1231,7 @@ static void rw_mgr_mem_initialize(void)
 			continue;
 		}
 
-		//USER set rank 
+		//USER set rank
 		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_OFF);
 
 		//USER Use Mirror-ed commands for odd ranks if address mirrorring is on
@@ -1288,11 +1288,11 @@ static void rw_mgr_mem_handoff(void)
 		//USER set rank
 		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_OFF);
 
-		//USER precharge all banks ... 
+		//USER precharge all banks ...
 
 		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_PRECHARGE_ALL);
 
-		//USER load up MR settings specified by user 
+		//USER load up MR settings specified by user
 
 		//USER Use Mirror-ed commands for odd ranks if address mirrorring is on
 		if ((RW_MGR_MEM_ADDRESS_MIRRORING >> r) & 0x1) {
@@ -1397,7 +1397,7 @@ static uint32_t rw_mgr_mem_calibrate_read_test_patterns_all_ranks(uint32_t group
 		return 1;
 	} else {
 		// case:139851 - if guaranteed read fails, we can retry using different dqs enable phases.
-		// It is possible that with the initial phase, dqs enable is asserted/deasserted too close 
+		// It is possible that with the initial phase, dqs enable is asserted/deasserted too close
 		// to an dqs edge, truncating the read burst.
 		uint32_t p;
 		for (p = 0; p <= IO_DQS_EN_PHASE_MAX; p++) {
@@ -1411,7 +1411,7 @@ static uint32_t rw_mgr_mem_calibrate_read_test_patterns_all_ranks(uint32_t group
 	}
 }
 
-//USER load up the patterns we are going to use during a read test 
+//USER load up the patterns we are going to use during a read test
 static void rw_mgr_mem_calibrate_read_load_patterns(uint32_t rank_bgn, uint32_t all_ranks)
 {
 	uint32_t r;
@@ -1456,96 +1456,96 @@ static inline void rw_mgr_mem_calibrate_read_load_patterns_all_ranks(void)
 //void pe_checkout_pattern (void)
 //{
 //    // test RW manager
-//    
+//
 //    // do some reads to check load buffer
 //      IOWR_32DIRECT (RW_MGR_LOAD_CNTR_1, 0, 0x0);
 //      IOWR_32DIRECT (RW_MGR_LOAD_JUMP_ADD_1, 0, __RW_MGR_READ_B2B_WAIT1);
 //
 //      IOWR_32DIRECT (RW_MGR_LOAD_CNTR_2, 0, 0x0);
 //      IOWR_32DIRECT (RW_MGR_LOAD_JUMP_ADD_2, 0, __RW_MGR_READ_B2B_WAIT2);
-//              
+//
 //      IOWR_32DIRECT (RW_MGR_LOAD_CNTR_0, 0, 0x0);
 //      IOWR_32DIRECT (RW_MGR_LOAD_JUMP_ADD_0, 0, __RW_MGR_READ_B2B);
-//      
+//
 //      IOWR_32DIRECT (RW_MGR_LOAD_CNTR_3, 0, 0x0);
 //      IOWR_32DIRECT (RW_MGR_LOAD_JUMP_ADD_3, 0, __RW_MGR_READ_B2B);
-//      
+//
 //      // clear error word
 //      IOWR_32DIRECT (RW_MGR_RESET_READ_DATAPATH, 0, 0);
-//      
+//
 //      IOWR_32DIRECT (RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_READ_B2B);
-//      
+//
 //      uint32_t readdata;
-//      
+//
 //      // read error word
 //      readdata = IORD_32DIRECT(BASE_RW_MGR, 0);
-//      
+//
 //      // read DI buffer
 //      readdata = IORD_32DIRECT(RW_MGR_DI_BASE + 0*4, 0);
 //      readdata = IORD_32DIRECT(RW_MGR_DI_BASE + 1*4, 0);
 //      readdata = IORD_32DIRECT(RW_MGR_DI_BASE + 2*4, 0);
 //      readdata = IORD_32DIRECT(RW_MGR_DI_BASE + 3*4, 0);
-//      
+//
 //      IOWR_32DIRECT (RW_MGR_LOAD_CNTR_1, 0, 0x0);
 //      IOWR_32DIRECT (RW_MGR_LOAD_JUMP_ADD_1, 0, __RW_MGR_READ_B2B_WAIT1);
 //
 //      IOWR_32DIRECT (RW_MGR_LOAD_CNTR_2, 0, 0x0);
 //      IOWR_32DIRECT (RW_MGR_LOAD_JUMP_ADD_2, 0, __RW_MGR_READ_B2B_WAIT2);
-//              
+//
 //      IOWR_32DIRECT (RW_MGR_LOAD_CNTR_0, 0, 0x0);
 //      IOWR_32DIRECT (RW_MGR_LOAD_JUMP_ADD_0, 0, __RW_MGR_READ_B2B);
-//      
+//
 //      IOWR_32DIRECT (RW_MGR_LOAD_CNTR_3, 0, 0x0);
 //      IOWR_32DIRECT (RW_MGR_LOAD_JUMP_ADD_3, 0, __RW_MGR_READ_B2B);
-//      
+//
 //      // clear error word
 //      IOWR_32DIRECT (RW_MGR_RESET_READ_DATAPATH, 0, 0);
-//      
+//
 //      // do read
 //      IOWR_32DIRECT (RW_MGR_LOOPBACK_MODE, 0, __RW_MGR_READ_B2B);
-//      
+//
 //      // read error word
 //      readdata = IORD_32DIRECT(BASE_RW_MGR, 0);
-//      
+//
 //      // error word should be 0x00
-//      
+//
 //      // read DI buffer
 //      readdata = IORD_32DIRECT(RW_MGR_DI_BASE + 0*4, 0);
 //      readdata = IORD_32DIRECT(RW_MGR_DI_BASE + 1*4, 0);
 //      readdata = IORD_32DIRECT(RW_MGR_DI_BASE + 2*4, 0);
 //      readdata = IORD_32DIRECT(RW_MGR_DI_BASE + 3*4, 0);
-//      
+//
 //      // clear error word
 //      IOWR_32DIRECT (RW_MGR_RESET_READ_DATAPATH, 0, 0);
-//      
-//      // do dm read   
+//
+//      // do dm read
 //      IOWR_32DIRECT (RW_MGR_LOOPBACK_MODE, 0, __RW_MGR_LFSR_WR_RD_DM_BANK_0_WL_1);
-//      
+//
 //      // read error word
 //      readdata = IORD_32DIRECT(BASE_RW_MGR, 0);
-//      
+//
 //      // error word should be ff
-//      
+//
 //      // read DI buffer
 //      readdata = IORD_32DIRECT(RW_MGR_DI_BASE + 0*4, 0);
 //      readdata = IORD_32DIRECT(RW_MGR_DI_BASE + 1*4, 0);
 //      readdata = IORD_32DIRECT(RW_MGR_DI_BASE + 2*4, 0);
 //      readdata = IORD_32DIRECT(RW_MGR_DI_BASE + 3*4, 0);
-//      
+//
 //      // exit loopback mode
 //      IOWR_32DIRECT (BASE_RW_MGR, 0, __RW_MGR_IDLE_LOOP2);
-//      
+//
 //      // start of phy manager access
-//      
+//
 //      readdata = IORD_32DIRECT (PHY_MGR_MAX_RLAT_WIDTH, 0);
 //      readdata = IORD_32DIRECT (PHY_MGR_MAX_AFI_WLAT_WIDTH, 0);
 //      readdata = IORD_32DIRECT (PHY_MGR_MAX_AFI_RLAT_WIDTH, 0);
 //      readdata = IORD_32DIRECT (PHY_MGR_CALIB_SKIP_STEPS, 0);
-//      readdata = IORD_32DIRECT (PHY_MGR_CALIB_VFIFO_OFFSET, 0);       
+//      readdata = IORD_32DIRECT (PHY_MGR_CALIB_VFIFO_OFFSET, 0);
 //      readdata = IORD_32DIRECT (PHY_MGR_CALIB_LFIFO_OFFSET, 0);
-//      
+//
 //      // start of data manager test
-//      
+//
 //      readdata = IORD_32DIRECT (DATA_MGR_DRAM_CFG         , 0);
 //      readdata = IORD_32DIRECT (DATA_MGR_MEM_T_WL         , 0);
 //      readdata = IORD_32DIRECT (DATA_MGR_MEM_T_ADD    , 0);
@@ -1560,7 +1560,7 @@ static inline void rw_mgr_mem_calibrate_read_load_patterns_all_ranks(void)
 //      readdata = IORD_32DIRECT (DATA_MGR_CS_WIDTH         , 0);
 //      readdata = IORD_32DIRECT (DATA_MGR_ITF_WIDTH    , 0);
 //      readdata = IORD_32DIRECT (DATA_MGR_DVC_WIDTH    , 0);
-//      
+//
 //}
 
 //USER  try a read and see if it returns correct data back. has dummy reads inserted into the mix
@@ -1615,7 +1615,7 @@ static uint32_t rw_mgr_mem_calibrate_read_test(uint32_t rank_bgn, uint32_t group
 
 		tmp_bit_chk = 0;
 		for (vg = RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS - 1;; vg--) {
-			//USER reset the fifos to get pointers to known state 
+			//USER reset the fifos to get pointers to known state
 
 			IOWR_32DIRECT(PHY_MGR_CMD_FIFO_RESET, 0, 0);
 			IOWR_32DIRECT(RW_MGR_RESET_READ_DATAPATH, 0, 0);
@@ -1664,7 +1664,7 @@ static inline uint32_t rw_mgr_mem_calibrate_read_test_all_ranks(uint32_t group,
 
 static void rw_mgr_incr_vfifo(uint32_t grp, uint32_t * v)
 {
-	//USER fiddle with FIFO 
+	//USER fiddle with FIFO
 	if (HARD_PHY) {
 		IOWR_32DIRECT(PHY_MGR_CMD_INC_VFIFO_HARD_PHY, 0, grp);
 	} else if (QUARTER_RATE_MODE && !HARD_VFIFO) {
@@ -1718,11 +1718,11 @@ static void rw_mgr_decr_vfifo(uint32_t grp, uint32_t * v)
 	}
 }
 
-//USER find a good dqs enable to use 
+//USER find a good dqs enable to use
 
 #if NEWVERSION_DQSEN
 
-// Navid's version 
+// Navid's version
 
 static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 {
@@ -1823,7 +1823,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	}
 
 	if (i >= VFIFO_SIZE) {
-		//USER cannot find working solution 
+		//USER cannot find working solution
 		DPRINT(2, "find_dqs_en_phase: no vfifo/ptap/dtap");
 		return 0;
 	}
@@ -1831,13 +1831,13 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	work_end = work_bgn;
 
 	//USER  If d is 0 then the working window covers a phase tap and we can follow the old procedure
-	//USER  otherwise, we've found the beginning, and we need to increment the dtaps until we find the end 
+	//USER  otherwise, we've found the beginning, and we need to increment the dtaps until we find the end
 	if (d == 0) {
 		//USER ********************************************************************
 		//USER * step 3a: if we have room, back off by one and increment in dtaps *
 		COV(EN_PHASE_PTAP_OVERLAP);
 
-		//USER Special case code for backing up a phase 
+		//USER Special case code for backing up a phase
 		if (p == 0) {
 			p = IO_DQS_EN_PHASE_MAX;
 			rw_mgr_decr_vfifo(grp, &v);
@@ -1864,7 +1864,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 			}
 		}
 
-		//USER We have found a working dtap before the ptap found above 
+		//USER We have found a working dtap before the ptap found above
 		if (found_begin == 1) {
 			max_working_cnt++;
 		}
@@ -1915,14 +1915,14 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 		}
 
 		if (i >= VFIFO_SIZE + 1) {
-			//USER cannot see edge of failing read 
+			//USER cannot see edge of failing read
 			DPRINT(2, "find_dqs_en_phase: end: failed");
 			return 0;
 		}
 		//USER *********************************************************
 		//USER * step 5a:  back off one from last, increment in dtaps  *
 
-		//USER Special case code for backing up a phase 
+		//USER Special case code for backing up a phase
 		if (p == 0) {
 			p = IO_DQS_EN_PHASE_MAX;
 			rw_mgr_decr_vfifo(grp, &v);
@@ -1941,7 +1941,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	} else {
 
 		//USER ********************************************************************
-		//USER * step 3-5b:  Find the right edge of the window using delay taps   *             
+		//USER * step 3-5b:  Find the right edge of the window using delay taps   *
 		COV(EN_PHASE_PTAP_NO_OVERLAP);
 
 		DPRINT(2, "find_dqs_en_phase: begin found: vfifo=%lu ptap=%lu dtap=%lu begin=%lu",
@@ -1956,7 +1956,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 		//USER * The actual increment of dtaps is done outside of the if/else loop to share code
 
 		//USER Only here to counterbalance a subtract later on which is not needed if this branch
-		//USER  of the algorithm is taken 
+		//USER  of the algorithm is taken
 		max_working_cnt++;
 	}
 
@@ -1971,7 +1971,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 		}
 	}
 
-	//USER Go back to working dtap 
+	//USER Go back to working dtap
 	if (d != 0) {
 		work_end -= IO_DELAY_PER_DQS_EN_DCHAIN_TAP;
 	}
@@ -1984,9 +1984,9 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	BFM_GBL_SET(dqs_enable_right_edge[grp].ps, work_end);
 
 	if (work_end >= work_bgn) {
-		//USER we have a working range 
+		//USER we have a working range
 	} else {
-		//USER nil range 
+		//USER nil range
 		DPRINT(2, "find_dqs_en_phase: end-2: failed");
 		return 0;
 	}
@@ -1995,12 +1995,12 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 
 	// ***************************************************************
 	//USER * We need to calculate the number of dtaps that equal a ptap
-	//USER * To do that we'll back up a ptap and re-find the edge of the 
+	//USER * To do that we'll back up a ptap and re-find the edge of the
 	//USER * window using dtaps
 
 	DPRINT(2, "find_dqs_en_phase: calculate dtaps_per_ptap for tracking");
 
-	//USER Special case code for backing up a phase 
+	//USER Special case code for backing up a phase
 	if (p == 0) {
 		p = IO_DQS_EN_PHASE_MAX;
 		rw_mgr_decr_vfifo(grp, &v);
@@ -2033,7 +2033,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	}
 
 	if (found_passing_read) {
-		//USER Find a failing read 
+		//USER Find a failing read
 		DPRINT(2, "find_dqs_en_phase: find failing read");
 		for (d = d + 1; d <= IO_DQS_EN_DELAY_MAX; d++) {
 			DPRINT(2, "find_dqs_en_phase: testing read d=%lu", d);
@@ -2069,7 +2069,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	tmp_delay = 0;
 
 	DPRINT(2, "work_bgn=%ld work_end=%ld work_mid=%ld", work_bgn, work_end, work_mid);
-	//USER Get the middle delay to be less than a VFIFO delay 
+	//USER Get the middle delay to be less than a VFIFO delay
 	for (p = 0; p <= IO_DQS_EN_PHASE_MAX; p++, tmp_delay += IO_DELAY_PER_OPA_TAP) ;
 	DPRINT(2, "vfifo ptap delay %ld", tmp_delay);
 	while (work_mid > tmp_delay)
@@ -2113,7 +2113,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 }
 
 #if 0
-// Ryan's algorithm 
+// Ryan's algorithm
 
 static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 {
@@ -2201,20 +2201,20 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	}
 
 	if (i >= VFIFO_SIZE) {
-		//USER cannot find working solution 
+		//USER cannot find working solution
 		return 0;
 	}
 
 	min_working_p = p;
 
 	//USER  If d is 0 then the working window covers a phase tap and we can follow the old procedure
-	//USER  otherwise, we've found the beginning, and we need to increment the dtaps until we find the end 
+	//USER  otherwise, we've found the beginning, and we need to increment the dtaps until we find the end
 	if (d == 0) {
 		//USER ********************************************************************
 		//USER * step 3a: if we have room, back off by one and increment in dtaps *
 		min_working_d = 0;
 
-		//USER Special case code for backing up a phase 
+		//USER Special case code for backing up a phase
 		if (p == 0) {
 			p = IO_DQS_EN_PHASE_MAX;
 			rw_mgr_decr_vfifo(grp, &v);
@@ -2235,12 +2235,12 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 			}
 		}
 
-		//USER We have found a working dtap before the ptap found above 
+		//USER We have found a working dtap before the ptap found above
 		if (found_begin == 1) {
 			min_working_p = p;
 			max_working_cnt++;
 		}
-		//USER Restore VFIFO to old state before we decremented it 
+		//USER Restore VFIFO to old state before we decremented it
 		p = p + 1;
 		if (p > IO_DQS_EN_PHASE_MAX) {
 			p = 0;
@@ -2284,14 +2284,14 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 		}
 
 		if (i >= VFIFO_SIZE + 1) {
-			//USER cannot see edge of failing read 
+			//USER cannot see edge of failing read
 			return 0;
 		}
 		//USER *********************************************************
 		//USER * step 5a:  back off one from last, increment in dtaps  *
 		max_working_d = 0;
 
-		//USER Special case code for backing up a phase 
+		//USER Special case code for backing up a phase
 		if (p == 0) {
 			p = IO_DQS_EN_PHASE_MAX;
 			rw_mgr_decr_vfifo(grp, &v);
@@ -2311,7 +2311,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 			}
 		}
 
-		//USER Go back to working dtap 
+		//USER Go back to working dtap
 		if (d != 0) {
 			max_working_d = d - 1;
 		}
@@ -2319,7 +2319,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	} else {
 
 		//USER ********************************************************************
-		//USER * step 3-5b:  Find the right edge of the window using delay taps   *             
+		//USER * step 3-5b:  Find the right edge of the window using delay taps   *
 
 		max_working_p = min_working_p;
 		min_working_d = d;
@@ -2333,12 +2333,12 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 			}
 		}
 
-		//USER Go back to working dtap 
+		//USER Go back to working dtap
 		if (d != 0) {
 			max_working_d = d - 1;
 		}
 		//USER Only here to counterbalance a subtract later on which is not needed if this branch
-		//USER of the algorithm is taken 
+		//USER of the algorithm is taken
 		max_working_cnt++;
 	}
 
@@ -2346,11 +2346,11 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	//USER * step 6:  Find the centre of the window   *
 
 	//USER If the number of working phases is even we will step back a phase and find the
-	//USER  edge with a larger delay chain tap 
+	//USER  edge with a larger delay chain tap
 	if ((max_working_cnt & 1) == 0) {
 		p = min_working_p + (max_working_cnt - 1) / 2;
 
-		//USER Special case code for backing up a phase 
+		//USER Special case code for backing up a phase
 		if (max_working_p == 0) {
 			max_working_p = IO_DQS_EN_PHASE_MAX;
 			rw_mgr_decr_vfifo(grp, &v);
@@ -2378,7 +2378,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 			}
 		}
 
-		//USER Go back to working dtap 
+		//USER Go back to working dtap
 		if (d != 0) {
 			max_working_d = d - 1;
 		}
@@ -2395,7 +2395,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	scc_mgr_set_dqs_en_phase_all_ranks(grp, p);
 	scc_mgr_set_dqs_en_delay_all_ranks(grp, d);
 
-	//USER push vfifo until we can successfully calibrate 
+	//USER push vfifo until we can successfully calibrate
 
 	for (i = 0; i < VFIFO_SIZE; i++) {
 		if (rw_mgr_mem_calibrate_read_test_all_ranks(grp, 1, PASS_ONE_BIT, &bit_chk, 0)) {
@@ -2415,7 +2415,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 #endif
 
 #else
-// Val's original version 
+// Val's original version
 
 static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 {
@@ -2432,7 +2432,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 
 	fail_cnt = 0;
 
-	//USER first push vfifo until we get a failing read 
+	//USER first push vfifo until we get a failing read
 	v = 0;
 	for (i = 0; i < VFIFO_SIZE; i++) {
 		if (!rw_mgr_mem_calibrate_read_test_all_ranks(grp, 1, PASS_ONE_BIT, &bit_chk, 0)) {
@@ -2462,7 +2462,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 			rw_mgr_mem_calibrate_read_test_all_ranks(grp, NUM_READ_PB_TESTS,
 								 PASS_ONE_BIT, &bit_chk, 0);
 			if (bit_chk) {
-				//USER passing read 
+				//USER passing read
 
 				if (max_working_cnt == 0) {
 					min_working_d = d;
@@ -2471,7 +2471,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 				max_working_cnt++;
 			} else {
 				if (max_working_cnt > 0) {
-					//USER already have one working value 
+					//USER already have one working value
 					break;
 				}
 			}
@@ -2481,7 +2481,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 			//USER fiddle with FIFO
 			rw_mgr_incr_vfifo(grp, &v);
 		} else {
-			//USER found working solution! 
+			//USER found working solution!
 
 			d = min_working_d + (max_working_cnt - 1) / 2;
 
@@ -2494,16 +2494,16 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 	}
 
 	if (i >= VFIFO_SIZE + 1) {
-		//USER cannot find working solution or cannot see edge of failing read 
+		//USER cannot find working solution or cannot see edge of failing read
 
 		return 0;
 	}
-	//USER in the case the number of working steps is even, use 50ps taps to further center the window 
+	//USER in the case the number of working steps is even, use 50ps taps to further center the window
 
 	if ((max_working_cnt & 1) == 0) {
 		delay_per_ptap_mid = IO_DELAY_PER_OPA_TAP / 2;
 
-		//USER increment in 50ps taps until we reach the required amount 
+		//USER increment in 50ps taps until we reach the required amount
 
 		for (i = 0, j = 0; i <= IO_DQS_EN_DELAY_MAX && j < delay_per_ptap_mid;
 		     i++, j += IO_DELAY_PER_DQS_EN_DCHAIN_TAP) ;
@@ -2513,7 +2513,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 
 	scc_mgr_set_dqs_en_phase_all_ranks(grp, d);
 
-	//USER push vfifo until we can successfully calibrate 
+	//USER push vfifo until we can successfully calibrate
 
 	for (i = 0; i < VFIFO_SIZE; i++) {
 		if (rw_mgr_mem_calibrate_read_test_all_ranks
@@ -2582,7 +2582,7 @@ static inline uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase_sweep_dq_in_
 	return found;
 }
 
-//USER per-bit deskew DQ and center 
+//USER per-bit deskew DQ and center
 
 #if NEWVERSION_RDDESKEW
 
@@ -2610,10 +2610,10 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t wr
 
 	select_curr_shadow_reg_using_rank(rank_bgn);
 
-	//USER per-bit deskew 
+	//USER per-bit deskew
 
-	//USER set the left and right edge of each bit to an illegal value 
-	//USER use (IO_IO_IN_DELAY_MAX + 1) as an illegal value 
+	//USER set the left and right edge of each bit to an illegal value
+	//USER use (IO_IO_IN_DELAY_MAX + 1) as an illegal value
 	sticky_bit_chk = 0;
 	for (i = 0; i < RW_MGR_MEM_DQ_PER_READ_DQS; i++) {
 		left_edge[i] = IO_IO_IN_DELAY_MAX + 1;
@@ -2654,7 +2654,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t wr
 					//USER Remember a passing test as the left_edge
 					left_edge[i] = d;
 				} else {
-					//USER If a left edge has not been seen yet, then a future passing test will mark this edge as the right edge 
+					//USER If a left edge has not been seen yet, then a future passing test will mark this edge as the right edge
 					if (left_edge[i] == IO_IO_IN_DELAY_MAX + 1) {
 						right_edge[i] = -(d + 1);
 					}
@@ -2667,7 +2667,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t wr
 		}
 	}
 
-	//USER Reset DQ delay chains to 0 
+	//USER Reset DQ delay chains to 0
 	scc_mgr_apply_group_dq_in_delay(write_group, test_bgn, 0);
 	sticky_bit_chk = 0;
 	for (i = RW_MGR_MEM_DQ_PER_READ_DQS - 1;; i--) {
@@ -2675,14 +2675,14 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t wr
 		DPRINT(2, "vfifo_center: left_edge[%lu]: %ld right_edge[%lu]: %ld", i, left_edge[i],
 		       i, right_edge[i]);
 
-		//USER Check for cases where we haven't found the left edge, which makes our assignment of the the 
-		//USER right edge invalid.  Reset it to the illegal value. 
+		//USER Check for cases where we haven't found the left edge, which makes our assignment of the the
+		//USER right edge invalid.  Reset it to the illegal value.
 		if ((left_edge[i] == IO_IO_IN_DELAY_MAX + 1)
 		    && (right_edge[i] != IO_IO_IN_DELAY_MAX + 1)) {
 			right_edge[i] = IO_IO_IN_DELAY_MAX + 1;
 			DPRINT(2, "vfifo_center: reset right_edge[%lu]: %ld", i, right_edge[i]);
 		}
-		//USER Reset sticky bit (except for bits where we have seen both the left and right edge) 
+		//USER Reset sticky bit (except for bits where we have seen both the left and right edge)
 		sticky_bit_chk = sticky_bit_chk << 1;
 		if ((left_edge[i] != IO_IO_IN_DELAY_MAX + 1)
 		    && (right_edge[i] != IO_IO_IN_DELAY_MAX + 1)) {
@@ -2694,7 +2694,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t wr
 		}
 	}
 
-	//USER Search for the right edge of the window for each bit 
+	//USER Search for the right edge of the window for each bit
 	for (d = 0; d <= IO_DQS_IN_DELAY_MAX - start_dqs; d++) {
 		scc_mgr_set_dqs_bus_in_delay(read_group, d + start_dqs);
 		if (IO_SHIFT_DQS_EN_WHEN_SHIFT_DQS) {
@@ -2708,7 +2708,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t wr
 
 		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
 
-		//USER Stop searching when the read test doesn't pass AND when we've seen a passing read on every bit 
+		//USER Stop searching when the read test doesn't pass AND when we've seen a passing read on every bit
 		if (use_read_test) {
 			stop =
 			    !rw_mgr_mem_calibrate_read_test(rank_bgn, read_group, NUM_READ_PB_TESTS,
@@ -2734,11 +2734,11 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t wr
 		} else {
 			for (i = 0; i < RW_MGR_MEM_DQ_PER_READ_DQS; i++) {
 				if (bit_chk & 1) {
-					//USER Remember a passing test as the right_edge 
+					//USER Remember a passing test as the right_edge
 					right_edge[i] = d;
 				} else {
 					if (d != 0) {
-						//USER If a right edge has not been seen yet, then a future passing test will mark this edge as the left edge 
+						//USER If a right edge has not been seen yet, then a future passing test will mark this edge as the left edge
 						if (right_edge[i] == IO_IO_IN_DELAY_MAX + 1) {
 							left_edge[i] = -(d + 1);
 						}
@@ -2748,7 +2748,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t wr
 						    && left_edge[i] != IO_IO_IN_DELAY_MAX + 1) {
 							right_edge[i] = -1;
 						}
-						//USER If a right edge has not been seen yet, then a future passing test will mark this edge as the left edge 
+						//USER If a right edge has not been seen yet, then a future passing test will mark this edge as the left edge
 						else if (right_edge[i] == IO_IO_IN_DELAY_MAX + 1) {
 							left_edge[i] = -(d + 1);
 						}
@@ -2775,7 +2775,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t wr
 		if ((left_edge[i] == IO_IO_IN_DELAY_MAX + 1)
 		    || (right_edge[i] == IO_IO_IN_DELAY_MAX + 1)) {
 
-			//USER Restore delay chain settings before letting the loop in 
+			//USER Restore delay chain settings before letting the loop in
 			//USER rw_mgr_mem_calibrate_vfifo to retry different dqs/ck relationships
 			scc_mgr_set_dqs_bus_in_delay(read_group, start_dqs);
 			if (IO_SHIFT_DQS_EN_WHEN_SHIFT_DQS) {
@@ -2798,7 +2798,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t wr
 		}
 	}
 
-	//USER Find middle of window for each DQ bit 
+	//USER Find middle of window for each DQ bit
 	mid_min = left_edge[0] - right_edge[0];
 	min_index = 0;
 	for (i = 1; i < RW_MGR_MEM_DQ_PER_READ_DQS; i++) {
@@ -2841,13 +2841,13 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t wr
 	DPRINT(1, "vfifo_center: start_dqs=%ld start_dqs_en=%ld new_dqs=%ld mid_min=%ld",
 	       start_dqs, IO_SHIFT_DQS_EN_WHEN_SHIFT_DQS ? start_dqs_en : -1, new_dqs, mid_min);
 
-	//USER Initialize data for export structures 
+	//USER Initialize data for export structures
 	dqs_margin = IO_IO_IN_DELAY_MAX + 1;
 	dq_margin = IO_IO_IN_DELAY_MAX + 1;
 
-	//USER add delay to bring centre of all DQ windows to the same "level" 
+	//USER add delay to bring centre of all DQ windows to the same "level"
 	for (i = 0, p = test_bgn; i < RW_MGR_MEM_DQ_PER_READ_DQS; i++, p++) {
-		//USER Use values before divide by 2 to reduce round off error 
+		//USER Use values before divide by 2 to reduce round off error
 		shift_dq =
 		    (left_edge[i] - right_edge[i] -
 		     (left_edge[min_index] - right_edge[min_index])) / 2 + (orig_mid_min - mid_min);
@@ -2866,7 +2866,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t wr
 
 		DPRINT(2, "vfifo_center: margin[%lu]=[%ld,%ld]", i,
 		       left_edge[i] - shift_dq + (-mid_min), right_edge[i] + shift_dq - (-mid_min));
-		//USER To determine values for export structures 
+		//USER To determine values for export structures
 		if (left_edge[i] - shift_dq + (-mid_min) < dq_margin) {
 			dq_margin = left_edge[i] - shift_dq + (-mid_min);
 		}
@@ -2889,7 +2889,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t wr
 	scc_mgr_load_dqs(read_group);
 
 	if (update_fom) {
-		//USER Export values 
+		//USER Export values
 		gbl->fom_in +=
 		    (dq_margin +
 		     dqs_margin) / (RW_MGR_MEM_IF_READ_DQS_WIDTH / RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
@@ -2940,7 +2940,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t gr
 		}
 	}
 
-	//USER determine minimum working value for DQ 
+	//USER determine minimum working value for DQ
 
 	dq_margin = IO_IO_IN_DELAY_MAX;
 
@@ -2950,7 +2950,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t gr
 		}
 	}
 
-	//USER add delay to bring all DQ windows to the same "level" 
+	//USER add delay to bring all DQ windows to the same "level"
 
 	for (i = 0, p = test_bgn; i < RW_MGR_MEM_DQ_PER_READ_DQS; i++, p++) {
 		if (max_working_dq[i] > dq_margin) {
@@ -2981,11 +2981,11 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t gr
 
 	scc_mgr_set_dqs_bus_in_delay(grp, start_dqs);
 
-	//USER margin on the DQS pin 
+	//USER margin on the DQS pin
 
 	dqs_margin = d - start_dqs - 1;
 
-	//USER find mid point, +1 so that we don't go crazy pushing DQ 
+	//USER find mid point, +1 so that we don't go crazy pushing DQ
 
 	mid = (dq_margin + dqs_margin + 1) / 2;
 
@@ -2993,7 +2993,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t gr
 //      TCLRPT_SET(debug_summary_report->fom_in, debug_summary_report->fom_in + (dq_margin + dqs_margin));
 //      TCLRPT_SET(debug_cal_report->cal_status_per_group[grp].fom_in, (dq_margin + dqs_margin));
 
-	//USER center DQS ... if the headroom is setup properly we shouldn't need to 
+	//USER center DQS ... if the headroom is setup properly we shouldn't need to
 
 	if (dqs_margin > mid) {
 		scc_mgr_set_dqs_bus_in_delay(grp, READ_SCC_DQS_IN_DELAY(grp) + dqs_margin - mid);
@@ -3011,7 +3011,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t gr
 
 	scc_mgr_load_dqs(grp);
 
-	//USER center DQ 
+	//USER center DQ
 
 	if (dq_margin > mid) {
 		for (i = 0, p = test_bgn; i < RW_MGR_MEM_DQ_PER_READ_DQS; i++, p++) {
@@ -3032,7 +3032,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t gr
 #endif
 
 //USER calibrate the read valid prediction FIFO.
-//USER 
+//USER
 //USER  - read valid prediction will consist of finding a good DQS enable phase, DQS enable delay, DQS input phase, and DQS input delay.
 //USER  - we also do a per-bit deskew on the DQ lines.
 
@@ -3050,7 +3050,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo(uint32_t read_group, uint32_t test_bg
 	uint32_t failed_substage;
 	uint32_t dqs_in_dtaps, orig_start_dqs;
 
-	//USER update info for sims 
+	//USER update info for sims
 
 	reg_file_set_stage(CAL_STAGE_VFIFO);
 
@@ -3074,7 +3074,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo(uint32_t read_group, uint32_t test_bg
 		dtaps_per_ptap--;
 		tmp_delay = 0;
 	}
-	//USER update info for sims 
+	//USER update info for sims
 
 	reg_file_set_group(read_group);
 
@@ -3095,7 +3095,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo(uint32_t read_group, uint32_t test_bg
 		}
 
 		for (p = 0; p <= IO_DQDQS_OUT_PHASE_MAX && grp_calibrated == 0; p++) {
-			//USER set a particular dqdqs phase 
+			//USER set a particular dqdqs phase
 			if (DDRX) {
 				scc_mgr_set_dqdqs_output_phase_all_ranks(read_group, p);
 			}
@@ -3111,7 +3111,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo(uint32_t read_group, uint32_t test_bg
 			BFM_GBL_SET(gwrite_pos[read_group].p, p);
 			BFM_GBL_SET(gwrite_pos[read_group].d, d);
 
-			//USER Load up the patterns used by read calibration using current DQDQS phase 
+			//USER Load up the patterns used by read calibration using current DQDQS phase
 
 			rw_mgr_mem_calibrate_read_load_patterns_all_ranks();
 
@@ -3209,7 +3209,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo(uint32_t g, uint32_t test_bgn)
 	uint32_t grp_calibrated;
 	uint32_t failed_substage;
 
-	//USER update info for sims 
+	//USER update info for sims
 
 	reg_file_set_stage(CAL_STAGE_VFIFO);
 
@@ -3217,18 +3217,18 @@ static uint32_t rw_mgr_mem_calibrate_vfifo(uint32_t g, uint32_t test_bgn)
 
 	failed_substage = CAL_SUBSTAGE_GUARANTEED_READ;
 
-	//USER update info for sims 
+	//USER update info for sims
 
 	reg_file_set_group(g);
 
 	grp_calibrated = 0;
 
 	for (p = 0; p <= IO_DQDQS_OUT_PHASE_MAX && grp_calibrated == 0; p++) {
-		//USER set a particular dqdqs phase 
+		//USER set a particular dqdqs phase
 		if (DDRX) {
 			scc_mgr_set_dqdqs_output_phase_all_ranks(g, p);
 		}
-		//USER Load up the patterns used by read calibration using current DQDQS phase 
+		//USER Load up the patterns used by read calibration using current DQDQS phase
 
 		rw_mgr_mem_calibrate_read_load_patterns_all_ranks();
 		if (!(gbl->phy_debug_mode_flags & PHY_DEBUG_DISABLE_GUARANTEED_READ)) {
@@ -3280,7 +3280,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_end(uint32_t read_group, uint32_t tes
 	uint32_t grp_calibrated;
 	uint32_t write_group;
 
-	//USER update info for sims 
+	//USER update info for sims
 
 	reg_file_set_stage(CAL_STAGE_VFIFO_AFTER_WRITES);
 	reg_file_set_sub_stage(CAL_SUBSTAGE_VFIFO_CENTER);
@@ -3292,7 +3292,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_end(uint32_t read_group, uint32_t tes
 		    read_group / (RW_MGR_MEM_IF_READ_DQS_WIDTH / RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
 	}
 
-	//USER update info for sims 
+	//USER update info for sims
 	reg_file_set_group(read_group);
 
 	grp_calibrated = 1;
@@ -3330,7 +3330,7 @@ static uint32_t rw_mgr_mem_calibrate_lfifo(void)
 	uint32_t found_one;
 	t_btfld bit_chk;
 
-	//USER update info for sims 
+	//USER update info for sims
 
 	reg_file_set_stage(CAL_STAGE_LFIFO);
 	reg_file_set_sub_stage(CAL_SUBSTAGE_READ_LATENCY);
@@ -3358,12 +3358,12 @@ static uint32_t rw_mgr_mem_calibrate_lfifo(void)
 		gbl->curr_read_lat--;
 	} while (gbl->curr_read_lat > 0);
 
-	//USER reset the fifos to get pointers to known state 
+	//USER reset the fifos to get pointers to known state
 
 	IOWR_32DIRECT(PHY_MGR_CMD_FIFO_RESET, 0, 0);
 
 	if (found_one) {
-		//USER add a fudge factor to the read latency that was determined 
+		//USER add a fudge factor to the read latency that was determined
 		gbl->curr_read_lat += 2;
 		IOWR_32DIRECT(PHY_MGR_PHY_RLAT, 0, gbl->curr_read_lat);
 
@@ -3508,13 +3508,13 @@ static uint32_t rw_mgr_mem_calibrate_write_test(uint32_t rank_bgn, uint32_t writ
 
 			continue;
 		}
-		//USER set rank 
+		//USER set rank
 		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_READ_WRITE);
 
 		tmp_bit_chk = 0;
 		for (vg = RW_MGR_MEM_VIRTUAL_GROUPS_PER_WRITE_DQS - 1;; vg--) {
 
-			//USER reset the fifos to get pointers to known state 
+			//USER reset the fifos to get pointers to known state
 			IOWR_32DIRECT(PHY_MGR_CMD_FIFO_RESET, 0, 0);
 
 			tmp_bit_chk =
@@ -3584,24 +3584,24 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 	reg_file_set_stage(CAL_STAGE_WLEVEL);
 	reg_file_set_sub_stage(CAL_SUBSTAGE_WORKING_DELAY);
 
-	//USER maximum phases for the sweep 
+	//USER maximum phases for the sweep
 
 	dtaps_per_ptap = IORD_32DIRECT(REG_FILE_DTAPS_PER_PTAP, 0);
 
-	//USER starting phases 
+	//USER starting phases
 
 	//USER update info for sims
 
 	reg_file_set_group(g);
 
-	//USER starting and end range where writes work 
+	//USER starting and end range where writes work
 
 	scc_mgr_spread_out2_delay_all_ranks(g, test_bgn);
 
 	work_bgn = 0;
 	work_end = 0;
 
-	//USER step 1: find first working phase, increment in ptaps, and then in dtaps if ptaps doesn't find a working phase 
+	//USER step 1: find first working phase, increment in ptaps, and then in dtaps if ptaps doesn't find a working phase
 	found_begin = 0;
 	tmp_delay = 0;
 	for (d = 0; d <= dtaps_per_ptap; d++, tmp_delay += IO_DELAY_PER_DCHAIN_TAP) {
@@ -3627,7 +3627,7 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 	}
 
 	if (p > IO_DQDQS_OUT_PHASE_MAX + num_additional_fr_cycles * IO_DLL_CHAIN_LENGTH) {
-		//USER fail, cannot find first working phase 
+		//USER fail, cannot find first working phase
 
 		set_failing_group_stage(g, CAL_STAGE_WLEVEL, CAL_SUBSTAGE_WORKING_DELAY);
 
@@ -3639,12 +3639,12 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 	reg_file_set_sub_stage(CAL_SUBSTAGE_LAST_WORKING_DELAY);
 
 	//USER If d is 0 then the working window covers a phase tap and we can follow the old procedure
-	//USER  otherwise, we've found the beginning, and we need to increment the dtaps until we find the end 
+	//USER  otherwise, we've found the beginning, and we need to increment the dtaps until we find the end
 	if (d == 0) {
 		COV(WLEVEL_PHASE_PTAP_OVERLAP);
 		work_end = work_bgn + IO_DELAY_PER_OPA_TAP;
 
-		//USER step 2: if we have room, back off by one and increment in dtaps 
+		//USER step 2: if we have room, back off by one and increment in dtaps
 
 		if (p > 0) {
 			int found = 0;
@@ -3693,7 +3693,7 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 			BFM_GBL_SET(dqs_wlevel_left_edge[g].ps, work_bgn);
 		}
 
-		//USER step 3: go forward from working phase to non working phase, increment in ptaps 
+		//USER step 3: go forward from working phase to non working phase, increment in ptaps
 
 		for (p = p + 1;
 		     p <= IO_DQDQS_OUT_PHASE_MAX + num_additional_fr_cycles * IO_DLL_CHAIN_LENGTH;
@@ -3707,7 +3707,7 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 			}
 		}
 
-		//USER step 4: back off one from last, increment in dtaps 
+		//USER step 4: back off one from last, increment in dtaps
 		//USER The actual increment is done outside the if/else statement since it is shared with other code
 
 		p = p - 1;
@@ -3743,9 +3743,9 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 	work_end -= IO_DELAY_PER_DCHAIN_TAP;
 
 	if (work_end >= work_bgn) {
-		//USER we have a working range 
+		//USER we have a working range
 	} else {
-		//USER nil range 
+		//USER nil range
 
 		set_failing_group_stage(g, CAL_STAGE_WLEVEL, CAL_SUBSTAGE_LAST_WORKING_DELAY);
 
@@ -3757,7 +3757,7 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 	BFM_GBL_SET(dqs_wlevel_right_edge[g].d, d - 1);
 	BFM_GBL_SET(dqs_wlevel_right_edge[g].ps, work_end);
 
-	//USER center 
+	//USER center
 
 	work_mid = (work_bgn + work_end) / 2;
 
@@ -3819,20 +3819,20 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 	reg_file_set_stage(CAL_STAGE_WLEVEL);
 	reg_file_set_sub_stage(CAL_SUBSTAGE_WORKING_DELAY);
 
-	//USER maximum phases for the sweep 
+	//USER maximum phases for the sweep
 
-	//USER starting phases 
+	//USER starting phases
 
 	//USER update info for sims
 
 	reg_file_set_group(g);
 
-	//USER starting and end range where writes work 
+	//USER starting and end range where writes work
 
 	work_bgn = 0;
 	work_end = 0;
 
-	//USER step 1: find first working phase, increment in ptaps 
+	//USER step 1: find first working phase, increment in ptaps
 
 	for (p = 0; p <= IO_DQDQS_OUT_PHASE_MAX; p++, work_bgn += IO_DELAY_PER_OPA_TAP) {
 		scc_mgr_set_dqdqs_output_phase_all_ranks(g, p);
@@ -3843,7 +3843,7 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 	}
 
 	if (p > IO_DQDQS_OUT_PHASE_MAX) {
-		//USER fail, cannot find first working phase 
+		//USER fail, cannot find first working phase
 
 		set_failing_group_stage(g, CAL_STAGE_WLEVEL, CAL_SUBSTAGE_WORKING_DELAY);
 
@@ -3854,7 +3854,7 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 
 	reg_file_set_sub_stage(CAL_SUBSTAGE_LAST_WORKING_DELAY);
 
-	//USER step 2: if we have room, back off by one and increment in dtaps 
+	//USER step 2: if we have room, back off by one and increment in dtaps
 
 	if (p > 0) {
 		scc_mgr_set_dqdqs_output_phase_all_ranks(g, p - 1);
@@ -3873,7 +3873,7 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 
 		scc_mgr_apply_group_all_out_delay_all_ranks(g, test_bgn, 0);
 	}
-	//USER step 3: go forward from working phase to non working phase, increment in ptaps 
+	//USER step 3: go forward from working phase to non working phase, increment in ptaps
 
 	for (p = p + 1; p <= IO_DQDQS_OUT_PHASE_MAX; p++, work_end += IO_DELAY_PER_OPA_TAP) {
 		scc_mgr_set_dqdqs_output_phase_all_ranks(g, p);
@@ -3883,7 +3883,7 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 		}
 	}
 
-	//USER step 4: back off one from last, increment in dtaps 
+	//USER step 4: back off one from last, increment in dtaps
 
 	scc_mgr_set_dqdqs_output_phase_all_ranks(g, p - 1);
 
@@ -3900,16 +3900,16 @@ static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 	scc_mgr_apply_group_all_out_delay_all_ranks(g, test_bgn, 0);
 
 	if (work_end > work_bgn) {
-		//USER we have a working range 
+		//USER we have a working range
 	} else {
-		//USER nil range 
+		//USER nil range
 
 		set_failing_group_stage(g, CAL_STAGE_WLEVEL, CAL_SUBSTAGE_LAST_WORKING_DELAY);
 
 		return 0;
 	}
 
-	//USER center 
+	//USER center
 
 	work_mid = (work_bgn + work_end) / 2;
 
@@ -3963,9 +3963,9 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 
 	select_curr_shadow_reg_using_rank(rank_bgn);
 
-	//USER per-bit deskew 
+	//USER per-bit deskew
 
-	//USER set the left and right edge of each bit to an illegal value 
+	//USER set the left and right edge of each bit to an illegal value
 	//USER use (IO_IO_OUT1_DELAY_MAX + 1) as an illegal value
 	sticky_bit_chk = 0;
 	for (i = 0; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++) {
@@ -3979,7 +3979,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 
 		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
 
-		//USER Stop searching when the read test doesn't pass AND when we've seen a passing read on every bit 
+		//USER Stop searching when the read test doesn't pass AND when we've seen a passing read on every bit
 		stop =
 		    !rw_mgr_mem_calibrate_write_test(rank_bgn, write_group, 0, PASS_ONE_BIT,
 						     &bit_chk, 0);
@@ -3998,7 +3998,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 					//USER Remember a passing test as the left_edge
 					left_edge[i] = d;
 				} else {
-					//USER If a left edge has not been seen yet, then a future passing test will mark this edge as the right edge 
+					//USER If a left edge has not been seen yet, then a future passing test will mark this edge as the right edge
 					if (left_edge[i] == IO_IO_OUT1_DELAY_MAX + 1) {
 						right_edge[i] = -(d + 1);
 					}
@@ -4011,7 +4011,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 		}
 	}
 
-	//USER Reset DQ delay chains to 0 
+	//USER Reset DQ delay chains to 0
 	scc_mgr_apply_group_dq_out1_delay(write_group, test_bgn, 0);
 	sticky_bit_chk = 0;
 	for (i = RW_MGR_MEM_DQ_PER_WRITE_DQS - 1;; i--) {
@@ -4019,14 +4019,14 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 		DPRINT(2, "write_center: left_edge[%lu]: %ld right_edge[%lu]: %ld", i, left_edge[i],
 		       i, right_edge[i]);
 
-		//USER Check for cases where we haven't found the left edge, which makes our assignment of the the 
-		//USER right edge invalid.  Reset it to the illegal value. 
+		//USER Check for cases where we haven't found the left edge, which makes our assignment of the the
+		//USER right edge invalid.  Reset it to the illegal value.
 		if ((left_edge[i] == IO_IO_OUT1_DELAY_MAX + 1)
 		    && (right_edge[i] != IO_IO_OUT1_DELAY_MAX + 1)) {
 			right_edge[i] = IO_IO_OUT1_DELAY_MAX + 1;
 			DPRINT(2, "write_center: reset right_edge[%lu]: %ld", i, right_edge[i]);
 		}
-		//USER Reset sticky bit (except for bits where we have seen the left edge) 
+		//USER Reset sticky bit (except for bits where we have seen the left edge)
 		sticky_bit_chk = sticky_bit_chk << 1;
 		if ((left_edge[i] != IO_IO_OUT1_DELAY_MAX + 1)) {
 			sticky_bit_chk = sticky_bit_chk | 1;
@@ -4037,7 +4037,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 		}
 	}
 
-	//USER Search for the right edge of the window for each bit 
+	//USER Search for the right edge of the window for each bit
 	for (d = 0; d <= IO_IO_OUT1_DELAY_MAX - start_dqs; d++) {
 		scc_mgr_apply_group_dqs_io_and_oct_out1(write_group, d + start_dqs);
 
@@ -4045,7 +4045,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 		if (QDRII) {
 			rw_mgr_mem_dll_lock_wait();
 		}
-		//USER Stop searching when the read test doesn't pass AND when we've seen a passing read on every bit 
+		//USER Stop searching when the read test doesn't pass AND when we've seen a passing read on every bit
 		stop =
 		    !rw_mgr_mem_calibrate_write_test(rank_bgn, write_group, 0, PASS_ONE_BIT,
 						     &bit_chk, 0);
@@ -4072,11 +4072,11 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 		} else {
 			for (i = 0; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++) {
 				if (bit_chk & 1) {
-					//USER Remember a passing test as the right_edge 
+					//USER Remember a passing test as the right_edge
 					right_edge[i] = d;
 				} else {
 					if (d != 0) {
-						//USER If a right edge has not been seen yet, then a future passing test will mark this edge as the left edge 
+						//USER If a right edge has not been seen yet, then a future passing test will mark this edge as the left edge
 						if (right_edge[i] == IO_IO_OUT1_DELAY_MAX + 1) {
 							left_edge[i] = -(d + 1);
 						}
@@ -4086,7 +4086,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 						    && left_edge[i] != IO_IO_OUT1_DELAY_MAX + 1) {
 							right_edge[i] = -1;
 						}
-						//USER If a right edge has not been seen yet, then a future passing test will mark this edge as the left edge 
+						//USER If a right edge has not been seen yet, then a future passing test will mark this edge as the left edge
 						else if (right_edge[i] == IO_IO_OUT1_DELAY_MAX + 1) {
 							left_edge[i] = -(d + 1);
 						}
@@ -4114,7 +4114,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 		}
 	}
 
-	//USER Find middle of window for each DQ bit 
+	//USER Find middle of window for each DQ bit
 	mid_min = left_edge[0] - right_edge[0];
 	min_index = 0;
 	for (i = 1; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++) {
@@ -4142,13 +4142,13 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 	DPRINT(1, "write_center: start_dqs=%ld new_dqs=%ld mid_min=%ld", start_dqs, new_dqs,
 	       mid_min);
 
-	//USER Initialize data for export structures 
+	//USER Initialize data for export structures
 	dqs_margin = IO_IO_OUT1_DELAY_MAX + 1;
 	dq_margin = IO_IO_OUT1_DELAY_MAX + 1;
 
-	//USER add delay to bring centre of all DQ windows to the same "level" 
+	//USER add delay to bring centre of all DQ windows to the same "level"
 	for (i = 0, p = test_bgn; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++, p++) {
-		//USER Use values before divide by 2 to reduce round off error 
+		//USER Use values before divide by 2 to reduce round off error
 		shift_dq =
 		    (left_edge[i] - right_edge[i] -
 		     (left_edge[min_index] - right_edge[min_index])) / 2 + (orig_mid_min - mid_min);
@@ -4166,7 +4166,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 
 		DPRINT(2, "write_center: margin[%lu]=[%ld,%ld]", i,
 		       left_edge[i] - shift_dq + (-mid_min), right_edge[i] + shift_dq - (-mid_min));
-		//USER To determine values for export structures 
+		//USER To determine values for export structures
 		if (left_edge[i] - shift_dq + (-mid_min) < dq_margin) {
 			dq_margin = left_edge[i] - shift_dq + (-mid_min);
 		}
@@ -4175,7 +4175,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 		}
 	}
 
-	//USER Move DQS 
+	//USER Move DQS
 	if (QDRII) {
 		scc_mgr_set_group_dqs_io_and_oct_out1_gradual(write_group, new_dqs);
 	} else {
@@ -4185,7 +4185,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 
 	DPRINT(2, "write_center: DM");
 
-	//USER set the left and right edge of each bit to an illegal value 
+	//USER set the left and right edge of each bit to an illegal value
 	//USER use (IO_IO_OUT1_DELAY_MAX + 1) as an illegal value
 	left_edge[0] = IO_IO_OUT1_DELAY_MAX + 1;
 	right_edge[0] = IO_IO_OUT1_DELAY_MAX + 1;
@@ -4204,7 +4204,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 			if (bgn_curr == IO_IO_OUT1_DELAY_MAX + 1) {
 				bgn_curr = -d;
 			}
-			//USER If current window is bigger than best seen. Set best seen to be current window 
+			//USER If current window is bigger than best seen. Set best seen to be current window
 			if ((end_curr - bgn_curr + 1) > win_best) {
 				win_best = end_curr - bgn_curr + 1;
 				bgn_best = bgn_curr;
@@ -4296,7 +4296,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 	DPRINT(2, "dm_calib: left=%ld right=%ld mid=%ld dm_margin=%ld",
 	       left_edge[0], right_edge[0], mid, dm_margin);
 
-	//USER Export values 
+	//USER Export values
 	gbl->fom_out += dq_margin + dqs_margin;
 
 	DPRINT(2, "write_center: dq_margin=%ld dqs_margin=%ld dm_margin=%ld", dq_margin, dqs_margin,
@@ -4321,7 +4321,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 	uint32_t start_dqs;
 	uint32_t stop;
 
-	//USER per-bit deskew 
+	//USER per-bit deskew
 
 	for (i = 0; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++) {
 		max_working_dq[i] = 0;
@@ -4347,7 +4347,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 
 	scc_mgr_apply_group_dq_out1_delay(write_group, test_bgn, 0);
 
-	//USER determine minimum of maximums 
+	//USER determine minimum of maximums
 
 	dq_margin = IO_IO_OUT1_DELAY_MAX;
 
@@ -4357,7 +4357,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 		}
 	}
 
-	//USER add delay to center DQ windows 
+	//USER add delay to center DQ windows
 
 	for (i = 0, p = test_bgn; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++, p++) {
 		if (max_working_dq[i] > dq_margin) {
@@ -4393,7 +4393,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 
 	dqs_margin = d - start_dqs - 1;
 
-	//USER time to center, +1 so that we don't go crazy centering DQ 
+	//USER time to center, +1 so that we don't go crazy centering DQ
 
 	mid = (dq_margin + dqs_margin + 1) / 2;
 
@@ -4402,7 +4402,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 	scc_mgr_load_dqs_io();
 	scc_mgr_load_dqs_for_write_group(write_group);
 
-	//USER center dq 
+	//USER center dq
 
 	if (dq_margin > mid) {
 		for (i = 0, p = test_bgn; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++, p++) {
@@ -4413,7 +4413,7 @@ static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t w
 		dqs_margin += dq_margin - mid;
 		dq_margin -= dq_margin - mid;
 	}
-	//USER do dm centering 
+	//USER do dm centering
 
 	if (!RLDRAMX) {
 		dm_margin = IO_IO_OUT1_DELAY_MAX;
@@ -4496,7 +4496,7 @@ static uint32_t rw_mgr_mem_calibrate_writes(uint32_t rank_bgn, uint32_t g, uint3
 	reg_file_set_stage(CAL_STAGE_WRITES);
 	reg_file_set_sub_stage(CAL_SUBSTAGE_WRITES_CENTER);
 
-	//USER starting phases 
+	//USER starting phases
 
 	//USER update info for sims
 
@@ -4510,7 +4510,7 @@ static uint32_t rw_mgr_mem_calibrate_writes(uint32_t rank_bgn, uint32_t g, uint3
 	return 1;
 }
 
-//USER precharge all banks and activate row 0 in bank "000..." and bank "111..." 
+//USER precharge all banks and activate row 0 in bank "000..." and bank "111..."
 static void mem_precharge_and_activate(void)
 {
 	uint32_t r;
@@ -4524,7 +4524,7 @@ static void mem_precharge_and_activate(void)
 		//USER set rank
 		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_OFF);
 
-		//USER precharge all banks ... 
+		//USER precharge all banks ...
 		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_PRECHARGE_ALL);
 
 		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0, 0x0F);
@@ -4533,7 +4533,7 @@ static void mem_precharge_and_activate(void)
 		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0, 0x0F);
 		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0, __RW_MGR_ACTIVATE_0_AND_1_WAIT2);
 
-		//USER activate rows 
+		//USER activate rows
 		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_ACTIVATE_0_AND_1);
 	}
 }
@@ -4548,7 +4548,7 @@ static void mem_config(void)
 	uint32_t rw_wl_nop_cycles;
 	uint32_t max_latency;
 
-	//USER read in write and read latency 
+	//USER read in write and read latency
 
 	wlat = IORD_32DIRECT(MEM_T_WL_ADD, 0);
 	wlat += IORD_32DIRECT(DATA_MGR_MEM_T_ADD, 0);	/* WL for hard phy does not include additive latency */
@@ -4595,23 +4595,23 @@ static void mem_config(void)
 	//USER configure for a burst length of 8
 
 	if (QUARTER_RATE_MODE) {
-		//USER write latency 
+		//USER write latency
 		wlat = (wlat + 5) / 4 + 1;
 
 		//USER set a pretty high read latency initially
 		gbl->curr_read_lat = (rlat + 1) / 4 + 8;
 	} else if (HALF_RATE_MODE) {
-		//USER write latency 
+		//USER write latency
 		wlat = (wlat - 1) / 2 + 1;
 
-		//USER set a pretty high read latency initially 
+		//USER set a pretty high read latency initially
 		gbl->curr_read_lat = (rlat + 1) / 2 + 8;
 	} else {
-		//USER write latency 
+		//USER write latency
 		// Adjust Write Latency for Hard PHY
 		wlat = wlat + 1;
 
-		//USER set a pretty high read latency initially 
+		//USER set a pretty high read latency initially
 		gbl->curr_read_lat = rlat + 16;
 	}
 
@@ -4620,7 +4620,7 @@ static void mem_config(void)
 	}
 	IOWR_32DIRECT(PHY_MGR_PHY_RLAT, 0, gbl->curr_read_lat);
 
-	//USER advertise write latency 
+	//USER advertise write latency
 	gbl->curr_write_lat = wlat;
 	IOWR_32DIRECT(PHY_MGR_AFI_WLAT, 0, wlat - 2);
 
@@ -4636,7 +4636,7 @@ static void mem_skip_calibrate(void)
 	uint32_t vfifo_offset;
 	uint32_t i, j, r;
 
-	// Need to update every shadow register set used by the interface       
+	// Need to update every shadow register set used by the interface
 	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r += NUM_RANKS_PER_SHADOW_REG) {
 
 		// Strictly speaking this should be called once per group to make
@@ -4653,7 +4653,7 @@ static void mem_skip_calibrate(void)
 			//
 			// Write data arrives to the I/O two cycles before write latency is reached (720 deg).
 			//   -> due to bit-slip in a/c bus
-			//   -> to allow board skew where dqs is longer than ck 
+			//   -> to allow board skew where dqs is longer than ck
 			//      -> how often can this happen!?
 			//      -> can claim back some ptaps for high freq support if we can relax this, but i digress...
 			//
@@ -4683,7 +4683,7 @@ static void mem_skip_calibrate(void)
 		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
 	}
 
-	// Compensate for simulation model behaviour 
+	// Compensate for simulation model behaviour
 	for (i = 0; i < RW_MGR_MEM_IF_READ_DQS_WIDTH; i++) {
 		scc_mgr_set_dqs_bus_in_delay(i, 10);
 		scc_mgr_load_dqs(i);
@@ -4741,7 +4741,7 @@ static uint32_t mem_calibrate(void)
 	}
 
 	if (((DYNAMIC_CALIB_STEPS) & CALIB_SKIP_ALL) == CALIB_SKIP_ALL) {
-		//USER Set VFIFO and LFIFO to instant-on settings in skip calibration mode 
+		//USER Set VFIFO and LFIFO to instant-on settings in skip calibration mode
 
 		mem_skip_calibrate();
 	} else {
@@ -4781,7 +4781,7 @@ static uint32_t mem_calibrate(void)
 				     RW_MGR_MEM_IF_WRITE_DQS_WIDTH && group_failed == 0;
 				     read_group++, read_test_bgn += RW_MGR_MEM_DQ_PER_READ_DQS) {
 
-					//USER Calibrate the VFIFO 
+					//USER Calibrate the VFIFO
 					if (!((STATIC_CALIB_STEPS) & CALIB_SKIP_VFIFO)) {
 						if (!rw_mgr_mem_calibrate_vfifo
 						    (read_group, read_test_bgn)) {
@@ -4797,7 +4797,7 @@ static uint32_t mem_calibrate(void)
 					}
 				}
 
-				//USER level writes (or align DK with CK for RLDRAMX) 
+				//USER level writes (or align DK with CK for RLDRAMX)
 				if (group_failed == 0) {
 					if ((DDRX || RLDRAMII) && !(ARRIAV || CYCLONEV)) {
 						if (!((STATIC_CALIB_STEPS) & CALIB_SKIP_WLEVEL)) {
@@ -4815,7 +4815,7 @@ static uint32_t mem_calibrate(void)
 						}
 					}
 				}
-				//USER Calibrate the output side 
+				//USER Calibrate the output side
 				if (group_failed == 0) {
 					for (rank_bgn = 0, sr = 0;
 					     rank_bgn < RW_MGR_MEM_NUMBER_OF_RANKS;
@@ -4899,7 +4899,7 @@ static uint32_t mem_calibrate(void)
 			if (failing_groups != 0) {
 				return 0;
 			}
-			//USER Calibrate the LFIFO 
+			//USER Calibrate the LFIFO
 			if (!((STATIC_CALIB_STEPS) & CALIB_SKIP_LFIFO)) {
 				//USER If we're skipping groups as part of debug, don't calibrate LFIFO
 				if (param->skip_groups == 0) {
@@ -4952,7 +4952,7 @@ static uint32_t run_mem_calibrate(void)
 #endif
 	}
 
-	//USER Handoff 
+	//USER Handoff
 
 	//USER Don't return control of the PHY back to AFI when in debug mode
 	if ((gbl->phy_debug_mode_flags & PHY_DEBUG_IN_DEBUG_MODE) == 0) {
@@ -5045,7 +5045,7 @@ static void initialize_hps_phy(void)
 	// These may need to be included also:
 	// wrap_back_en (false)
 	// atpg_en (false)
-	// pipelineglobalenable (true) 
+	// pipelineglobalenable (true)
 
 	uint32_t reg;
 	// Tracking also gets configured here because it's in the same register
@@ -5148,7 +5148,7 @@ static int socfpga_mem_calibration(void)
 	// Set the calibration enabled by default
 	gbl->phy_debug_mode_flags |= PHY_DEBUG_ENABLE_CAL_RPT;
 	// Only enable margining by default if requested
-	// Only sweep all groups (regardless of fail state) by default if requested 
+	// Only sweep all groups (regardless of fail state) by default if requested
 	//Set enabled read test by default
 
 	// Initialize the register file
diff --git a/arch/blackfin/cpu-bf561/start.S b/arch/blackfin/cpu-bf561/start.S
index 96da6b5..56c5e84 100644
--- a/arch/blackfin/cpu-bf561/start.S
+++ b/arch/blackfin/cpu-bf561/start.S
@@ -56,7 +56,7 @@ _stext:
 	SSYNC;
 
 	/* As per HW reference manual DAG registers,
-	 * DATA and Address resgister shall be zero'd 
+	 * DATA and Address resgister shall be zero'd
 	 * in initialization, after a reset state
 	 */
 	r1 = 0;	/* Data registers zero'd */
@@ -73,7 +73,7 @@ _stext:
 	p3 = 0;
 	p4 = 0;
 	p5 = 0;
-	
+
 	i0 = 0; /* DAG Registers zero'd */
 	i1 = 0;
 	i2 = 0;
@@ -124,7 +124,7 @@ no_soft_reset:
 	r1 = 0;
 	LSETUP(4,4) lc0 = p1;
 	[ p0 ++ ] = r1;
-	
+
 	p0.h = hi(SIC_IWR);
         p0.l = lo(SIC_IWR);
         r0.l = 0x1;
@@ -217,8 +217,8 @@ _real_start:
 
 
 #ifdef CONFIG_BF537
-/* Initialise General-Purpose I/O Modules on BF537 
- * Rev 0.0 Anomaly 05000212 - PORTx_FER, 
+/* Initialise General-Purpose I/O Modules on BF537
+ * Rev 0.0 Anomaly 05000212 - PORTx_FER,
  * PORT_MUX Registers Do Not accept "writes" correctly
  */
         p0.h = hi(PORTF_FER);
@@ -292,8 +292,8 @@ DMA:
 	/* Set Destination DMAConfig = DMA Enable,
 	Memory Write, 8-Bit Transfers, 1-D DMA, Flow - Stop, IOC */
 	W[P1+OFFSET_(MDMA_D0_CONFIG)] = R4;
-	
-WAIT_DMA_DONE:	
+
+WAIT_DMA_DONE:
 	p0.h = hi(MDMA_D0_IRQ_STATUS);
 	p0.l = lo(MDMA_D0_IRQ_STATUS);
 	R0 = W[P0](Z);
diff --git a/arch/blackfin/include/asm/cpu/cdefBF561.h b/arch/blackfin/include/asm/cpu/cdefBF561.h
index 60fdf1e..9a763df 100644
--- a/arch/blackfin/include/asm/cpu/cdefBF561.h
+++ b/arch/blackfin/include/asm/cpu/cdefBF561.h
@@ -11,7 +11,7 @@
 #ifndef _CDEF_BF561_H
 #define _CDEF_BF561_H
 
-/* 
+/*
  * #if !defined(__ADSPBF561__)
  * #warning cdefBF561.h should only be included for BF561 chip.
  * #endif
@@ -299,7 +299,7 @@
 #define pPPI0_DELAY		(volatile unsigned short *)PPI0_DELAY
 #define pPPI0_FRAME		(volatile unsigned short *)PPI0_FRAME
 
-/* Parallel Peripheral Interface (PPI) 1 registers (0xFFC0 1300-0xFFC0 13FF)*/ 
+/* Parallel Peripheral Interface (PPI) 1 registers (0xFFC0 1300-0xFFC0 13FF)*/
 #define pPPI1_CONTROL		(volatile unsigned short *)PPI1_CONTROL
 #define pPPI1_STATUS		(volatile unsigned short *)PPI1_STATUS
 #define pPPI1_COUNT		(volatile unsigned short *)PPI1_COUNT
diff --git a/arch/blackfin/include/asm/cpu/defBF561.h b/arch/blackfin/include/asm/cpu/defBF561.h
index 11de2be..5ab53ab 100644
--- a/arch/blackfin/include/asm/cpu/defBF561.h
+++ b/arch/blackfin/include/asm/cpu/defBF561.h
@@ -36,7 +36,7 @@
 // System Reset and Interrupt Controller registers for
 // core A (0xFFC0 0100-0xFFC0 01FF)
 #define SICA_SWRST              0xFFC00100	// Software Reset register
-#define SICA_SYSCR              0xFFC00104	// System Reset Configuration 
+#define SICA_SYSCR              0xFFC00104	// System Reset Configuration
 						// register
 #define SICA_RVECT              0xFFC00108	// SIC Reset Vector Address
 						// Register
@@ -146,22 +146,22 @@
 						// Register
 
 // Timer 0-7 registers (0xFFC0 0600-0xFFC0 06FF)
-#define TIMER0_CONFIG 		0xFFC00600	// Timer0 Configuration 
+#define TIMER0_CONFIG 		0xFFC00600	// Timer0 Configuration
 						// register
 #define TIMER0_COUNTER 		0xFFC00604	// Timer0 Counter register
 #define TIMER0_PERIOD 		0xFFC00608	// Timer0 Period register
 #define TIMER0_WIDTH 		0xFFC0060C	// Timer0 Width register
-#define TIMER1_CONFIG 		0xFFC00610	// Timer1 Configuration 
+#define TIMER1_CONFIG 		0xFFC00610	// Timer1 Configuration
 						// register
 #define TIMER1_COUNTER 		0xFFC00614	// Timer1 Counter register
 #define TIMER1_PERIOD 		0xFFC00618	// Timer1 Period register
 #define TIMER1_WIDTH 		0xFFC0061C	// Timer1 Width register
-#define TIMER2_CONFIG 		0xFFC00620	// Timer2 Configuration 
+#define TIMER2_CONFIG 		0xFFC00620	// Timer2 Configuration
 						// register
 #define TIMER2_COUNTER 		0xFFC00624	// Timer2 Counter register
 #define TIMER2_PERIOD 		0xFFC00628	// Timer2 Period register
 #define TIMER2_WIDTH 		0xFFC0062C	// Timer2 Width register
-#define TIMER3_CONFIG 		0xFFC00630	// Timer3 Configuration 
+#define TIMER3_CONFIG 		0xFFC00630	// Timer3 Configuration
 						// register
 #define TIMER3_COUNTER 		0xFFC00634	// Timer3 Counter register
 #define TIMER3_PERIOD 		0xFFC00638	// Timer3 Period register
@@ -171,17 +171,17 @@
 #define TIMER4_COUNTER 		0xFFC00644	// Timer4 Counter register
 #define TIMER4_PERIOD 		0xFFC00648	// Timer4 Period register
 #define TIMER4_WIDTH 		0xFFC0064C	// Timer4 Width register
-#define TIMER5_CONFIG 		0xFFC00650	// Timer5 Configuration 
+#define TIMER5_CONFIG 		0xFFC00650	// Timer5 Configuration
 						// register
 #define TIMER5_COUNTER 		0xFFC00654	// Timer5 Counter register
 #define TIMER5_PERIOD 		0xFFC00658	// Timer5 Period register
 #define TIMER5_WIDTH 		0xFFC0065C	// Timer5 Width register
-#define TIMER6_CONFIG 		0xFFC00660	// Timer6 Configuration 
+#define TIMER6_CONFIG 		0xFFC00660	// Timer6 Configuration
 						// register
 #define TIMER6_COUNTER 		0xFFC00664	// Timer6 Counter register
 #define TIMER6_PERIOD 		0xFFC00668	// Timer6 Period register
 #define TIMER6_WIDTH 		0xFFC0066C	// Timer6 Width register
-#define TIMER7_CONFIG 		0xFFC00670	// Timer7 Configuration 
+#define TIMER7_CONFIG 		0xFFC00670	// Timer7 Configuration
 						// register
 #define TIMER7_COUNTER 		0xFFC00674	// Timer7 Counter register
 #define TIMER7_PERIOD 		0xFFC00678	// Timer7 Period register
@@ -192,22 +192,22 @@
 #define TMRS8_STATUS 		0xFFC00688	// Timer Status register
 
 // Timer registers 8-11 (0xFFC0 1600-0xFFC0 16FF)
-#define TIMER8_CONFIG 		0xFFC01600	// Timer8 Configuration 
+#define TIMER8_CONFIG 		0xFFC01600	// Timer8 Configuration
 						// register
 #define TIMER8_COUNTER 		0xFFC01604	// Timer8 Counter register
 #define TIMER8_PERIOD 		0xFFC01608	// Timer8 Period register
 #define TIMER8_WIDTH 		0xFFC0160C	// Timer8 Width register
-#define TIMER9_CONFIG 		0xFFC01610	// Timer9 Configuration 
+#define TIMER9_CONFIG 		0xFFC01610	// Timer9 Configuration
 						// register
 #define TIMER9_COUNTER 		0xFFC01614	// Timer9 Counter register
 #define TIMER9_PERIOD 		0xFFC01618	// Timer9 Period register
 #define TIMER9_WIDTH 		0xFFC0161C	// Timer9 Width register
-#define TIMER10_CONFIG 		0xFFC01620	// Timer10 Configuration 
+#define TIMER10_CONFIG 		0xFFC01620	// Timer10 Configuration
 						// register
 #define TIMER10_COUNTER		0xFFC01624	// Timer10 Counter register
 #define TIMER10_PERIOD 		0xFFC01628	// Timer10 Period register
 #define TIMER10_WIDTH 		0xFFC0162C	// Timer10 Width register
-#define TIMER11_CONFIG 		0xFFC01630	// Timer11 Configuration 
+#define TIMER11_CONFIG 		0xFFC01630	// Timer11 Configuration
 						// register
 #define TIMER11_COUNTER		0xFFC01634	// Timer11 Counter register
 #define TIMER11_PERIOD 		0xFFC01638	// Timer11 Period register
@@ -240,9 +240,9 @@
 						// register
 #define FIO0_DIR 		0xFFC00730	// Flag Direction  register
 #define FIO0_POLAR 	        0xFFC00734	// Flag Polarity register
-#define FIO0_EDGE 	        0xFFC00738	// Flag Interrupt Sensitivity 
+#define FIO0_EDGE 	        0xFFC00738	// Flag Interrupt Sensitivity
 			        		// register
-#define FIO0_BOTH 	        0xFFC0073C	// Flag Set on Both Edges 
+#define FIO0_BOTH 	        0xFFC0073C	// Flag Set on Both Edges
 			        		// register
 #define FIO0_INEN 	        0xFFC00740	// Flag Input Enable register
 
@@ -269,9 +269,9 @@
 			        		// register
 #define FIO1_DIR 	       	0xFFC01530	// Flag Direction register
 #define FIO1_POLAR 	       	0xFFC01534	// Flag Polarity register
-#define FIO1_EDGE 	       	0xFFC01538	// Flag  Interrupt Sensitivity 
+#define FIO1_EDGE 	       	0xFFC01538	// Flag  Interrupt Sensitivity
 						// register
-#define FIO1_BOTH 	       	0xFFC0153C	// Flag Set on Both Edges 
+#define FIO1_BOTH 	       	0xFFC0153C	// Flag Set on Both Edges
 						// register
 #define FIO1_INEN 	       	0xFFC01540	// Flag Input Enable register
 
@@ -298,9 +298,9 @@
 			        		// register
 #define FIO2_DIR 	      	0xFFC01730	// Flag Direction register
 #define FIO2_POLAR 	       	0xFFC01734	// Flag Polarity register
-#define FIO2_EDGE 	       	0xFFC01738	// Flag Interrupt Sensitivity 
+#define FIO2_EDGE 	       	0xFFC01738	// Flag Interrupt Sensitivity
 						// register
-#define FIO2_BOTH 	       	0xFFC0173C	// Flag Set on Both Edges 
+#define FIO2_BOTH 	       	0xFFC0173C	// Flag Set on Both Edges
 						// register
 #define FIO2_INEN 	       	0xFFC01740	// Flag Input Enable register
 
@@ -386,8 +386,8 @@
 #define SPORT1_MRCS3            0xFFC0095C	// SPORT1 Multi-Channel
 			        		// Receive Select Register 3
 
-// Asynchronous Memory Controller - External Bus Interface Unit 
-#define EBIU_AMGCTL		0xFFC00A00	// Asynchronous Memory 
+// Asynchronous Memory Controller - External Bus Interface Unit
+#define EBIU_AMGCTL		0xFFC00A00	// Asynchronous Memory
 						// Global Control Register
 #define EBIU_AMBCTL0		0xFFC00A04	// Asynchronous Memory
 						// Bank Control Register 0
@@ -395,10 +395,10 @@
 						// Bank Control Register 1
 
 // SDRAM Controller External Bus Interface Unit (0xFFC00A00 - 0xFFC00AFF)
-#define EBIU_SDGCTL		0xFFC00A10	// SDRAM Global Control 
+#define EBIU_SDGCTL		0xFFC00A10	// SDRAM Global Control
 						// Register
 #define EBIU_SDBCTL		0xFFC00A14	// SDRAM Bank Control Register
-#define EBIU_SDRRC 		0xFFC00A18	// SDRAM Refresh Rate Control 
+#define EBIU_SDRRC 		0xFFC00A18	// SDRAM Refresh Rate Control
 						// Register
 #define EBIU_SDSTAT		0xFFC00A1C	// SDRAM Status Register
 
@@ -442,7 +442,7 @@
 						// Addr Increment
 #define DMA1_0_CURR_DESC_PTR	0xFFC01C20	// DMA1 Channel 0 Current
 						// Descriptor Pointer
-#define DMA1_0_CURR_ADDR	0xFFC01C24	// DMA1 Channel 0 Current 
+#define DMA1_0_CURR_ADDR	0xFFC01C24	// DMA1 Channel 0 Current
 						// Address Pointer
 #define DMA1_0_CURR_X_COUNT	0xFFC01C30	// DMA1 Channel 0 Current Inner
 						// Loop Count
@@ -710,7 +710,7 @@
 						// Loop Count
 #define DMA1_10_IRQ_STATUS	0xFFC01EA8	// DMA1 Channel 10 Interrupt
 						// /Status Register
-#define DMA1_10_PERIPHERAL_MAP	0xFFC01EAC	// DMA1 Channel 10 Peripheral 
+#define DMA1_10_PERIPHERAL_MAP	0xFFC01EAC	// DMA1 Channel 10 Peripheral
 						// Map Register
 
 #define DMA1_11_CONFIG		0xFFC01EC8	// DMA1 Channel 11 Configuration
@@ -736,7 +736,7 @@
 						// Loop Count
 #define DMA1_11_IRQ_STATUS	0xFFC01EE8	// DMA1 Channel 11 Interrupt
 						// /Status Register
-#define DMA1_11_PERIPHERAL_MAP	0xFFC01EEC	// DMA1 Channel 11 Peripheral 
+#define DMA1_11_PERIPHERAL_MAP	0xFFC01EEC	// DMA1 Channel 11 Peripheral
 						// Map Register
 
 // Memory DMA1 Controller registers (0xFFC0 1E80-0xFFC0 1FFF)
@@ -1134,7 +1134,7 @@
 						// Loop Count
 #define DMA2_10_IRQ_STATUS	0xFFC00EA8	// DMA2 Channel 10 Interrupt
 						// /Status Register
-#define DMA2_10_PERIPHERAL_MAP	0xFFC00EAC	// DMA2 Channel 10 Peripheral 
+#define DMA2_10_PERIPHERAL_MAP	0xFFC00EAC	// DMA2 Channel 10 Peripheral
 						// Map Register
 
 #define DMA2_11_CONFIG		0xFFC00EC8	// DMA2 Channel 11 Configuration
@@ -1160,7 +1160,7 @@
 						// Loop Count
 #define DMA2_11_IRQ_STATUS	0xFFC00EE8	// DMA2 Channel 11 Interrupt
 						// /Status Register
-#define DMA2_11_PERIPHERAL_MAP	0xFFC00EEC	// DMA2 Channel 11 Peripheral 
+#define DMA2_11_PERIPHERAL_MAP	0xFFC00EEC	// DMA2 Channel 11 Peripheral
 						// Map Register
 
 // Memory DMA2 Controller registers (0xFFC0 0E80-0xFFC0 0FFF)
@@ -1190,7 +1190,7 @@
 #define MDMA2_D0_IRQ_STATUS	0xFFC00F28	// MemDMA2 Stream 0 Dest
 						// Interrupt/Status Register
 #define MDMA2_D0_PERIPHERAL_MAP 0xFFC00F2C	// MemDMA2 Stream 0
-						// Destination Peripheral Map 
+						// Destination Peripheral Map
 						// register
 
 #define MDMA2_S0_CONFIG		0xFFC00F48	// MemDMA2 Stream 0 Source
@@ -1247,7 +1247,7 @@
 #define MDMA2_D1_IRQ_STATUS	0xFFC00FA8	// MemDMA2 Stream 1 Destination
 						// Interrupt/Status Reg
 #define MDMA2_D1_PERIPHERAL_MAP 0xFFC00FAC	// MemDMA2 Stream 1
-						// Destination Peripheral Map 
+						// Destination Peripheral Map
 						// register
 
 #define MDMA2_S1_CONFIG		0xFFC00FC8	// MemDMA2 Stream 1 Source
@@ -1280,7 +1280,7 @@
 // Internal Memory DMA Registers (0xFFC0_1800 - 0xFFC0_19FF)
 #define IMDMA_D0_CONFIG		0xFFC01808	// IMDMA Stream 0 Destination
 						// Configuration
-#define IMDMA_D0_NEXT_DESC_PTR	0xFFC01800	// IMDMA Stream 0 Destination 
+#define IMDMA_D0_NEXT_DESC_PTR	0xFFC01800	// IMDMA Stream 0 Destination
 						// Next Descriptor Ptr Reg
 #define IMDMA_D0_START_ADDR	0xFFC01804	// IMDMA Stream 0 Destination
 						// Start Address
@@ -1292,20 +1292,20 @@
 						// Inner-Loop Address-Increment
 #define IMDMA_D0_Y_MODIFY	0xFFC0181C	// IMDMA Stream 0 Dest
 						// Outer-Loop Address-Increment
-#define IMDMA_D0_CURR_DESC_PTR	0xFFC01820	// IMDMA Stream 0 Destination 
+#define IMDMA_D0_CURR_DESC_PTR	0xFFC01820	// IMDMA Stream 0 Destination
 						// Current Descriptor Ptr
 #define IMDMA_D0_CURR_ADDR	0xFFC01824	// IMDMA Stream 0 Destination
 						// Current Address
-#define IMDMA_D0_CURR_X_COUNT	0xFFC01830	// IMDMA Stream 0 Destination 
+#define IMDMA_D0_CURR_X_COUNT	0xFFC01830	// IMDMA Stream 0 Destination
 						// Current Inner-Loop Count
-#define IMDMA_D0_CURR_Y_COUNT	0xFFC01838	// IMDMA Stream 0 Destination 
+#define IMDMA_D0_CURR_Y_COUNT	0xFFC01838	// IMDMA Stream 0 Destination
 						// Current Outer-Loop Count
 #define IMDMA_D0_IRQ_STATUS	0xFFC01828	// IMDMA Stream 0 Destination
 						// Interrupt/Status
 
 #define IMDMA_S0_CONFIG		0xFFC01848	// IMDMA Stream 0 Source
 						// Configuration
-#define IMDMA_S0_NEXT_DESC_PTR	0xFFC01840	// IMDMA Stream 0 Source Next 
+#define IMDMA_S0_NEXT_DESC_PTR	0xFFC01840	// IMDMA Stream 0 Source Next
 						// Descriptor Ptr Reg
 #define IMDMA_S0_START_ADDR	0xFFC01844	// IMDMA Stream 0 Source Start
 						// Address
@@ -1330,7 +1330,7 @@
 
 #define IMDMA_D1_CONFIG		0xFFC01888	// IMDMA Stream 1 Destination
 						// Configuration
-#define IMDMA_D1_NEXT_DESC_PTR	0xFFC01880	// IMDMA Stream 1 Destination 
+#define IMDMA_D1_NEXT_DESC_PTR	0xFFC01880	// IMDMA Stream 1 Destination
 						// Next Descriptor Ptr Reg
 #define IMDMA_D1_START_ADDR	0xFFC01884	// IMDMA Stream 1 Destination
 						// Start Address
@@ -1342,20 +1342,20 @@
 						// Inner-Loop Address-Increment
 #define IMDMA_D1_Y_MODIFY	0xFFC0189C	// IMDMA Stream 1 Dest
 						// Outer-Loop Address-Increment
-#define IMDMA_D1_CURR_DESC_PTR	0xFFC018A0	// IMDMA Stream 1 Destination 
+#define IMDMA_D1_CURR_DESC_PTR	0xFFC018A0	// IMDMA Stream 1 Destination
 						// Current Descriptor Ptr
 #define IMDMA_D1_CURR_ADDR	0xFFC018A4	// IMDMA Stream 1 Destination
 						// Current Address
-#define IMDMA_D1_CURR_X_COUNT	0xFFC018B0	// IMDMA Stream 1 Destination 
+#define IMDMA_D1_CURR_X_COUNT	0xFFC018B0	// IMDMA Stream 1 Destination
 						// Current Inner-Loop Count
-#define IMDMA_D1_CURR_Y_COUNT	0xFFC018B8	// IMDMA Stream 1 Destination 
+#define IMDMA_D1_CURR_Y_COUNT	0xFFC018B8	// IMDMA Stream 1 Destination
 						// Current Outer-Loop Count
 #define IMDMA_D1_IRQ_STATUS	0xFFC018A8	// IMDMA Stream 1 Destination
 						// Interrupt/Status
 
 #define IMDMA_S1_CONFIG		0xFFC018C8	// IMDMA Stream 1 Source
 						// Configuration
-#define IMDMA_S1_NEXT_DESC_PTR	0xFFC018C0	// IMDMA Stream 1 Source Next 
+#define IMDMA_S1_NEXT_DESC_PTR	0xFFC018C0	// IMDMA Stream 1 Source Next
 						// Descriptor Ptr Reg
 #define IMDMA_S1_START_ADDR	0xFFC018C4	// IMDMA Stream 1 Source Start
 						// Address
@@ -1413,22 +1413,22 @@
 
 // *************  SYSTEM INTERRUPT CONTROLLER MASKS *****************
 
-// SICu_IARv Masks      
+// SICu_IARv Masks
 // u = A or B
 // v = 0 to 7
 // w = 0 or 1
 
 // Per_number = 0 to 63
-// IVG_number = 7 to 15  
+// IVG_number = 7 to 15
 // Peripheral #Per_number assigned IVG #IVG_number
-// Usage: 
+// Usage:
 //	r0.l = lo(Peripheral_IVG(62, 10));
 //	r0.h = hi(Peripheral_IVG(62, 10));
 #define Peripheral_IVG(Per_number, IVG_number)    \
 				( (IVG_number) -7) << ( ((Per_number)%8) *4)
 
 // SICx_IMASKw Masks
-// masks are 32 bit wide, so two writes reguired for "64 bit" wide registers 
+// masks are 32 bit wide, so two writes reguired for "64 bit" wide registers
 #define SIC_UNMASK_ALL         0x00000000	// Unmask all peripheral
 						// interrupts
 #define SIC_MASK_ALL           0xFFFFFFFF	// Mask all peripheral
@@ -1612,9 +1612,9 @@
 					// Relationship
 #define MFD			0x0000F000	// Multichannel Frame Delay
 
-//  *********  PARALLEL PERIPHERAL INTERFACE (PPI) MASKS ****************  
+//  *********  PARALLEL PERIPHERAL INTERFACE (PPI) MASKS ****************
 
-////  PPI_CONTROL Masks        
+////  PPI_CONTROL Masks
 #define PORT_EN			0x00000001	// PPI Port Enable
 #define PORT_DIR		0x00000002	// PPI Port Direction
 #define XFR_TYPE		0x0000000C	// PPI Transfer Type
@@ -1630,7 +1630,7 @@
 					// x=10-->x=16)
 #define POL			0x0000C000	// PPI Signal Polarities
 
-//// PPI_STATUS Masks                                         
+//// PPI_STATUS Masks
 #define FLD			0x00000400	// Field Indicator
 #define FT_ERR			0x00000800	// Frame Track Error
 #define OVR			0x00001000	// FIFO Overflow Error
@@ -1893,7 +1893,7 @@
 						// incoming Data
 #define PSSE			0x00000010	// Enable (=1) Slave-Select
 						// input for Master.
-#define EMISO			0x00000020	// Enable (=1) MISO pin as an 
+#define EMISO			0x00000020	// Enable (=1) MISO pin as an
 						// output.
 #define SIZE			0x00000100	// Word length (0 => 8 bits,
 						// 1 => 16 bits)
@@ -1917,25 +1917,25 @@
 						// disable (=0)
 
 //// SPI_FLG Masks
-#define FLS1			0x00000002	// Enables (=1) SPI_FLOUT1 as 
+#define FLS1			0x00000002	// Enables (=1) SPI_FLOUT1 as
 						// flag output for SPI
 						// Slave-select
-#define FLS2			0x00000004	// Enables (=1) SPI_FLOUT2 as 
+#define FLS2			0x00000004	// Enables (=1) SPI_FLOUT2 as
 						// flag output for SPI
 						// Slave-select
-#define FLS3			0x00000008	// Enables (=1) SPI_FLOUT3 as 
+#define FLS3			0x00000008	// Enables (=1) SPI_FLOUT3 as
 						// flag output for SPI
 						// Slave-select
-#define FLS4			0x00000010	// Enables (=1) SPI_FLOUT4 as 
+#define FLS4			0x00000010	// Enables (=1) SPI_FLOUT4 as
 						// flag output for SPI
 						// Slave-select
-#define FLS5			0x00000020	// Enables (=1) SPI_FLOUT5 as 
+#define FLS5			0x00000020	// Enables (=1) SPI_FLOUT5 as
 						// flag output for SPI
 						// Slave-select
-#define FLS6			0x00000040	// Enables (=1) SPI_FLOUT6 as 
+#define FLS6			0x00000040	// Enables (=1) SPI_FLOUT6 as
 						// flag output for SPI
 						// Slave-select
-#define FLS7			0x00000080	// Enables (=1) SPI_FLOUT7 as 
+#define FLS7			0x00000080	// Enables (=1) SPI_FLOUT7 as
 						// flag output for SPI
 						// Slave-select
 #define FLG1			0x00000200	// Activates (=0) SPI_FLOUT1
@@ -1961,25 +1961,25 @@
 						// Slave-select
 
 //// SPI_FLG Bit Positions
-#define FLS1_P			0x00000001	// Enables (=1) SPI_FLOUT1 as 
+#define FLS1_P			0x00000001	// Enables (=1) SPI_FLOUT1 as
 						// flag output for SPI
 						// Slave-select
-#define FLS2_P			0x00000002	// Enables (=1) SPI_FLOUT2 as 
+#define FLS2_P			0x00000002	// Enables (=1) SPI_FLOUT2 as
 						// flag output for SPI
 						// Slave-select
-#define FLS3_P			0x00000003	// Enables (=1) SPI_FLOUT3 as 
+#define FLS3_P			0x00000003	// Enables (=1) SPI_FLOUT3 as
 						// flag output for SPI
 						// Slave-select
-#define FLS4_P			0x00000004	// Enables (=1) SPI_FLOUT4 as 
+#define FLS4_P			0x00000004	// Enables (=1) SPI_FLOUT4 as
 						// flag output for SPI
 						// Slave-select
-#define FLS5_P			0x00000005	// Enables (=1) SPI_FLOUT5 as 
+#define FLS5_P			0x00000005	// Enables (=1) SPI_FLOUT5 as
 						// flag output for SPI
 						// Slave-select
-#define FLS6_P			0x00000006	// Enables (=1) SPI_FLOUT6 as 
+#define FLS6_P			0x00000006	// Enables (=1) SPI_FLOUT6 as
 						// flag output for SPI
 						// Slave-select
-#define FLS7_P			0x00000007	// Enables (=1) SPI_FLOUT7 as 
+#define FLS7_P			0x00000007	// Enables (=1) SPI_FLOUT7 as
 						// flag output for SPI
 						// Slave-select
 #define FLG1_P			0x00000009	// Activates (=0) SPI_FLOUT1
@@ -2012,8 +2012,8 @@
 						// device when some other
 						// device tries to become
 						// master
-#define TXE			0x00000004	// Set (=1) when transmission 
-						// occurs with no new data in 
+#define TXE			0x00000004	// Set (=1) when transmission
+						// occurs with no new data in
 						// SPI_TDBR
 #define TXS			0x00000008	// SPI_TDBR Data Buffer
 						// Status (0=Empty, 1=Full)
@@ -2031,7 +2031,7 @@
 #define AMCKEN			0x0001	// Enable CLKOUT
 #define AMBEN_B0		0x0002	// Enable Asynchronous Memory Bank 0
 					// only
-#define AMBEN_B0_B1		0x0004	// Enable Asynchronous Memory Banks 0 
+#define AMBEN_B0_B1		0x0004	// Enable Asynchronous Memory Banks 0
 					// & 1 only
 #define AMBEN_B0_B1_B2		0x0006	// Enable Asynchronous Memory Banks 0,
 					// 1, and 2
@@ -2128,35 +2128,35 @@
 						// 14 cycles
 #define B0RAT_15		0x00000F00	// Bank 0 Read Access Time =
 						// 15 cycles
-#define B0WAT_1			0x00001000	// Bank 0 Write Access Time = 
+#define B0WAT_1			0x00001000	// Bank 0 Write Access Time =
 						// 1 cycle
-#define B0WAT_2			0x00002000	// Bank 0 Write Access Time = 
+#define B0WAT_2			0x00002000	// Bank 0 Write Access Time =
 						// 2 cycles
-#define B0WAT_3			0x00003000	// Bank 0 Write Access Time = 
+#define B0WAT_3			0x00003000	// Bank 0 Write Access Time =
 						// 3 cycles
-#define B0WAT_4			0x00004000	// Bank 0 Write Access Time = 
+#define B0WAT_4			0x00004000	// Bank 0 Write Access Time =
 						// 4 cycles
-#define B0WAT_5			0x00005000	// Bank 0 Write Access Time = 
+#define B0WAT_5			0x00005000	// Bank 0 Write Access Time =
 						// 5 cycles
-#define B0WAT_6			0x00006000	// Bank 0 Write Access Time = 
+#define B0WAT_6			0x00006000	// Bank 0 Write Access Time =
 						// 6 cycles
-#define B0WAT_7			0x00007000	// Bank 0 Write Access Time = 
+#define B0WAT_7			0x00007000	// Bank 0 Write Access Time =
 						// 7 cycles
-#define B0WAT_8			0x00008000	// Bank 0 Write Access Time = 
+#define B0WAT_8			0x00008000	// Bank 0 Write Access Time =
 						// 8 cycles
-#define B0WAT_9			0x00009000	// Bank 0 Write Access Time = 
+#define B0WAT_9			0x00009000	// Bank 0 Write Access Time =
 						// 9 cycles
-#define B0WAT_10		0x0000A000	// Bank 0 Write Access Time = 
+#define B0WAT_10		0x0000A000	// Bank 0 Write Access Time =
 						// 10 cycles
-#define B0WAT_11		0x0000B000	// Bank 0 Write Access Time = 
+#define B0WAT_11		0x0000B000	// Bank 0 Write Access Time =
 						// 11 cycles
-#define B0WAT_12		0x0000C000	// Bank 0 Write Access Time = 
+#define B0WAT_12		0x0000C000	// Bank 0 Write Access Time =
 						// 12 cycles
-#define B0WAT_13		0x0000D000	// Bank 0 Write Access Time = 
+#define B0WAT_13		0x0000D000	// Bank 0 Write Access Time =
 						// 13 cycles
-#define B0WAT_14		0x0000E000	// Bank 0 Write Access Time = 
+#define B0WAT_14		0x0000E000	// Bank 0 Write Access Time =
 						// 14 cycles
-#define B0WAT_15		0x0000F000	// Bank 0 Write Access Time = 
+#define B0WAT_15		0x0000F000	// Bank 0 Write Access Time =
 						// 15 cycles
 #define B1RDYEN			0x00010000	// Bank 1 RDY enable,
 						// 0=disable, 1=enable
@@ -2175,29 +2175,29 @@
 #define B1TT_4			0x00000000	// Bank 1 Transition Time
 						// from Read to Write = 4
 						// cycles
-#define B1ST_1			0x00100000	// Bank 1 Setup Time from AOE 
+#define B1ST_1			0x00100000	// Bank 1 Setup Time from AOE
 						// asserted to Read or Write
 						// asserted = 1 cycle
-#define B1ST_2			0x00200000	// Bank 1 Setup Time from AOE 
+#define B1ST_2			0x00200000	// Bank 1 Setup Time from AOE
 						// asserted to Read or Write
 						// asserted = 2 cycles
-#define B1ST_3			0x00300000	// Bank 1 Setup Time from AOE 
+#define B1ST_3			0x00300000	// Bank 1 Setup Time from AOE
 						// asserted to Read or Write
 						// asserted = 3 cycles
-#define B1ST_4			0x00000000	// Bank 1 Setup Time from AOE 
+#define B1ST_4			0x00000000	// Bank 1 Setup Time from AOE
 						// asserted to Read or Write
 						// asserted = 4 cycles
-#define B1HT_1			0x00400000	// Bank 1 Hold Time from Read 
-						// or Write deasserted to AOE 
+#define B1HT_1			0x00400000	// Bank 1 Hold Time from Read
+						// or Write deasserted to AOE
 						// deasserted = 1 cycle
-#define B1HT_2			0x00800000	// Bank 1 Hold Time from Read 
-						// or Write deasserted to AOE 
+#define B1HT_2			0x00800000	// Bank 1 Hold Time from Read
+						// or Write deasserted to AOE
 						// deasserted = 2 cycles
-#define B1HT_3			0x00C00000	// Bank 1 Hold Time from Read 
-						// or Write deasserted to AOE 
+#define B1HT_3			0x00C00000	// Bank 1 Hold Time from Read
+						// or Write deasserted to AOE
 						// deasserted = 3 cycles
-#define B1HT_0			0x00000000	// Bank 1 Hold Time from Read 
-						// or Write deasserted to AOE 
+#define B1HT_0			0x00000000	// Bank 1 Hold Time from Read
+						// or Write deasserted to AOE
 						// deasserted = 0 cycles
 #define B1RAT_1			0x01000000	// Bank 1 Read Access Time =
 						// 1 cycle
@@ -2229,35 +2229,35 @@
 						// 14 cycles
 #define B1RAT_15		0x0F000000	// Bank 1 Read Access Time =
 						// 15 cycles
-#define B1WAT_1			0x10000000	// Bank 1 Write Access Time = 
+#define B1WAT_1			0x10000000	// Bank 1 Write Access Time =
 						// 1 cycle
-#define B1WAT_2			0x20000000	// Bank 1 Write Access Time = 
+#define B1WAT_2			0x20000000	// Bank 1 Write Access Time =
 						// 2 cycles
-#define B1WAT_3			0x30000000	// Bank 1 Write Access Time = 
+#define B1WAT_3			0x30000000	// Bank 1 Write Access Time =
 						// 3 cycles
-#define B1WAT_4			0x40000000	// Bank 1 Write Access Time = 
+#define B1WAT_4			0x40000000	// Bank 1 Write Access Time =
 						// 4 cycles
-#define B1WAT_5			0x50000000	// Bank 1 Write Access Time = 
+#define B1WAT_5			0x50000000	// Bank 1 Write Access Time =
 						// 5 cycles
-#define B1WAT_6			0x60000000	// Bank 1 Write Access Time = 
+#define B1WAT_6			0x60000000	// Bank 1 Write Access Time =
 						// 6 cycles
-#define B1WAT_7			0x70000000	// Bank 1 Write Access Time = 
+#define B1WAT_7			0x70000000	// Bank 1 Write Access Time =
 						// 7 cycles
-#define B1WAT_8			0x80000000	// Bank 1 Write Access Time = 
+#define B1WAT_8			0x80000000	// Bank 1 Write Access Time =
 						// 8 cycles
-#define B1WAT_9			0x90000000	// Bank 1 Write Access Time = 
+#define B1WAT_9			0x90000000	// Bank 1 Write Access Time =
 						// 9 cycles
-#define B1WAT_10		0xA0000000	// Bank 1 Write Access Time = 
+#define B1WAT_10		0xA0000000	// Bank 1 Write Access Time =
 						// 10 cycles
-#define B1WAT_11		0xB0000000	// Bank 1 Write Access Time = 
+#define B1WAT_11		0xB0000000	// Bank 1 Write Access Time =
 						// 11 cycles
-#define B1WAT_12		0xC0000000	// Bank 1 Write Access Time = 
+#define B1WAT_12		0xC0000000	// Bank 1 Write Access Time =
 						// 12 cycles
-#define B1WAT_13		0xD0000000	// Bank 1 Write Access Time = 
+#define B1WAT_13		0xD0000000	// Bank 1 Write Access Time =
 						// 13 cycles
-#define B1WAT_14		0xE0000000	// Bank 1 Write Access Time = 
+#define B1WAT_14		0xE0000000	// Bank 1 Write Access Time =
 						// 14 cycles
-#define B1WAT_15		0xF0000000	// Bank 1 Write Access Time = 
+#define B1WAT_15		0xF0000000	// Bank 1 Write Access Time =
 						// 15 cycles
 
 // AMBCTL1 Masks
@@ -2278,29 +2278,29 @@
 #define B2TT_4			0x00000000	// Bank 2 Transition Time
 						// from Read to Write = 4
 						// cycles
-#define B2ST_1			0x00000010	// Bank 2 Setup Time from AOE 
+#define B2ST_1			0x00000010	// Bank 2 Setup Time from AOE
 						// asserted to Read or Write
 						// asserted = 1 cycle
-#define B2ST_2			0x00000020	// Bank 2 Setup Time from AOE 
+#define B2ST_2			0x00000020	// Bank 2 Setup Time from AOE
 						// asserted to Read or Write
 						// asserted = 2 cycles
-#define B2ST_3			0x00000030	// Bank 2 Setup Time from AOE 
+#define B2ST_3			0x00000030	// Bank 2 Setup Time from AOE
 						// asserted to Read or Write
 						// asserted = 3 cycles
-#define B2ST_4			0x00000000	// Bank 2 Setup Time from AOE 
+#define B2ST_4			0x00000000	// Bank 2 Setup Time from AOE
 						// asserted to Read or Write
 						// asserted = 4 cycles
-#define B2HT_1			0x00000040	// Bank 2 Hold Time from Read 
-						// or Write deasserted to AOE 
+#define B2HT_1			0x00000040	// Bank 2 Hold Time from Read
+						// or Write deasserted to AOE
 						// deasserted = 1 cycle
-#define B2HT_2			0x00000080	// Bank 2 Hold Time from Read 
-						// or Write deasserted to AOE 
+#define B2HT_2			0x00000080	// Bank 2 Hold Time from Read
+						// or Write deasserted to AOE
 						// deasserted = 2 cycles
-#define B2HT_3			0x000000C0	// Bank 2 Hold Time from Read 
-						// or Write deasserted to AOE 
+#define B2HT_3			0x000000C0	// Bank 2 Hold Time from Read
+						// or Write deasserted to AOE
 						// deasserted = 3 cycles
-#define B2HT_0			0x00000000	// Bank 2 Hold Time from Read 
-						// or Write deasserted to AOE 
+#define B2HT_0			0x00000000	// Bank 2 Hold Time from Read
+						// or Write deasserted to AOE
 						// deasserted = 0 cycles
 #define B2RAT_1			0x00000100	// Bank 2 Read Access Time =
 						// 1 cycle
@@ -2332,35 +2332,35 @@
 						// 14 cycles
 #define B2RAT_15		0x00000F00	// Bank 2 Read Access Time =
 						// 15 cycles
-#define B2WAT_1			0x00001000	// Bank 2 Write Access Time = 
+#define B2WAT_1			0x00001000	// Bank 2 Write Access Time =
 						// 1 cycle
-#define B2WAT_2			0x00002000	// Bank 2 Write Access Time = 
+#define B2WAT_2			0x00002000	// Bank 2 Write Access Time =
 						// 2 cycles
-#define B2WAT_3			0x00003000	// Bank 2 Write Access Time = 
+#define B2WAT_3			0x00003000	// Bank 2 Write Access Time =
 						// 3 cycles
-#define B2WAT_4			0x00004000	// Bank 2 Write Access Time = 
+#define B2WAT_4			0x00004000	// Bank 2 Write Access Time =
 						// 4 cycles
-#define B2WAT_5			0x00005000	// Bank 2 Write Access Time = 
+#define B2WAT_5			0x00005000	// Bank 2 Write Access Time =
 						// 5 cycles
-#define B2WAT_6			0x00006000	// Bank 2 Write Access Time = 
+#define B2WAT_6			0x00006000	// Bank 2 Write Access Time =
 						// 6 cycles
-#define B2WAT_7			0x00007000	// Bank 2 Write Access Time = 
+#define B2WAT_7			0x00007000	// Bank 2 Write Access Time =
 						// 7 cycles
-#define B2WAT_8			0x00008000	// Bank 2 Write Access Time = 
+#define B2WAT_8			0x00008000	// Bank 2 Write Access Time =
 						// 8 cycles
-#define B2WAT_9			0x00009000	// Bank 2 Write Access Time = 
+#define B2WAT_9			0x00009000	// Bank 2 Write Access Time =
 						// 9 cycles
-#define B2WAT_10		0x0000A000	// Bank 2 Write Access Time = 
+#define B2WAT_10		0x0000A000	// Bank 2 Write Access Time =
 						// 10 cycles
-#define B2WAT_11		0x0000B000	// Bank 2 Write Access Time = 
+#define B2WAT_11		0x0000B000	// Bank 2 Write Access Time =
 						// 11 cycles
-#define B2WAT_12		0x0000C000	// Bank 2 Write Access Time = 
+#define B2WAT_12		0x0000C000	// Bank 2 Write Access Time =
 						// 12 cycles
-#define B2WAT_13		0x0000D000	// Bank 2 Write Access Time = 
+#define B2WAT_13		0x0000D000	// Bank 2 Write Access Time =
 						// 13 cycles
-#define B2WAT_14		0x0000E000	// Bank 2 Write Access Time = 
+#define B2WAT_14		0x0000E000	// Bank 2 Write Access Time =
 						// 14 cycles
-#define B2WAT_15		0x0000F000	// Bank 2 Write Access Time = 
+#define B2WAT_15		0x0000F000	// Bank 2 Write Access Time =
 						// 15 cycles
 #define B3RDYEN			0x00010000	// Bank 3 RDY enable,
 						// 0=disable, 1=enable
@@ -2379,29 +2379,29 @@
 #define B3TT_4			0x00000000	// Bank 3 Transition Time
 						// from Read to Write = 4
 						// cycles
-#define B3ST_1			0x00100000	// Bank 3 Setup Time from AOE 
+#define B3ST_1			0x00100000	// Bank 3 Setup Time from AOE
 						// asserted to Read or Write
 						// asserted = 1 cycle
-#define B3ST_2			0x00200000	// Bank 3 Setup Time from AOE 
+#define B3ST_2			0x00200000	// Bank 3 Setup Time from AOE
 						// asserted to Read or Write
 						// asserted = 2 cycles
-#define B3ST_3			0x00300000	// Bank 3 Setup Time from AOE 
+#define B3ST_3			0x00300000	// Bank 3 Setup Time from AOE
 						// asserted to Read or Write
 						// asserted = 3 cycles
-#define B3ST_4			0x00000000	// Bank 3 Setup Time from AOE 
+#define B3ST_4			0x00000000	// Bank 3 Setup Time from AOE
 						// asserted to Read or Write
 						// asserted = 4 cycles
-#define B3HT_1			0x00400000	// Bank 3 Hold Time from Read 
-						// or Write deasserted to AOE 
+#define B3HT_1			0x00400000	// Bank 3 Hold Time from Read
+						// or Write deasserted to AOE
 						// deasserted = 1 cycle
-#define B3HT_2			0x00800000	// Bank 3 Hold Time from Read 
-						// or Write deasserted to AOE 
+#define B3HT_2			0x00800000	// Bank 3 Hold Time from Read
+						// or Write deasserted to AOE
 						// deasserted = 2 cycles
-#define B3HT_3			0x00C00000	// Bank 3 Hold Time from Read 
-						// or Write deasserted to AOE 
+#define B3HT_3			0x00C00000	// Bank 3 Hold Time from Read
+						// or Write deasserted to AOE
 						// deasserted = 3 cycles
-#define B3HT_0			0x00000000	// Bank 3 Hold Time from Read 
-						// or Write deasserted to AOE 
+#define B3HT_0			0x00000000	// Bank 3 Hold Time from Read
+						// or Write deasserted to AOE
 						// deasserted = 0 cycles
 #define B3RAT_1			0x01000000	// Bank 3 Read Access Time =
 						// 1 cycle
@@ -2433,35 +2433,35 @@
 						// 14 cycles
 #define B3RAT_15		0x0F000000	// Bank 3 Read Access Time =
 						// 15 cycles
-#define B3WAT_1			0x10000000	// Bank 3 Write Access Time = 
+#define B3WAT_1			0x10000000	// Bank 3 Write Access Time =
 						// 1 cycle
-#define B3WAT_2			0x20000000	// Bank 3 Write Access Time = 
+#define B3WAT_2			0x20000000	// Bank 3 Write Access Time =
 						// 2 cycles
-#define B3WAT_3			0x30000000	// Bank 3 Write Access Time = 
+#define B3WAT_3			0x30000000	// Bank 3 Write Access Time =
 						// 3 cycles
-#define B3WAT_4			0x40000000	// Bank 3 Write Access Time = 
+#define B3WAT_4			0x40000000	// Bank 3 Write Access Time =
 						// 4 cycles
-#define B3WAT_5			0x50000000	// Bank 3 Write Access Time = 
+#define B3WAT_5			0x50000000	// Bank 3 Write Access Time =
 						// 5 cycles
-#define B3WAT_6			0x60000000	// Bank 3 Write Access Time = 
+#define B3WAT_6			0x60000000	// Bank 3 Write Access Time =
 						// 6 cycles
-#define B3WAT_7			0x70000000	// Bank 3 Write Access Time = 
+#define B3WAT_7			0x70000000	// Bank 3 Write Access Time =
 						// 7 cycles
-#define B3WAT_8			0x80000000	// Bank 3 Write Access Time = 
+#define B3WAT_8			0x80000000	// Bank 3 Write Access Time =
 						// 8 cycles
-#define B3WAT_9			0x90000000	// Bank 3 Write Access Time = 
+#define B3WAT_9			0x90000000	// Bank 3 Write Access Time =
 						// 9 cycles
-#define B3WAT_10		0xA0000000	// Bank 3 Write Access Time = 
+#define B3WAT_10		0xA0000000	// Bank 3 Write Access Time =
 						// 10 cycles
-#define B3WAT_11		0xB0000000	// Bank 3 Write Access Time = 
+#define B3WAT_11		0xB0000000	// Bank 3 Write Access Time =
 						// 11 cycles
-#define B3WAT_12		0xC0000000	// Bank 3 Write Access Time = 
+#define B3WAT_12		0xC0000000	// Bank 3 Write Access Time =
 						// 12 cycles
-#define B3WAT_13		0xD0000000	// Bank 3 Write Access Time = 
+#define B3WAT_13		0xD0000000	// Bank 3 Write Access Time =
 						// 13 cycles
-#define B3WAT_14		0xE0000000	// Bank 3 Write Access Time = 
+#define B3WAT_14		0xE0000000	// Bank 3 Write Access Time =
 						// 14 cycles
-#define B3WAT_15		0xF0000000	// Bank 3 Write Access Time = 
+#define B3WAT_15		0xF0000000	// Bank 3 Write Access Time =
 						// 15 cycles
 
 // **********************  SDRAM CONTROLLER MASKS  ***************************
@@ -2474,7 +2474,7 @@
 #define CL_3			0x0000000C	// SDRAM CAS latency = 3
 						// cycles
 #define PFE			0x00000010	// Enable SDRAM prefetch
-#define PFP			0x00000020	// Prefetch has priority over 
+#define PFP			0x00000020	// Prefetch has priority over
 						// AMC requests
 #define TRAS_1			0x00000040	// SDRAM tRAS = 1 cycle
 #define TRAS_2			0x00000080	// SDRAM tRAS = 2 cycles
@@ -2646,9 +2646,9 @@
 						// register
 #define FIO_DIR 		0xFFC00730	// Flag Direction  register
 #define FIO_POLAR 	        0xFFC00734	// Flag Polarity register
-#define FIO_EDGE 	        0xFFC00738	// Flag Interrupt Sensitivity 
+#define FIO_EDGE 	        0xFFC00738	// Flag Interrupt Sensitivity
 						// register
-#define FIO_BOTH 	        0xFFC0073C	// Flag Set on Both Edges 
+#define FIO_BOTH 	        0xFFC0073C	// Flag Set on Both Edges
 						// register
 #define FIO_INEN 	        0xFFC00740	// Flag Input Enable register
 
@@ -2662,12 +2662,12 @@
 // System Reset and Interrupt Controller registers for
 // core A (0xFFC0 0100-0xFFC0 01FF)
 #define SWRST			0xFFC00100	// Software Reset register
-#define SYSCR			0xFFC00104	// System Reset Configuration 
+#define SYSCR			0xFFC00104	// System Reset Configuration
 						// register
 #define RVECT			0xFFC00108	// SIC Reset Vector Address
 						// Register
 #define SIC_SWRST		0xFFC00100	// Software Reset register
-#define SIC_SYSCR		0xFFC00104	// System Reset Configuration 
+#define SIC_SYSCR		0xFFC00104	// System Reset Configuration
 						// register
 #define SIC_RVECT		0xFFC00108	// SIC Reset Vector Address
 			    			// Register
@@ -2851,7 +2851,7 @@
 						// Addr Increment
 #define DMA0_CURR_DESC_PTR	0xFFC01C20	// DMA1 Channel 0 Current
 						// Descriptor Pointer
-#define DMA0_CURR_ADDR		0xFFC01C24	// DMA1 Channel 0 Current 
+#define DMA0_CURR_ADDR		0xFFC01C24	// DMA1 Channel 0 Current
 						// Address Pointer
 #define DMA0_CURR_X_COUNT	0xFFC01C30	// DMA1 Channel 0 Current Inner
 						// Loop Count
diff --git a/arch/blackfin/lib/udivsi3.S b/arch/blackfin/lib/udivsi3.S
index 357b632..def52cb 100644
--- a/arch/blackfin/lib/udivsi3.S
+++ b/arch/blackfin/lib/udivsi3.S
@@ -106,7 +106,7 @@ ___udivsi3:
   ** with some post-adjustment
   */
   R3 = R1 >> 1;		/* Pre-scaled divisor for primitive case */
-  R2 = R0 >> 16; 
+  R2 = R0 >> 16;
 
   R2 = R3 - R2;		/* shifted divisor < upper 16 bits of dividend */
   CC &= CARRY;
diff --git a/arch/nios2/lib/longlong.h b/arch/nios2/lib/longlong.h
index 1271682..58b29d8 100644
--- a/arch/nios2/lib/longlong.h
+++ b/arch/nios2/lib/longlong.h
@@ -1,7 +1,7 @@
 /* longlong.h -- definitions for mixed size 32/64 bit arithmetic.
  * Copyright (C) 1991, 1992, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2004,
  * 2005  Free Software Foundation, Inc.
- * 
+ *
  * This definition file is free software; you can redistribute it
  * and/or modify it under the terms of the GNU General Public
  * License as published by the Free Software Foundation; either
diff --git a/arch/ppc/include/asm/elf.h b/arch/ppc/include/asm/elf.h
index 2fb48ec..bb8762b 100644
--- a/arch/ppc/include/asm/elf.h
+++ b/arch/ppc/include/asm/elf.h
@@ -129,18 +129,18 @@ typedef elf_fpreg_t elf_fpregset_t[ELF_NFPREG];
 
 /* Altivec registers */
 /*
- * The entries with indexes 0-31 contain the corresponding vector registers. 
- * The entry with index 32 contains the vscr as the last word (offset 12) 
- * within the quadword.  This allows the vscr to be stored as either a 
- * quadword (since it must be copied via a vector register to/from storage) 
- * or as a word.  
+ * The entries with indexes 0-31 contain the corresponding vector registers.
+ * The entry with index 32 contains the vscr as the last word (offset 12)
+ * within the quadword.  This allows the vscr to be stored as either a
+ * quadword (since it must be copied via a vector register to/from storage)
+ * or as a word.
  *
- * 64-bit kernel notes: The entry at index 33 contains the vrsave as the first  
+ * 64-bit kernel notes: The entry at index 33 contains the vrsave as the first
  * word (offset 0) within the quadword.
  *
- * This definition of the VMX state is compatible with the current PPC32 
- * ptrace interface.  This allows signal handling and ptrace to use the same 
- * structures.  This also simplifies the implementation of a bi-arch 
+ * This definition of the VMX state is compatible with the current PPC32
+ * ptrace interface.  This allows signal handling and ptrace to use the same
+ * structures.  This also simplifies the implementation of a bi-arch
  * (combined (32- and 64-bit) gdb.
  *
  * Note that it's _not_ compatible with 32 bits ucontext which stuffs the
@@ -243,7 +243,7 @@ do {								\
  */
 # define elf_read_implies_exec(ex, exec_stk) (test_thread_flag(TIF_32BIT) ? \
 		(exec_stk != EXSTACK_DISABLE_X) : 0)
-#else 
+#else
 # define SET_PERSONALITY(ex, ibcs2) set_personality((ibcs2)?PER_SVR4:PER_LINUX)
 #endif /* __powerpc64__ */
 
diff --git a/common/module.c b/common/module.c
index eb882bc..829c120 100644
--- a/common/module.c
+++ b/common/module.c
@@ -60,7 +60,7 @@ static const struct kernel_symbol *lookup_symbol(const char *name,
 	return NULL;
 }
 
-static unsigned long resolve_symbol(Elf32_Shdr *sechdrs, 
+static unsigned long resolve_symbol(Elf32_Shdr *sechdrs,
 				    const char *name)
 {
 	const struct kernel_symbol *ks;
diff --git a/common/tlsf.c b/common/tlsf.c
index 984342e..ba68a5e 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -151,7 +151,7 @@ static const size_t block_start_offset =
 ** the prev_phys_block field, and no larger than the number of addressable
 ** bits for FL_INDEX.
 */
-static const size_t block_size_min = 
+static const size_t block_size_min =
 	sizeof(block_header_t) - sizeof(block_header_t*);
 static const size_t block_size_max = tlsf_cast(size_t, 1) << FL_INDEX_MAX;
 
@@ -770,7 +770,7 @@ tlsf_pool tlsf_create(void* mem, size_t bytes)
 #if defined (TLSF_64BIT)
 	rv += (tlsf_fls_sizet(0x80000000) == 31) ? 0 : 0x100;
 	rv += (tlsf_fls_sizet(0x100000000) == 32) ? 0 : 0x200;
-	rv += (tlsf_fls_sizet(0xffffffffffffffff) == 63) ? 0 : 0x400; 
+	rv += (tlsf_fls_sizet(0xffffffffffffffff) == 63) ? 0 : 0x400;
 	if (rv)
 	{
 		printf("tlsf_create: %x ffs/fls tests failed!\n", rv);
@@ -785,7 +785,7 @@ tlsf_pool tlsf_create(void* mem, size_t bytes)
 		printf("tlsf_create: Pool size must be at least %d bytes.\n",
 			(unsigned int)(pool_overhead + block_size_min));
 #else
-		printf("tlsf_create: Pool size must be between %u and %u bytes.\n", 
+		printf("tlsf_create: Pool size must be between %u and %u bytes.\n",
 			(unsigned int)(pool_overhead + block_size_min),
 			(unsigned int)(pool_overhead + block_size_max));
 #endif
diff --git a/crypto/digest.c b/crypto/digest.c
index 46600f2..7a8c3c0 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -77,7 +77,7 @@ int digest_generic_digest(struct digest *d, const void *data,
 
 int digest_algo_register(struct digest_algo *d)
 {
-	if (!d || !d->base.name || !d->update || !d->final || !d->verify) 
+	if (!d || !d->base.name || !d->update || !d->final || !d->verify)
 		return -EINVAL;
 
 	if (!d->init)
diff --git a/crypto/sha2.c b/crypto/sha2.c
index df566c8..cb0f11c 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -13,7 +13,7 @@
  *
  * This program is free software; you can redistribute it and/or modify it
  * under the terms of the GNU General Public License as published by the Free
- * Software Foundation; either version 2 of the License, or (at your option) 
+ * Software Foundation; either version 2 of the License, or (at your option)
  * any later version.
  *
  */
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index 1e67c7a..316b971 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -533,7 +533,7 @@ static int tse_probe(struct device_d *dev)
 	}
 #endif
 
-	memset(rx_desc, 0, (sizeof *rx_desc) * (PKTBUFSRX + 1)); 
+	memset(rx_desc, 0, (sizeof *rx_desc) * (PKTBUFSRX + 1));
 	memset(tx_desc, 0, (sizeof *tx_desc) * 2);
 
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 0921b52..1947e60 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -193,7 +193,7 @@ static inline int fec_is_imx6(struct fec_priv *priv)
 #define FEC_RBD_SH		0x0008	/**< Receive BD status: Short frame */
 #define FEC_RBD_CR		0x0004	/**< Receive BD status: CRC error */
 #define FEC_RBD_OV		0x0002	/**< Receive BD status: Receive FIFO overrun */
-#define FEC_RBD_TR		0x0001	/**< Receive BD status: Frame is truncated */	
+#define FEC_RBD_TR		0x0001	/**< Receive BD status: Frame is truncated */
 #define FEC_RBD_ERR		(FEC_RBD_LG | FEC_RBD_NO | FEC_RBD_CR | \
 				FEC_RBD_OV | FEC_RBD_TR)
 
diff --git a/drivers/net/smc911x.h b/drivers/net/smc911x.h
index 8540a84..3bf2af9 100644
--- a/drivers/net/smc911x.h
+++ b/drivers/net/smc911x.h
@@ -186,7 +186,7 @@
 #define	RX_DP_CTRL_RX_FFWD			0x80000000  /* R/W */
 #define	RX_DP_CTRL_FFWD_BUSY			0x80000000  /* RO */
 
-#define RX_FIFO_INF		0x7C 
+#define RX_FIFO_INF		0x7C
 #define	 RX_FIFO_INF_RXSUSED			0x00FF0000  /* RO */
 #define	 RX_FIFO_INF_RXDUSED			0x0000FFFF  /* RO */
 
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 5bd1845..99ec228 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2008 Sascha Hauer, Pengutronix 
+ * Copyright (C) 2008 Sascha Hauer, Pengutronix
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 988fa7e..a02c253 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -306,7 +306,7 @@ static int cramfs_close(struct device_d *dev, FILE *file)
 
 	free(inodei->block_ptrs);
 	free(inodei);
-	
+
 	return 0;
 }
 
diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 0017a4a..ce6e95e 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -2413,7 +2413,7 @@ retry:
 		goto retry;
 #endif
 	}
-		
+
 	err = set(s, data);
 	if (err) {
 #ifndef __BAREBOX__
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 75e54e7..1c0f46a 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -423,7 +423,7 @@ struct super_block {
 struct file_system_type {
 	const char *name;
 	int fs_flags;
-#define FS_REQUIRES_DEV		1 
+#define FS_REQUIRES_DEV		1
 #define FS_BINARY_MOUNTDATA	2
 #define FS_HAS_SUBTYPE		4
 #define FS_USERNS_MOUNT		8	/* Can be mounted by userns root */
diff --git a/include/elf.h b/include/elf.h
index 6d4addf..a749bec 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -284,7 +284,7 @@ typedef struct elf64_phdr {
 #define SHN_ABS		0xfff1
 #define SHN_COMMON	0xfff2
 #define SHN_HIRESERVE	0xffff
- 
+
 typedef struct {
   Elf32_Word	sh_name;
   Elf32_Word	sh_type;
diff --git a/include/fb.h b/include/fb.h
index cf113c4..b2a9c71 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -73,8 +73,8 @@ struct fb_videomode {
 struct fb_bitfield {
 	u32 offset;			/* beginning of bitfield	*/
 	u32 length;			/* length of bitfield		*/
-	u32 msb_right;			/* != 0 : Most significant bit is */ 
-					/* right */ 
+	u32 msb_right;			/* != 0 : Most significant bit is */
+					/* right */
 };
 
 struct fb_info;
diff --git a/include/linux/mount.h b/include/linux/mount.h
index e4d185c..57d5ba9 100644
--- a/include/linux/mount.h
+++ b/include/linux/mount.h
@@ -1,6 +1,6 @@
 /*
  *
- * Definitions for mount interface. This describes the in the kernel build 
+ * Definitions for mount interface. This describes the in the kernel build
  * linkedlist with mounted filesystems.
  *
  * Author:  Marco van Wieringen <mvw@planets.elm.net>
diff --git a/include/linux/rbtree.h b/include/linux/rbtree.h
index d85b0ad..a5ef1b9 100644
--- a/include/linux/rbtree.h
+++ b/include/linux/rbtree.h
@@ -1,7 +1,7 @@
 /*
   Red Black Trees
   (C) 1999  Andrea Arcangeli <andrea@suse.de>
-  
+
  * SPDX-License-Identifier:	GPL-2.0+
 
   linux/include/linux/rbtree.h
@@ -61,7 +61,7 @@ extern struct rb_node *rb_first_postorder(const struct rb_root *);
 extern struct rb_node *rb_next_postorder(const struct rb_node *);
 
 /* Fast replacement of a single node without remove/rebalance/add/rebalance */
-extern void rb_replace_node(struct rb_node *victim, struct rb_node *new, 
+extern void rb_replace_node(struct rb_node *victim, struct rb_node *new,
 			    struct rb_root *root);
 
 static inline void rb_link_node(struct rb_node * node, struct rb_node * parent,
diff --git a/lib/glob.c b/lib/glob.c
index 1b0137b..5a997ca 100644
--- a/lib/glob.c
+++ b/lib/glob.c
@@ -428,7 +428,7 @@ glob_t *pglob;
 	elems = pglob->gl_pathc + 2;
 	if (flags & GLOB_DOOFFS)
 		elems += pglob->gl_offs;
-	
+
 	pglob->gl_pathv = xrealloc(pglob->gl_pathv, elems * sizeof(char *));
 
 	if (flags & GLOB_DOOFFS)
diff --git a/lib/rbtree.c b/lib/rbtree.c
index 7297792..6fba2c5 100644
--- a/lib/rbtree.c
+++ b/lib/rbtree.c
@@ -444,7 +444,7 @@ struct rb_node *rb_next(const struct rb_node *node)
 	 * as we can.
 	 */
 	if (node->rb_right) {
-		node = node->rb_right; 
+		node = node->rb_right;
 		while (node->rb_left)
 			node=node->rb_left;
 		return (struct rb_node *)node;
@@ -476,7 +476,7 @@ struct rb_node *rb_prev(const struct rb_node *node)
 	 * as we can.
 	 */
 	if (node->rb_left) {
-		node = node->rb_left; 
+		node = node->rb_left;
 		while (node->rb_right)
 			node=node->rb_right;
 		return (struct rb_node *)node;
-- 
1.9.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

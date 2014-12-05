Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XwvxP-0001Uz-KS
 for barebox@lists.infradead.org; Fri, 05 Dec 2014 16:42:22 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  5 Dec 2014 17:41:47 +0100
Message-Id: <1417797709-10992-4-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1417797709-10992-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1417797709-10992-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: socfpga: update sdram calibration to 14.0
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/include/mach/sequencer.c | 154 ++++++++++++++-----------
 arch/arm/mach-socfpga/include/mach/sequencer.h |  96 +++++++++++----
 2 files changed, 159 insertions(+), 91 deletions(-)

diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.c b/arch/arm/mach-socfpga/include/mach/sequencer.c
index 6e69d1becc80..87dc6677ec8b 100644
--- a/arch/arm/mach-socfpga/include/mach/sequencer.c
+++ b/arch/arm/mach-socfpga/include/mach/sequencer.c
@@ -1,29 +1,30 @@
 /*
-Copyright (c) 2012, Altera Corporation
-All rights reserved.
-
-Redistribution and use in source and binary forms, with or without
-modification, are permitted provided that the following conditions are met:
-    * Redistributions of source code must retain the above copyright
-      notice, this list of conditions and the following disclaimer.
-    * Redistributions in binary form must reproduce the above copyright
-      notice, this list of conditions and the following disclaimer in the
-      documentation and/or other materials provided with the distribution.
-    * Neither the name of Altera Corporation nor the
-      names of its contributors may be used to endorse or promote products
-      derived from this software without specific prior written permission.
-
-THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
-ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
-WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
-DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
-DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
-(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
-LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
-ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
-(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
-SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
-*/
+ * Copyright Altera Corporation (C) 2012-2014. All rights reserved
+ *
+ * SPDX-License-Identifier:  BSD-3-Clause
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions are met:
+ *  * Redistributions of source code must retain the above copyright
+ *  notice, this list of conditions and the following disclaimer.
+ *  * Redistributions in binary form must reproduce the above copyright
+ *  notice, this list of conditions and the following disclaimer in the
+ *  documentation and/or other materials provided with the distribution.
+ *  * Neither the name of Altera Corporation nor the
+ *  names of its contributors may be used to endorse or promote products
+ *  derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+ * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+ * DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+ * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+ * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+ * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+ * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
 
 #include <common.h>
 #include <io.h>
@@ -1160,32 +1161,29 @@ static void rw_mgr_mem_initialize (void)
 
 	/* start with memory RESET activated */
 
-	/* tINIT = 200us */
-
-	/*
-	 * 200us @ 266MHz (3.75 ns) ~ 54000 clock cycles
-	 * If a and b are the number of iteration in 2 nested loops
-	 * it takes the following number of cycles to complete the operation:
-	 * number_of_cycles = ((2 + n) * a + 2) * b
-	 * where n is the number of instruction in the inner loop
-	 * One possible solution is n = 0 , a = 256 , b = 106 => a = FF,
-	 * b = 6A
+	/* tINIT is typically 200us (but can be adjusted in the GUI)
+	 * The total number of cycles required for this nested counter structure to
+	 * complete is defined by:
+	 * num_cycles = (CTR2 + 1) * [(CTR1 + 1) * (2 * (CTR0 + 1) + 1) + 1] + 1
 	 */
 
 	/* Load counters */
 	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0,
-		SKIP_DELAY_LOOP_VALUE_OR_ZERO(0xFF));
+		SKIP_DELAY_LOOP_VALUE_OR_ZERO(SEQ_TINIT_CNTR0_VAL));
 	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0,
-		SKIP_DELAY_LOOP_VALUE_OR_ZERO(0x6A));
+		SKIP_DELAY_LOOP_VALUE_OR_ZERO(SEQ_TINIT_CNTR1_VAL));
+	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_2, 0,
+		SKIP_DELAY_LOOP_VALUE_OR_ZERO(SEQ_TINIT_CNTR2_VAL));
 
 	/* Load jump address */
 	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_0, 0,
 		__RW_MGR_INIT_RESET_0_CKE_0);
 	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0,
-		__RW_MGR_INIT_RESET_0_CKE_0_inloop);
+		__RW_MGR_INIT_RESET_0_CKE_0);
+	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_2, 0,
+		__RW_MGR_INIT_RESET_0_CKE_0);
 
 	/* Execute count instruction */
-	/* IOWR_32DIRECT(BASE_RW_MGR, 0, __RW_MGR_COUNT_REG_0); */
 	IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_INIT_RESET_0_CKE_0);
 
 	/* indicate that memory is stable */
@@ -1194,26 +1192,21 @@ static void rw_mgr_mem_initialize (void)
 	/* transition the RESET to high */
 	/* Wait for 500us */
 
-	/*
-	 * 500us @ 266MHz (3.75 ns) ~ 134000 clock cycles
-	 * If a and b are the number of iteration in 2 nested loops
-	 * it takes the following number of cycles to complete the operation
-	 * number_of_cycles = ((2 + n) * a + 2) * b
-	 * where n is the number of instruction in the inner loop
-	 * One possible solution is n = 2 , a = 131 , b = 256 => a = 83,
-	 * b = FF
-	 */
+	/* num_cycles = (CTR2 + 1) * [(CTR1 + 1) * (2 * (CTR0 + 1) + 1) + 1] + 1 */
 
 	/* Load counters */
 	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0,
-		SKIP_DELAY_LOOP_VALUE_OR_ZERO(0x83));
+		SKIP_DELAY_LOOP_VALUE_OR_ZERO(SEQ_TRESET_CNTR0_VAL));
 	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0,
-		SKIP_DELAY_LOOP_VALUE_OR_ZERO(0xFF));
+		SKIP_DELAY_LOOP_VALUE_OR_ZERO(SEQ_TRESET_CNTR1_VAL));
+	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_2, 0,
+		SKIP_DELAY_LOOP_VALUE_OR_ZERO(SEQ_TRESET_CNTR2_VAL));
 
 	/* Load jump address */
 	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_0, 0, __RW_MGR_INIT_RESET_1_CKE_0);
-	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0,
-		__RW_MGR_INIT_RESET_1_CKE_0_inloop_1);
+	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0, __RW_MGR_INIT_RESET_1_CKE_0);
+	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_2, 0, __RW_MGR_INIT_RESET_1_CKE_0);
+
 
 	IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_INIT_RESET_1_CKE_0);
 
@@ -1305,27 +1298,28 @@ static void rw_mgr_mem_initialize (void)
 
 	/* tINIT = 200us */
 
-	/* 200us @ 300MHz (3.33 ns) ~ 60000 clock cycles
-	* If a and b are the number of iteration in 2 nested loops
-	* it takes the following number of cycles to complete the operation:
-	* number_of_cycles = ((2 + n) * b + 2) * a
-	* where n is the number of instruction in the inner loop
-	* One possible solution is n = 0 , a = 256 , b = 118 => a = FF,
-	* b = 76
-	*/
+	/* tINIT is typically 200us (but can be adjusted in the GUI)
+	 * The total number of cycles required for this nested counter structure to
+	 * complete is defined by:
+	 * num_cycles = (CTR0 + 1) * [(CTR1 + 1) * (2 * (CTR2 + 1) + 1) + 1] + 1
+	 */
 
 	/*TODO: Need to manage multi-rank */
 
 	/* Load counters */
-	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0, SKIP_DELAY_LOOP_VALUE_OR_ZERO(0xFF));
-	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0, SKIP_DELAY_LOOP_VALUE_OR_ZERO(0x76));
+	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0,
+		SKIP_DELAY_LOOP_VALUE_OR_ZERO(SEQ_TINIT_CNTR0_VAL));
+	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0,
+		SKIP_DELAY_LOOP_VALUE_OR_ZERO(SEQ_TINIT_CNTR1_VAL));
+	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_2, 0,
+		SKIP_DELAY_LOOP_VALUE_OR_ZERO(SEQ_TINIT_CNTR2_VAL));
 
 	/* Load jump address */
 	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_0, 0, __RW_MGR_INIT_CKE_0);
-	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0, __RW_MGR_INIT_CKE_0_inloop);
+	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0, __RW_MGR_INIT_CKE_0);
+	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_2, 0, __RW_MGR_INIT_CKE_0);
 
 	/* Execute count instruction */
-	/* IOWR_32DIRECT(BASE_RW_MGR, 0, __RW_MGR_COUNT_REG_0); */
 	IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_INIT_CKE_0);
 
 	/* indicate that memory is stable */
@@ -1717,8 +1711,25 @@ static uint32_t rw_mgr_mem_calibrate_read_test_patterns (uint32_t rank_bgn,
 static uint32_t rw_mgr_mem_calibrate_read_test_patterns_all_ranks
 	(uint32_t group, uint32_t num_tries, t_btfld *bit_chk)
 {
-	return rw_mgr_mem_calibrate_read_test_patterns (0, group,
-		num_tries, bit_chk, 1);
+	if (rw_mgr_mem_calibrate_read_test_patterns(0, group, num_tries, bit_chk, 1)) {
+		return 1;
+	} else {
+		/* case:139851 - if guaranteed read fails, we can retry using
+		 * different dqs enable phases. It is possible that with the
+		 * initial phase, dqs enable is asserted/deasserted too close
+		 * to an dqs edge, truncating the read burst.
+		 */
+		uint32_t p;
+		for (p = 0; p <= IO_DQS_EN_PHASE_MAX; p++) {
+			scc_mgr_set_dqs_en_phase_all_ranks (group, p);
+			if (rw_mgr_mem_calibrate_read_test_patterns(0,
+				group, num_tries, bit_chk, 1)) {
+				return 1;
+			}
+		}
+
+		return 0;
+	}
 }
 
 /* load up the patterns we are going to use during a read test */
@@ -4260,6 +4271,7 @@ static int socfpga_sdram_calibration(const uint32_t *inst_rom_init, uint32_t ins
 	param_t my_param;
 	gbl_t my_gbl;
 	uint32_t pass;
+	uint32_t i;
 
 	param = &my_param;
 	gbl = &my_gbl;
@@ -4280,6 +4292,16 @@ static int socfpga_sdram_calibration(const uint32_t *inst_rom_init, uint32_t ins
 #if USE_DQS_TRACKING
 	initialize_tracking();
 #endif
+
+	/* Enable all ranks, groups */
+	for (i = 0; i < RW_MGR_MEM_NUMBER_OF_RANKS; i++)
+		param->skip_ranks[i] = 0;
+
+	for (i = 0; i < NUM_SHADOW_REGS; ++i)
+		param->skip_shadow_regs[i] = 0;
+
+	param->skip_groups = 0;
+
 	pr_debug("Preparing to start memory calibration\n");
 
 	pr_debug("%s%s %s ranks=%u cs/dimm=%u dq/dqs=%u,%u vg/dqs=%u,%u "
diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.h b/arch/arm/mach-socfpga/include/mach/sequencer.h
index c437106bc2f4..7c9157a25779 100644
--- a/arch/arm/mach-socfpga/include/mach/sequencer.h
+++ b/arch/arm/mach-socfpga/include/mach/sequencer.h
@@ -2,31 +2,32 @@
 #define _SEQUENCER_H_
 
 /*
-Copyright (c) 2012, Altera Corporation
-All rights reserved.
-
-Redistribution and use in source and binary forms, with or without
-modification, are permitted provided that the following conditions are met:
-    * Redistributions of source code must retain the above copyright
-      notice, this list of conditions and the following disclaimer.
-    * Redistributions in binary form must reproduce the above copyright
-      notice, this list of conditions and the following disclaimer in the
-      documentation and/or other materials provided with the distribution.
-    * Neither the name of Altera Corporation nor the
-      names of its contributors may be used to endorse or promote products
-      derived from this software without specific prior written permission.
-
-THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
-ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
-WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
-DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
-DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
-(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
-LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
-ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
-(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
-SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
-*/
+ * Copyright Altera Corporation (C) 2012-2014. All rights reserved
+ *
+ * SPDX-License-Identifier:  BSD-3-Clause
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions are met:
+ *  * Redistributions of source code must retain the above copyright
+ *  notice, this list of conditions and the following disclaimer.
+ *  * Redistributions in binary form must reproduce the above copyright
+ *  notice, this list of conditions and the following disclaimer in the
+ *  documentation and/or other materials provided with the distribution.
+ *  * Neither the name of Altera Corporation nor the
+ *  names of its contributors may be used to endorse or promote products
+ *  derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+ * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+ * DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+ * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+ * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+ * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+ * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
 
 #define MRS_MIRROR_PING_PONG_ATSO 0
 #define DYNAMIC_CALIBRATION_MODE 0
@@ -396,6 +397,48 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 #define PHY_DEBUG_DISABLE_GUARANTEED_READ 0x00000010
 #define PHY_DEBUG_ENABLE_NON_DESTRUCTIVE_CALIBRATION 0x00000020
 
+/* Init and Reset delay constants - Only use if defined by sequencer_defines.h,
+ * otherwise, revert to defaults
+ * Default for Tinit = (0+1) * ((202+1) * (2 * 131 + 1) + 1) = 53532 = 200.75us @ 266MHz
+ */
+#ifdef TINIT_CNTR0_VAL
+   #define SEQ_TINIT_CNTR0_VAL TINIT_CNTR0_VAL
+#else
+   #define SEQ_TINIT_CNTR0_VAL 0
+#endif
+
+#ifdef TINIT_CNTR1_VAL
+   #define SEQ_TINIT_CNTR1_VAL TINIT_CNTR1_VAL
+#else
+   #define SEQ_TINIT_CNTR1_VAL 202
+#endif
+
+#ifdef TINIT_CNTR2_VAL
+   #define SEQ_TINIT_CNTR2_VAL TINIT_CNTR2_VAL
+#else
+   #define SEQ_TINIT_CNTR2_VAL 131
+#endif
+
+
+/* Default for Treset = (2+1) * ((252+1) * (2 * 131 + 1) + 1) = 133563 = 500.86us @ 266MHz */
+#ifdef TRESET_CNTR0_VAL
+   #define SEQ_TRESET_CNTR0_VAL TRESET_CNTR0_VAL
+#else
+   #define SEQ_TRESET_CNTR0_VAL 2
+#endif
+
+#ifdef TRESET_CNTR1_VAL
+   #define SEQ_TRESET_CNTR1_VAL TRESET_CNTR1_VAL
+#else
+   #define SEQ_TRESET_CNTR1_VAL 252
+#endif
+
+#ifdef TRESET_CNTR2_VAL
+   #define SEQ_TRESET_CNTR2_VAL TRESET_CNTR2_VAL
+#else
+   #define SEQ_TRESET_CNTR2_VAL 131
+#endif
+
 /* Bitfield type changes depending on protocol */
 typedef uint32_t t_btfld;
 
@@ -409,6 +452,9 @@ typedef struct param_type {
 	t_btfld read_correct_mask_vg;
 	t_btfld write_correct_mask;
 	t_btfld write_correct_mask_vg;
+	uint32_t skip_ranks[MAX_RANKS];
+	uint32_t skip_groups;
+	uint32_t skip_shadow_regs[NUM_SHADOW_REGS];
 
 	/* set a particular entry to 1 if we need to skip a particular group */
 } param_t;
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

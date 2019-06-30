Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhXqr-0005LV-Vy
 for barebox@lists.infradead.org; Sun, 30 Jun 2019 11:18:36 +0000
From: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
Date: Sun, 30 Jun 2019 13:16:44 +0200
Message-Id: <20190630111646.14992-1-gwenj@trabucayre.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] ARM: socfpga: terasic-de0-nano-soc: update handoff files
 to 18.1
To: barebox@lists.infradead.org
Cc: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>

From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>

xload on de0nanosoc stop to boot after:
SDRAM setup...
SDRAM calibration...

This patch fix SDRAM configuration and updates handoff to quartus2 18.1

Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
---
 .../iocsr_config_cyclone5.c                   | 64 +++++++++----------
 .../boards/terasic-de0-nano-soc/pll_config.h  |  2 +-
 .../terasic-de0-nano-soc/sdram_config.h       | 22 ++++---
 .../terasic-de0-nano-soc/sequencer_auto.h     | 26 ++++----
 .../sequencer_auto_ac_init.c                  | 21 +++---
 .../terasic-de0-nano-soc/sequencer_defines.h  | 39 ++++++-----
 6 files changed, 90 insertions(+), 84 deletions(-)

diff --git a/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c b/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
index 7caed2ee3..bd7af5f75 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
@@ -36,32 +36,32 @@ static const unsigned long SECT(iocsr_scan_chain0_table)[((CONFIG_HPS_IOCSR_SCAN
 	0xC0000000,
 	0x0000003F,
 	0x00008000,
-	0x00020080,
+	0x00060180,
 	0x18060000,
-	0x08000000,
-	0x00018020,
+	0x18000000,
+	0x00018060,
 	0x00000000,
 	0x00004000,
-	0x00010040,
-	0x04010000,
-	0x04000000,
-	0x00000010,
-	0x00004010,
+	0x000300C0,
+	0x0C030000,
+	0x0C000000,
+	0x00000030,
+	0x0000C030,
 	0x00002000,
 	0x00020000,
-	0x02008000,
-	0x02000000,
-	0x00000008,
-	0x00002008,
+	0x06018000,
+	0x06000000,
+	0x00000018,
+	0x00006018,
 	0x00001000,
 };
 
 static const unsigned long SECT(iocsr_scan_chain1_table)[((CONFIG_HPS_IOCSR_SCANCHAIN1_LENGTH / 32) + 1)] = {
 	0x00100000,
-	0x10040000,
-	0x100000C0,
-	0x00000040,
-	0x00010040,
+	0x300C0000,
+	0x300000C0,
+	0x000000C0,
+	0x000300C0,
 	0x00008000,
 	0x00060180,
 	0x20000000,
@@ -69,11 +69,11 @@ static const unsigned long SECT(iocsr_scan_chain1_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00000080,
 	0x00020000,
 	0x00004000,
-	0x00010040,
+	0x000300C0,
 	0x10000000,
-	0x04000000,
-	0x00000010,
-	0x00004010,
+	0x0C000000,
+	0x00000030,
+	0x0000C030,
 	0x00002000,
 	0x00020000,
 	0x06018000,
@@ -94,22 +94,22 @@ static const unsigned long SECT(iocsr_scan_chain1_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00002000,
 	0x00000400,
 	0x00000000,
-	0x00401000,
+	0x00C03000,
 	0x00000003,
 	0x00000000,
 	0x00000000,
 	0x00000200,
-	0x00600802,
+	0x00601806,
 	0x00000000,
-	0x80200000,
-	0x80000600,
-	0x00000200,
+	0x80600000,
+	0x80000601,
+	0x00000601,
 	0x00000100,
-	0x00300401,
-	0xC0100400,
-	0x40100000,
-	0x40000300,
-	0x000C0100,
+	0x00300C03,
+	0xC0300C00,
+	0xC0300000,
+	0xC0000300,
+	0x000C0300,
 	0x00000080,
 };
 
@@ -118,7 +118,7 @@ static const unsigned long SECT(iocsr_scan_chain2_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00000000,
 	0x0FF00000,
 	0x00000000,
-	0x0C0300C0,
+	0x000300C0,
 	0x00008000,
 	0x00080000,
 	0x18060000,
@@ -142,7 +142,7 @@ static const unsigned long SECT(iocsr_scan_chain2_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00000000,
 	0x03000000,
 	0x0000800C,
-	0x00C01004,
+	0x00C0300C,
 	0x00000800,
 };
 
diff --git a/arch/arm/boards/terasic-de0-nano-soc/pll_config.h b/arch/arm/boards/terasic-de0-nano-soc/pll_config.h
index bb2f0eab0..35c98d522 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/pll_config.h
+++ b/arch/arm/boards/terasic-de0-nano-soc/pll_config.h
@@ -58,7 +58,7 @@
 #define CONFIG_HPS_PERPLLGRP_PERQSPICLK_CNT (511)
 #define CONFIG_HPS_PERPLLGRP_PERNANDSDMMCCLK_CNT (4)
 #define CONFIG_HPS_PERPLLGRP_PERBASECLK_CNT (4)
-#define CONFIG_HPS_PERPLLGRP_S2FUSER1CLK_CNT (19)
+#define CONFIG_HPS_PERPLLGRP_S2FUSER1CLK_CNT (511)
 #define CONFIG_HPS_PERPLLGRP_DIV_USBCLK (0)
 #define CONFIG_HPS_PERPLLGRP_DIV_SPIMCLK (0)
 #define CONFIG_HPS_PERPLLGRP_DIV_CAN0CLK (4)
diff --git a/arch/arm/boards/terasic-de0-nano-soc/sdram_config.h b/arch/arm/boards/terasic-de0-nano-soc/sdram_config.h
index 292ff6d4d..7a7a9549c 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/sdram_config.h
+++ b/arch/arm/boards/terasic-de0-nano-soc/sdram_config.h
@@ -73,12 +73,12 @@
 #define CONFIG_HPS_SDR_CTRLCFG_PORTCFG_AUTOPCHEN		(0)
 #define CONFIG_HPS_SDR_CTRLCFG_FIFOCFG_SYNCMODE			(0)
 #define CONFIG_HPS_SDR_CTRLCFG_FIFOCFG_INCSYNC			(0)
-#define CONFIG_HPS_SDR_CTRLCFG_MPPRIORITY_USERPRIORITY		(0x3FFD1088)
+#define CONFIG_HPS_SDR_CTRLCFG_MPPRIORITY_USERPRIORITY		(0x0)
 #define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_0_STATICWEIGHT_31_0	(0x21084210)
-#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_1_STATICWEIGHT_49_32	(0x1EF84)
-#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_1_SUMOFWEIGHT_13_0	(0x2020)
+#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_1_STATICWEIGHT_49_32	(0x10441)
+#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_1_SUMOFWEIGHT_13_0	(0x78)
 #define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_2_SUMOFWEIGHT_45_14	(0x0)
-#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_3_SUMOFWEIGHT_63_46	(0xF800)
+#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_3_SUMOFWEIGHT_63_46	(0x0)
 #define CONFIG_HPS_SDR_CTRLCFG_PHYCTRL_PHYCTRL_0		(0x200)
 
 #define CONFIG_HPS_SDR_CTRLCFG_CPORTWIDTH_CPORTWIDTH		(0x44555)
@@ -100,9 +100,13 @@
 (0x0101)
 #define CONFIG_HPS_SDR_CTRLCFG_DRAMODT_READ			(0)
 #define CONFIG_HPS_SDR_CTRLCFG_DRAMODT_WRITE			(1)
-#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST_READ_PORT_USED	(0x1)
-#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST_WRITE_PORT_USED	(0x1)
-#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST_COMMAND_PORT_USED	(0x3)
-#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST			(0x311)
+#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST_READ_PORT_USED	(0x0)
+#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST_WRITE_PORT_USED	(0x0)
+#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST_COMMAND_PORT_USED	(0x0)
+#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST			(0x0)
 
-#endif	/*#ifndef__SDRAM_CONFIG_H*/
+#define CONFIG_HPS_SDR_CTRLCFG_EXTRATIME1_CFG_EXTRA_CTL_CLK_RD_TO_WR (2)
+#define CONFIG_HPS_SDR_CTRLCFG_EXTRATIME1_CFG_EXTRA_CTL_CLK_RD_TO_WR_BC (2)
+#define CONFIG_HPS_SDR_CTRLCFG_EXTRATIME1_CFG_EXTRA_CTL_CLK_RD_TO_WR_DIFF_CHIP (2)
+
+#endif /*#ifndef__SDRAM_CONFIG_H */
diff --git a/arch/arm/boards/terasic-de0-nano-soc/sequencer_auto.h b/arch/arm/boards/terasic-de0-nano-soc/sequencer_auto.h
index 3797a2584..289ca9275 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/sequencer_auto.h
+++ b/arch/arm/boards/terasic-de0-nano-soc/sequencer_auto.h
@@ -1,6 +1,5 @@
 /*
-Copyright (c) 2012, Altera Corporation
-All rights reserved.
+Copyright (C) 2019  Intel Corporation. All rights reserved.
 
 SPDX-License-Identifier:    BSD-3-Clause
 
@@ -11,7 +10,7 @@ modification, are permitted provided that the following conditions are met:
     * Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in the
       documentation and/or other materials provided with the distribution.
-    * Neither the name of Altera Corporation nor the
+    * Neither the name of Intel Corporation nor the
       names of its contributors may be used to endorse or promote products
       derived from this software without specific prior written permission.
 
@@ -62,7 +61,7 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 #define __RW_MGR_ac_read_en 0x21
 #define __RW_MGR_ac_mrs3_mirr 0x0C
 #define __RW_MGR_ac_mrs2 0x05
-#define __RW_MGR_CONTENT_ac_mrs1 0x10090006
+#define __RW_MGR_CONTENT_ac_mrs1 0x10090044
 #define __RW_MGR_CONTENT_ac_mrs3 0x100B0000
 #define __RW_MGR_CONTENT_ac_write_bank_0_col_0_nodata_wl_1 0x18980000
 #define __RW_MGR_CONTENT_ac_act_1 0x106B0000
@@ -74,8 +73,8 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 #define __RW_MGR_CONTENT_ac_init_reset_0_cke_0 0x20700000
 #define __RW_MGR_CONTENT_ac_read_bank_0_1_norden 0x10580008
 #define __RW_MGR_CONTENT_ac_pre_all 0x10280400
-#define __RW_MGR_CONTENT_ac_mrs0_user 0x10080471
-#define __RW_MGR_CONTENT_ac_mrs0_dll_reset 0x10080570
+#define __RW_MGR_CONTENT_ac_mrs0_user 0x10080431
+#define __RW_MGR_CONTENT_ac_mrs0_dll_reset 0x10080530
 #define __RW_MGR_CONTENT_ac_read_bank_0_0 0x13580000
 #define __RW_MGR_CONTENT_ac_write_bank_0_col_1 0x1C980008
 #define __RW_MGR_CONTENT_ac_read_bank_0_1 0x13580008
@@ -83,25 +82,24 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 #define __RW_MGR_CONTENT_ac_write_bank_1_col_1 0x1C9B0008
 #define __RW_MGR_CONTENT_ac_write_bank_0_col_0 0x1C980000
 #define __RW_MGR_CONTENT_ac_read_bank_1_0 0x135B0000
-#define __RW_MGR_CONTENT_ac_mrs1_mirr 0x100A0006
+#define __RW_MGR_CONTENT_ac_mrs1_mirr 0x100A0024
 #define __RW_MGR_CONTENT_ac_read_bank_1_1 0x135B0008
 #define __RW_MGR_CONTENT_ac_des_odt_1 0x38780000
-#define __RW_MGR_CONTENT_ac_mrs0_dll_reset_mirr 0x100804E8
+#define __RW_MGR_CONTENT_ac_mrs0_dll_reset_mirr 0x100804C8
 #define __RW_MGR_CONTENT_ac_zqcl 0x10380400
 #define __RW_MGR_CONTENT_ac_write_predata 0x38F80000
-#define __RW_MGR_CONTENT_ac_mrs0_user_mirr 0x10080469
+#define __RW_MGR_CONTENT_ac_mrs0_user_mirr 0x10080449
 #define __RW_MGR_CONTENT_ac_ref 0x10480000
 #define __RW_MGR_CONTENT_ac_nop 0x30780000
 #define __RW_MGR_CONTENT_ac_rdimm 0x10780000
-#define __RW_MGR_CONTENT_ac_mrs2_mirr 0x10090218
+#define __RW_MGR_CONTENT_ac_mrs2_mirr 0x10090008
 #define __RW_MGR_CONTENT_ac_write_bank_0_col_0_nodata 0x18180000
 #define __RW_MGR_CONTENT_ac_read_en 0x33780000
 #define __RW_MGR_CONTENT_ac_mrs3_mirr 0x100B0000
-#define __RW_MGR_CONTENT_ac_mrs2 0x100A0218
+#define __RW_MGR_CONTENT_ac_mrs2 0x100A0010
 
 /*
-Copyright (c) 2012, Altera Corporation
-All rights reserved.
+Copyright (C) 2019  Intel Corporation. All rights reserved.
 
 SPDX-License-Identifier:    BSD-3-Clause
 
@@ -112,7 +110,7 @@ modification, are permitted provided that the following conditions are met:
     * Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in the
       documentation and/or other materials provided with the distribution.
-    * Neither the name of Altera Corporation nor the
+    * Neither the name of Intel Corporation nor the
       names of its contributors may be used to endorse or promote products
       derived from this software without specific prior written permission.
 
diff --git a/arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_ac_init.c b/arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_ac_init.c
index 8044477e0..1efe4f99c 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_ac_init.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_ac_init.c
@@ -1,6 +1,5 @@
 /*
-Copyright (c) 2012, Altera Corporation
-All rights reserved.
+Copyright (C) 2019  Intel Corporation. All rights reserved.
 
 SPDX-License-Identifier:    BSD-3-Clause
 
@@ -11,7 +10,7 @@ modification, are permitted provided that the following conditions are met:
     * Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in the
       documentation and/or other materials provided with the distribution.
-    * Neither the name of Altera Corporation nor the
+    * Neither the name of Intel Corporation nor the
       names of its contributors may be used to endorse or promote products
       derived from this software without specific prior written permission.
 
@@ -32,16 +31,16 @@ static const uint32_t SECT(ac_rom_init)[36] =
 {
 	0x20700000,
 	0x20780000,
-	0x10080471,
-	0x10080570,
-	0x10090006,
-	0x100a0218,
+	0x10080431,
+	0x10080530,
+	0x10090044,
+	0x100a0010,
 	0x100b0000,
 	0x10380400,
-	0x10080469,
-	0x100804e8,
-	0x100a0006,
-	0x10090218,
+	0x10080449,
+	0x100804c8,
+	0x100a0024,
+	0x10090008,
 	0x100b0000,
 	0x30780000,
 	0x38780000,
diff --git a/arch/arm/boards/terasic-de0-nano-soc/sequencer_defines.h b/arch/arm/boards/terasic-de0-nano-soc/sequencer_defines.h
index f4d43951c..fd226f1eb 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/sequencer_defines.h
+++ b/arch/arm/boards/terasic-de0-nano-soc/sequencer_defines.h
@@ -1,5 +1,5 @@
 /*
-Copyright (c) 2012, Altera Corporation
+Copyright (C) 2016 Intel Corporation
 All rights reserved.
 
 SPDX-License-Identifier:    BSD-3-Clause
@@ -29,28 +29,31 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 #ifndef _SEQUENCER_DEFINES_H_
 #define _SEQUENCER_DEFINES_H_
 
-#define AC_ROM_MR1_MIRR 0000000000110
+#define AC_ROM_MR1_MIRR 0000000100100
 #define AC_ROM_MR1_OCD_ENABLE
-#define AC_ROM_MR2_MIRR 0001000011000
+#define AC_ROM_MR2_MIRR 0000000001000
 #define AC_ROM_MR3_MIRR 0000000000000
 #define AC_ROM_MR0_CALIB
-#define AC_ROM_MR0_DLL_RESET_MIRR 0010011101000
-#define AC_ROM_MR0_DLL_RESET 0010101110000
-#define AC_ROM_MR0_MIRR 0010001101001
-#define AC_ROM_MR0 0010001110001
-#define AC_ROM_MR1 0000000000110
-#define AC_ROM_MR2 0001000011000
+#define AC_ROM_MR0_DLL_RESET_MIRR 0010011001000
+#define AC_ROM_MR0_DLL_RESET 0010100110000
+#define AC_ROM_MR0_MIRR 0010001001001
+#define AC_ROM_MR0 0010000110001
+#define AC_ROM_MR1 0000001000100
+#define AC_ROM_MR2 0000000010000
 #define AC_ROM_MR3 0000000000000
+#define AC_ROM_USER_ADD_0 0_0000_0000_0000
+#define AC_ROM_USER_ADD_1 0_0000_0000_1000
 #define AFI_CLK_FREQ 401
 #define AFI_RATE_RATIO 1
+#define AP_MODE 0
 #define ARRIAVGZ 0
 #define ARRIAV 0
 #define AVL_CLK_FREQ 67
 #define BFM_MODE 0
 #define BURST2 0
 #define CALIBRATE_BIT_SLIPS 0
-#define CALIB_LFIFO_OFFSET 12
-#define CALIB_VFIFO_OFFSET 10
+#define CALIB_LFIFO_OFFSET 8
+#define CALIB_VFIFO_OFFSET 6
 #define CYCLONEV 1
 #define DDR2 0
 #define DDR3 1
@@ -65,9 +68,12 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 #define ENABLE_INST_ROM_WRITE 1
 #define ENABLE_MARGIN_REPORT_GEN 0
 #define ENABLE_NON_DESTRUCTIVE_CALIB 0
+#define ENABLE_NON_DES_CAL_TEST 0
+#define ENABLE_NON_DES_CAL 0
 #define ENABLE_SUPER_QUICK_CALIBRATION 0
 #define ENABLE_TCL_DEBUG 0
 #define FAKE_CAL_FAIL 0
+#define FIX_READ_LATENCY 8
 #define FULL_RATE 1
 #define GUARANTEED_READ_BRINGUP_TEST 0
 #define HALF_RATE 0
@@ -99,21 +105,19 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 #define LPDDR1 0
 #define LPDDR2 0
 #define LRDIMM 0
-#define M10_DQ_WIDTH_8 0
-#define M10_DQ_WIDTH_16 0
-#define M10_DQ_WIDTH_24 0
 #define MARGIN_VARIATION_TEST 0
 #define MAX_LATENCY_COUNT_WIDTH 5
 #define MEM_ADDR_WIDTH 13
 #define MRS_MIRROR_PING_PONG_ATSO 0
 #define MULTIPLE_AFI_WLAT 0
+#define NON_DES_CAL 0
 #define NUM_SHADOW_REGS 1
 #define QDRII 0
 #define QUARTER_RATE 0
 #define RDIMM 0
 #define READ_AFTER_WRITE_CALIBRATION 1
 #define READ_VALID_FIFO_SIZE 16
-#define REG_FILE_INIT_SEQ_SIGNATURE 0x5555048c
+#define REG_FILE_INIT_SEQ_SIGNATURE 0x555504b5
 #define RLDRAM3 0
 #define RLDRAMII 0
 #define RLDRAMX 0
@@ -136,10 +140,12 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 #define RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS 1
 #define RW_MGR_MEM_VIRTUAL_GROUPS_PER_WRITE_DQS 1
 #define RW_MGR_MR0_BL 1
-#define RW_MGR_MR0_CAS_LATENCY 7
+#define RW_MGR_MR0_CAS_LATENCY 3
 #define RW_MGR_TRUE_MEM_DATA_MASK_WIDTH 4
 #define RW_MGR_WRITE_TO_DEBUG_READ 1.0
+#define SET_FIX_READ_LATENCY_ENABLE 0
 #define SKEW_CALIBRATION 0
+#define SKIP_PTAP_0_DQS_EN_CAL 1
 #define STATIC_FULL_CALIBRATION 1
 #define STATIC_SIM_FILESET 0
 #define STATIC_SKIP_MEM_INIT 0
@@ -152,7 +158,6 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 #define TRESET_CNTR1_VAL 99
 #define TRESET_CNTR2_VAL 10
 #define TRESET_CNTR0_VAL 99
-#define TW0_CAPTURE_CLOCKS 0
 #define USE_DQS_TRACKING 1
 #define USE_SHADOW_REGS 0
 #define USE_USER_RDIMM_VALUE 0
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

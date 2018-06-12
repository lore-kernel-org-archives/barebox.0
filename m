Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoL7-0008QG-9k
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:48:23 +0000
Received: by mail-pf0-x244.google.com with SMTP id b74-v6so12572541pfl.5
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:47:48 -0700
Message-Id: <20180612184800.4940-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180612184800.4940-1-andrew.smirnov@gmail.com>
References: <20180612184800.4940-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/14] VFxxx: Add common header for DDR IOMUX DCD configuration
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

A number of VFxxx boards copy DDR layout/design of vf610-twr board and
they all share IOMUX settings. Move those settings to a common file
to avoid code duplication.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../flash-header-vf610-twr.imxcfg             | 52 +---------------
 .../flash-header-zii-vf610-dev.imxcfg         | 52 +---------------
 .../vf610-iomux-ddr-default.imxcfg            | 60 +++++++++++++++++++
 .../mach-imx/include/mach/vf610-iomux-regs.h  | 55 +++++++++++++++++
 4 files changed, 119 insertions(+), 100 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg
 create mode 100644 arch/arm/mach-imx/include/mach/vf610-iomux-regs.h

diff --git a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
index ae7447b4f..3cf005f1f 100644
--- a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
+++ b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
@@ -2,8 +2,7 @@ soc vf610
 loadaddr 0x80000000
 dcdofs 0x400
 
-#define VF610_DDR_PAD_CTRL	0x00000180 /* 25 Ohm drive strength */
-#define VF610_DDR_PAD_CTRL_1	0x00010180 /* 25 Ohm drive strength + differential input */
+#include <mach/vf610-iomux-regs.h>
 
 #define DDRMC_PHY_DQ_TIMING	0x00002613
 #define DDRMC_PHY_DQS_TIMING	0x00002615
@@ -61,54 +60,7 @@ check 32 until_any_bit_set 0x40050030 0x80000000
 clear_bits 32 0x4006b008 0x00000040
 set_bits   32 0x4006b008 0x00002000
 
-wm 32 0x40048220 VF610_DDR_PAD_CTRL
-wm 32 0x40048224 VF610_DDR_PAD_CTRL
-wm 32 0x40048228 VF610_DDR_PAD_CTRL
-wm 32 0x4004822c VF610_DDR_PAD_CTRL
-wm 32 0x40048230 VF610_DDR_PAD_CTRL
-wm 32 0x40048234 VF610_DDR_PAD_CTRL
-wm 32 0x40048238 VF610_DDR_PAD_CTRL
-wm 32 0x4004823c VF610_DDR_PAD_CTRL
-wm 32 0x40048240 VF610_DDR_PAD_CTRL
-wm 32 0x40048244 VF610_DDR_PAD_CTRL
-wm 32 0x40048248 VF610_DDR_PAD_CTRL
-wm 32 0x4004824c VF610_DDR_PAD_CTRL
-wm 32 0x40048250 VF610_DDR_PAD_CTRL
-wm 32 0x40048254 VF610_DDR_PAD_CTRL
-wm 32 0x40048258 VF610_DDR_PAD_CTRL
-wm 32 0x4004825c VF610_DDR_PAD_CTRL
-wm 32 0x40048260 VF610_DDR_PAD_CTRL
-wm 32 0x40048264 VF610_DDR_PAD_CTRL
-wm 32 0x40048268 VF610_DDR_PAD_CTRL
-wm 32 0x4004826c VF610_DDR_PAD_CTRL
-wm 32 0x40048270 VF610_DDR_PAD_CTRL
-wm 32 0x40048274 VF610_DDR_PAD_CTRL
-wm 32 0x40048278 VF610_DDR_PAD_CTRL
-wm 32 0x4004827c VF610_DDR_PAD_CTRL_1
-wm 32 0x40048280 VF610_DDR_PAD_CTRL_1
-wm 32 0x40048284 VF610_DDR_PAD_CTRL_1
-wm 32 0x40048288 VF610_DDR_PAD_CTRL_1
-wm 32 0x4004828c VF610_DDR_PAD_CTRL_1
-wm 32 0x40048290 VF610_DDR_PAD_CTRL_1
-wm 32 0x40048294 VF610_DDR_PAD_CTRL_1
-wm 32 0x40048298 VF610_DDR_PAD_CTRL_1
-wm 32 0x4004829c VF610_DDR_PAD_CTRL_1
-wm 32 0x400482a0 VF610_DDR_PAD_CTRL_1
-wm 32 0x400482a4 VF610_DDR_PAD_CTRL_1
-wm 32 0x400482a8 VF610_DDR_PAD_CTRL_1
-wm 32 0x400482ac VF610_DDR_PAD_CTRL_1
-wm 32 0x400482b0 VF610_DDR_PAD_CTRL_1
-wm 32 0x400482b4 VF610_DDR_PAD_CTRL_1
-wm 32 0x400482b8 VF610_DDR_PAD_CTRL_1
-wm 32 0x400482bc VF610_DDR_PAD_CTRL_1
-wm 32 0x400482c0 VF610_DDR_PAD_CTRL_1
-wm 32 0x400482c4 VF610_DDR_PAD_CTRL_1
-wm 32 0x400482c8 VF610_DDR_PAD_CTRL_1
-wm 32 0x400482cc VF610_DDR_PAD_CTRL
-wm 32 0x400482d0 VF610_DDR_PAD_CTRL
-wm 32 0x400482d4 VF610_DDR_PAD_CTRL
-wm 32 0x400482d8 VF610_DDR_PAD_CTRL
-wm 32 0x4004821c VF610_DDR_PAD_CTRL
+#include <mach/flash-header/vf610-iomux-ddr-default.imxcfg>
 
 wm 32 0x400ae000 0x00000600
 wm 32 0x400ae008 0x00000020
diff --git a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
index a641ff82e..194a17b3b 100644
--- a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+++ b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
@@ -2,8 +2,7 @@ soc vf610
 loadaddr 0x80000000
 dcdofs 0x400
 
-#define VF610_DDR_PAD_CTRL	0x00000180 /* 25 Ohm drive strength */
-#define VF610_DDR_PAD_CTRL_1	0x00010180 /* 25 Ohm drive strength + differential input */
+#include <mach/vf610-iomux-regs.h>
 
 #define DDRMC_PHY_DQ_TIMING	0x00002613
 #define DDRMC_PHY_DQS_TIMING	0x00002615
@@ -42,54 +41,7 @@ check 32 until_any_bit_set 0x40050030 0x80000000
 clear_bits 32 0x4006b008 0x00000040
 set_bits   32 0x4006b008 0x00002000
 
-wm 32 0x40048220 0x00000180
-wm 32 0x40048224 0x00000180
-wm 32 0x40048228 0x00000180
-wm 32 0x4004822c 0x00000180
-wm 32 0x40048230 0x00000180
-wm 32 0x40048234 0x00000180
-wm 32 0x40048238 0x00000180
-wm 32 0x4004823c 0x00000180
-wm 32 0x40048240 0x00000180
-wm 32 0x40048244 0x00000180
-wm 32 0x40048248 0x00000180
-wm 32 0x4004824c 0x00000180
-wm 32 0x40048250 0x00000180
-wm 32 0x40048254 0x00000180
-wm 32 0x40048258 0x00000180
-wm 32 0x4004825c 0x00000180
-wm 32 0x40048260 0x00000180
-wm 32 0x40048264 0x00000180
-wm 32 0x40048268 0x00000180
-wm 32 0x4004826c 0x00000180
-wm 32 0x40048270 0x00000180
-wm 32 0x40048274 0x00000180
-wm 32 0x40048278 0x00000180
-wm 32 0x4004827c 0x00010180
-wm 32 0x40048280 0x00010180
-wm 32 0x40048284 0x00010180
-wm 32 0x40048288 0x00010180
-wm 32 0x4004828c 0x00010180
-wm 32 0x40048290 0x00010180
-wm 32 0x40048294 0x00010180
-wm 32 0x40048298 0x00010180
-wm 32 0x4004829c 0x00010180
-wm 32 0x400482a0 0x00010180
-wm 32 0x400482a4 0x00010180
-wm 32 0x400482a8 0x00010180
-wm 32 0x400482ac 0x00010180
-wm 32 0x400482b0 0x00010180
-wm 32 0x400482b4 0x00010180
-wm 32 0x400482b8 0x00010180
-wm 32 0x400482bc 0x00010180
-wm 32 0x400482c0 0x00010180
-wm 32 0x400482c4 0x00010180
-wm 32 0x400482c8 0x00010180
-wm 32 0x400482cc 0x00000180
-wm 32 0x400482d0 0x00000180
-wm 32 0x400482d4 0x00000180
-wm 32 0x400482d8 0x00000180
-wm 32 0x4004821c 0x00000180
+#include <mach/flash-header/vf610-iomux-ddr-default.imxcfg>
 
 wm 32 0x400ae000 0x00000600
 wm 32 0x400ae008 0x00000005
diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg
new file mode 100644
index 000000000..e2ad818c6
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg
@@ -0,0 +1,60 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * VFxxx shared DDR IOMUX DCD code. Intended use is to share code
+ * between all board that copy VF610 Tower Board DDR reference
+ * layout/design
+ *
+ * Copyright (C) 2018 Zodiac Inflight Innovations
+ */
+
+#define VF610_DDR_PAD_CTRL	0x00000180 /* 40 Ohm drive strength */
+#define VF610_DDR_PAD_CTRL_1	0x00010180 /* ditto + differential input */
+
+wm 32 VF610_PAD_DDR_A15__DDR_A_15	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A14__DDR_A_14	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A13__DDR_A_13	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A12__DDR_A_12	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A11__DDR_A_11	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A10__DDR_A_10	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A9__DDR_A_9		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A8__DDR_A_8		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A7__DDR_A_7		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A6__DDR_A_6		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A5__DDR_A_5		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A4__DDR_A_4		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A3__DDR_A_3		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A2__DDR_A_2		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A1__DDR_A_1		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_A0__DDR_A_0		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_BA2__DDR_BA_2	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_BA1__DDR_BA_1	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_BA0__DDR_BA_0	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_CAS__DDR_CAS_B	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_CKE__DDR_CKE_0	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_CLK__DDR_CLK_0	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_CS__DDR_CS_B_0	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D15__DDR_D_15	VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D14__DDR_D_14	VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D13__DDR_D_13	VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D12__DDR_D_12	VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D11__DDR_D_11	VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D10__DDR_D_10	VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D9__DDR_D_9		VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D8__DDR_D_8		VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D7__DDR_D_7		VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D6__DDR_D_6		VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D5__DDR_D_5		VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D4__DDR_D_4		VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D3__DDR_D_3		VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D2__DDR_D_2		VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D1__DDR_D_1		VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D0__DDR_D_0		VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_DQM1__DDR_DQM_1	VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_DQM0__DDR_DQM_0	VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_DQS1__DDR_DQS_1	VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_DQS0__DDR_DQS_0	VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_RAS__DDR_RAS_B	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_WE__DDR_WE_B	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_ODT1__DDR_ODT_0	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_ODT0__DDR_ODT_1	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_RESETB		VF610_DDR_PAD_CTRL
diff --git a/arch/arm/mach-imx/include/mach/vf610-iomux-regs.h b/arch/arm/mach-imx/include/mach/vf610-iomux-regs.h
new file mode 100644
index 000000000..38b3bc7da
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/vf610-iomux-regs.h
@@ -0,0 +1,55 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * VFxxx IOMUX register addresses definitions for use in DCD
+ *
+ * Copyright (C) 2018 Zodiac Inflight Innovations
+ */
+
+#define VF610_PAD_DDR_RESETB		0x4004821c
+#define VF610_PAD_DDR_A15__DDR_A_15	0x40048220
+#define VF610_PAD_DDR_A14__DDR_A_14	0x40048224
+#define VF610_PAD_DDR_A13__DDR_A_13	0x40048228
+#define VF610_PAD_DDR_A12__DDR_A_12	0x4004822c
+#define VF610_PAD_DDR_A11__DDR_A_11	0x40048230
+#define VF610_PAD_DDR_A10__DDR_A_10	0x40048234
+#define VF610_PAD_DDR_A9__DDR_A_9	0x40048238
+#define VF610_PAD_DDR_A8__DDR_A_8	0x4004823c
+#define VF610_PAD_DDR_A7__DDR_A_7	0x40048240
+#define VF610_PAD_DDR_A6__DDR_A_6	0x40048244
+#define VF610_PAD_DDR_A5__DDR_A_5	0x40048248
+#define VF610_PAD_DDR_A4__DDR_A_4	0x4004824c
+#define VF610_PAD_DDR_A3__DDR_A_3	0x40048250
+#define VF610_PAD_DDR_A2__DDR_A_2	0x40048254
+#define VF610_PAD_DDR_A1__DDR_A_1	0x40048258
+#define VF610_PAD_DDR_A0__DDR_A_0	0x4004825c
+#define VF610_PAD_DDR_BA2__DDR_BA_2	0x40048260
+#define VF610_PAD_DDR_BA1__DDR_BA_1	0x40048264
+#define VF610_PAD_DDR_BA0__DDR_BA_0	0x40048268
+#define VF610_PAD_DDR_CAS__DDR_CAS_B	0x4004826c
+#define VF610_PAD_DDR_CKE__DDR_CKE_0	0x40048270
+#define VF610_PAD_DDR_CLK__DDR_CLK_0	0x40048274
+#define VF610_PAD_DDR_CS__DDR_CS_B_0	0x40048278
+#define VF610_PAD_DDR_D15__DDR_D_15	0x4004827c
+#define VF610_PAD_DDR_D14__DDR_D_14	0x40048280
+#define VF610_PAD_DDR_D13__DDR_D_13	0x40048284
+#define VF610_PAD_DDR_D12__DDR_D_12	0x40048288
+#define VF610_PAD_DDR_D11__DDR_D_11	0x4004828c
+#define VF610_PAD_DDR_D10__DDR_D_10	0x40048290
+#define VF610_PAD_DDR_D9__DDR_D_9	0x40048294
+#define VF610_PAD_DDR_D8__DDR_D_8	0x40048298
+#define VF610_PAD_DDR_D7__DDR_D_7	0x4004829c
+#define VF610_PAD_DDR_D6__DDR_D_6	0x400482a0
+#define VF610_PAD_DDR_D5__DDR_D_5	0x400482a4
+#define VF610_PAD_DDR_D4__DDR_D_4	0x400482a8
+#define VF610_PAD_DDR_D3__DDR_D_3	0x400482ac
+#define VF610_PAD_DDR_D2__DDR_D_2	0x400482b0
+#define VF610_PAD_DDR_D1__DDR_D_1	0x400482b4
+#define VF610_PAD_DDR_D0__DDR_D_0	0x400482b8
+#define VF610_PAD_DDR_DQM1__DDR_DQM_1	0x400482bc
+#define VF610_PAD_DDR_DQM0__DDR_DQM_0	0x400482c0
+#define VF610_PAD_DDR_DQS1__DDR_DQS_1	0x400482c4
+#define VF610_PAD_DDR_DQS0__DDR_DQS_0	0x400482c8
+#define VF610_PAD_DDR_RAS__DDR_RAS_B	0x400482cc
+#define VF610_PAD_DDR_WE__DDR_WE_B	0x400482d0
+#define VF610_PAD_DDR_ODT1__DDR_ODT_0	0x400482d4
+#define VF610_PAD_DDR_ODT0__DDR_ODT_1	0x400482d8
\ No newline at end of file
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

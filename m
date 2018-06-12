Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoL9-0008QI-AJ
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:48:34 +0000
Received: by mail-pg0-x242.google.com with SMTP id m5-v6so1853pgd.3
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:47:49 -0700
Message-Id: <20180612184800.4940-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/14] VFxxx: Add common DDR PHY DCD header
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

A number of VFxxx boards copy DDR layout/design of vf610-twr board and
they all share DDR PHY settings. Move those settings to a common file
to avoid code duplication.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../flash-header-vf610-twr.imxcfg             | 27 +-----------
 .../flash-header-zii-vf610-dev.imxcfg         | 28 ++-----------
 .../flash-header/vf610-ddr-phy-default.imxcfg | 41 +++++++++++++++++++
 .../mach-imx/include/mach/vf610-ddrmc-regs.h  | 24 +++++++++++
 4 files changed, 70 insertions(+), 50 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-phy-default.imxcfg
 create mode 100644 arch/arm/mach-imx/include/mach/vf610-ddrmc-regs.h

diff --git a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
index 3cf005f1f..12074b92e 100644
--- a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
+++ b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
@@ -3,14 +3,7 @@ loadaddr 0x80000000
 dcdofs 0x400
 
 #include <mach/vf610-iomux-regs.h>
-
-#define DDRMC_PHY_DQ_TIMING	0x00002613
-#define DDRMC_PHY_DQS_TIMING	0x00002615
-#define DDRMC_PHY_CTRL		0x00210000
-#define DDRMC_PHY_MASTER_CTRL	0x0001012a
-#define DDRMC_PHY_SLAVE_CTRL	0x00002000
-#define DDRMC_PHY_OFF		0x00000000
-#define DDRMC_PHY_PROC_PAD_ODT	0x00010101
+#include <mach/vf610-ddrmc-regs.h>
 
 /*
  * Ungate all IP block clocks
@@ -141,23 +134,7 @@ wm 32 0x400ae26c 0x00000012
 wm 32 0x400ae278 0x00000006
 wm 32 0x400ae284 0x00010202
 
-wm 32 0x400ae400 DDRMC_PHY_DQ_TIMING
-wm 32 0x400ae440 DDRMC_PHY_DQ_TIMING
-wm 32 0x400ae480 DDRMC_PHY_DQ_TIMING
-wm 32 0x400ae404 DDRMC_PHY_DQS_TIMING
-wm 32 0x400ae444 DDRMC_PHY_DQS_TIMING
-wm 32 0x400ae408 DDRMC_PHY_CTRL
-wm 32 0x400ae448 DDRMC_PHY_CTRL
-wm 32 0x400ae488 DDRMC_PHY_CTRL
-wm 32 0x400ae40c DDRMC_PHY_MASTER_CTRL
-wm 32 0x400ae44c DDRMC_PHY_MASTER_CTRL
-wm 32 0x400ae48c DDRMC_PHY_MASTER_CTRL
-wm 32 0x400ae410 DDRMC_PHY_SLAVE_CTRL
-wm 32 0x400ae450 DDRMC_PHY_SLAVE_CTRL
-wm 32 0x400ae490 DDRMC_PHY_SLAVE_CTRL
-wm 32 0x400ae4c4 DDRMC_PHY_OFF
-wm 32 0x400ae4c8 0x00001100
-wm 32 0x400ae4d0 DDRMC_PHY_PROC_PAD_ODT
+#include <mach/flash-header/vf610-ddr-phy-default.imxcfg>
 
 wm 32 0x400ae000 0x00000601
 
diff --git a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
index 194a17b3b..43fb10e28 100644
--- a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+++ b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
@@ -3,14 +3,7 @@ loadaddr 0x80000000
 dcdofs 0x400
 
 #include <mach/vf610-iomux-regs.h>
-
-#define DDRMC_PHY_DQ_TIMING	0x00002613
-#define DDRMC_PHY_DQS_TIMING	0x00002615
-#define DDRMC_PHY_CTRL		0x00210000
-#define DDRMC_PHY_MASTER_CTRL	0x0001012a
-#define DDRMC_PHY_SLAVE_CTRL	0x00002000
-#define DDRMC_PHY_OFF		0x00000000
-#define DDRMC_PHY_PROC_PAD_ODT	0x00010101
+#include <mach/vf610-ddrmc-regs.h>
 
 /*
  * Ungate all IP block clocks
@@ -125,23 +118,8 @@ wm 32 0x400ae26c 0x00000012
 wm 32 0x400ae278 0x00000006
 wm 32 0x400ae284 0x00010202
 
-wm 32 0x400ae400 0x00002613
-wm 32 0x400ae440 0x00002613
-wm 32 0x400ae480 0x00002613
-wm 32 0x400ae404 0x00002615
-wm 32 0x400ae444 0x00002615
-wm 32 0x400ae408 0x00210000
-wm 32 0x400ae448 0x00210000
-wm 32 0x400ae488 0x00210000
-wm 32 0x400ae40c 0x0001012a
-wm 32 0x400ae44c 0x0001012a
-wm 32 0x400ae48c 0x0001012a
-wm 32 0x400ae410 0x00002000
-wm 32 0x400ae450 0x00002000
-wm 32 0x400ae490 0x00002000
-wm 32 0x400ae4c4 0x00000000
-wm 32 0x400ae4c8 0x00001100
-wm 32 0x400ae4d0 0x00010101
+#include <mach/flash-header/vf610-ddr-phy-default.imxcfg>
+
 wm 32 0x400ae000 0x00000601
 
 check 32 until_any_bit_set 0x400ae140 0x100
diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-phy-default.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-phy-default.imxcfg
new file mode 100644
index 000000000..e9d5ab0ca
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-phy-default.imxcfg
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * VFxxx shared DDR PHY DCD code. Intended use is to share code
+ * between all board that copy VF610 Tower Board DDR reference
+ * layout/design
+ *
+ * Copyright (C) 2018 Zodiac Inflight Innovations
+ */
+
+#define DDRMC_PHY_DQ_TIMING	0x00002613
+#define DDRMC_PHY_DQS_TIMING	0x00002615
+#define DDRMC_PHY_CTRL		0x00210000
+#define DDRMC_PHY_MASTER_CTRL	0x0001012a
+#define DDRMC_PHY_SLAVE_CTRL	0x00002000
+#define DDRMC_PHY_OFF		0x00000000
+#define DDRMC_PHY_PROC_PAD_ODT	0x00010101
+#define DDRMC_PHY50_DDR3_MODE_EN_SW_HALF_CYCLE 0x00001100
+
+
+wm 32 DDRMC_PHY00 DDRMC_PHY_DQ_TIMING
+wm 32 DDRMC_PHY16 DDRMC_PHY_DQ_TIMING
+wm 32 DDRMC_PHY32 DDRMC_PHY_DQ_TIMING
+
+wm 32 DDRMC_PHY01 DDRMC_PHY_DQS_TIMING
+wm 32 DDRMC_PHY17 DDRMC_PHY_DQS_TIMING
+
+wm 32 DDRMC_PHY02 DDRMC_PHY_CTRL
+wm 32 DDRMC_PHY18 DDRMC_PHY_CTRL
+wm 32 DDRMC_PHY34 DDRMC_PHY_CTRL
+
+wm 32 DDRMC_PHY03 DDRMC_PHY_MASTER_CTRL
+wm 32 DDRMC_PHY19 DDRMC_PHY_MASTER_CTRL
+wm 32 DDRMC_PHY35 DDRMC_PHY_MASTER_CTRL
+
+wm 32 DDRMC_PHY04 DDRMC_PHY_SLAVE_CTRL
+wm 32 DDRMC_PHY20 DDRMC_PHY_SLAVE_CTRL
+wm 32 DDRMC_PHY36 DDRMC_PHY_SLAVE_CTRL
+
+wm 32 DDRMC_PHY49 DDRMC_PHY_OFF
+wm 32 DDRMC_PHY50 DDRMC_PHY50_DDR3_MODE_EN_SW_HALF_CYCLE
+wm 32 DDRMC_PHY52 DDRMC_PHY_PROC_PAD_ODT
diff --git a/arch/arm/mach-imx/include/mach/vf610-ddrmc-regs.h b/arch/arm/mach-imx/include/mach/vf610-ddrmc-regs.h
new file mode 100644
index 000000000..ac2e4a4f4
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/vf610-ddrmc-regs.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * VFxxx DDRMC register addresses definitions for use in DCD
+ *
+ * Copyright (C) 2018 Zodiac Inflight Innovations
+ */
+
+#define DDRMC_PHY00 0x400ae400
+#define DDRMC_PHY01 0x400ae404
+#define DDRMC_PHY02 0x400ae408
+#define DDRMC_PHY03 0x400ae40c
+#define DDRMC_PHY04 0x400ae410
+#define DDRMC_PHY16 0x400ae440
+#define DDRMC_PHY17 0x400ae444
+#define DDRMC_PHY18 0x400ae448
+#define DDRMC_PHY19 0x400ae44c
+#define DDRMC_PHY20 0x400ae450
+#define DDRMC_PHY32 0x400ae480
+#define DDRMC_PHY34 0x400ae488
+#define DDRMC_PHY35 0x400ae48c
+#define DDRMC_PHY36 0x400ae490
+#define DDRMC_PHY49 0x400ae4c4
+#define DDRMC_PHY50 0x400ae4c8
+#define DDRMC_PHY52 0x400ae4d0
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

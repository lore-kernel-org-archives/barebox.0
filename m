Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P7h-0004xO-1K
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:34:53 +0000
Received: by mail-pf1-x442.google.com with SMTP id j23-v6so7878880pfi.4
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:34:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:34:06 -0700
Message-Id: <20181008063409.17566-4-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063409.17566-1-andrew.smirnov@gmail.com>
References: <20181008063409.17566-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 3/6] i.MX7D: DCD: Create shared DDR configuration header
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Create a shared DDR configuration header based on configuration used
by i.MX7D SabreSD board.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../flash-header-mx7-sabresd.imxcfg           | 79 +------------------
 .../flash-header/imx7d-ddr-sabresd.imxcfg     | 78 ++++++++++++++++++
 2 files changed, 79 insertions(+), 78 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-sabresd.imxcfg

diff --git a/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg b/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
index 83ed2dc06..f4920bc13 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
+++ b/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
@@ -1,82 +1,5 @@
-/*
- * Copyright (C) 2016 NXP Semiconductors
- *
- * SPDX-License-Identifier:	GPL-2.0
- *
- * Refer docs/README.imxmage for more details about how-to configure
- * and create imximage boot image
- *
- * The syntax is taken as close as possible with the kwbimage
- *
- * Taken from upstream U-Boot git://git.denx.de/u-boot.git, commit
- * 1a8150d4b16fbafa6f1d207ddb85eda7dc399e2d
- */
-
 soc imx7
 loadaddr 0x80000000
 dcdofs 0x400
 
-#include <mach/imx7-ddr-regs.h>
-
-wm 32 0x30340004 0x4F400005
-
-wm 32 0x30391000 0x00000002
-
-wm 32 MX7_DDRC_MSTR 0x01040001
-wm 32 MX7_DDRC_DFIUPD0 0x80400003
-wm 32 MX7_DDRC_DFIUPD1 0x00100020
-wm 32 MX7_DDRC_DFIUPD2 0x80100004
-wm 32 MX7_DDRC_RFSHTMG 0x00400046
-wm 32 MX7_DDRC_MP_PCTRL_0 0x00000001
-wm 32 MX7_DDRC_INIT0 0x00020083
-wm 32 MX7_DDRC_INIT1 0x00690000
-wm 32 MX7_DDRC_INIT3 0x09300004
-wm 32 MX7_DDRC_INIT4 0x04080000
-wm 32 MX7_DDRC_INIT5 0x00100004
-wm 32 MX7_DDRC_RANKCTL 0x0000033f
-wm 32 MX7_DDRC_DRAMTMG0 0x09081109
-wm 32 MX7_DDRC_DRAMTMG1 0x0007020d
-wm 32 MX7_DDRC_DRAMTMG2 0x03040407
-wm 32 MX7_DDRC_DRAMTMG3 0x00002006
-wm 32 MX7_DDRC_DRAMTMG4 0x04020205
-wm 32 MX7_DDRC_DRAMTMG5 0x03030202
-wm 32 MX7_DDRC_DRAMTMG8 0x00000803
-wm 32 MX7_DDRC_ZQCTL0 0x00800020
-wm 32 MX7_DDRC_ZQCTL1 0x02000100
-wm 32 MX7_DDRC_DFITMG0 0x02098204
-wm 32 MX7_DDRC_DFITMG1 0x00030303
-wm 32 MX7_DDRC_ADDRMAP0 0x00000016
-wm 32 MX7_DDRC_ADDRMAP1 0x00171717
-wm 32 MX7_DDRC_ADDRMAP5 0x04040404
-wm 32 MX7_DDRC_ADDRMAP6 0x0f040404
-wm 32 MX7_DDRC_ODTCFG 0x06000604
-wm 32 MX7_DDRC_ODTMAP 0x00000001
-
-wm 32 0x30391000 0x00000000
-
-wm 32 MX7_DDR_PHY_PHY_CON0 0x17420f40
-wm 32 MX7_DDR_PHY_PHY_CON1 0x10210100
-wm 32 MX7_DDR_PHY_PHY_CON4 0x00060807
-wm 32 MX7_DDR_PHY_MDLL_CON0 0x1010007e
-wm 32 MX7_DDR_PHY_DRVDS_CON0 0x00000d6e
-wm 32 MX7_DDR_PHY_OFFSET_RD_CON0 0x08080808
-wm 32 MX7_DDR_PHY_OFFSET_WR_CON0 0x08080808
-wm 32 MX7_DDR_PHY_CMD_SDLL_CON0 0x01000010
-wm 32 MX7_DDR_PHY_CMD_SDLL_CON0 0x00000010
-
-wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e407304
-wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447304
-wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447306
-
-check 32 until_any_bit_set MX7_DDR_PHY_ZQ_CON1 0x1
-
-wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447304
-wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e407304
-
-wm 32 0x30384130 0x00000000
-wm 32 0x30340020 0x00000178
-wm 32 0x30384130 0x00000002
-
-wm 32 MX7_DDR_PHY_LP_CON0 0x0000000f
-
-check 32 until_any_bit_set MX7_DDRC_STAT 0x1
+#include <mach/flash-header/imx7d-ddr-sabresd.imxcfg>
\ No newline at end of file
diff --git a/arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-sabresd.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-sabresd.imxcfg
new file mode 100644
index 000000000..e98f055ee
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-sabresd.imxcfg
@@ -0,0 +1,78 @@
+/*
+ * Copyright (C) 2016 NXP Semiconductors
+ *
+ * SPDX-License-Identifier:	GPL-2.0
+ *
+ * Refer docs/README.imxmage for more details about how-to configure
+ * and create imximage boot image
+ *
+ * The syntax is taken as close as possible with the kwbimage
+ *
+ * Taken from upstream U-Boot git://git.denx.de/u-boot.git, commit
+ * 1a8150d4b16fbafa6f1d207ddb85eda7dc399e2d
+ */
+
+#include <mach/imx7-ddr-regs.h>
+
+wm 32 0x30340004 0x4F400005
+
+wm 32 0x30391000 0x00000002
+
+wm 32 MX7_DDRC_MSTR 0x01040001
+wm 32 MX7_DDRC_DFIUPD0 0x80400003
+wm 32 MX7_DDRC_DFIUPD1 0x00100020
+wm 32 MX7_DDRC_DFIUPD2 0x80100004
+wm 32 MX7_DDRC_RFSHTMG 0x00400046
+wm 32 MX7_DDRC_MP_PCTRL_0 0x00000001
+wm 32 MX7_DDRC_INIT0 0x00020083
+wm 32 MX7_DDRC_INIT1 0x00690000
+wm 32 MX7_DDRC_INIT3 0x09300004
+wm 32 MX7_DDRC_INIT4 0x04080000
+wm 32 MX7_DDRC_INIT5 0x00100004
+wm 32 MX7_DDRC_RANKCTL 0x0000033f
+wm 32 MX7_DDRC_DRAMTMG0 0x09081109
+wm 32 MX7_DDRC_DRAMTMG1 0x0007020d
+wm 32 MX7_DDRC_DRAMTMG2 0x03040407
+wm 32 MX7_DDRC_DRAMTMG3 0x00002006
+wm 32 MX7_DDRC_DRAMTMG4 0x04020205
+wm 32 MX7_DDRC_DRAMTMG5 0x03030202
+wm 32 MX7_DDRC_DRAMTMG8 0x00000803
+wm 32 MX7_DDRC_ZQCTL0 0x00800020
+wm 32 MX7_DDRC_ZQCTL1 0x02000100
+wm 32 MX7_DDRC_DFITMG0 0x02098204
+wm 32 MX7_DDRC_DFITMG1 0x00030303
+wm 32 MX7_DDRC_ADDRMAP0 0x00000016
+wm 32 MX7_DDRC_ADDRMAP1 0x00171717
+wm 32 MX7_DDRC_ADDRMAP5 0x04040404
+wm 32 MX7_DDRC_ADDRMAP6 0x0f040404
+wm 32 MX7_DDRC_ODTCFG 0x06000604
+wm 32 MX7_DDRC_ODTMAP 0x00000001
+
+wm 32 0x30391000 0x00000000
+
+wm 32 MX7_DDR_PHY_PHY_CON0 0x17420f40
+wm 32 MX7_DDR_PHY_PHY_CON1 0x10210100
+wm 32 MX7_DDR_PHY_PHY_CON4 0x00060807
+wm 32 MX7_DDR_PHY_MDLL_CON0 0x1010007e
+wm 32 MX7_DDR_PHY_DRVDS_CON0 0x00000d6e
+wm 32 MX7_DDR_PHY_OFFSET_RD_CON0 0x08080808
+wm 32 MX7_DDR_PHY_OFFSET_WR_CON0 0x08080808
+wm 32 MX7_DDR_PHY_CMD_SDLL_CON0 0x01000010
+wm 32 MX7_DDR_PHY_CMD_SDLL_CON0 0x00000010
+
+wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e407304
+wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447304
+wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447306
+
+check 32 until_any_bit_set MX7_DDR_PHY_ZQ_CON1 0x1
+
+wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447304
+wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e407304
+
+wm 32 0x30384130 0x00000000
+wm 32 0x30340020 0x00000178
+wm 32 0x30384130 0x00000002
+
+wm 32 MX7_DDR_PHY_LP_CON0 0x0000000f
+
+check 32 until_any_bit_set MX7_DDRC_STAT 0x1
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

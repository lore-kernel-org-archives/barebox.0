Delivery-date: Fri, 28 Nov 2025 12:00:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOwDb-005lC9-0O
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 12:00:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOwDZ-000260-5o
	for lore@pengutronix.de; Fri, 28 Nov 2025 12:00:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CMmKHR1FMBnJD+kymCq+vNxpqqV0VNOM46WdhT15FiE=; b=knJNxELDtP87lf/rYs8EuR11bd
	YrNOwFxM+XFfVFE1M5hBpv5RzOrMRjnU3gP4Jc2kDy1OEwFSp5zJpDVYOkeTfeZnX7BmMonwsByV0
	Atkw/KZ4s04opz8Kj8sUV8PWbVbkmiOXaN/PKJ5CZK/wGHGh4XpgKjhBu4p9ccJcdfqczZNqs0T8g
	QSXQ1ldLjAB2/vLsmiIxae9wYZK6YzFB8jCC6nbbWRKIwr2LQMNeHS6m1zh6LED9z6YSaHoYRQ95o
	f9x+pbOXkTO7BVuIfT+ljlsqOtfuY/C0OsrNoJ3bSD1igRktSfta7ryWhd5+8+kAcEYXeOylsurti
	+a11QU0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOwD3-00000000KWX-10DD;
	Fri, 28 Nov 2025 11:00:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOwCw-00000000KSO-47GT
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:00:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-0001iU-Iv
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 12:00:09 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-002wNq-1D
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:00:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-0000000EOeF-16wa
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:00:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 11:58:42 +0100
Message-ID: <20251128110005.3336591-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128110005.3336591-1-a.fatoum@pengutronix.de>
References: <20251128110005.3336591-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_030011_174899_1E067C00 
X-CRM114-Status: GOOD (  11.55  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] ARM: drop <config.h> usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

There are no board-specific config.h on ARM any longer anyway, so drop
inclusion of that header.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/boards/at91rm9200ek/{config.h => board.h} | 4 ++--
 arch/arm/boards/at91rm9200ek/lowlevel.c            | 2 +-
 arch/arm/boards/phytec-phycard-imx27/lowlevel.c    | 1 -
 arch/arm/cpu/cache-armv8.S                         | 1 -
 arch/arm/cpu/exceptions_32.S                       | 1 -
 arch/arm/cpu/exceptions_64.S                       | 1 -
 arch/arm/lib32/setjmp.S                            | 1 -
 arch/arm/lib64/setjmp.S                            | 1 -
 arch/arm/mach-mxs/lradc-init.c                     | 1 -
 arch/arm/mach-mxs/mem-init.c                       | 1 -
 arch/arm/mach-mxs/power-init.c                     | 1 -
 arch/arm/mach-omap/am33xx_mux.c                    | 1 -
 arch/arm/mach-omap/syslib.c                        | 1 -
 drivers/mci/imx-esdhc.c                            | 1 -
 drivers/mci/imx.c                                  | 1 -
 drivers/mci/omap_hsmmc.c                           | 1 -
 drivers/mci/omap_hsmmc_common.c                    | 1 -
 drivers/mtd/nand/raw/nand_fsl_ifc.c                | 1 -
 include/mach/imx/debug_ll.h                        | 1 -
 19 files changed, 3 insertions(+), 20 deletions(-)
 rename arch/arm/boards/at91rm9200ek/{config.h => board.h} (98%)

diff --git a/arch/arm/boards/at91rm9200ek/config.h b/arch/arm/boards/at91rm9200ek/board.h
similarity index 98%
rename from arch/arm/boards/at91rm9200ek/config.h
rename to arch/arm/boards/at91rm9200ek/board.h
index a3a0be18ec91..45e0c8268d6d 100644
--- a/arch/arm/boards/at91rm9200ek/config.h
+++ b/arch/arm/boards/at91rm9200ek/board.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#ifndef __CONFIG_H
-#define __CONFIG_H
+#ifndef __BOARD_H
+#define __BOARD_H
 
 #define MASTER_PLL_MUL		39
 #define MASTER_PLL_DIV		4
diff --git a/arch/arm/boards/at91rm9200ek/lowlevel.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
index f412de7d4a6d..c8c252a31f89 100644
--- a/arch/arm/boards/at91rm9200ek/lowlevel.c
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -15,7 +15,7 @@
 #include <mach/at91/at91_pmc.h>
 #include <mach/at91/hardware.h>
 
-#include "config.h"
+#include "board.h"
 
 void static inline access_sdram(void)
 {
diff --git a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
index a43406e1a20b..8e16edfb994b 100644
--- a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
@@ -9,7 +9,6 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <config.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <mach/imx/imx27-regs.h>
diff --git a/arch/arm/cpu/cache-armv8.S b/arch/arm/cpu/cache-armv8.S
index 3e21b3591389..9d9e0fb585a1 100644
--- a/arch/arm/cpu/cache-armv8.S
+++ b/arch/arm/cpu/cache-armv8.S
@@ -7,7 +7,6 @@
  * SPDX-License-Identifier:	GPL-2.0+
  */
 
-#include <config.h>
 #include <linux/linkage.h>
 #include <init.h>
 
diff --git a/arch/arm/cpu/exceptions_32.S b/arch/arm/cpu/exceptions_32.S
index 235996f7ec29..dc3d42663cbe 100644
--- a/arch/arm/cpu/exceptions_32.S
+++ b/arch/arm/cpu/exceptions_32.S
@@ -1,6 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#include <config.h>
 #include <linux/linkage.h>
 #include <asm-generic/memory_layout.h>
 
diff --git a/arch/arm/cpu/exceptions_64.S b/arch/arm/cpu/exceptions_64.S
index 22034eaef975..18c535ecd41f 100644
--- a/arch/arm/cpu/exceptions_64.S
+++ b/arch/arm/cpu/exceptions_64.S
@@ -5,7 +5,6 @@
  * SPDX-License-Identifier:	GPL-2.0+
  */
 
-#include <config.h>
 #include <asm/ptrace.h>
 #include <asm/assembler64.h>
 #include <linux/linkage.h>
diff --git a/arch/arm/lib32/setjmp.S b/arch/arm/lib32/setjmp.S
index cc6cafa4af3e..d5ecd127a426 100644
--- a/arch/arm/lib32/setjmp.S
+++ b/arch/arm/lib32/setjmp.S
@@ -3,7 +3,6 @@
  * (C) 2017 Theobroma Systems Design und Consulting GmbH
  */
 
-#include <config.h>
 #include <asm/assembler.h>
 #include <linux/linkage.h>
 
diff --git a/arch/arm/lib64/setjmp.S b/arch/arm/lib64/setjmp.S
index 80be8cb0f201..6cd00415e03a 100644
--- a/arch/arm/lib64/setjmp.S
+++ b/arch/arm/lib64/setjmp.S
@@ -1,7 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0+ */
 /* SPDX-FileCopyrightText: 2017 Theobroma Systems Design und Consulting GmbH */
 
-#include <config.h>
 #include <linux/linkage.h>
 
 .pushsection .text.setjmp, "ax"
diff --git a/arch/arm/mach-mxs/lradc-init.c b/arch/arm/mach-mxs/lradc-init.c
index 10d0be77fdff..7f48893474ad 100644
--- a/arch/arm/mach-mxs/lradc-init.c
+++ b/arch/arm/mach-mxs/lradc-init.c
@@ -8,7 +8,6 @@
  */
 
 #include <common.h>
-#include <config.h>
 #include <asm/io.h>
 #include <mach/mxs/imx-regs.h>
 #include <mach/mxs/regs-lradc.h>
diff --git a/arch/arm/mach-mxs/mem-init.c b/arch/arm/mach-mxs/mem-init.c
index 0d289266d0e0..14d9c1411a4d 100644
--- a/arch/arm/mach-mxs/mem-init.c
+++ b/arch/arm/mach-mxs/mem-init.c
@@ -10,7 +10,6 @@
  */
 
 #include <common.h>
-#include <config.h>
 #include <io.h>
 #include <mach/mxs/imx-regs.h>
 #include <linux/compiler.h>
diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index 408ff8ba9961..bed4052375b5 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -8,7 +8,6 @@
  */
 
 #include <common.h>
-#include <config.h>
 #include <io.h>
 #include <mach/mxs/imx-regs.h>
 
diff --git a/arch/arm/mach-omap/am33xx_mux.c b/arch/arm/mach-omap/am33xx_mux.c
index 3192e332c6e6..c89cc15bb699 100644
--- a/arch/arm/mach-omap/am33xx_mux.c
+++ b/arch/arm/mach-omap/am33xx_mux.c
@@ -13,7 +13,6 @@
  * GNU General Public License for more details.
  */
 #include <common.h>
-#include <config.h>
 #include <asm/io.h>
 #include <mach/omap/am33xx-mux.h>
 #include <mach/omap/am33xx-silicon.h>
diff --git a/arch/arm/mach-omap/syslib.c b/arch/arm/mach-omap/syslib.c
index f8fad243c637..cbc08efce9aa 100644
--- a/arch/arm/mach-omap/syslib.c
+++ b/arch/arm/mach-omap/syslib.c
@@ -22,7 +22,6 @@
  * GNU General Public License for more details.
  */
 
-#include <config.h>
 #include <common.h>
 #include <io.h>
 #include <mach/omap/syslib.h>
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index ae02d804430e..6dd3bef45756 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -6,7 +6,6 @@
  * Andy Fleming
  */
 
-#include <config.h>
 #include <common.h>
 #include <dma.h>
 #include <driver.h>
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 480b758ba3ec..d462cb884325 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -12,7 +12,6 @@
  * Derived from pxamci.c by Russell King
  */
 
-#include <config.h>
 #include <common.h>
 #include <command.h>
 #include <mci.h>
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 9101b4c30a2c..03f71eb453f1 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -2,7 +2,6 @@
 // SPDX-FileCopyrightText: 2008 Texas Instruments (http://www.ti.com/, Sukumar Ghorai <s-ghorai@ti.com>)
 
 /* #define DEBUG */
-#include <config.h>
 #include <common.h>
 #include <init.h>
 #include <driver.h>
diff --git a/drivers/mci/omap_hsmmc_common.c b/drivers/mci/omap_hsmmc_common.c
index 329908a6e4bd..ce146170d920 100644
--- a/drivers/mci/omap_hsmmc_common.c
+++ b/drivers/mci/omap_hsmmc_common.c
@@ -2,7 +2,6 @@
 // SPDX-FileCopyrightText: 2008 Texas Instruments (http://www.ti.com/, Sukumar Ghorai <s-ghorai@ti.com>)
 
 /* #define DEBUG */
-#include <config.h>
 #include <common.h>
 #include <init.h>
 #include <driver.h>
diff --git a/drivers/mtd/nand/raw/nand_fsl_ifc.c b/drivers/mtd/nand/raw/nand_fsl_ifc.c
index 1905e7b508d1..5eaa0533e8e1 100644
--- a/drivers/mtd/nand/raw/nand_fsl_ifc.c
+++ b/drivers/mtd/nand/raw/nand_fsl_ifc.c
@@ -7,7 +7,6 @@
  *
  */
 
-#include <config.h>
 #include <common.h>
 #include <driver.h>
 #include <init.h>
diff --git a/include/mach/imx/debug_ll.h b/include/mach/imx/debug_ll.h
index 618cbc784ea7..05e16a8f0248 100644
--- a/include/mach/imx/debug_ll.h
+++ b/include/mach/imx/debug_ll.h
@@ -4,7 +4,6 @@
 #define __MACH_IMX_DEBUG_LL_H__
 
 #include <io.h>
-#include <config.h>
 #include <common.h>
 #include <mach/imx/imx1-regs.h>
 #include <mach/imx/imx21-regs.h>
-- 
2.47.3




Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKkp9-0003yc-SG
 for barebox@lists.infradead.org; Fri, 01 Dec 2017 12:53:51 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Fri,  1 Dec 2017 13:52:49 +0100
Message-Id: <20171201125251.23520-2-linux@rempel-privat.de>
In-Reply-To: <20171201125251.23520-1-linux@rempel-privat.de>
References: <20171201125251.23520-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 2/4] MIPS: add generic QCA AR9331 board
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

this board may cover most of existing ar9331 boards

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/Makefile                                 |  1 +
 arch/mips/boards/qca-ar9331-generic/Makefile       |  1 +
 arch/mips/boards/qca-ar9331-generic/board.c        |  8 ++++
 .../include/board/board_pbl_start.h                | 46 ++++++++++++++++++++++
 arch/mips/mach-ath79/Kconfig                       |  7 ++++
 5 files changed, 63 insertions(+)
 create mode 100644 arch/mips/boards/qca-ar9331-generic/Makefile
 create mode 100644 arch/mips/boards/qca-ar9331-generic/board.c
 create mode 100644 arch/mips/boards/qca-ar9331-generic/include/board/board_pbl_start.h

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index dd5ceea20..c40ae6604 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -79,6 +79,7 @@ machine-$(CONFIG_MACH_MIPS_AR231X)	:= ar231x
 board-$(CONFIG_BOARD_NETGEAR_WG102)	:= netgear-wg102
 
 machine-$(CONFIG_MACH_MIPS_ATH79)	:= ath79
+board-$(CONFIG_BOARC_QCA_AR9331_GENERIC)	:= qca-ar9331-generic
 board-$(CONFIG_BOARD_TPLINK_MR3020)	:= tplink-mr3020
 board-$(CONFIG_BOARD_TPLINK_WDR4300)	:= tplink-wdr4300
 board-$(CONFIG_BOARD_BLACK_SWIFT)	:= black-swift
diff --git a/arch/mips/boards/qca-ar9331-generic/Makefile b/arch/mips/boards/qca-ar9331-generic/Makefile
new file mode 100644
index 000000000..dcfc2937d
--- /dev/null
+++ b/arch/mips/boards/qca-ar9331-generic/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/mips/boards/qca-ar9331-generic/board.c b/arch/mips/boards/qca-ar9331-generic/board.c
new file mode 100644
index 000000000..7ec7ef8a5
--- /dev/null
+++ b/arch/mips/boards/qca-ar9331-generic/board.c
@@ -0,0 +1,8 @@
+#include <common.h>
+#include <init.h>
+
+static int dummy_init(void)
+{
+	return 0;
+}
+postcore_initcall(dummy_init);
diff --git a/arch/mips/boards/qca-ar9331-generic/include/board/board_pbl_start.h b/arch/mips/boards/qca-ar9331-generic/include/board/board_pbl_start.h
new file mode 100644
index 000000000..87c6a39e6
--- /dev/null
+++ b/arch/mips/boards/qca-ar9331-generic/include/board/board_pbl_start.h
@@ -0,0 +1,46 @@
+/*
+ * Copyright (C) 2017 Oleksij Rempel <linux@rempel-privat.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ */
+
+#include <asm/pbl_macros.h>
+#include <mach/pbl_macros.h>
+#include <asm/pbl_nmon.h>
+
+	.macro	board_pbl_start
+	.set	push
+	.set	noreorder
+
+	mips_barebox_10h
+
+	pbl_blt 0xbf000000 skip_pll_ram_config t8
+
+	hornet_mips24k_cp0_setup
+
+	pbl_ar9331_wmac_enable
+
+	hornet_1_1_war
+
+	pbl_ar9331_pll
+	pbl_ar9331_ram_generic_config
+
+	/* Initialize caches... */
+	mips_cache_reset
+
+	/* ... and enable them */
+	dcache_enable
+
+skip_pll_ram_config:
+	pbl_ar9331_uart_enable
+	debug_ll_ar9331_init
+	mips_nmon
+
+	pbl_ar9331_mdio_gpio_enable
+
+	copy_to_link_location	pbl_start
+
+	.set	pop
+	.endm
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index 9fec00c98..0015fe029 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -13,6 +13,13 @@ config SOC_QCA_AR9344
 choice
 	prompt "Board type"
 
+config BOARC_QCA_AR9331_GENERIC
+	bool "Generic QCA AR9331"
+	select SOC_QCA_AR9331
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
+	select HAS_NMON
+
 config BOARD_TPLINK_MR3020
 	bool "TP-LINK MR3020"
 	select SOC_QCA_AR9331
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

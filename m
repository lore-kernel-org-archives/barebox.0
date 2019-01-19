Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gktc7-0001Nq-My
 for barebox@lists.infradead.org; Sat, 19 Jan 2019 16:36:59 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sat, 19 Jan 2019 17:36:47 +0100
Message-Id: <20190119163647.9119-5-o.rempel@pengutronix.de>
In-Reply-To: <20190119163647.9119-1-o.rempel@pengutronix.de>
References: <20190119163647.9119-1-o.rempel@pengutronix.de>
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
Subject: [PATCH 5/5] MIPS: ath79: add SRAM support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

At least some ath79 SoC have build in 32K RAM. It allow us to use
lowlevel portion of barebox for OpenOCD and reduce code duplication
between this projects. The workflow should be as follow:
- Load reduced barebox to SRAM by using OpenOCD and execute it.
  This part will do all needed low level initialization - PLL, RAM.
- Load complete barebox to the main RAM (DDR or what ever technology is
  used).

It can be used for recovery and for bring-up, so no flashing is needed.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/mach-ath79/Makefile                 |  1 +
 .../mips/mach-ath79/include/mach/pbl_macros.h | 21 +++++++++++++++++++
 arch/mips/mach-ath79/lowlevel_ar9331_sram.S   | 18 ++++++++++++++++
 images/Makefile.ath79                         |  4 ++++
 4 files changed, 44 insertions(+)
 create mode 100644 arch/mips/mach-ath79/lowlevel_ar9331_sram.S

diff --git a/arch/mips/mach-ath79/Makefile b/arch/mips/mach-ath79/Makefile
index c12444ff47..396df66bf1 100644
--- a/arch/mips/mach-ath79/Makefile
+++ b/arch/mips/mach-ath79/Makefile
@@ -1,4 +1,5 @@
 lwl-y += lowlevel_ar9331_spi_trap.o
+lwl-y += lowlevel_ar9331_sram.o
 
 obj-y += reset.o
 obj-y += bbu.o
diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
index 70736b3680..c5f3d4150e 100644
--- a/arch/mips/mach-ath79/include/mach/pbl_macros.h
+++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
@@ -400,4 +400,25 @@ skip_pll_ram_config:
 	.set	pop
 	.endm
 
+	.macro	ar9331_pbl_generic_sram_start
+	.set	push
+	.set	noreorder
+
+	mips_barebox_10h
+
+	hornet_mips24k_cp0_setup
+
+	hornet_1_1_war
+
+	pbl_ar9331_pll
+	pbl_ar9331_ram_generic_config
+
+	pbl_ar9331_uart_enable
+	debug_ll_ath79_init
+
+	pbl_ar9331_mdio_gpio_enable
+
+	.set	pop
+	.endm
+
 #endif /* __ASM_MACH_ATH79_PBL_MACROS_H */
diff --git a/arch/mips/mach-ath79/lowlevel_ar9331_sram.S b/arch/mips/mach-ath79/lowlevel_ar9331_sram.S
new file mode 100644
index 0000000000..7c25d8765c
--- /dev/null
+++ b/arch/mips/mach-ath79/lowlevel_ar9331_sram.S
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2018 Oleksij Rempel <linux@rempel-privat.de>
+ */
+
+#define BOARD_PBL_START start_ar9331_sram
+
+#include <mach/debug_ll.h>
+#include <asm/asm.h>
+#include <asm/pbl_macros.h>
+#include <mach/pbl_macros.h>
+#include <asm/pbl_nmon.h>
+
+ENTRY_FUNCTION(BOARD_PBL_START)
+
+	ar9331_pbl_generic_sram_start
+
+ENTRY_FUNCTION_SRAM_END
diff --git a/images/Makefile.ath79 b/images/Makefile.ath79
index 181f951595..5dda411d8f 100644
--- a/images/Makefile.ath79
+++ b/images/Makefile.ath79
@@ -2,6 +2,10 @@ pblb-$(CONFIG_SOC_QCA_AR9331) += start_ar9331_spi_trap
 FILE_barebox-ar9331-spi-trap.img = start_ar9331_spi_trap.pblb
 image-$(CONFIG_SOC_QCA_AR9331) += barebox-ar9331-spi-trap.img
 
+pblb-$(CONFIG_SOC_QCA_AR9331) += start_ar9331_sram
+FILE_barebox-ar9331-sram.img = start_ar9331_sram.pblb
+image-$(CONFIG_SOC_QCA_AR9331) += barebox-ar9331-sram.img
+
 pblb-$(CONFIG_BOARD_8DEVICES_LIMA) += start_8devices_lima
 FILE_barebox-8devices-lima.img = start_8devices_lima.pblb
 image-$(CONFIG_BOARD_8DEVICES_LIMA) += barebox-8devices-lima.img
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

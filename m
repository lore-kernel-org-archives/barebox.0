Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmCtX-0000JY-C3
 for barebox@lists.infradead.org; Wed, 23 Jan 2019 07:24:21 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 23 Jan 2019 08:24:03 +0100
Message-Id: <20190123072403.30981-4-o.rempel@pengutronix.de>
In-Reply-To: <20190123072403.30981-1-o.rempel@pengutronix.de>
References: <20190123072403.30981-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 3/3] MIPS: ath79: add spi and sram bootstrap helpers
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

At least some ath79 SoC have build in 32K RAM. It allow us to use
lowlevel portion of barebox to bootstrap the system by using JTAG
debugger (For example OpenOCD).
Since ath79 has no reliable way to stop the CPU execution before
reading SPI Flash, this can cause different issues. To avoid it, we
need to flash a execution trap with software debug breakpoint to the
flash.

The workflow should be as follow:
- After power on or reset the CPU will start execution of SPI flash.
  As soon as software debug breakpoint is executed, CPU will halt and
  notify OpenOCD about breakpoint event.
- OpenOCD will load reduced barebox to SRAM and execute it.
  This part will do all needed low level initialization - PLL, RAM and
  trigger second breakpoint event.
- OpenOCD will load full barebox version to the main RAM and start
  execution.

It can be used for bring-up, so no regular flashing is needed.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/include/asm/asm.h                   | 20 ++++++++++++++++++
 arch/mips/lib/Makefile                        |  1 +
 arch/mips/lib/end.S                           | 16 ++++++++++++++
 arch/mips/mach-ath79/Makefile                 |  3 +++
 .../mips/mach-ath79/include/mach/pbl_macros.h | 21 +++++++++++++++++++
 .../mach-ath79/lowlevel_ar9331_spi_trap.S     | 18 ++++++++++++++++
 arch/mips/mach-ath79/lowlevel_ar9331_sram.S   | 18 ++++++++++++++++
 images/Makefile.ath79                         |  8 +++++++
 8 files changed, 105 insertions(+)
 create mode 100644 arch/mips/lib/end.S
 create mode 100644 arch/mips/mach-ath79/lowlevel_ar9331_spi_trap.S
 create mode 100644 arch/mips/mach-ath79/lowlevel_ar9331_sram.S

diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
index 7a23f4ed82..7d2b673bd9 100644
--- a/arch/mips/include/asm/asm.h
+++ b/arch/mips/include/asm/asm.h
@@ -105,6 +105,26 @@ __error:						\
 	b	__error;				\
 	 nop;
 
+/*
+ * STOP_WITH_DEBUG_EVENT - Stop code execution by triggering
+ * Software Debug Breakpoint. It is needed stop CPU and
+ * notify debugger (for example OpenOCD) about break point event.
+ * It should allow to simplify bootstrapping a system over JTAG.
+ */
+#define STOP_WITH_DEBUG_EVENT				\
+	/* trigger a soft breakpoint for OpenOCD */	\
+	SDBBP;						\
+	/* position independent variant of dead loop */	\
+	__error:					\
+	b	__error;				\
+	 nop;						\
+	/* Call some code from .text section.		\
+	 * It is needed to keep same linker script for	\
+	 * all images. */				\
+	la	v0, mips_dead_end;			\
+	jal	v0;					\
+	 nop;
+
 /*
  * FEXPORT - export definition of a function symbol
  */
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 1a049c7914..7372e8dc27 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -1,6 +1,7 @@
 extra-$(CONFIG_GENERIC_LINKER_SCRIPT) += barebox.lds
 obj-$(CONFIG_CSRC_R4K_LIB) += csrc-r4k.o
 obj-y += cpu-probe.o
+lwl-y += end.o
 obj-y += traps.o
 obj-y += genex.o
 obj-y += shutdown.o
diff --git a/arch/mips/lib/end.S b/arch/mips/lib/end.S
new file mode 100644
index 0000000000..78bd15ec17
--- /dev/null
+++ b/arch/mips/lib/end.S
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2018 Oleksij Rempel <linux@rempel-privat.de>
+ */
+
+#include <asm/asm.h>
+#include <asm/regdef.h>
+
+	.text
+	.set	noreorder
+LEAF(mips_dead_end)
+__error:
+	b	__error;
+	 nop;
+
+	END(mips_dead_end)
diff --git a/arch/mips/mach-ath79/Makefile b/arch/mips/mach-ath79/Makefile
index b827b363cf..396df66bf1 100644
--- a/arch/mips/mach-ath79/Makefile
+++ b/arch/mips/mach-ath79/Makefile
@@ -1,3 +1,6 @@
+lwl-y += lowlevel_ar9331_spi_trap.o
+lwl-y += lowlevel_ar9331_sram.o
+
 obj-y += reset.o
 obj-y += bbu.o
 obj-y += art.o
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
diff --git a/arch/mips/mach-ath79/lowlevel_ar9331_spi_trap.S b/arch/mips/mach-ath79/lowlevel_ar9331_spi_trap.S
new file mode 100644
index 0000000000..82452c74ca
--- /dev/null
+++ b/arch/mips/mach-ath79/lowlevel_ar9331_spi_trap.S
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2018 Oleksij Rempel <linux@rempel-privat.de>
+ */
+
+#define BOARD_PBL_START start_ar9331_spi_trap
+
+#include <mach/debug_ll.h>
+#include <asm/asm.h>
+#include <asm/pbl_macros.h>
+#include <mach/pbl_macros.h>
+#include <asm/pbl_nmon.h>
+
+ENTRY_FUNCTION(BOARD_PBL_START)
+
+	/* nothing should be done here */
+
+STOP_WITH_DEBUG_EVENT
diff --git a/arch/mips/mach-ath79/lowlevel_ar9331_sram.S b/arch/mips/mach-ath79/lowlevel_ar9331_sram.S
new file mode 100644
index 0000000000..1ef40be905
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
+STOP_WITH_DEBUG_EVENT
diff --git a/images/Makefile.ath79 b/images/Makefile.ath79
index c7e97f0ac3..5dda411d8f 100644
--- a/images/Makefile.ath79
+++ b/images/Makefile.ath79
@@ -1,3 +1,11 @@
+pblb-$(CONFIG_SOC_QCA_AR9331) += start_ar9331_spi_trap
+FILE_barebox-ar9331-spi-trap.img = start_ar9331_spi_trap.pblb
+image-$(CONFIG_SOC_QCA_AR9331) += barebox-ar9331-spi-trap.img
+
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

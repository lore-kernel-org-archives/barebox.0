Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTHpY-00025f-Bo
 for barebox@lists.infradead.org; Thu, 27 Mar 2014 21:27:22 +0000
Received: by mail-lb0-f173.google.com with SMTP id p9so3086818lbv.18
 for <barebox@lists.infradead.org>; Thu, 27 Mar 2014 14:26:58 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Mar 2014 01:26:37 +0400
Message-Id: <1395955604-12826-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
References: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/9] MIPS: add Atheros ar933x family support
To: barebox@lists.infradead.org

From: Du Huanpeng <u74147@gmail.com>

Use the mach-ath79 name for compatibility with linux kernel.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/Kconfig                               | 13 +++++
 arch/mips/Makefile                              |  2 +
 arch/mips/mach-ath79/Kconfig                    |  7 +++
 arch/mips/mach-ath79/Makefile                   |  1 +
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h | 64 +++++++++++++++++++++++++
 arch/mips/mach-ath79/include/mach/ath79.h       | 33 +++++++++++++
 arch/mips/mach-ath79/reset.c                    | 32 +++++++++++++
 7 files changed, 152 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index b819b49..521af7c 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -54,6 +54,18 @@ config MACH_MIPS_AR231X
 	select DRIVER_SERIAL_NS16550
 	select HAS_DEBUG_LL
 
+config MACH_MIPS_ATH79
+	bool "Atheros AR71XX/AR724X/AR913X/AR933X based boards"
+	select SYS_HAS_CPU_MIPS32_R2
+	select SYS_SUPPORTS_32BIT_KERNEL
+	select SYS_SUPPORTS_BIG_ENDIAN
+	select CSRC_R4K_LIB
+	select HAVE_CLK
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select CLKDEV_LOOKUP
+	select OFTREE
+
 config MACH_MIPS_BCM47XX
 	bool "Broadcom BCM47xx-based boards"
 	select CSRC_R4K_LIB
@@ -80,6 +92,7 @@ endchoice
 
 source arch/mips/mach-malta/Kconfig
 source arch/mips/mach-ar231x/Kconfig
+source arch/mips/mach-ath79/Kconfig
 source arch/mips/mach-bcm47xx/Kconfig
 source arch/mips/mach-loongson/Kconfig
 source arch/mips/mach-xburst/Kconfig
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index e3d65c8..5ca5fc9 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -78,6 +78,8 @@ board-$(CONFIG_BOARD_QEMU_MALTA)	:= qemu-malta
 machine-$(CONFIG_MACH_MIPS_AR231X)	:= ar231x
 board-$(CONFIG_BOARD_NETGEAR_WG102)	:= netgear-wg102
 
+machine-$(CONFIG_MACH_MIPS_ATH79)	:= ath79
+
 machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
 board-$(CONFIG_BOARD_DLINK_DIR320)	:= dlink-dir-320
 
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
new file mode 100644
index 0000000..5f73e0a
--- /dev/null
+++ b/arch/mips/mach-ath79/Kconfig
@@ -0,0 +1,7 @@
+if MACH_MIPS_ATH79
+
+config ARCH_TEXT_BASE
+	hex
+	default 0xa0800000
+
+endif
diff --git a/arch/mips/mach-ath79/Makefile b/arch/mips/mach-ath79/Makefile
new file mode 100644
index 0000000..f3cc668
--- /dev/null
+++ b/arch/mips/mach-ath79/Makefile
@@ -0,0 +1 @@
+obj-y += reset.o
diff --git a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
new file mode 100644
index 0000000..0c6ddd6
--- /dev/null
+++ b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
@@ -0,0 +1,64 @@
+/*
+ *  Atheros AR71XX/AR724X/AR913X SoC register definitions
+ *
+ *  Copyright (C) 2010-2011 Jaiganesh Narayanan <jnarayanan@atheros.com>
+ *  Copyright (C) 2008-2010 Gabor Juhos <juhosg@openwrt.org>
+ *  Copyright (C) 2008 Imre Kaloz <kaloz@openwrt.org>
+ *
+ *  Parts of this file are based on Atheros' 2.6.15/2.6.31 BSP
+ *
+ *  This program is free software; you can redistribute it and/or modify it
+ *  under the terms of the GNU General Public License version 2 as published
+ *  by the Free Software Foundation.
+ */
+
+#ifndef __ASM_MACH_AR71XX_REGS_H
+#define __ASM_MACH_AR71XX_REGS_H
+
+#include <linux/bitops.h>
+
+#define AR71XX_APB_BASE		0x18000000
+
+#define AR71XX_PLL_BASE		(AR71XX_APB_BASE + 0x00050000)
+#define AR71XX_PLL_SIZE		0x100
+#define AR71XX_RESET_BASE	(AR71XX_APB_BASE + 0x00060000)
+#define AR71XX_RESET_SIZE	0x100
+
+#define AR933X_UART_BASE	(AR71XX_APB_BASE + 0x00020000)
+#define AR933X_UART_SIZE	0x14
+
+/*
+ * PLL block
+ */
+#define AR933X_PLL_CPU_CONFIG_REG	0x00
+#define AR933X_PLL_CPU_CONFIG2_REG	0x04
+#define AR933X_PLL_CLOCK_CTRL_REG	0x08
+#define AR933X_PLL_DITHER_FRAC_REG	0x10
+#define AR933X_PLL_DITHER_REG		0x14
+
+#define AR933X_PLL_CPU_CONFIG_NINT_SHIFT	10
+#define AR933X_PLL_CPU_CONFIG_NINT_MASK		0x3f
+#define AR933X_PLL_CPU_CONFIG_REFDIV_SHIFT	16
+#define AR933X_PLL_CPU_CONFIG_REFDIV_MASK	0x1f
+#define AR933X_PLL_CPU_CONFIG_OUTDIV_SHIFT	23
+#define AR933X_PLL_CPU_CONFIG_OUTDIV_MASK	0x7
+
+#define AR933X_PLL_CLOCK_CTRL_BYPASS		BIT(2)
+#define AR933X_PLL_CLOCK_CTRL_CPU_DIV_SHIFT	5
+#define AR933X_PLL_CLOCK_CTRL_CPU_DIV_MASK	0x3
+#define AR933X_PLL_CLOCK_CTRL_DDR_DIV_SHIFT	10
+#define AR933X_PLL_CLOCK_CTRL_DDR_DIV_MASK	0x3
+#define AR933X_PLL_CLOCK_CTRL_AHB_DIV_SHIFT	15
+#define AR933X_PLL_CLOCK_CTRL_AHB_DIV_MASK	0x7
+
+/*
+ * RESET block
+ */
+#define AR933X_RESET_REG_RESET_MODULE		0x1c
+#define AR933X_RESET_REG_BOOTSTRAP		0xac
+
+#define AR71XX_RESET_FULL_CHIP		BIT(24)
+
+#define AR933X_BOOTSTRAP_REF_CLK_40	BIT(0)
+
+#endif /* __ASM_MACH_AR71XX_REGS_H */
diff --git a/arch/mips/mach-ath79/include/mach/ath79.h b/arch/mips/mach-ath79/include/mach/ath79.h
new file mode 100644
index 0000000..ff53406
--- /dev/null
+++ b/arch/mips/mach-ath79/include/mach/ath79.h
@@ -0,0 +1,33 @@
+/*
+ *  Atheros AR71XX/AR724X/AR913X common definitions
+ *
+ *  Copyright (C) 2008-2011 Gabor Juhos <juhosg@openwrt.org>
+ *  Copyright (C) 2008 Imre Kaloz <kaloz@openwrt.org>
+ *
+ *  Parts of this file are based on Atheros' 2.6.15 BSP
+ *
+ *  This program is free software; you can redistribute it and/or modify it
+ *  under the terms of the GNU General Public License version 2 as published
+ *  by the Free Software Foundation.
+ */
+
+#ifndef __ASM_MACH_ATH79_H
+#define __ASM_MACH_ATH79_H
+
+#include <common.h>
+#include <io.h>
+#include <asm/memory.h>
+
+#include <mach/ar71xx_regs.h>
+
+static inline void ath79_reset_wr(unsigned reg, u32 val)
+{
+	__raw_writel(val, (char *)KSEG1ADDR(AR71XX_RESET_BASE + reg));
+}
+
+static inline u32 ath79_reset_rr(unsigned reg)
+{
+	return __raw_readl((char *)KSEG1ADDR(AR71XX_RESET_BASE + reg));
+}
+
+#endif /* __ASM_MACH_ATH79_H */
diff --git a/arch/mips/mach-ath79/reset.c b/arch/mips/mach-ath79/reset.c
new file mode 100644
index 0000000..a0e9b34
--- /dev/null
+++ b/arch/mips/mach-ath79/reset.c
@@ -0,0 +1,32 @@
+/*
+ * Copyright (C) 2013 Du Huanpeng <u74147@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <mach/ath79.h>
+
+void __noreturn reset_cpu(ulong addr)
+{
+	ath79_reset_wr(AR933X_RESET_REG_RESET_MODULE, AR71XX_RESET_FULL_CHIP);
+	/*
+	 * Used to command a full chip reset. This is the software equivalent of
+	 * pulling the reset pin. The system will reboot with PLL disabled.
+	 * Always zero when read.
+	 */
+	unreachable();
+	/*NOTREACHED*/
+}
+EXPORT_SYMBOL(reset_cpu);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

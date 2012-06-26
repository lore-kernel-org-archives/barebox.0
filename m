Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjSRL-0007n8-OV
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 09:52:26 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 26 Jun 2012 11:51:43 +0200
Message-Id: <1340704314-12593-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/12] mach-davinci: add platform and minimal board file for
 HMI10
To: barebox@lists.infradead.org

This supports the serial console.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/Kconfig                              |    4 +
 arch/arm/Makefile                             |    2 +
 arch/arm/boards/hmi10/Makefile                |    1 +
 arch/arm/boards/hmi10/board.c                 |   92 +++++
 arch/arm/boards/hmi10/config.h                |   24 ++
 arch/arm/boards/hmi10/env/config              |   60 +++
 arch/arm/mach-davinci/Kconfig                 |   36 ++
 arch/arm/mach-davinci/Makefile                |    2 +
 arch/arm/mach-davinci/clock.c                 |   94 +++++
 arch/arm/mach-davinci/clocksource.c           |  164 +++++++++
 arch/arm/mach-davinci/include/mach/da8xx.h    |   40 ++
 arch/arm/mach-davinci/include/mach/hardware.h |  492 +++++++++++++++++++++++++
 12 files changed, 1011 insertions(+)
 create mode 100644 arch/arm/boards/hmi10/Makefile
 create mode 100644 arch/arm/boards/hmi10/board.c
 create mode 100644 arch/arm/boards/hmi10/config.h
 create mode 100644 arch/arm/boards/hmi10/env/config
 create mode 100644 arch/arm/mach-davinci/Kconfig
 create mode 100644 arch/arm/mach-davinci/Makefile
 create mode 100644 arch/arm/mach-davinci/clock.c
 create mode 100644 arch/arm/mach-davinci/clocksource.c
 create mode 100644 arch/arm/mach-davinci/include/mach/da8xx.h
 create mode 100644 arch/arm/mach-davinci/include/mach/hardware.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3eada5b..336fc24 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -36,6 +36,9 @@ config ARCH_AT91
 	select GENERIC_GPIO
 	select CLKDEV_LOOKUP
 
+config ARCH_DAVINCI
+	bool "TI Davinci"
+
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
 	select CPU_ARM920T
@@ -92,6 +95,7 @@ endchoice
 
 source arch/arm/cpu/Kconfig
 source arch/arm/mach-at91/Kconfig
+source arch/arm/mach-davinci/Kconfig
 source arch/arm/mach-ep93xx/Kconfig
 source arch/arm/mach-imx/Kconfig
 source arch/arm/mach-mxs/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index bd684dc..e890efb 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -52,6 +52,7 @@ AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
 # Machine directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
 machine-$(CONFIG_ARCH_AT91)		:= at91
+machine-$(CONFIG_ARCH_DAVINCI)		:= davinci
 machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
 machine-$(CONFIG_ARCH_IMX)		:= imx
 machine-$(CONFIG_ARCH_MXS)		:= mxs
@@ -90,6 +91,7 @@ board-$(CONFIG_MACH_EUKREA_CPUIMX35)		:= eukrea_cpuimx35
 board-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		:= eukrea_cpuimx51
 board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	:= freescale-mx25-3-stack
 board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	:= freescale-mx35-3-stack
+board-$(CONFIG_MACH_HMI10)			:= hmi10
 board-$(CONFIG_MACH_IMX21ADS)			:= imx21ads
 board-$(CONFIG_MACH_IMX27ADS)			:= imx27ads
 board-$(CONFIG_MACH_MIOA701)			:= mioa701
diff --git a/arch/arm/boards/hmi10/Makefile b/arch/arm/boards/hmi10/Makefile
new file mode 100644
index 0000000..dcfc293
--- /dev/null
+++ b/arch/arm/boards/hmi10/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/arm/boards/hmi10/board.c b/arch/arm/boards/hmi10/board.c
new file mode 100644
index 0000000..be4d920
--- /dev/null
+++ b/arch/arm/boards/hmi10/board.c
@@ -0,0 +1,92 @@
+/*
+ * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License along
+ * with this program; if not, write to the Free Software Foundation, Inc.,
+ * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ */
+
+#include <common.h>
+#include <console.h>
+#include <init.h>
+#include <driver.h>
+#include <sizes.h>
+#include <io.h>
+#include <ns16550.h>
+#include <partition.h>
+#include <spi/spi.h>
+#include <spi/flash.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <linux/err.h>
+#include <linux/mtd/nand.h>
+
+#include <mach/hardware.h>
+#include <mach/da8xx.h>
+
+#ifdef CONFIG_DRIVER_SERIAL_NS16550
+static struct NS16550_plat serial_plat = {
+	//.clock is calculated in hmi10_console_init
+	.shift = 2,
+};
+
+/**
+ * @brief UART serial port initialization - remember to enable COM clocks in
+ * arch
+ *
+ * @return result of device registration
+ */
+static int hmi10_console_init(void)
+{
+	/* Register the serial port */
+	writel(0x44440000, &davinci_uart2_ctrl_regs->mdr);
+	serial_plat.clock = da8xx_clk_get(DAVINCI_UART2_CLKID);
+	add_ns16550_device(-1, DAVINCI_UART2_BASE, 1024, IORESOURCE_MEM_32BIT,
+			   &serial_plat);
+	/* bring TX (bit 14) and TX (bit 13) out of reset */
+	writel((1<<14) | (1<<13), &davinci_uart2_ctrl_regs->pwremu_mgmt);
+
+	return 0;
+}
+console_initcall(hmi10_console_init);
+#endif /* CONFIG_DRIVER_SERIAL_NS16550 */
+
+static int hmi10_postconsole_init(void)
+{
+	printf("ARM Clock: %d Hz\n", da8xx_clk_get(DAVINCI_ARM_CLKID));
+	//printf("DDR Clock: %d Hz\n", da8xx_clk_get(DAVINCI_DDR_CLKID)/2);
+	//printf("AUX Clock: %d Hz\n", da8xx_clk_get(DAVINCI_AUXCLK_CLKID));
+	//printf("UART2 Clock: %d Hz\n", da8xx_clk_get(DAVINCI_UART2_CLKID));
+	//printf("EMIFA Clock: %d Hz\n", da8xx_clk_get(DAVINCI_EMIFA_CLKID));
+
+	return 0;
+}
+postconsole_initcall(hmi10_postconsole_init);
+
+static int hmi10_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0xc0000000, SZ_32M);
+	arm_add_mem_device("ram1", 0xc4000000, SZ_64M);
+
+	return 0;
+}
+mem_initcall(hmi10_mem_init);
+
+static int hmi10_devices_init(void)
+{
+	armlinux_set_bootparams((void *)0xc0000100);
+	armlinux_set_architecture(MACH_TYPE_DAVINCI_HE_HMI10);
+
+	return 0;
+}
+device_initcall(hmi10_devices_init);
diff --git a/arch/arm/boards/hmi10/config.h b/arch/arm/boards/hmi10/config.h
new file mode 100644
index 0000000..d430e2c
--- /dev/null
+++ b/arch/arm/boards/hmi10/config.h
@@ -0,0 +1,24 @@
+/*
+ * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License along
+ * with this program; if not, write to the Free Software Foundation, Inc.,
+ * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define CONFIG_SYS_OSCIN_FREQ           24000000
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/hmi10/env/config b/arch/arm/boards/hmi10/env/config
new file mode 100644
index 0000000..de146f3
--- /dev/null
+++ b/arch/arm/boards/hmi10/env/config
@@ -0,0 +1,60 @@
+#!/bin/sh
+
+machine=hmi10
+user=
+
+# Enter MAC address here if not retrieved automatically
+#eth0.ethaddr=de:ad:be:ef:00:00
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+dhcp_vendor_id=barebox
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.serverip=a.b.c.d
+#eth0.gateway=a.b.c.d
+
+# can be either 'tftp', 'nfs', 'nand', 'nor' or 'disk'
+kernel_loc=tftp
+#kernel_loc=nand
+# can be either 'net', 'nand', 'nor', 'disk' or 'initrd'
+rootfs_loc=net
+#rootfs_loc=nand
+
+# for flash based rootfs: 'jffs2' or 'ubifs'
+# in case of disk any regular filesystem like 'ext2', 'ext3', 'reiserfs'
+rootfs_type=ubifs
+# where is the rootfs in case of 'rootfs_loc=disk' (linux name)
+#rootfs_part_linux_dev=mmcblk0p4
+rootfsimage=rootfs-${machine}.$rootfs_type
+
+# where is the kernel image in case of 'kernel_loc=disk'
+#kernel_part=disk0.2
+
+#kernelimage=zImage-$machine
+kernelimage=uImage-$machine
+#kernelimage=Image-$machine
+#kernelimage=Image-$machine.lzo
+
+bareboximage=barebox-${machine}.bin
+bareboxenvimage=barebox-${machine}.bin
+
+if [ -n $user ]; then
+	bareboximage="$user"-"$bareboximage"
+	bareboxenvimage="$user"-"$bareboxenvimage"
+	kernelimage="$user"-"$kernelimage"
+	rootfsimage="$user"-"$rootfsimage"
+	nfsroot="/home/$user/nfsroot/$machine"
+else
+	nfsroot="/path/to/nfs/root"
+fi
+
+autoboot_timeout=1
+
+bootargs="console=ttyS2,115200 ro"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/mach-davinci/Kconfig b/arch/arm/mach-davinci/Kconfig
new file mode 100644
index 0000000..4109763
--- /dev/null
+++ b/arch/arm/mach-davinci/Kconfig
@@ -0,0 +1,36 @@
+menu "Davinci features"
+	depends on ARCH_DAVINCI
+
+config MACH_OMAP
+	bool
+
+config SOC_DA8XX
+	bool
+
+choice
+	prompt "Select Davinci variant"
+
+config ARCH_DAVINCI_DA850
+        bool "DA850/OMAP-L138/AM18x"
+	select CPU_ARM926T
+	select SOC_DA8XX
+
+endchoice
+
+config ARCH_TEXT_BASE
+	hex
+	default 0xc1e00000 if MACH_HMI10
+
+config BOARDINFO
+	default "Hesch HMI10" if MACH_HMI10
+
+choice
+	prompt "Select Davinci board"
+
+config MACH_HMI10
+	bool "Hesch HMI10"
+	depends on ARCH_DAVINCI_DA850
+
+endchoice
+
+endmenu
diff --git a/arch/arm/mach-davinci/Makefile b/arch/arm/mach-davinci/Makefile
new file mode 100644
index 0000000..5f1e545
--- /dev/null
+++ b/arch/arm/mach-davinci/Makefile
@@ -0,0 +1,2 @@
+obj-y += clock.o
+obj-y += clocksource.o
diff --git a/arch/arm/mach-davinci/clock.c b/arch/arm/mach-davinci/clock.c
new file mode 100644
index 0000000..cd53a98
--- /dev/null
+++ b/arch/arm/mach-davinci/clock.c
@@ -0,0 +1,94 @@
+/*
+ * Copyright (C) 2004 Texas Instruments.
+ * Copyright (C) 2009 David Brownell
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+ */
+
+#include <config.h>
+#include <common.h>
+#include <io.h>
+#include <mach/hardware.h>
+
+/* offsets from PLL controller base */
+#define PLLC_PLLCTL	0x100
+#define PLLC_PLLM	0x110
+#define PLLC_PREDIV	0x114
+#define PLLC_PLLDIV1	0x118
+#define PLLC_PLLDIV2	0x11c
+#define PLLC_PLLDIV3	0x120
+#define PLLC_POSTDIV	0x128
+#define PLLC_BPDIV	0x12c
+#define PLLC_PLLDIV4	0x160
+#define PLLC_PLLDIV5	0x164
+#define PLLC_PLLDIV6	0x168
+#define PLLC_PLLDIV7	0x16c
+#define PLLC_PLLDIV8	0x170
+#define PLLC_PLLDIV9	0x174
+
+/* SOC-specific pll info */
+unsigned int sysdiv[9] = {
+	PLLC_PLLDIV1, PLLC_PLLDIV2, PLLC_PLLDIV3, PLLC_PLLDIV4, PLLC_PLLDIV5,
+	PLLC_PLLDIV6, PLLC_PLLDIV7, PLLC_PLLDIV8, PLLC_PLLDIV9
+};
+
+int da8xx_clk_get(enum davinci_clk_ids id)
+{
+	int pre_div;
+	int pllm;
+	int post_div;
+	int pll_out;
+	unsigned int pll_base;
+
+	pll_out = CONFIG_SYS_OSCIN_FREQ;
+
+	if (id == DAVINCI_AUXCLK_CLKID)
+		goto out;
+
+	if ((id >> 16) == 1)
+		pll_base = DAVINCI_PLL_CNTRL1_BASE;
+	else
+		pll_base = DAVINCI_PLL_CNTRL0_BASE;
+
+	id &= 0xFFFF;
+
+	/*
+	 * Lets keep this simple. Combining operations can result in
+	 * unexpected approximations
+	 */
+	pre_div = (readl(pll_base + PLLC_PREDIV) & 0xff) + 1;
+	pllm = readl(pll_base + PLLC_PLLM) + 1;
+
+	pll_out /= pre_div;
+	pll_out *= pllm;
+
+	if (id == DAVINCI_PLLM_CLKID)
+		goto out;
+
+	post_div = (readl(pll_base + PLLC_POSTDIV) & 0xff) + 1;
+
+	pll_out /= post_div;
+
+	if (id == DAVINCI_PLLC_CLKID)
+		goto out;
+
+	pll_out /= (readl(pll_base + sysdiv[id - 1]) & 0xff) + 1;
+
+out:
+	return pll_out;
+}
diff --git a/arch/arm/mach-davinci/clocksource.c b/arch/arm/mach-davinci/clocksource.c
new file mode 100644
index 0000000..1d0920b
--- /dev/null
+++ b/arch/arm/mach-davinci/clocksource.c
@@ -0,0 +1,164 @@
+/*
+ * (C) Copyright 2012 Jan Luebbe <j.luebbe@pengutronix.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * Based on code from the linux kernel:
+ *  arch/arm/mach-davinci/time.c
+ *   Copyright 2007 (c) MontaVista Software, Inc.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <asm/io.h>
+
+#include <mach/da8xx.h>
+#include <mach/hardware.h>
+
+/* Timer register offsets */
+#define PID12                   0x0
+#define TIM12                   0x10
+#define TIM34                   0x14
+#define PRD12                   0x18
+#define PRD34                   0x1c
+#define TCR                     0x20
+#define TGCR                    0x24
+#define WDTCR                   0x28
+
+/* Timer register bitfields */
+#define TCR_ENAMODE12_SHIFT          6
+#define TCR_ENAMODE34_SHIFT          22
+#define TCR_ENAMODE_DISABLE          0x0
+#define TCR_ENAMODE_ONESHOT          0x1
+#define TCR_ENAMODE_PERIODIC         0x2
+#define TCR_ENAMODE_MASK             0x3
+
+#define TGCR_TIMMODE_SHIFT           2
+#define TGCR_TIMMODE_64BIT_GP        0x0
+#define TGCR_TIMMODE_32BIT_UNCHAINED 0x1
+#define TGCR_TIMMODE_64BIT_WDOG      0x2
+#define TGCR_TIMMODE_32BIT_CHAINED   0x3
+
+#define TGCR_TIM12RS_SHIFT           0
+#define TGCR_TIM34RS_SHIFT           1
+#define TGCR_RESET                   0x0
+#define TGCR_UNRESET                 0x1
+#define TGCR_RESET_MASK              0x3
+
+#define WDTCR_WDEN_SHIFT             14
+#define WDTCR_WDEN_DISABLE           0x0
+#define WDTCR_WDEN_ENABLE            0x1
+#define WDTCR_WDKEY_SHIFT            16
+#define WDTCR_WDKEY_SEQ0             0xa5c6
+#define WDTCR_WDKEY_SEQ1             0xda7e
+
+uint64_t davinci_clocksource_read(void)
+{
+	/* When reading TIM12, TIM34 is copied into a shadow register */
+	uint32_t tim12, tim34;
+	tim12 = readl(DA8XX_TIMER64P0_BASE + TIM12);
+	tim34 = readl(DA8XX_TIMER64P0_BASE + TIM34);
+	return tim12; // FIXME
+}
+
+static struct clocksource cs = {
+	.read	= davinci_clocksource_read,
+	.mask	= 0xffffffff,
+	.shift	= 20,
+};
+
+static int clocksource_init(void)
+{
+	uint32_t tcr, tgcr;
+	/* Disabled, Internal clock source */
+	writel(0, DA8XX_TIMER64P0_BASE + TCR);
+
+	/* reset both timers, no pre-scaler for timer34 */
+	tgcr = 0;
+	writel(tgcr, DA8XX_TIMER64P0_BASE + TGCR);
+
+	/* Set both timers to unchained 32-bit */
+	tgcr = TGCR_TIMMODE_64BIT_GP << TGCR_TIMMODE_SHIFT;
+	writel(tgcr, DA8XX_TIMER64P0_BASE + TGCR);
+
+	/* Unreset timers */
+	tgcr |= (TGCR_UNRESET << TGCR_TIM12RS_SHIFT) |
+		(TGCR_UNRESET << TGCR_TIM34RS_SHIFT);
+	writel(tgcr, DA8XX_TIMER64P0_BASE + TGCR);
+
+	/* Init both counters to zero */
+	writel(0, DA8XX_TIMER64P0_BASE + TIM12);
+	writel(0, DA8XX_TIMER64P0_BASE + TIM34);
+	writel(~0, DA8XX_TIMER64P0_BASE + PRD12);
+	writel(~0, DA8XX_TIMER64P0_BASE + PRD34);
+
+	tcr = TCR_ENAMODE_PERIODIC << TCR_ENAMODE12_SHIFT;
+	writel(tcr, DA8XX_TIMER64P0_BASE + TCR);
+
+	cs.mult = clocksource_hz2mult(da8xx_clk_get(DAVINCI_AUXCLK_CLKID), cs.shift);
+
+	init_clock(&cs);
+
+	return 0;
+}
+
+core_initcall(clocksource_init);
+
+/* reset board using watchdog timer (TIMER64P1) */
+void davinci_watchdog_reset(void)
+{
+	uint32_t tgcr, wdtcr;
+
+	/* disable, internal clock source */
+	writel(0, DA8XX_TIMER64P1_BASE + TCR);
+
+	/* reset timer, set mode to 64-bit watchdog, and unreset */
+	tgcr = 0;
+	writel(tgcr, DA8XX_TIMER64P1_BASE + TGCR);
+	tgcr = TGCR_TIMMODE_64BIT_WDOG << TGCR_TIMMODE_SHIFT;
+	tgcr |= (TGCR_UNRESET << TGCR_TIM12RS_SHIFT) |
+		(TGCR_UNRESET << TGCR_TIM34RS_SHIFT);
+	writel(tgcr, DA8XX_TIMER64P1_BASE + TGCR);
+
+	/* clear counter and period regs */
+	writel(0, DA8XX_TIMER64P1_BASE + TIM12);
+	writel(0, DA8XX_TIMER64P1_BASE + TIM34);
+	writel(0, DA8XX_TIMER64P1_BASE + PRD12);
+	writel(0, DA8XX_TIMER64P1_BASE + PRD34);
+
+	/* put watchdog in pre-active state */
+	wdtcr = readl(DA8XX_TIMER64P1_BASE + WDTCR);
+	wdtcr = (WDTCR_WDKEY_SEQ0 << WDTCR_WDKEY_SHIFT) |
+		(WDTCR_WDEN_ENABLE << WDTCR_WDEN_SHIFT);
+	writel(wdtcr, DA8XX_TIMER64P1_BASE + WDTCR);
+
+	/* put watchdog in active state */
+	wdtcr = (WDTCR_WDKEY_SEQ1 << WDTCR_WDKEY_SHIFT) |
+		(WDTCR_WDEN_ENABLE << WDTCR_WDEN_SHIFT);
+	writel(wdtcr, DA8XX_TIMER64P1_BASE + WDTCR);
+
+	/* write an invalid value to the WDKEY field to trigger
+	 * a watchdog reset */
+	wdtcr = 0x00004000;
+	writel(wdtcr, DA8XX_TIMER64P1_BASE + WDTCR);
+}
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	davinci_watchdog_reset();
+
+	while (1);
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-davinci/include/mach/da8xx.h b/arch/arm/mach-davinci/include/mach/da8xx.h
new file mode 100644
index 0000000..1efcaad
--- /dev/null
+++ b/arch/arm/mach-davinci/include/mach/da8xx.h
@@ -0,0 +1,40 @@
+/*
+ * Chip specific defines for DA8XX/OMAP L1XX SoC
+ *
+ * Author: Mark A. Greer <mgreer@mvista.com>
+ *
+ * 2007, 2009-2010 (c) MontaVista Software, Inc. This file is licensed under
+ * the terms of the GNU General Public License version 2. This program
+ * is licensed "as is" without any warranty of any kind, whether express
+ * or implied.
+ */
+#ifndef __ASM_ARCH_DAVINCI_DA8XX_H
+#define __ASM_ARCH_DAVINCI_DA8XX_H
+
+#define IO_PHYS				0x01c00000UL
+
+#define DA8XX_SYSCFG0_BASE	(IO_PHYS + 0x14000)
+#define DA8XX_JTAG_ID_REG	0x18
+#define DA8XX_MSTPRI0_REG	0x110
+#define DA8XX_MSTPRI1_REG	0x114
+#define DA8XX_MSTPRI2_REG	0x118
+#define DA8XX_CFGCHIP0_REG	0x17c
+#define DA8XX_CFGCHIP2_REG	0x184
+#define DA8XX_CFGCHIP3_REG	0x188
+
+#define DA8XX_SYSCFG1_BASE	(IO_PHYS + 0x22C000)
+#define DA8XX_DEEPSLEEP_REG	0x8
+#define DA8XX_PWRDN_REG		0x18
+
+#define DA8XX_PSC0_BASE		0x01c10000
+#define DA8XX_PLL0_BASE		0x01c11000
+#define DA8XX_TIMER64P0_BASE	0x01c20000
+#define DA8XX_TIMER64P1_BASE	0x01c21000
+#define DA8XX_GPIO_BASE		0x01e26000
+#define DA8XX_PSC1_BASE		0x01e27000
+#define DA8XX_AEMIF_CS2_BASE	0x60000000
+#define DA8XX_AEMIF_CS3_BASE	0x62000000
+#define DA8XX_AEMIF_CTL_BASE	0x68000000
+#define DA8XX_ARM_RAM_BASE	0xffff0000
+
+#endif /* __ASM_ARCH_DAVINCI_DA8XX_H */
diff --git a/arch/arm/mach-davinci/include/mach/hardware.h b/arch/arm/mach-davinci/include/mach/hardware.h
new file mode 100644
index 0000000..098ed22
--- /dev/null
+++ b/arch/arm/mach-davinci/include/mach/hardware.h
@@ -0,0 +1,492 @@
+/*
+ * Copyright (C) 2007 Sergey Kubushyn <ksi@koi8.net>
+ *
+ * Based on:
+ *
+ * -------------------------------------------------------------------------
+ *
+ *  linux/include/asm-arm/arch-davinci/hardware.h
+ *
+ *  Copyright (C) 2006 Texas Instruments.
+ *
+ *  This program is free software; you can redistribute  it and/or modify it
+ *  under  the terms of  the GNU General  Public License as published by the
+ *  Free Software Foundation;  either version 2 of the  License, or (at your
+ *  option) any later version.
+ *
+ *  THIS  SOFTWARE  IS PROVIDED   ``AS  IS'' AND   ANY  EXPRESS OR IMPLIED
+ *  WARRANTIES,   INCLUDING, BUT NOT  LIMITED  TO, THE IMPLIED WARRANTIES OF
+ *  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN
+ *  NO  EVENT  SHALL   THE AUTHOR  BE    LIABLE FOR ANY   DIRECT, INDIRECT,
+ *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ *  NOT LIMITED   TO, PROCUREMENT OF  SUBSTITUTE GOODS  OR SERVICES; LOSS OF
+ *  USE, DATA,  OR PROFITS; OR  BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
+ *  ANY THEORY OF LIABILITY, WHETHER IN  CONTRACT, STRICT LIABILITY, OR TORT
+ *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ *  THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ *  You should have received a copy of the  GNU General Public License along
+ *  with this program; if not, write  to the Free Software Foundation, Inc.,
+ *  675 Mass Ave, Cambridge, MA 02139, USA.
+ *
+ */
+#ifndef __ASM_ARCH_HARDWARE_H
+#define __ASM_ARCH_HARDWARE_H
+
+#include <sizes.h>
+#include <asm-generic/io.h>
+
+typedef volatile unsigned int	dv_reg;
+typedef volatile unsigned int *	dv_reg_p;
+
+/*
+ * Base register addresses
+ *
+ * NOTE:  some of these DM6446-specific addresses DO NOT WORK
+ * on other DaVinci chips.  Double check them before you try
+ * using the addresses ... or PSC module identifiers, etc.
+ */
+#ifndef CONFIG_SOC_DA8XX
+
+#define DAVINCI_DMA_3PCC_BASE			(0x01c00000)
+#define DAVINCI_DMA_3PTC0_BASE			(0x01c10000)
+#define DAVINCI_DMA_3PTC1_BASE			(0x01c10400)
+#define DAVINCI_UART0_BASE			(0x01c20000)
+#define DAVINCI_UART1_BASE			(0x01c20400)
+#define DAVINCI_I2C_BASE			(0x01c21000)
+#define DAVINCI_TIMER0_BASE			(0x01c21400)
+#define DAVINCI_TIMER1_BASE			(0x01c21800)
+#define DAVINCI_WDOG_BASE			(0x01c21c00)
+#define DAVINCI_PWM0_BASE			(0x01c22000)
+#define DAVINCI_PWM1_BASE			(0x01c22400)
+#define DAVINCI_PWM2_BASE			(0x01c22800)
+#define DAVINCI_SYSTEM_MODULE_BASE		(0x01c40000)
+#define DAVINCI_PLL_CNTRL0_BASE			(0x01c40800)
+#define DAVINCI_PLL_CNTRL1_BASE			(0x01c40c00)
+#define DAVINCI_PWR_SLEEP_CNTRL_BASE		(0x01c41000)
+#define DAVINCI_ARM_INTC_BASE			(0x01c48000)
+#define DAVINCI_USB_OTG_BASE			(0x01c64000)
+#define DAVINCI_CFC_ATA_BASE			(0x01c66000)
+#define DAVINCI_SPI_BASE			(0x01c66800)
+#define DAVINCI_GPIO_BASE			(0x01c67000)
+#define DAVINCI_VPSS_REGS_BASE			(0x01c70000)
+#if !defined(CONFIG_SOC_DM646X)
+#define DAVINCI_ASYNC_EMIF_DATA_CE0_BASE	(0x02000000)
+#define DAVINCI_ASYNC_EMIF_DATA_CE1_BASE	(0x04000000)
+#define DAVINCI_ASYNC_EMIF_DATA_CE2_BASE	(0x06000000)
+#define DAVINCI_ASYNC_EMIF_DATA_CE3_BASE	(0x08000000)
+#endif
+#define DAVINCI_DDR_BASE			(0x80000000)
+
+#ifdef CONFIG_SOC_DM644X
+#define DAVINCI_UART2_BASE			0x01c20800
+#define DAVINCI_UHPI_BASE			0x01c67800
+#define DAVINCI_EMAC_CNTRL_REGS_BASE		0x01c80000
+#define DAVINCI_EMAC_WRAPPER_CNTRL_REGS_BASE	0x01c81000
+#define DAVINCI_EMAC_WRAPPER_RAM_BASE		0x01c82000
+#define DAVINCI_MDIO_CNTRL_REGS_BASE		0x01c84000
+#define DAVINCI_IMCOP_BASE			0x01cc0000
+#define DAVINCI_ASYNC_EMIF_CNTRL_BASE		0x01e00000
+#define DAVINCI_VLYNQ_BASE			0x01e01000
+#define DAVINCI_ASP_BASE			0x01e02000
+#define DAVINCI_MMC_SD_BASE			0x01e10000
+#define DAVINCI_MS_BASE				0x01e20000
+#define DAVINCI_VLYNQ_REMOTE_BASE		0x0c000000
+
+#elif defined(CONFIG_SOC_DM355)
+#define DAVINCI_MMC_SD1_BASE			0x01e00000
+#define DAVINCI_ASP0_BASE			0x01e02000
+#define DAVINCI_ASP1_BASE			0x01e04000
+#define DAVINCI_UART2_BASE			0x01e06000
+#define DAVINCI_ASYNC_EMIF_CNTRL_BASE		0x01e10000
+#define DAVINCI_MMC_SD0_BASE			0x01e11000
+
+#elif defined(CONFIG_SOC_DM365)
+#define DAVINCI_MMC_SD1_BASE			0x01d00000
+#define DAVINCI_ASYNC_EMIF_CNTRL_BASE		0x01d10000
+#define DAVINCI_MMC_SD0_BASE			0x01d11000
+
+#elif defined(CONFIG_SOC_DM646X)
+#define DAVINCI_ASYNC_EMIF_CNTRL_BASE		0x20008000
+#define DAVINCI_ASYNC_EMIF_DATA_CE0_BASE	0x42000000
+#define DAVINCI_ASYNC_EMIF_DATA_CE1_BASE	0x44000000
+#define DAVINCI_ASYNC_EMIF_DATA_CE2_BASE	0x46000000
+#define DAVINCI_ASYNC_EMIF_DATA_CE3_BASE	0x48000000
+
+#endif
+
+#else /* CONFIG_SOC_DA8XX */
+
+#define DAVINCI_MMC_SD0_BASE			0x01c40000
+#define DAVINCI_UART0_BASE			0x01c42000
+#define DAVINCI_UART1_BASE			0x01d0c000
+#define DAVINCI_UART2_BASE			0x01d0d000
+#define DAVINCI_I2C0_BASE			0x01c22000
+#define DAVINCI_I2C1_BASE			0x01e28000
+#define DAVINCI_TIMER0_BASE			0x01c20000
+#define DAVINCI_TIMER1_BASE			0x01c21000
+#define DAVINCI_WDOG_BASE			0x01c21000
+#define DAVINCI_PLL_CNTRL0_BASE			0x01c11000
+#define DAVINCI_PLL_CNTRL1_BASE			0x01e1a000
+#define DAVINCI_PSC0_BASE			0x01c10000
+#define DAVINCI_PSC1_BASE			0x01e27000
+#define DAVINCI_SPI0_BASE			0x01c41000
+#define DAVINCI_USB_OTG_BASE			0x01e00000
+#define DAVINCI_SPI1_BASE			(cpu_is_da830() ? 0x01e12000 : 0x01f0e000)
+#define DAVINCI_GPIO_BASE			0x01e26000
+#define DAVINCI_EMAC_CNTRL_REGS_BASE		0x01e23000
+#define DAVINCI_EMAC_WRAPPER_CNTRL_REGS_BASE	0x01e22000
+#define DAVINCI_EMAC_WRAPPER_RAM_BASE		0x01e20000
+#define DAVINCI_MDIO_CNTRL_REGS_BASE		0x01e24000
+#define DAVINCI_ASYNC_EMIF_CNTRL_BASE		0x68000000
+#define DAVINCI_ASYNC_EMIF_DATA_CE0_BASE	0x40000000
+#define DAVINCI_ASYNC_EMIF_DATA_CE2_BASE	0x60000000
+#define DAVINCI_ASYNC_EMIF_DATA_CE3_BASE	0x62000000
+#define DAVINCI_ASYNC_EMIF_DATA_CE4_BASE	0x64000000
+#define DAVINCI_ASYNC_EMIF_DATA_CE5_BASE	0x66000000
+#define DAVINCI_DDR_EMIF_CTRL_BASE		0xb0000000
+#define DAVINCI_DDR_EMIF_DATA_BASE		0xc0000000
+#define DAVINCI_INTC_BASE			0xfffee000
+#define DAVINCI_BOOTCFG_BASE			0x01c14000
+#define DAVINCI_L3CBARAM_BASE			0x80000000
+#define JTAG_ID_REG				(DAVINCI_BOOTCFG_BASE + 0x18)
+#define CHIP_REV_ID_REG				(DAVINCI_BOOTCFG_BASE + 0x24)
+#define HOST1CFG				(DAVINCI_BOOTCFG_BASE + 0x44)
+#define CFGCHIP3				(DAVINCI_BOOTCFG_BASE + 0x188)
+#define PSC0_MDCTL				(DAVINCI_PSC0_BASE + 0xa00)
+#define GPIO_BANK0_REG_DIR_ADDR			(DAVINCI_GPIO_BASE + 0x10)
+#define GPIO_BANK0_REG_OPDATA_ADDR		(DAVINCI_GPIO_BASE + 0x14)
+#define GPIO_BANK0_REG_SET_ADDR			(DAVINCI_GPIO_BASE + 0x18)
+#define GPIO_BANK0_REG_CLR_ADDR			(DAVINCI_GPIO_BASE + 0x1c)
+#define GPIO_BANK2_REG_DIR_ADDR			(DAVINCI_GPIO_BASE + 0x38)
+#define GPIO_BANK2_REG_OPDATA_ADDR		(DAVINCI_GPIO_BASE + 0x3c)
+#define GPIO_BANK2_REG_SET_ADDR			(DAVINCI_GPIO_BASE + 0x40)
+#define GPIO_BANK2_REG_CLR_ADDR			(DAVINCI_GPIO_BASE + 0x44)
+
+#endif /* CONFIG_SOC_DA8XX */
+
+/* Power and Sleep Controller (PSC) Domains */
+#define DAVINCI_GPSC_ARMDOMAIN		0
+#define DAVINCI_GPSC_DSPDOMAIN		1
+
+#ifndef CONFIG_SOC_DA8XX
+
+#define DAVINCI_LPSC_VPSSMSTR		0
+#define DAVINCI_LPSC_VPSSSLV		1
+#define DAVINCI_LPSC_TPCC		2
+#define DAVINCI_LPSC_TPTC0		3
+#define DAVINCI_LPSC_TPTC1		4
+#define DAVINCI_LPSC_EMAC		5
+#define DAVINCI_LPSC_EMAC_WRAPPER	6
+#define DAVINCI_LPSC_MDIO		7
+#define DAVINCI_LPSC_IEEE1394		8
+#define DAVINCI_LPSC_USB		9
+#define DAVINCI_LPSC_ATA		10
+#define DAVINCI_LPSC_VLYNQ		11
+#define DAVINCI_LPSC_UHPI		12
+#define DAVINCI_LPSC_DDR_EMIF		13
+#define DAVINCI_LPSC_AEMIF		14
+#define DAVINCI_LPSC_MMC_SD		15
+#define DAVINCI_LPSC_MEMSTICK		16
+#define DAVINCI_LPSC_McBSP		17
+#define DAVINCI_LPSC_I2C		18
+#define DAVINCI_LPSC_UART0		19
+#define DAVINCI_LPSC_UART1		20
+#define DAVINCI_LPSC_UART2		21
+#define DAVINCI_LPSC_SPI		22
+#define DAVINCI_LPSC_PWM0		23
+#define DAVINCI_LPSC_PWM1		24
+#define DAVINCI_LPSC_PWM2		25
+#define DAVINCI_LPSC_GPIO		26
+#define DAVINCI_LPSC_TIMER0		27
+#define DAVINCI_LPSC_TIMER1		28
+#define DAVINCI_LPSC_TIMER2		29
+#define DAVINCI_LPSC_SYSTEM_SUBSYS	30
+#define DAVINCI_LPSC_ARM		31
+#define DAVINCI_LPSC_SCR2		32
+#define DAVINCI_LPSC_SCR3		33
+#define DAVINCI_LPSC_SCR4		34
+#define DAVINCI_LPSC_CROSSBAR		35
+#define DAVINCI_LPSC_CFG27		36
+#define DAVINCI_LPSC_CFG3		37
+#define DAVINCI_LPSC_CFG5		38
+#define DAVINCI_LPSC_GEM		39
+#define DAVINCI_LPSC_IMCOP		40
+
+#define DAVINCI_DM646X_LPSC_EMAC	14
+#define DAVINCI_DM646X_LPSC_UART0	26
+#define DAVINCI_DM646X_LPSC_I2C		31
+
+#else /* CONFIG_SOC_DA8XX */
+
+enum davinci_lpsc_ids {
+	DAVINCI_LPSC_TPCC = 0,
+	DAVINCI_LPSC_TPTC0,
+	DAVINCI_LPSC_TPTC1,
+	DAVINCI_LPSC_AEMIF,
+	DAVINCI_LPSC_SPI0,
+	DAVINCI_LPSC_MMC_SD,
+	DAVINCI_LPSC_AINTC,
+	DAVINCI_LPSC_ARM_RAM_ROM,
+	DAVINCI_LPSC_SECCTL_KEYMGR,
+	DAVINCI_LPSC_UART0,
+	DAVINCI_LPSC_SCR0,
+	DAVINCI_LPSC_SCR1,
+	DAVINCI_LPSC_SCR2,
+	DAVINCI_LPSC_DMAX,
+	DAVINCI_LPSC_ARM,
+	DAVINCI_LPSC_GEM,
+	/* for LPSCs in PSC1, offset from 32 for differentiation */
+	DAVINCI_LPSC_PSC1_BASE = 32,	// 1- 0
+	DAVINCI_LPSC_USB11,		// 1- 1
+	DAVINCI_LPSC_USB20,		// 1- 2
+	DAVINCI_LPSC_GPIO,		// 1- 3
+	DAVINCI_LPSC_UHPI,		// 1- 4
+	DAVINCI_LPSC_EMAC,		// 1- 5
+	DAVINCI_LPSC_DDR_EMIF,		// 1- 6
+	DAVINCI_LPSC_McASP0,		// 1- 7
+	DAVINCI_LPSC_McASP1,		// 1- 8
+	DAVINCI_LPSC_McASP2,		// 1- 9
+	DAVINCI_LPSC_SPI1,		// 1-10
+	DAVINCI_LPSC_I2C1,		// 1-11
+	DAVINCI_LPSC_UART1,		// 1-12
+	DAVINCI_LPSC_UART2,		// 1-13
+	DAVINCI_LPSC_McBSP0,		// 1-14
+	DAVINCI_LPSC_McBSP1,		// 1-15
+	DAVINCI_LPSC_LCDC,		// 1-16
+};
+
+#endif /* CONFIG_SOC_DA8XX */
+
+void lpsc_on(unsigned int id);
+void dsp_on(void);
+
+void davinci_enable_uart0(void);
+void davinci_enable_emac(void);
+void davinci_enable_i2c(void);
+void davinci_errata_workarounds(void);
+
+#ifndef CONFIG_SOC_DA8XX
+
+/* Some PSC defines */
+#define PSC_CHP_SHRTSW			(0x01c40038)
+#define PSC_GBLCTL			(0x01c41010)
+#define PSC_EPCPR			(0x01c41070)
+#define PSC_EPCCR			(0x01c41078)
+#define PSC_PTCMD			(0x01c41120)
+#define PSC_PTSTAT			(0x01c41128)
+#define PSC_PDSTAT			(0x01c41200)
+#define PSC_PDSTAT1			(0x01c41204)
+#define PSC_PDCTL			(0x01c41300)
+#define PSC_PDCTL1			(0x01c41304)
+
+#define PSC_MDCTL_BASE			(0x01c41a00)
+#define PSC_MDSTAT_BASE			(0x01c41800)
+
+#define VDD3P3V_PWDN			(0x01c40048)
+#define UART0_PWREMU_MGMT		(0x01c20030)
+
+#define PSC_SILVER_BULLET		(0x01c41a20)
+
+#else /* CONFIG_SOC_DA8XX */
+
+#define PSC_PSC0_MODULE_ID_CNT		16
+#define PSC_PSC1_MODULE_ID_CNT		32
+
+struct davinci_psc_regs {
+	dv_reg	revid;
+	dv_reg	rsvd0[71];
+	dv_reg	ptcmd;
+	dv_reg	rsvd1;
+	dv_reg	ptstat;
+	dv_reg	rsvd2[437];
+	union {
+		struct {
+			dv_reg	mdstat[PSC_PSC0_MODULE_ID_CNT];
+			dv_reg	rsvd3[112];
+			dv_reg	mdctl[PSC_PSC0_MODULE_ID_CNT];
+		} psc0;
+		struct {
+			dv_reg	mdstat[PSC_PSC1_MODULE_ID_CNT];
+			dv_reg	rsvd3[96];
+			dv_reg	mdctl[PSC_PSC1_MODULE_ID_CNT];
+		} psc1;
+	};
+};
+
+#define davinci_psc0_regs ((struct davinci_psc_regs *)DAVINCI_PSC0_BASE)
+#define davinci_psc1_regs ((struct davinci_psc_regs *)DAVINCI_PSC1_BASE)
+
+#endif /* CONFIG_SOC_DA8XX */
+
+#ifndef CONFIG_SOC_DA8XX
+
+/* Miscellania... */
+#define VBPR				(0x20000020)
+
+/* NOTE:  system control modules are *highly* chip-specific, both
+ * as to register content (e.g. for muxing) and which registers exist.
+ */
+#define PINMUX0				0x01c40000
+#define PINMUX1				0x01c40004
+#define PINMUX2				0x01c40008
+#define PINMUX3				0x01c4000c
+#define PINMUX4				0x01c40010
+
+#else /* CONFIG_SOC_DA8XX */
+
+struct davinci_pllc_regs {
+	dv_reg	revid;
+	dv_reg	rsvd1[56];
+	dv_reg	rstype;
+	dv_reg	rsvd2[6];
+	dv_reg	pllctl;
+	dv_reg	ocsel;
+	dv_reg	rsvd3[2];
+	dv_reg	pllm;
+	dv_reg	prediv;
+	dv_reg	plldiv1;
+	dv_reg	plldiv2;
+	dv_reg	plldiv3;
+	dv_reg	oscdiv;
+	dv_reg	postdiv;
+	dv_reg	rsvd4[3];
+	dv_reg	pllcmd;
+	dv_reg	pllstat;
+	dv_reg	alnctl;
+	dv_reg	dchange;
+	dv_reg	cken;
+	dv_reg	ckstat;
+	dv_reg	systat;
+	dv_reg	rsvd5[3];
+	dv_reg	plldiv4;
+	dv_reg	plldiv5;
+	dv_reg	plldiv6;
+	dv_reg	plldiv7;
+	dv_reg	rsvd6[32];
+	dv_reg	emucnt0;
+	dv_reg	emucnt1;
+};
+
+#define davinci_pllc_regs ((struct davinci_pllc_regs *)DAVINCI_PLL_CNTRL0_BASE)
+#define DAVINCI_PLLC_DIV_MASK	0x1f
+
+#define ASYNC3			get_async3_src()
+#define EMIFB			get_emifb_src()
+#define PLL1_PLLM		((1 << 16) | DAVINCI_PLLM_CLKID)
+#define PLL1_SYSCLK1		((1 << 16) | 0x1)
+#define PLL1_SYSCLK2		((1 << 16) | 0x2)
+
+#define DAVINCI_SPI1_CLKID	(cpu_is_da830() ? 2 : ASYNC3)
+#define DAVINCI_DDR_CLKID	EMIFB
+
+/* Clock IDs */
+enum davinci_clk_ids {
+	DAVINCI_MMCSD_CLKID = 2,
+	DAVINCI_SPI0_CLKID = 2,
+	DAVINCI_UART2_CLKID = 2,
+	DAVINCI_LCDC_CLKID = 2,
+	DAVINCI_EMIFA_CLKID = 3,
+	DAVINCI_MDIO_CLKID = 4,
+	DAVINCI_ARM_CLKID = 6,
+	DAVINCI_PLLM_CLKID = 0xff,
+	DAVINCI_PLLC_CLKID = 0x100,
+	DAVINCI_AUXCLK_CLKID = 0x101
+};
+
+int da8xx_clk_get(enum davinci_clk_ids id);
+
+/* Boot config */
+struct davinci_syscfg_regs {
+	dv_reg	revid;
+	dv_reg	rsvd[71];
+	dv_reg	pinmux[20];
+	dv_reg	suspsrc;
+	dv_reg	chipsig;
+	dv_reg	chipsig_clr;
+	dv_reg	cfgchip0;
+	dv_reg	cfgchip1;
+	dv_reg	cfgchip2;
+	dv_reg	cfgchip3;
+	dv_reg	cfgchip4;
+};
+
+#define davinci_syscfg_regs \
+	((struct davinci_syscfg_regs *)DAVINCI_BOOTCFG_BASE)
+
+/* Emulation suspend bits */
+#define DAVINCI_SYSCFG_SUSPSRC_EMAC		(1 << 5)
+#define DAVINCI_SYSCFG_SUSPSRC_I2C		(1 << 16)
+#define DAVINCI_SYSCFG_SUSPSRC_SPI0		(1 << 21)
+#define DAVINCI_SYSCFG_SUSPSRC_SPI1		(1 << 22)
+#define DAVINCI_SYSCFG_SUSPSRC_UART2		(1 << 20)
+#define DAVINCI_SYSCFG_SUSPSRC_TIMER0		(1 << 27)
+
+/* Interrupt controller */
+struct davinci_aintc_regs {
+	dv_reg	revid;
+	dv_reg	cr;
+	dv_reg	dummy0[2];
+	dv_reg	ger;
+	dv_reg	dummy1[219];
+	dv_reg	ecr1;
+	dv_reg	ecr2;
+	dv_reg	ecr3;
+	dv_reg	dummy2[1117];
+	dv_reg	hier;
+};
+
+#define davinci_aintc_regs ((struct davinci_aintc_regs *)DAVINCI_INTC_BASE)
+
+struct davinci_uart_ctrl_regs {
+	dv_reg	revid1;
+	dv_reg	revid2;
+	dv_reg	pwremu_mgmt;
+	dv_reg	mdr;
+};
+
+#define DAVINCI_UART_CTRL_BASE 0x28
+#define DAVINCI_UART0_CTRL_ADDR (DAVINCI_UART0_BASE + DAVINCI_UART_CTRL_BASE)
+#define DAVINCI_UART1_CTRL_ADDR (DAVINCI_UART1_BASE + DAVINCI_UART_CTRL_BASE)
+#define DAVINCI_UART2_CTRL_ADDR (DAVINCI_UART2_BASE + DAVINCI_UART_CTRL_BASE)
+
+#define davinci_uart0_ctrl_regs \
+	((struct davinci_uart_ctrl_regs *)DAVINCI_UART0_CTRL_ADDR)
+#define davinci_uart1_ctrl_regs \
+	((struct davinci_uart_ctrl_regs *)DAVINCI_UART1_CTRL_ADDR)
+#define davinci_uart2_ctrl_regs \
+	((struct davinci_uart_ctrl_regs *)DAVINCI_UART2_CTRL_ADDR)
+
+/* UART PWREMU_MGMT definitions */
+#define DAVINCI_UART_PWREMU_MGMT_FREE	(1 << 0)
+#define DAVINCI_UART_PWREMU_MGMT_URRST	(1 << 13)
+#define DAVINCI_UART_PWREMU_MGMT_UTRST	(1 << 14)
+
+static inline int cpu_is_da830(void)
+{
+	unsigned int jtag_id	= readl(JTAG_ID_REG);
+	unsigned short part_no	= (jtag_id >> 12) & 0xffff;
+
+	return ((part_no == 0xb7df) ? 1 : 0);
+}
+static inline int cpu_is_da850(void)
+{
+	unsigned int jtag_id	= readl(JTAG_ID_REG);
+	unsigned short part_no	= (jtag_id >> 12) & 0xffff;
+
+	return ((part_no == 0xb7d1) ? 1 : 0);
+}
+
+static inline int get_async3_src(void)
+{
+	return ((readl(CFGCHIP3) & 0x10) ? PLL1_SYSCLK2 : 2);
+}
+
+static inline int get_emifb_src(void)
+{
+	return ((readl(CFGCHIP3) & 0x80) ? PLL1_PLLM : PLL1_SYSCLK1);
+}
+
+#endif /* CONFIG_SOC_DA8XX */
+
+#endif /* __ASM_ARCH_HARDWARE_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

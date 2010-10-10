Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5567-0004O9-Vh
	for barebox@lists.infradead.org; Sun, 10 Oct 2010 23:14:36 +0000
Received: by ewy7 with SMTP id 7so85545ewy.36
	for <barebox@lists.infradead.org>; Sun, 10 Oct 2010 16:14:29 -0700 (PDT)
From: Alexey Zaytsev <alexey.zaytsev@gmail.com>
Date: Sun, 10 Oct 2010 23:15:37 +0000
Message-ID: <20101010230505.17833.46593.stgit@zaytsev.su>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Add basic support from ARM Versatile/PB
To: barebox@lists.infradead.org
Cc: Bahadir Balban <bbalban@b-labs.com>

Signed-off-by: Alexey Zaytsev <alexey.zaytsev@gmail.com>
---

Hi.

It seems that barebox does not run on any ARM machines provided
by QEMU. This patch adds basic Versatile/PB support. It is far from
being complete and has not been tested on real hardware, but
seems to work fine in QEMU.

Please notice, that you need to set CONFIG_VERSATILE_SMC91C111
in order to have networking in QEMU, as it does not provide
smc91x found on the real hardware.

For a queck test, run:

	qemu-system-arm -kernel barebox.bin -M versatilepb -cpu arm926 -nographic -m 64 -net nic,model=smc91c111 -net user


 arch/arm/Kconfig                                |    4 
 arch/arm/Makefile                               |    2 
 arch/arm/boards/versatile/Kconfig               |   21 +
 arch/arm/boards/versatile/Makefile              |    2 
 arch/arm/boards/versatile/config.h              |    5 
 arch/arm/boards/versatile/env/bin/init          |    1 
 arch/arm/boards/versatile/versatilepb.c         |   56 +++
 arch/arm/configs/versatilepb_defconfig          |   12 +
 arch/arm/include/asm/arm_timer.h                |   33 ++
 arch/arm/mach-versatile/Kconfig                 |   16 +
 arch/arm/mach-versatile/Makefile                |    2 
 arch/arm/mach-versatile/core.c                  |  217 ++++++++++++
 arch/arm/mach-versatile/include/mach/clkdev.h   |    7 
 arch/arm/mach-versatile/include/mach/debug_ll.h |   37 ++
 arch/arm/mach-versatile/include/mach/init.h     |    9 
 arch/arm/mach-versatile/include/mach/platform.h |  417 +++++++++++++++++++++++
 16 files changed, 841 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/versatile/Kconfig
 create mode 100644 arch/arm/boards/versatile/Makefile
 create mode 100644 arch/arm/boards/versatile/config.h
 create mode 100644 arch/arm/boards/versatile/env/bin/init
 create mode 100644 arch/arm/boards/versatile/versatilepb.c
 create mode 100644 arch/arm/configs/versatilepb_defconfig
 create mode 100644 arch/arm/include/asm/arm_timer.h
 create mode 100644 arch/arm/mach-versatile/Kconfig
 create mode 100644 arch/arm/mach-versatile/Makefile
 create mode 100644 arch/arm/mach-versatile/core.c
 create mode 100644 arch/arm/mach-versatile/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-versatile/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-versatile/include/mach/init.h
 create mode 100644 arch/arm/mach-versatile/include/mach/platform.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index fa37036..d90246a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -56,6 +56,9 @@ config ARCH_S3C24xx
 	bool "Samsung S3C2410, S3C2412, S3C2413, S3C2440, S3C2442, S3C2443"
 	select CPU_ARM920T
 
+config ARCH_VERSATILE
+	bool "ARM Versatile boards (ARM926EJ-S)"
+	select CPU_ARM926T
 endchoice
 
 source arch/arm/cpu/Kconfig
@@ -66,6 +69,7 @@ source arch/arm/mach-netx/Kconfig
 source arch/arm/mach-nomadik/Kconfig
 source arch/arm/mach-omap/Kconfig
 source arch/arm/mach-s3c24xx/Kconfig
+source arch/arm/mach-versatile/Kconfig
 
 config AEABI
 	bool "Use the ARM EABI to compile barebox"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 77b6cf4..6ad14e7 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -45,6 +45,7 @@ machine-$(CONFIG_ARCH_NOMADIK)		:= nomadik
 machine-$(CONFIG_ARCH_NETX)		:= netx
 machine-$(CONFIG_ARCH_OMAP)		:= omap
 machine-$(CONFIG_ARCH_S3C24xx)		:= s3c24xx
+machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
 
 # Board directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
@@ -80,6 +81,7 @@ board-$(CONFIG_MACH_PCM043)			:= pcm043
 board-$(CONFIG_MACH_PM9263)			:= pm9263
 board-$(CONFIG_MACH_SCB9328)			:= scb9328
 board-$(CONFIG_MACH_NESO)			:= guf-neso
+board-$(CONFIG_MACH_VERSATILEPB)		:= versatile
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/versatile/Kconfig b/arch/arm/boards/versatile/Kconfig
new file mode 100644
index 0000000..d5da87d
--- /dev/null
+++ b/arch/arm/boards/versatile/Kconfig
@@ -0,0 +1,21 @@
+
+
+if MACH_VERSATILEPB
+
+config ARCH_TEXT_BASE
+	hex
+	default 0
+
+config BOARDINFO
+	default "ARM Versatile/PB (ARM926EJ-S)"
+endif
+
+config VERSATILE_SMC91C111
+	bool "Use smc91c111 instead of smc91x (for QEMU)"
+	default 0
+	help
+	 Enable this option to run barebox inside qemu.
+	 Real versatile boards are equipped with smc911x,
+	 but qemu only provides smc91111, which is a bit different.
+
+
diff --git a/arch/arm/boards/versatile/Makefile b/arch/arm/boards/versatile/Makefile
new file mode 100644
index 0000000..a17aed3
--- /dev/null
+++ b/arch/arm/boards/versatile/Makefile
@@ -0,0 +1,2 @@
+
+obj-$(CONFIG_MACH_VERSATILEPB) += versatilepb.o
diff --git a/arch/arm/boards/versatile/config.h b/arch/arm/boards/versatile/config.h
new file mode 100644
index 0000000..25bb18f
--- /dev/null
+++ b/arch/arm/boards/versatile/config.h
@@ -0,0 +1,5 @@
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/versatile/env/bin/init b/arch/arm/boards/versatile/env/bin/init
new file mode 100644
index 0000000..224a6b4
--- /dev/null
+++ b/arch/arm/boards/versatile/env/bin/init
@@ -0,0 +1 @@
+# Dummy Init environment script
diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
new file mode 100644
index 0000000..57e4991
--- /dev/null
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -0,0 +1,56 @@
+/*
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <mach/init.h>
+#include <mach/platform.h>
+
+static int vpb_console_init(void)
+{
+	versatile_register_uart(0);
+	return 0;
+}
+
+console_initcall(vpb_console_init);
+
+static struct device_d smc911x_dev = {
+	.id		= -1,
+#ifdef CONFIG_VERSATILE_SMC91C111
+	.name		= "smc91c111",
+#else
+	.name		= "smc911x",
+#endif
+	.map_base	= VERSATILE_ETH_BASE,
+	.size		= 64 * 1024
+};
+
+static int vpb_devices_init(void)
+{
+	versatile_add_sdram(64 * 1024 *1024);
+
+	register_device(&smc911x_dev);
+
+	armlinux_set_architecture(MACH_TYPE_VERSATILE_PB);
+	armlinux_set_bootparams((void *)(0x00000100));
+
+	return 0;
+}
+device_initcall(vpb_devices_init);
diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
new file mode 100644
index 0000000..f505ac6
--- /dev/null
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -0,0 +1,12 @@
+
+CONFIG_ARCH_VERSATILE=y
+CONFIG_MACH_VERSATILEPB=y
+
+CONFIG_TEXT_BASE=0x500000
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+CONFIG_MEMORY_LAYOUT_DEFAULT=y
+CONFIG_PROMPT="versatilepb> "
+CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/versatile/env"
+CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_DRIVER_NET_SMC911X=y
diff --git a/arch/arm/include/asm/arm_timer.h b/arch/arm/include/asm/arm_timer.h
new file mode 100644
index 0000000..0433279
--- /dev/null
+++ b/arch/arm/include/asm/arm_timer.h
@@ -0,0 +1,33 @@
+#ifndef __ASM_ARM_HARDWARE_ARM_TIMER_H
+#define __ASM_ARM_HARDWARE_ARM_TIMER_H
+
+/*
+ * From Linux v2.6.35
+ * arch/arm/include/asm/hardware/arm_timer.h
+ *
+ * ARM timer implementation, found in Integrator, Versatile and Realview
+ * platforms.  Not all platforms support all registers and bits in these
+ * registers, so we mark them with A for Integrator AP, C for Integrator
+ * CP, V for Versatile and R for Realview.
+ *
+ * Integrator AP has 16-bit timers, Integrator CP, Versatile and Realview
+ * can have 16-bit or 32-bit selectable via a bit in the control register.
+ */
+#define TIMER_LOAD	0x00			/* ACVR rw */
+#define TIMER_VALUE	0x04			/* ACVR ro */
+#define TIMER_CTRL	0x08			/* ACVR rw */
+#define TIMER_CTRL_ONESHOT	(1 << 0)	/*  CVR */
+#define TIMER_CTRL_32BIT	(1 << 1)	/*  CVR */
+#define TIMER_CTRL_DIV1		(0 << 2)	/* ACVR */
+#define TIMER_CTRL_DIV16	(1 << 2)	/* ACVR */
+#define TIMER_CTRL_DIV256	(2 << 2)	/* ACVR */
+#define TIMER_CTRL_IE		(1 << 5)	/*   VR */
+#define TIMER_CTRL_PERIODIC	(1 << 6)	/* ACVR */
+#define TIMER_CTRL_ENABLE	(1 << 7)	/* ACVR */
+
+#define TIMER_INTCLR	0x0c			/* ACVR wo */
+#define TIMER_RIS	0x10			/*  CVR ro */
+#define TIMER_MIS	0x14			/*  CVR ro */
+#define TIMER_BGLOAD	0x18			/*  CVR rw */
+
+#endif
diff --git a/arch/arm/mach-versatile/Kconfig b/arch/arm/mach-versatile/Kconfig
new file mode 100644
index 0000000..9a1bf95
--- /dev/null
+++ b/arch/arm/mach-versatile/Kconfig
@@ -0,0 +1,16 @@
+
+if ARCH_VERSATILE
+
+choice
+	prompt "ARM Board type"
+
+config MACH_VERSATILEPB
+	bool "ARM Versatile/PB (ARM926EJ-S)"
+	select ARM_AMBA
+	select CLKDEV_LOOKUP
+
+endchoice
+
+source arch/arm/boards/versatile/Kconfig
+
+endif
diff --git a/arch/arm/mach-versatile/Makefile b/arch/arm/mach-versatile/Makefile
new file mode 100644
index 0000000..a8da54c
--- /dev/null
+++ b/arch/arm/mach-versatile/Makefile
@@ -0,0 +1,2 @@
+
+obj-y += core.o
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
new file mode 100644
index 0000000..9ea4e24
--- /dev/null
+++ b/arch/arm/mach-versatile/core.c
@@ -0,0 +1,217 @@
+/*
+ * Copyright (C) 2010 B Labs Ltd,
+ * http://l4dev.org
+ * Author: Alexey Zaytsev <alexey.zaytsev@gmail.com>
+ *
+ * Based on mach-nomadik
+ * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2 of
+ * the License.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <debug_ll.h>
+
+#include <linux/clkdev.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <asm/io.h>
+#include <asm/arm_timer.h>
+#include <asm/armlinux.h>
+
+#include <mach/platform.h>
+#include <mach/init.h>
+
+
+static struct memory_platform_data ram_pdata = {
+	.name = "ram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.id = -1,
+	.name = "mem",
+	.map_base = 0x00000000,
+	.platform_data = &ram_pdata,
+};
+
+void versatile_add_sdram(u32 size)
+{
+	sdram_dev.size = size;
+	register_device(&sdram_dev);
+	armlinux_add_dram(&sdram_dev);
+}
+
+/* 4 uarts, yay! */
+static struct device_d uart0_serial_device = {
+	.id = 1,
+	.name = "uart-pl011",
+	.map_base = VERSATILE_UART0_BASE,
+	.size = 4096,
+};
+
+static struct device_d uart1_serial_device = {
+	.id = 2,
+	.name = "uart-pl011",
+	.map_base = VERSATILE_UART1_BASE,
+	.size = 4096,
+};
+
+static struct device_d uart2_serial_device = {
+	.id = 3,
+	.name = "uart-pl011",
+	.map_base = VERSATILE_UART2_BASE,
+	.size = 4096,
+};
+static struct device_d uart3_serial_device = {
+	.id = 4,
+	.name = "uart-pl011",
+	.map_base = VERSATILE_UART3_BASE,
+	.size = 4096,
+};
+
+
+struct clk {
+	unsigned long rate;
+};
+
+static struct clk ref_clk_24 = {
+	.rate = 24000000,
+};
+
+unsigned long clk_get_rate(struct clk *clk)
+{
+	return clk->rate;
+}
+EXPORT_SYMBOL(clk_get_rate);
+
+/* enable and disable do nothing */
+int clk_enable(struct clk *clk)
+{
+	return 0;
+}
+EXPORT_SYMBOL(clk_enable);
+
+void clk_disable(struct clk *clk)
+{
+}
+EXPORT_SYMBOL(clk_disable);
+
+/* Create a clock structure with the given name */
+int vpb_clk_create(struct clk *clk, const char *dev_id)
+{
+	struct clk_lookup *clkdev;
+
+	clkdev = clkdev_alloc(clk, NULL, dev_id);
+	if (!clkdev)
+		return -ENOMEM;
+
+	clkdev_add(clkdev);
+	return 0;
+}
+
+/* 1Mhz / 256 */
+#define TIMER_FREQ (1000000/256)
+
+#define TIMER0_BASE (VERSATILE_TIMER0_1_BASE)
+#define TIMER1_BASE ((VERSATILE_TIMER0_1_BASE) + 0x20)
+#define TIMER2_BASE (VERSATILE_TIMER2_3_BASE)
+#define TIMER3_BASE ((VERSATILE_TIMER2_3_BASE) + 0x20)
+
+
+static uint64_t vpb_clocksource_read(void)
+{
+	return ~readl(TIMER0_BASE + TIMER_VALUE);
+}
+
+static struct clocksource vpb_cs = {
+	.read = vpb_clocksource_read,
+	.mask = 0xffffffff,
+	.shift = 10,
+};
+
+/* From Linux v2.6.35
+ * arch/arm/mach-versatile/core.c */
+static void versatile_timer_init (void)
+{
+	u32 val;
+
+	/*
+	 * set clock frequency:
+	 *      VERSATILE_REFCLK is 32KHz
+	 *      VERSATILE_TIMCLK is 1MHz
+	 */
+
+	val = readl(VERSATILE_SCTL_BASE);
+	val |= (VERSATILE_TIMCLK << VERSATILE_TIMER1_EnSel);
+	writel(val, VERSATILE_SCTL_BASE);
+
+	/*
+	 * Disable all timers, just to be sure.
+	 */
+
+	writel(0, TIMER0_BASE + TIMER_CTRL);
+	writel(0, TIMER1_BASE + TIMER_CTRL);
+	writel(0, TIMER2_BASE + TIMER_CTRL);
+	writel(0, TIMER3_BASE + TIMER_CTRL);
+
+        writel(TIMER_CTRL_32BIT | TIMER_CTRL_ENABLE | TIMER_CTRL_DIV256,
+			                TIMER0_BASE + TIMER_CTRL);
+}
+
+static int vpb_clocksource_init(void)
+{
+	versatile_timer_init();
+	vpb_cs.mult = clocksource_hz2mult(TIMER_FREQ, vpb_cs.shift);
+
+	return init_clock(&vpb_cs);
+}
+
+core_initcall(vpb_clocksource_init);
+
+void versatile_register_uart(unsigned id)
+{
+	switch (id) {
+	case 0:
+		vpb_clk_create(&ref_clk_24, dev_name(&uart0_serial_device));
+		register_device(&uart0_serial_device);
+		break;
+	case 1:
+		vpb_clk_create(&ref_clk_24, dev_name(&uart1_serial_device));
+		register_device(&uart1_serial_device);
+		break;
+	case 2:
+		vpb_clk_create(&ref_clk_24, dev_name(&uart2_serial_device));
+		register_device(&uart2_serial_device);
+		break;
+	case 3:
+		vpb_clk_create(&ref_clk_24, dev_name(&uart3_serial_device));
+		register_device(&uart3_serial_device);
+		break;
+	}
+}
+
+
+void __noreturn reset_cpu (unsigned long ignored)
+{
+	while (1);
+}
+EXPORT_SYMBOL(reset_cpu);
+
diff --git a/arch/arm/mach-versatile/include/mach/clkdev.h b/arch/arm/mach-versatile/include/mach/clkdev.h
new file mode 100644
index 0000000..04b37a8
--- /dev/null
+++ b/arch/arm/mach-versatile/include/mach/clkdev.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_MACH_CLKDEV_H
+#define __ASM_MACH_CLKDEV_H
+
+#define __clk_get(clk) ({ 1; })
+#define __clk_put(clk) do { } while (0)
+
+#endif
diff --git a/arch/arm/mach-versatile/include/mach/debug_ll.h b/arch/arm/mach-versatile/include/mach/debug_ll.h
new file mode 100644
index 0000000..514fcfb
--- /dev/null
+++ b/arch/arm/mach-versatile/include/mach/debug_ll.h
@@ -0,0 +1,37 @@
+/*
+ * Copyright (C) 2010 B Labs Ltd
+ * Author: Alexey Zaytsev <alexey.zaytsev@gmail.com>
+ *
+ * barebox is free software: you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation, either version 3 of the License, or
+ * (at your option) any later version.
+ *
+ * barebox is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with barebox.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#ifndef __MACH_DEBUG_LL_H__
+#define   __MACH_DEBUG_LL_H__
+
+#include <linux/amba/serial.h>
+#include <asm/io.h>
+
+static inline void putc(char c)
+{
+	/* Wait until there is space in the FIFO */
+	while (readl(0x101F1000 + UART01x_FR) & UART01x_FR_TXFF);
+
+	/* Send the character */
+	writel(c, 0x101F1000 + UART01x_DR);
+
+	/* Wait to make sure it hits the line, in case we die too soon. */
+	while (readl(0x101F1000 + UART01x_FR) & UART01x_FR_TXFF);
+}
+
+#endif
diff --git a/arch/arm/mach-versatile/include/mach/init.h b/arch/arm/mach-versatile/include/mach/init.h
new file mode 100644
index 0000000..7772e85
--- /dev/null
+++ b/arch/arm/mach-versatile/include/mach/init.h
@@ -0,0 +1,9 @@
+
+#ifndef __VERSATILE_INIT_H__
+#define __VERSATILE_INIT_H__
+
+
+void versatile_add_sdram(u32 size);
+void versatile_register_uart(unsigned id);
+
+#endif
diff --git a/arch/arm/mach-versatile/include/mach/platform.h b/arch/arm/mach-versatile/include/mach/platform.h
new file mode 100644
index 0000000..88b8032
--- /dev/null
+++ b/arch/arm/mach-versatile/include/mach/platform.h
@@ -0,0 +1,417 @@
+/*
+ * ach-arm926ejs/include/mach/platform.h
+ *
+ * Borrowed from Linux v2.6.35
+ * arch/arm/mach-versatile/include/mach/platform.h
+ *
+ * Copyright (c) ARM Limited 2003.  All rights reserved.
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
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#ifndef __address_h
+#define __address_h                     1
+
+/*
+ * Memory definitions
+ */
+#define VERSATILE_BOOT_ROM_LO          0x30000000		/* DoC Base (64Mb)...*/
+#define VERSATILE_BOOT_ROM_HI          0x30000000
+#define VERSATILE_BOOT_ROM_BASE        VERSATILE_BOOT_ROM_HI	 /*  Normal position */
+#define VERSATILE_BOOT_ROM_SIZE        SZ_64M
+
+#define VERSATILE_SSRAM_BASE           /* VERSATILE_SSMC_BASE ? */
+#define VERSATILE_SSRAM_SIZE           SZ_2M
+
+#define VERSATILE_FLASH_BASE           0x34000000
+#define VERSATILE_FLASH_SIZE           SZ_64M
+
+/* 
+ *  SDRAM
+ */
+#define VERSATILE_SDRAM_BASE           0x00000000
+
+/* 
+ *  Logic expansion modules
+ * 
+ */
+
+
+/* ------------------------------------------------------------------------
+ *  Versatile Registers
+ * ------------------------------------------------------------------------
+ * 
+ */
+#define VERSATILE_SYS_ID_OFFSET               0x00
+#define VERSATILE_SYS_SW_OFFSET               0x04
+#define VERSATILE_SYS_LED_OFFSET              0x08
+#define VERSATILE_SYS_OSC0_OFFSET             0x0C
+
+#if defined(CONFIG_ARCH_VERSATILE_PB)
+#define VERSATILE_SYS_OSC1_OFFSET             0x10
+#define VERSATILE_SYS_OSC2_OFFSET             0x14
+#define VERSATILE_SYS_OSC3_OFFSET             0x18
+#define VERSATILE_SYS_OSC4_OFFSET             0x1C
+#elif defined(CONFIG_MACH_VERSATILE_AB)
+#define VERSATILE_SYS_OSC1_OFFSET             0x1C
+#endif
+
+#define VERSATILE_SYS_OSCCLCD_OFFSET          0x1c
+
+#define VERSATILE_SYS_LOCK_OFFSET             0x20
+#define VERSATILE_SYS_100HZ_OFFSET            0x24
+#define VERSATILE_SYS_CFGDATA1_OFFSET         0x28
+#define VERSATILE_SYS_CFGDATA2_OFFSET         0x2C
+#define VERSATILE_SYS_FLAGS_OFFSET            0x30
+#define VERSATILE_SYS_FLAGSSET_OFFSET         0x30
+#define VERSATILE_SYS_FLAGSCLR_OFFSET         0x34
+#define VERSATILE_SYS_NVFLAGS_OFFSET          0x38
+#define VERSATILE_SYS_NVFLAGSSET_OFFSET       0x38
+#define VERSATILE_SYS_NVFLAGSCLR_OFFSET       0x3C
+#define VERSATILE_SYS_RESETCTL_OFFSET         0x40
+#define VERSATILE_SYS_PCICTL_OFFSET           0x44
+#define VERSATILE_SYS_MCI_OFFSET              0x48
+#define VERSATILE_SYS_FLASH_OFFSET            0x4C
+#define VERSATILE_SYS_CLCD_OFFSET             0x50
+#define VERSATILE_SYS_CLCDSER_OFFSET          0x54
+#define VERSATILE_SYS_BOOTCS_OFFSET           0x58
+#define VERSATILE_SYS_24MHz_OFFSET            0x5C
+#define VERSATILE_SYS_MISC_OFFSET             0x60
+#define VERSATILE_SYS_TEST_OSC0_OFFSET        0x80
+#define VERSATILE_SYS_TEST_OSC1_OFFSET        0x84
+#define VERSATILE_SYS_TEST_OSC2_OFFSET        0x88
+#define VERSATILE_SYS_TEST_OSC3_OFFSET        0x8C
+#define VERSATILE_SYS_TEST_OSC4_OFFSET        0x90
+
+#define VERSATILE_SYS_BASE                    0x10000000
+#define VERSATILE_SYS_ID                      (VERSATILE_SYS_BASE + VERSATILE_SYS_ID_OFFSET)
+#define VERSATILE_SYS_SW                      (VERSATILE_SYS_BASE + VERSATILE_SYS_SW_OFFSET)
+#define VERSATILE_SYS_LED                     (VERSATILE_SYS_BASE + VERSATILE_SYS_LED_OFFSET)
+#define VERSATILE_SYS_OSC0                    (VERSATILE_SYS_BASE + VERSATILE_SYS_OSC0_OFFSET)
+#define VERSATILE_SYS_OSC1                    (VERSATILE_SYS_BASE + VERSATILE_SYS_OSC1_OFFSET)
+
+#if defined(CONFIG_ARCH_VERSATILE_PB)
+#define VERSATILE_SYS_OSC2                    (VERSATILE_SYS_BASE + VERSATILE_SYS_OSC2_OFFSET)
+#define VERSATILE_SYS_OSC3                    (VERSATILE_SYS_BASE + VERSATILE_SYS_OSC3_OFFSET)
+#define VERSATILE_SYS_OSC4                    (VERSATILE_SYS_BASE + VERSATILE_SYS_OSC4_OFFSET)
+#endif
+
+#define VERSATILE_SYS_LOCK                    (VERSATILE_SYS_BASE + VERSATILE_SYS_LOCK_OFFSET)
+#define VERSATILE_SYS_100HZ                   (VERSATILE_SYS_BASE + VERSATILE_SYS_100HZ_OFFSET)
+#define VERSATILE_SYS_CFGDATA1                (VERSATILE_SYS_BASE + VERSATILE_SYS_CFGDATA1_OFFSET)
+#define VERSATILE_SYS_CFGDATA2                (VERSATILE_SYS_BASE + VERSATILE_SYS_CFGDATA2_OFFSET)
+#define VERSATILE_SYS_FLAGS                   (VERSATILE_SYS_BASE + VERSATILE_SYS_FLAGS_OFFSET)
+#define VERSATILE_SYS_FLAGSSET                (VERSATILE_SYS_BASE + VERSATILE_SYS_FLAGSSET_OFFSET)
+#define VERSATILE_SYS_FLAGSCLR                (VERSATILE_SYS_BASE + VERSATILE_SYS_FLAGSCLR_OFFSET)
+#define VERSATILE_SYS_NVFLAGS                 (VERSATILE_SYS_BASE + VERSATILE_SYS_NVFLAGS_OFFSET)
+#define VERSATILE_SYS_NVFLAGSSET              (VERSATILE_SYS_BASE + VERSATILE_SYS_NVFLAGSSET_OFFSET)
+#define VERSATILE_SYS_NVFLAGSCLR              (VERSATILE_SYS_BASE + VERSATILE_SYS_NVFLAGSCLR_OFFSET)
+#define VERSATILE_SYS_RESETCTL                (VERSATILE_SYS_BASE + VERSATILE_SYS_RESETCTL_OFFSET)
+#define VERSATILE_SYS_PCICTL                  (VERSATILE_SYS_BASE + VERSATILE_SYS_PCICTL_OFFSET)
+#define VERSATILE_SYS_MCI                     (VERSATILE_SYS_BASE + VERSATILE_SYS_MCI_OFFSET)
+#define VERSATILE_SYS_FLASH                   (VERSATILE_SYS_BASE + VERSATILE_SYS_FLASH_OFFSET)
+#define VERSATILE_SYS_CLCD                    (VERSATILE_SYS_BASE + VERSATILE_SYS_CLCD_OFFSET)
+#define VERSATILE_SYS_CLCDSER                 (VERSATILE_SYS_BASE + VERSATILE_SYS_CLCDSER_OFFSET)
+#define VERSATILE_SYS_BOOTCS                  (VERSATILE_SYS_BASE + VERSATILE_SYS_BOOTCS_OFFSET)
+#define VERSATILE_SYS_24MHz                   (VERSATILE_SYS_BASE + VERSATILE_SYS_24MHz_OFFSET)
+#define VERSATILE_SYS_MISC                    (VERSATILE_SYS_BASE + VERSATILE_SYS_MISC_OFFSET)
+#define VERSATILE_SYS_TEST_OSC0               (VERSATILE_SYS_BASE + VERSATILE_SYS_TEST_OSC0_OFFSET)
+#define VERSATILE_SYS_TEST_OSC1               (VERSATILE_SYS_BASE + VERSATILE_SYS_TEST_OSC1_OFFSET)
+#define VERSATILE_SYS_TEST_OSC2               (VERSATILE_SYS_BASE + VERSATILE_SYS_TEST_OSC2_OFFSET)
+#define VERSATILE_SYS_TEST_OSC3               (VERSATILE_SYS_BASE + VERSATILE_SYS_TEST_OSC3_OFFSET)
+#define VERSATILE_SYS_TEST_OSC4               (VERSATILE_SYS_BASE + VERSATILE_SYS_TEST_OSC4_OFFSET)
+
+/* 
+ * Values for VERSATILE_SYS_RESET_CTRL
+ */
+#define VERSATILE_SYS_CTRL_RESET_CONFIGCLR    0x01
+#define VERSATILE_SYS_CTRL_RESET_CONFIGINIT   0x02
+#define VERSATILE_SYS_CTRL_RESET_DLLRESET     0x03
+#define VERSATILE_SYS_CTRL_RESET_PLLRESET     0x04
+#define VERSATILE_SYS_CTRL_RESET_POR          0x05
+#define VERSATILE_SYS_CTRL_RESET_DoC          0x06
+
+#define VERSATILE_SYS_CTRL_LED         (1 << 0)
+
+
+/* ------------------------------------------------------------------------
+ *  Versatile control registers
+ * ------------------------------------------------------------------------
+ */
+
+/* 
+ * VERSATILE_IDFIELD
+ *
+ * 31:24 = manufacturer (0x41 = ARM)
+ * 23:16 = architecture (0x08 = AHB system bus, ASB processor bus)
+ * 15:12 = FPGA (0x3 = XVC600 or XVC600E)
+ * 11:4  = build value
+ * 3:0   = revision number (0x1 = rev B (AHB))
+ */
+
+/*
+ * VERSATILE_SYS_LOCK
+ *     control access to SYS_OSCx, SYS_CFGDATAx, SYS_RESETCTL, 
+ *     SYS_CLD, SYS_BOOTCS
+ */
+#define VERSATILE_SYS_LOCK_LOCKED    (1 << 16)
+#define VERSATILE_SYS_LOCKVAL_MASK	0xFFFF		/* write 0xA05F to enable write access */
+
+/*
+ * VERSATILE_SYS_FLASH
+ */
+#define VERSATILE_FLASHPROG_FLVPPEN	(1 << 0)	/* Enable writing to flash */
+
+/*
+ * VERSATILE_INTREG
+ *     - used to acknowledge and control MMCI and UART interrupts 
+ */
+#define VERSATILE_INTREG_WPROT        0x00    /* MMC protection status (no interrupt generated) */
+#define VERSATILE_INTREG_RI0          0x01    /* Ring indicator UART0 is asserted,              */
+#define VERSATILE_INTREG_CARDIN       0x08    /* MMCI card in detect                            */
+                                                /* write 1 to acknowledge and clear               */
+#define VERSATILE_INTREG_RI1          0x02    /* Ring indicator UART1 is asserted,              */
+#define VERSATILE_INTREG_CARDINSERT   0x03    /* Signal insertion of MMC card                   */
+
+/*
+ * VERSATILE peripheral addresses
+ */
+#define VERSATILE_PCI_CORE_BASE        0x10001000	/* PCI core control */
+#define VERSATILE_I2C_BASE             0x10002000	/* I2C control */
+#define VERSATILE_SIC_BASE             0x10003000	/* Secondary interrupt controller */
+#define VERSATILE_AACI_BASE            0x10004000	/* Audio */
+#define VERSATILE_MMCI0_BASE           0x10005000	/* MMC interface */
+#define VERSATILE_KMI0_BASE            0x10006000	/* KMI interface */
+#define VERSATILE_KMI1_BASE            0x10007000	/* KMI 2nd interface */
+#define VERSATILE_CHAR_LCD_BASE        0x10008000	/* Character LCD */
+#define VERSATILE_UART3_BASE           0x10009000	/* UART 3 */
+#define VERSATILE_SCI1_BASE            0x1000A000
+#define VERSATILE_MMCI1_BASE           0x1000B000    /* MMC Interface */
+	/* 0x1000C000 - 0x1000CFFF = reserved */
+#define VERSATILE_ETH_BASE             0x10010000	/* Ethernet */
+#define VERSATILE_USB_BASE             0x10020000	/* USB */
+	/* 0x10030000 - 0x100FFFFF = reserved */
+#define VERSATILE_SMC_BASE             0x10100000	/* SMC */
+#define VERSATILE_MPMC_BASE            0x10110000	/* MPMC */
+#define VERSATILE_CLCD_BASE            0x10120000	/* CLCD */
+#define VERSATILE_DMAC_BASE            0x10130000	/* DMA controller */
+#define VERSATILE_VIC_BASE             0x10140000	/* Vectored interrupt controller */
+#define VERSATILE_PERIPH_BASE          0x10150000	/* off-chip peripherals alias from */
+                                                /* 0x10000000 - 0x100FFFFF */
+#define VERSATILE_AHBM_BASE            0x101D0000	/* AHB monitor */
+#define VERSATILE_SCTL_BASE            0x101E0000	/* System controller */
+#define VERSATILE_WATCHDOG_BASE        0x101E1000	/* Watchdog */
+#define VERSATILE_TIMER0_1_BASE        0x101E2000	/* Timer 0 and 1 */
+#define VERSATILE_TIMER2_3_BASE        0x101E3000	/* Timer 2 and 3 */
+#define VERSATILE_GPIO0_BASE           0x101E4000	/* GPIO port 0 */
+#define VERSATILE_GPIO1_BASE           0x101E5000	/* GPIO port 1 */
+#define VERSATILE_GPIO2_BASE           0x101E6000	/* GPIO port 2 */
+#define VERSATILE_GPIO3_BASE           0x101E7000	/* GPIO port 3 */
+#define VERSATILE_RTC_BASE             0x101E8000	/* Real Time Clock */
+	/* 0x101E9000 - reserved */
+#define VERSATILE_SCI_BASE             0x101F0000	/* Smart card controller */
+#define VERSATILE_UART0_BASE           0x101F1000	/* Uart 0 */
+#define VERSATILE_UART1_BASE           0x101F2000	/* Uart 1 */
+#define VERSATILE_UART2_BASE           0x101F3000	/* Uart 2 */
+#define VERSATILE_SSP_BASE             0x101F4000	/* Synchronous Serial Port */
+
+#define VERSATILE_SSMC_BASE            0x20000000	/* SSMC */
+#define VERSATILE_IB2_BASE             0x24000000	/* IB2 module */
+#define VERSATILE_MBX_BASE             0x40000000	/* MBX */
+
+/* PCI space */
+#define VERSATILE_PCI_BASE             0x41000000	/* PCI Interface */
+#define VERSATILE_PCI_CFG_BASE	       0x42000000
+#define VERSATILE_PCI_MEM_BASE0        0x44000000
+#define VERSATILE_PCI_MEM_BASE1        0x50000000
+#define VERSATILE_PCI_MEM_BASE2        0x60000000
+/* Sizes of above maps */
+#define VERSATILE_PCI_BASE_SIZE	       0x01000000
+#define VERSATILE_PCI_CFG_BASE_SIZE    0x02000000
+#define VERSATILE_PCI_MEM_BASE0_SIZE   0x0c000000	/* 32Mb */
+#define VERSATILE_PCI_MEM_BASE1_SIZE   0x10000000	/* 256Mb */
+#define VERSATILE_PCI_MEM_BASE2_SIZE   0x10000000	/* 256Mb */
+
+#define VERSATILE_SDRAM67_BASE         0x70000000	/* SDRAM banks 6 and 7 */
+#define VERSATILE_LT_BASE              0x80000000	/* Logic Tile expansion */
+
+/*
+ * Disk on Chip
+ */
+#define VERSATILE_DOC_BASE             0x2C000000
+#define VERSATILE_DOC_SIZE             (16 << 20)
+#define VERSATILE_DOC_PAGE_SIZE        512
+#define VERSATILE_DOC_TOTAL_PAGES     (DOC_SIZE / PAGE_SIZE)
+
+#define ERASE_UNIT_PAGES    32
+#define START_PAGE          0x80
+
+/* 
+ *  LED settings, bits [7:0]
+ */
+#define VERSATILE_SYS_LED0             (1 << 0)
+#define VERSATILE_SYS_LED1             (1 << 1)
+#define VERSATILE_SYS_LED2             (1 << 2)
+#define VERSATILE_SYS_LED3             (1 << 3)
+#define VERSATILE_SYS_LED4             (1 << 4)
+#define VERSATILE_SYS_LED5             (1 << 5)
+#define VERSATILE_SYS_LED6             (1 << 6)
+#define VERSATILE_SYS_LED7             (1 << 7)
+
+#define ALL_LEDS                  0xFF
+
+#define LED_BANK                  VERSATILE_SYS_LED
+
+/* 
+ * Control registers
+ */
+#define VERSATILE_IDFIELD_OFFSET	0x0	/* Versatile build information */
+#define VERSATILE_FLASHPROG_OFFSET	0x4	/* Flash devices */
+#define VERSATILE_INTREG_OFFSET		0x8	/* Interrupt control */
+#define VERSATILE_DECODE_OFFSET		0xC	/* Fitted logic modules */
+
+
+/* ------------------------------------------------------------------------
+ *  Versatile Interrupt Controller - control registers
+ * ------------------------------------------------------------------------
+ * 
+ *  Offsets from interrupt controller base 
+ * 
+ *  System Controller interrupt controller base is
+ * 
+ * 	VERSATILE_IC_BASE
+ * 
+ *  Core Module interrupt controller base is
+ * 
+ * 	VERSATILE_SYS_IC 
+ * 
+ */
+/* VIC definitions in include/asm-arm/hardware/vic.h */
+
+#define SIC_IRQ_STATUS                  0
+#define SIC_IRQ_RAW_STATUS              0x04
+#define SIC_IRQ_ENABLE                  0x08
+#define SIC_IRQ_ENABLE_SET              0x08
+#define SIC_IRQ_ENABLE_CLEAR            0x0C
+#define SIC_INT_SOFT_SET                0x10
+#define SIC_INT_SOFT_CLEAR              0x14
+#define SIC_INT_PIC_ENABLE              0x20	/* read status of pass through mask */
+#define SIC_INT_PIC_ENABLES             0x20	/* set interrupt pass through bits */
+#define SIC_INT_PIC_ENABLEC             0x24	/* Clear interrupt pass through bits */
+
+/* ------------------------------------------------------------------------
+ *  Interrupts - bit assignment (primary)
+ * ------------------------------------------------------------------------
+ */
+
+#define INT_WDOGINT                     0	/* Watchdog timer */
+#define INT_SOFTINT                     1	/* Software interrupt */
+#define INT_COMMRx                      2	/* Debug Comm Rx interrupt */
+#define INT_COMMTx                      3	/* Debug Comm Tx interrupt */
+#define INT_TIMERINT0_1                 4	/* Timer 0 and 1 */
+#define INT_TIMERINT2_3                 5	/* Timer 2 and 3 */
+#define INT_GPIOINT0                    6	/* GPIO 0 */
+#define INT_GPIOINT1                    7	/* GPIO 1 */
+#define INT_GPIOINT2                    8	/* GPIO 2 */
+#define INT_GPIOINT3                    9	/* GPIO 3 */
+#define INT_RTCINT                      10	/* Real Time Clock */
+#define INT_SSPINT                      11	/* Synchronous Serial Port */
+#define INT_UARTINT0                    12	/* UART 0 on development chip */
+#define INT_UARTINT1                    13	/* UART 1 on development chip */
+#define INT_UARTINT2                    14	/* UART 2 on development chip */
+#define INT_SCIINT                      15	/* Smart Card Interface */
+#define INT_CLCDINT                     16	/* CLCD controller */
+#define INT_DMAINT                      17	/* DMA controller */
+#define INT_PWRFAILINT                  18	/* Power failure */
+#define INT_MBXINT                      19	/* Graphics processor */
+#define INT_GNDINT                      20	/* Reserved */
+	/* External interrupt signals from logic tiles or secondary controller */
+#define INT_VICSOURCE21                 21	/* Disk on Chip */
+#define INT_VICSOURCE22                 22	/* MCI0A */
+#define INT_VICSOURCE23                 23	/* MCI1A */
+#define INT_VICSOURCE24                 24	/* AACI */
+#define INT_VICSOURCE25                 25	/* Ethernet */
+#define INT_VICSOURCE26                 26	/* USB */
+#define INT_VICSOURCE27                 27	/* PCI 0 */
+#define INT_VICSOURCE28                 28	/* PCI 1 */
+#define INT_VICSOURCE29                 29	/* PCI 2 */
+#define INT_VICSOURCE30                 30	/* PCI 3 */
+#define INT_VICSOURCE31                 31	/* SIC source */
+
+#define VERSATILE_SC_VALID_INT               0x003FFFFF
+
+#define MAXIRQNUM                       31
+#define MAXFIQNUM                       31
+#define MAXSWINUM                       31
+
+/* ------------------------------------------------------------------------
+ *  Interrupts - bit assignment (secondary)
+ * ------------------------------------------------------------------------
+ */
+#define SIC_INT_MMCI0B                  1	/* Multimedia Card 0B */
+#define SIC_INT_MMCI1B                  2	/* Multimedia Card 1B */
+#define SIC_INT_KMI0                    3	/* Keyboard/Mouse port 0 */
+#define SIC_INT_KMI1                    4	/* Keyboard/Mouse port 1 */
+#define SIC_INT_SCI3                    5	/* Smart Card interface */
+#define SIC_INT_UART3                   6	/* UART 3 empty or data available */
+#define SIC_INT_CLCD                    7	/* Character LCD */
+#define SIC_INT_TOUCH                   8	/* Touchscreen */
+#define SIC_INT_KEYPAD                  9	/* Key pressed on display keypad */
+	/* 10:20 - reserved */
+#define SIC_INT_DoC                     21	/* Disk on Chip memory controller */
+#define SIC_INT_MMCI0A                  22	/* MMC 0A */
+#define SIC_INT_MMCI1A                  23	/* MMC 1A */
+#define SIC_INT_AACI                    24	/* Audio Codec */
+#define SIC_INT_ETH                     25	/* Ethernet controller */
+#define SIC_INT_USB                     26	/* USB controller */
+#define SIC_INT_PCI0                    27
+#define SIC_INT_PCI1                    28
+#define SIC_INT_PCI2                    29
+#define SIC_INT_PCI3                    30
+
+
+/*
+ * System controller bit assignment
+ */
+#define VERSATILE_REFCLK	0
+#define VERSATILE_TIMCLK	1
+
+#define VERSATILE_TIMER1_EnSel	15
+#define VERSATILE_TIMER2_EnSel	17
+#define VERSATILE_TIMER3_EnSel	19
+#define VERSATILE_TIMER4_EnSel	21
+
+
+#define VERSATILE_CSR_BASE             0x10000000
+#define VERSATILE_CSR_SIZE             0x10000000
+
+#ifdef CONFIG_MACH_VERSATILE_AB
+/*
+ * IB2 Versatile/AB expansion board definitions
+ */
+#define VERSATILE_IB2_CAMERA_BANK	VERSATILE_IB2_BASE
+#define VERSATILE_IB2_KBD_DATAREG	(VERSATILE_IB2_BASE + 0x01000000)
+
+/* VICINTSOURCE27 */
+#define VERSATILE_IB2_INT_BASE		(VERSATILE_IB2_BASE + 0x02000000)
+#define VERSATILE_IB2_IER		(VERSATILE_IB2_INT_BASE + 0)
+#define VERSATILE_IB2_ISR		(VERSATILE_IB2_INT_BASE + 4)
+
+#define VERSATILE_IB2_CTL_BASE		(VERSATILE_IB2_BASE + 0x03000000)
+#define VERSATILE_IB2_CTRL		(VERSATILE_IB2_CTL_BASE + 0)
+#define VERSATILE_IB2_STAT		(VERSATILE_IB2_CTL_BASE + 4)
+#endif
+
+#endif


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp17.mail.ru ([94.100.176.154])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TUDNY-0008FM-OB
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 09:17:31 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  2 Nov 2012 13:17:14 +0400
Message-Id: <1351847836-8221-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v4 1/3] ARM: Add initial support for CLPS711X architecture
To: barebox@lists.infradead.org

This patch adds new architecture (CLPS711X) into barebox.
The core-logic functionality of the device is built around an ARM720T
processor running at clock speeds up to 90 MHz.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/Kconfig                               |    6 +
 arch/arm/Makefile                              |    1 +
 arch/arm/mach-clps711x/Kconfig                 |    8 +
 arch/arm/mach-clps711x/Makefile                |    1 +
 arch/arm/mach-clps711x/clock.c                 |  113 ++++++++++
 arch/arm/mach-clps711x/devices.c               |   37 +++
 arch/arm/mach-clps711x/include/mach/clkdev.h   |    7 +
 arch/arm/mach-clps711x/include/mach/clps711x.h |  284 ++++++++++++++++++++++++
 arch/arm/mach-clps711x/include/mach/devices.h  |    6 +
 arch/arm/mach-clps711x/reset.c                 |   21 ++
 10 files changed, 484 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-clps711x/Kconfig
 create mode 100644 arch/arm/mach-clps711x/Makefile
 create mode 100644 arch/arm/mach-clps711x/clock.c
 create mode 100644 arch/arm/mach-clps711x/devices.c
 create mode 100644 arch/arm/mach-clps711x/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-clps711x/include/mach/clps711x.h
 create mode 100644 arch/arm/mach-clps711x/include/mach/devices.h
 create mode 100644 arch/arm/mach-clps711x/reset.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 57b3ca7..28071a5 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -31,6 +31,11 @@ config ARCH_AT91
 	select HAS_DEBUG_LL
 	select HAVE_MACH_ARM_HEAD
 
+config ARCH_CLPS711X
+	bool "Cirrus Logic EP711x/EP721x/EP731x"
+	select CLKDEV_LOOKUP
+	select CPU_32v4T
+
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
 	select CPU_ARM920T
@@ -97,6 +102,7 @@ endchoice
 
 source arch/arm/cpu/Kconfig
 source arch/arm/mach-at91/Kconfig
+source arch/arm/mach-clps711x/Kconfig
 source arch/arm/mach-ep93xx/Kconfig
 source arch/arm/mach-imx/Kconfig
 source arch/arm/mach-mxs/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 855043a..da80e00 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -52,6 +52,7 @@ AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
 # Machine directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
 machine-$(CONFIG_ARCH_AT91)		:= at91
+machine-$(CONFIG_ARCH_CLPS711X)		:= clps711x
 machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
 machine-$(CONFIG_ARCH_IMX)		:= imx
 machine-$(CONFIG_ARCH_MXS)		:= mxs
diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
new file mode 100644
index 0000000..56ca2ca
--- /dev/null
+++ b/arch/arm/mach-clps711x/Kconfig
@@ -0,0 +1,8 @@
+if ARCH_CLPS711X
+
+choice
+	prompt "Cirrus Logic EP711x/EP721x/EP731x Board Type"
+
+endchoice
+
+endif
diff --git a/arch/arm/mach-clps711x/Makefile b/arch/arm/mach-clps711x/Makefile
new file mode 100644
index 0000000..41012bc
--- /dev/null
+++ b/arch/arm/mach-clps711x/Makefile
@@ -0,0 +1 @@
+obj-y += clock.o devices.o reset.o
diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
new file mode 100644
index 0000000..5cafba9
--- /dev/null
+++ b/arch/arm/mach-clps711x/clock.c
@@ -0,0 +1,113 @@
+/*
+ * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <asm/io.h>
+#include <linux/clkdev.h>
+
+#include <mach/clps711x.h>
+
+struct clk {
+	unsigned long	rate;
+};
+
+static struct clk uart_clk, bus_clk;
+
+uint64_t clocksource_read(void)
+{
+	return ~readw(TC2D);
+}
+
+static struct clocksource cs = {
+	.read	= clocksource_read,
+	.mask	= CLOCKSOURCE_MASK(16),
+};
+
+unsigned long clk_get_rate(struct clk *clk)
+{
+	return clk->rate;
+}
+EXPORT_SYMBOL(clk_get_rate);
+
+int clk_enable(struct clk *clk)
+{
+	/* Do nothing */
+	return 0;
+}
+EXPORT_SYMBOL(clk_enable);
+
+void clk_disable(struct clk *clk)
+{
+	/* Do nothing */
+}
+EXPORT_SYMBOL(clk_disable);
+
+static int clocks_init(void)
+{
+	int osc, ext, pll, cpu, timer;
+	u32 tmp;
+
+	osc = 3686400;
+	ext = 13000000;
+
+	tmp = readl(PLLR) >> 24;
+	if (tmp)
+		pll = (osc * tmp) / 2;
+	else
+		pll = 73728000; /* Default value for old CPUs */
+
+	tmp = readl(SYSFLG2);
+	if (tmp & SYSFLG2_CKMODE) {
+		cpu = ext;
+		bus_clk.rate = cpu;
+	} else {
+		cpu = pll;
+		if (cpu >= 36864000)
+			bus_clk.rate = cpu / 2;
+		else
+			bus_clk.rate = 36864000 / 2;
+	}
+
+	uart_clk.rate = bus_clk.rate / 10;
+
+	if (tmp & SYSFLG2_CKMODE) {
+		tmp = readw(SYSCON2);
+		if (tmp & SYSCON2_OSTB)
+			timer = ext / 26;
+		else
+			timer = 541440;
+	} else
+		timer = cpu / 144;
+
+	tmp = readl(SYSCON1);
+	tmp &= ~SYSCON1_TC2M;	/* Free running mode */
+	tmp |= SYSCON1_TC2S;	/* High frequency source */
+	writel(tmp, SYSCON1);
+
+	clocks_calc_mult_shift(&cs.mult, &cs.shift, timer, NSEC_PER_SEC, 10);
+
+	return init_clock(&cs);
+}
+core_initcall(clocks_init);
+
+static struct clk_lookup clocks_lookups[] = {
+	CLKDEV_CON_ID("bus", &bus_clk),
+	CLKDEV_DEV_ID("clps711x_serial0", &uart_clk),
+	CLKDEV_DEV_ID("clps711x_serial1", &uart_clk),
+};
+
+static int clkdev_init(void)
+{
+	clkdev_add_table(clocks_lookups, ARRAY_SIZE(clocks_lookups));
+
+	return 0;
+}
+postcore_initcall(clkdev_init);
diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
new file mode 100644
index 0000000..c5fcbf2
--- /dev/null
+++ b/arch/arm/mach-clps711x/devices.c
@@ -0,0 +1,37 @@
+/*
+ * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#include <common.h>
+#include <init.h>
+
+#include <asm/io.h>
+
+#include <mach/clps711x.h>
+
+inline void _clps711x_setup_memcfg(int bank, u32 addr, u32 val)
+{
+	u32 tmp = readl(addr);
+
+	tmp &= ~(0xff << (bank * 8));
+	tmp |= val << (bank * 8);
+
+	writel(tmp, addr);
+}
+
+void clps711x_setup_memcfg(int bank, u32 val)
+{
+	switch (bank) {
+	case 0 ... 3:
+		_clps711x_setup_memcfg(bank, MEMCFG1, val);
+		break;
+	case 4 ... 7:
+		_clps711x_setup_memcfg(bank - 4, MEMCFG2, val);
+		break;
+	}
+}
diff --git a/arch/arm/mach-clps711x/include/mach/clkdev.h b/arch/arm/mach-clps711x/include/mach/clkdev.h
new file mode 100644
index 0000000..9278209
--- /dev/null
+++ b/arch/arm/mach-clps711x/include/mach/clkdev.h
@@ -0,0 +1,7 @@
+#ifndef __MACH_CLKDEV_H
+#define __MACH_CLKDEV_H
+
+#define __clk_get(clk)	({ 1; })
+#define __clk_put(clk)	do { } while (0)
+
+#endif
diff --git a/arch/arm/mach-clps711x/include/mach/clps711x.h b/arch/arm/mach-clps711x/include/mach/clps711x.h
new file mode 100644
index 0000000..048992a
--- /dev/null
+++ b/arch/arm/mach-clps711x/include/mach/clps711x.h
@@ -0,0 +1,284 @@
+/*
+ *  Hardware definitions for Cirrus Logic CLPS711X
+ *
+ *  Copyright (C) 2000 Deep Blue Solutions Ltd.
+ *  Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef __MACH_CLPS711X_H
+#define __MACH_CLPS711X_H
+
+#define CS0_BASE		(0x00000000)
+#define CS1_BASE		(0x10000000)
+#define CS2_BASE		(0x20000000)
+#define CS3_BASE		(0x30000000)
+#define CS4_BASE		(0x40000000)
+#define CS5_BASE		(0x50000000)
+#define CS6_BASE		(0x60000000)
+#define CS7_BASE		(0x70000000)
+#define REGS_BASE		(0x80000000)
+#define SDRAM0_BASE		(0xc0000000)
+#define SDRAM1_BASE		(0xd0000000)
+
+#define PADR			(REGS_BASE + 0x0000)
+#define PBDR			(REGS_BASE + 0x0001)
+#define PCDR			(REGS_BASE + 0x0002)
+#define PDDR			(REGS_BASE + 0x0003)
+#define PADDR			(REGS_BASE + 0x0040)
+#define PBDDR			(REGS_BASE + 0x0041)
+#define PCDDR			(REGS_BASE + 0x0042)
+#define PDDDR			(REGS_BASE + 0x0043)
+#define PEDR			(REGS_BASE + 0x0083)
+#define PEDDR			(REGS_BASE + 0x00c3)
+#define SYSCON1			(REGS_BASE + 0x0100)
+#define SYSFLG1			(REGS_BASE + 0x0140)
+#define MEMCFG1			(REGS_BASE + 0x0180)
+#define MEMCFG2			(REGS_BASE + 0x01c0)
+#define DRFPR			(REGS_BASE + 0x0200)
+#define INTSR1			(REGS_BASE + 0x0240)
+#define INTMR1			(REGS_BASE + 0x0280)
+#define LCDCON			(REGS_BASE + 0x02c0)
+#define TC1D			(REGS_BASE + 0x0300)
+#define TC2D			(REGS_BASE + 0x0340)
+#define RTCDR			(REGS_BASE + 0x0380)
+#define RTCMR			(REGS_BASE + 0x03c0)
+#define PMPCON			(REGS_BASE + 0x0400)
+#define CODR			(REGS_BASE + 0x0440)
+#define UARTDR1			(REGS_BASE + 0x0480)
+#define UBRLCR1			(REGS_BASE + 0x04c0)
+#define SYNCIO			(REGS_BASE + 0x0500)
+#define PALLSW			(REGS_BASE + 0x0540)
+#define PALMSW			(REGS_BASE + 0x0580)
+#define STFCLR			(REGS_BASE + 0x05c0)
+#define BLEOI			(REGS_BASE + 0x0600)
+#define MCEOI			(REGS_BASE + 0x0640)
+#define TEOI			(REGS_BASE + 0x0680)
+#define TC1EOI			(REGS_BASE + 0x06c0)
+#define TC2EOI			(REGS_BASE + 0x0700)
+#define RTCEOI			(REGS_BASE + 0x0740)
+#define UMSEOI			(REGS_BASE + 0x0780)
+#define COEOI			(REGS_BASE + 0x07c0)
+#define HALT			(REGS_BASE + 0x0800)
+#define STDBY			(REGS_BASE + 0x0840)
+
+#define FBADDR			(REGS_BASE + 0x1000)
+#define SYSCON2			(REGS_BASE + 0x1100)
+#define SYSFLG2			(REGS_BASE + 0x1140)
+#define INTSR2			(REGS_BASE + 0x1240)
+#define INTMR2			(REGS_BASE + 0x1280)
+#define UARTDR2			(REGS_BASE + 0x1480)
+#define UBRLCR2			(REGS_BASE + 0x14c0)
+#define SS2DR			(REGS_BASE + 0x1500)
+#define SRXEOF			(REGS_BASE + 0x1600)
+#define SS2POP			(REGS_BASE + 0x16c0)
+#define KBDEOI			(REGS_BASE + 0x1700)
+
+#define DAIR			(REGS_BASE + 0x2000)
+#define DAIDR0			(REGS_BASE + 0x2040)
+#define DAIDR1			(REGS_BASE + 0x2080)
+#define DAIDR2			(REGS_BASE + 0x20c0)
+#define DAISR			(REGS_BASE + 0x2100)
+#define SYSCON3			(REGS_BASE + 0x2200)
+#define INTSR3			(REGS_BASE + 0x2240)
+#define INTMR3			(REGS_BASE + 0x2280)
+#define LEDFLSH			(REGS_BASE + 0x22c0)
+#define SDCONF			(REGS_BASE + 0x2300)
+#define SDRFPR			(REGS_BASE + 0x2340)
+#define UNIQID			(REGS_BASE + 0x2440)
+#define DAI64FS			(REGS_BASE + 0x2600)
+#define PLLW			(REGS_BASE + 0x2610)
+#define PLLR			(REGS_BASE + 0xa5a8)
+#define RANDID0			(REGS_BASE + 0x2700)
+#define RANDID1			(REGS_BASE + 0x2704)
+#define RANDID2			(REGS_BASE + 0x2708)
+#define RANDID3			(REGS_BASE + 0x270c)
+
+/* common bits: SYSCON1 / SYSCON2 */
+#define SYSCON_UARTEN		(1 << 8)
+
+#define SYSCON1_KBDSCAN(x)	((x) & 15)
+#define SYSCON1_KBDSCANMASK	(15)
+#define SYSCON1_TC1M		(1 << 4)
+#define SYSCON1_TC1S		(1 << 5)
+#define SYSCON1_TC2M		(1 << 6)
+#define SYSCON1_TC2S		(1 << 7)
+#define SYSCON1_UART1EN		SYSCON_UARTEN
+#define SYSCON1_BZTOG		(1 << 9)
+#define SYSCON1_BZMOD		(1 << 10)
+#define SYSCON1_DBGEN		(1 << 11)
+#define SYSCON1_LCDEN		(1 << 12)
+#define SYSCON1_CDENTX		(1 << 13)
+#define SYSCON1_CDENRX		(1 << 14)
+#define SYSCON1_SIREN		(1 << 15)
+#define SYSCON1_ADCKSEL(x)	(((x) & 3) << 16)
+#define SYSCON1_ADCKSEL_MASK	(3 << 16)
+#define SYSCON1_EXCKEN		(1 << 18)
+#define SYSCON1_WAKEDIS		(1 << 19)
+#define SYSCON1_IRTXM		(1 << 20)
+
+/* common bits: SYSFLG1 / SYSFLG2 */
+#define SYSFLG_UBUSY		(1 << 11)
+#define SYSFLG_URXFE		(1 << 22)
+#define SYSFLG_UTXFF		(1 << 23)
+
+#define SYSFLG1_MCDR		(1 << 0)
+#define SYSFLG1_DCDET		(1 << 1)
+#define SYSFLG1_WUDR		(1 << 2)
+#define SYSFLG1_WUON		(1 << 3)
+#define SYSFLG1_CTS		(1 << 8)
+#define SYSFLG1_DSR		(1 << 9)
+#define SYSFLG1_DCD		(1 << 10)
+#define SYSFLG1_UBUSY		SYSFLG_UBUSY
+#define SYSFLG1_NBFLG		(1 << 12)
+#define SYSFLG1_RSTFLG		(1 << 13)
+#define SYSFLG1_PFFLG		(1 << 14)
+#define SYSFLG1_CLDFLG		(1 << 15)
+#define SYSFLG1_URXFE		SYSFLG_URXFE
+#define SYSFLG1_UTXFF		SYSFLG_UTXFF
+#define SYSFLG1_CRXFE		(1 << 24)
+#define SYSFLG1_CTXFF		(1 << 25)
+#define SYSFLG1_SSIBUSY		(1 << 26)
+#define SYSFLG1_ID		(1 << 29)
+#define SYSFLG1_VERID(x)	(((x) >> 30) & 3)
+#define SYSFLG1_VERID_MASK	(3 << 30)
+
+#define SYSFLG2_SSRXOF		(1 << 0)
+#define SYSFLG2_RESVAL		(1 << 1)
+#define SYSFLG2_RESFRM		(1 << 2)
+#define SYSFLG2_SS2RXFE		(1 << 3)
+#define SYSFLG2_SS2TXFF		(1 << 4)
+#define SYSFLG2_SS2TXUF		(1 << 5)
+#define SYSFLG2_CKMODE		(1 << 6)
+#define SYSFLG2_UBUSY		SYSFLG_UBUSY
+#define SYSFLG2_URXFE		SYSFLG_URXFE
+#define SYSFLG2_UTXFF		SYSFLG_UTXFF
+
+#define LCDCON_GSEN		(1 << 30)
+#define LCDCON_GSMD		(1 << 31)
+
+#define SYSCON2_SERSEL		(1 << 0)
+#define SYSCON2_KBD6		(1 << 1)
+#define SYSCON2_DRAMZ		(1 << 2)
+#define SYSCON2_KBWEN		(1 << 3)
+#define SYSCON2_SS2TXEN		(1 << 4)
+#define SYSCON2_PCCARD1		(1 << 5)
+#define SYSCON2_PCCARD2		(1 << 6)
+#define SYSCON2_SS2RXEN		(1 << 7)
+#define SYSCON2_UART2EN		SYSCON_UARTEN
+#define SYSCON2_SS2MAEN		(1 << 9)
+#define SYSCON2_OSTB		(1 << 12)
+#define SYSCON2_CLKENSL		(1 << 13)
+#define SYSCON2_BUZFREQ		(1 << 14)
+
+/* common bits: UARTDR1 / UARTDR2 */
+#define UARTDR_FRMERR		(1 << 8)
+#define UARTDR_PARERR		(1 << 9)
+#define UARTDR_OVERR		(1 << 10)
+
+/* common bits: UBRLCR1 / UBRLCR2 */
+#define UBRLCR_BAUD_MASK	((1 << 12) - 1)
+#define UBRLCR_BREAK		(1 << 12)
+#define UBRLCR_PRTEN		(1 << 13)
+#define UBRLCR_EVENPRT		(1 << 14)
+#define UBRLCR_XSTOP		(1 << 15)
+#define UBRLCR_FIFOEN		(1 << 16)
+#define UBRLCR_WRDLEN5		(0 << 17)
+#define UBRLCR_WRDLEN6		(1 << 17)
+#define UBRLCR_WRDLEN7		(2 << 17)
+#define UBRLCR_WRDLEN8		(3 << 17)
+#define UBRLCR_WRDLEN_MASK	(3 << 17)
+
+#define SYNCIO_FRMLEN(x)	(((x) & 0x1f) << 8)
+#define SYNCIO_SMCKEN		(1 << 13)
+#define SYNCIO_TXFRMEN		(1 << 14)
+
+#define DAIR_RESERVED		(0x0404)
+#define DAIR_DAIEN		(1 << 16)
+#define DAIR_ECS		(1 << 17)
+#define DAIR_LCTM		(1 << 19)
+#define DAIR_LCRM		(1 << 20)
+#define DAIR_RCTM		(1 << 21)
+#define DAIR_RCRM		(1 << 22)
+#define DAIR_LBM		(1 << 23)
+
+#define DAIDR2_FIFOEN		(1 << 15)
+#define DAIDR2_FIFOLEFT		(0x0d << 16)
+#define DAIDR2_FIFORIGHT	(0x11 << 16)
+
+#define DAISR_RCTS		(1 << 0)
+#define DAISR_RCRS		(1 << 1)
+#define DAISR_LCTS		(1 << 2)
+#define DAISR_LCRS		(1 << 3)
+#define DAISR_RCTU		(1 << 4)
+#define DAISR_RCRO		(1 << 5)
+#define DAISR_LCTU		(1 << 6)
+#define DAISR_LCRO		(1 << 7)
+#define DAISR_RCNF		(1 << 8)
+#define DAISR_RCNE		(1 << 9)
+#define DAISR_LCNF		(1 << 10)
+#define DAISR_LCNE		(1 << 11)
+#define DAISR_FIFO		(1 << 12)
+
+#define DAI64FS_I2SF64		(1 << 0)
+#define DAI64FS_AUDIOCLKEN	(1 << 1)
+#define DAI64FS_AUDIOCLKSRC	(1 << 2)
+#define DAI64FS_MCLK256EN	(1 << 3)
+#define DAI64FS_LOOPBACK	(1 << 5)
+#define DAI64FS_AUDIV_MASK	(0x7f)
+#define DAI64FS_AUDIV(x)	(((x) & DAI64FS_AUDIV_MASK) << 8)
+
+#define SYSCON3_ADCCON		(1 << 0)
+#define SYSCON3_CLKCTL0		(1 << 1)
+#define SYSCON3_CLKCTL1		(1 << 2)
+#define SYSCON3_DAISEL		(1 << 3)
+#define SYSCON3_ADCCKNSEN	(1 << 4)
+#define SYSCON3_VERSN(x)	(((x) >> 5) & 7)
+#define SYSCON3_VERSN_MASK	(7 << 5)
+#define SYSCON3_FASTWAKE	(1 << 8)
+#define SYSCON3_DAIEN		(1 << 9)
+#define SYSCON3_128FS		SYSCON3_DAIEN
+#define SYSCON3_ENPD67		(1 << 10)
+
+#define SDCONF_ACTIVE		(1 << 10)
+#define SDCONF_CLKCTL		(1 << 9)
+#define SDCONF_WIDTH_4		(0 << 7)
+#define SDCONF_WIDTH_8		(1 << 7)
+#define SDCONF_WIDTH_16		(2 << 7)
+#define SDCONF_WIDTH_32		(3 << 7)
+#define SDCONF_SIZE_16		(0 << 5)
+#define SDCONF_SIZE_64		(1 << 5)
+#define SDCONF_SIZE_128		(2 << 5)
+#define SDCONF_SIZE_256		(3 << 5)
+#define SDCONF_CASLAT_2		(2)
+#define SDCONF_CASLAT_3		(3)
+
+#define MEMCFG_BUS_WIDTH_32	(1)
+#define MEMCFG_BUS_WIDTH_16	(0)
+#define MEMCFG_BUS_WIDTH_8	(3)
+
+#define MEMCFG_SQAEN		(1 << 6)
+#define MEMCFG_CLKENB		(1 << 7)
+
+#define MEMCFG_WAITSTATE_8_3	(0 << 2)
+#define MEMCFG_WAITSTATE_7_3	(1 << 2)
+#define MEMCFG_WAITSTATE_6_3	(2 << 2)
+#define MEMCFG_WAITSTATE_5_3	(3 << 2)
+#define MEMCFG_WAITSTATE_4_2	(4 << 2)
+#define MEMCFG_WAITSTATE_3_2	(5 << 2)
+#define MEMCFG_WAITSTATE_2_2	(6 << 2)
+#define MEMCFG_WAITSTATE_1_2	(7 << 2)
+#define MEMCFG_WAITSTATE_8_1	(8 << 2)
+#define MEMCFG_WAITSTATE_7_1	(9 << 2)
+#define MEMCFG_WAITSTATE_6_1	(10 << 2)
+#define MEMCFG_WAITSTATE_5_1	(11 << 2)
+#define MEMCFG_WAITSTATE_4_0	(12 << 2)
+#define MEMCFG_WAITSTATE_3_0	(13 << 2)
+#define MEMCFG_WAITSTATE_2_0	(14 << 2)
+#define MEMCFG_WAITSTATE_1_0	(15 << 2)
+
+#endif
diff --git a/arch/arm/mach-clps711x/include/mach/devices.h b/arch/arm/mach-clps711x/include/mach/devices.h
new file mode 100644
index 0000000..7e5eaf9
--- /dev/null
+++ b/arch/arm/mach-clps711x/include/mach/devices.h
@@ -0,0 +1,6 @@
+#ifndef __MACH_DEVICES_H
+#define __MACH_DEVICES_H
+
+void clps711x_setup_memcfg(int bank, u32 val);
+
+#endif
diff --git a/arch/arm/mach-clps711x/reset.c b/arch/arm/mach-clps711x/reset.c
new file mode 100644
index 0000000..4a42ef4
--- /dev/null
+++ b/arch/arm/mach-clps711x/reset.c
@@ -0,0 +1,21 @@
+/*
+ * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#include <common.h>
+
+extern void start(void);
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	arch_shutdown();
+
+	asm("mov pc, #0");
+
+	hang();
+}
-- 
1.7.8.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

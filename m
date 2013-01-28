Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzxL3-0006qe-Bv
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 22:38:11 +0000
Received: from mail606.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 695ECDC1CAF
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2013 23:47:59 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 28 Jan 2013 23:36:45 +0100
Message-Id: <1359412606-31787-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130128222926.GT26329@game.jcrosoft.org>
References: <20130128222926.GT26329@game.jcrosoft.org>
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
Subject: [PATCH 1/2] at91: add sama5d3 support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig                        |   16 +
 arch/arm/mach-at91/Makefile                       |    2 +
 arch/arm/mach-at91/clock.c                        |   75 +++-
 arch/arm/mach-at91/clock.h                        |    2 +
 arch/arm/mach-at91/include/mach/at91_pmc.h        |    7 +-
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h |   39 +-
 arch/arm/mach-at91/include/mach/cpu.h             |   27 ++
 arch/arm/mach-at91/include/mach/hardware.h        |    8 +
 arch/arm/mach-at91/include/mach/sama5d3.h         |  152 +++++++
 arch/arm/mach-at91/include/mach/sama5d3_matrix.h  |   15 +
 arch/arm/mach-at91/sama5d3.c                      |  319 +++++++++++++++
 arch/arm/mach-at91/sama5d3_devices.c              |  444 +++++++++++++++++++++
 arch/arm/mach-at91/sama5d3_lowlevel_init.c        |   24 ++
 arch/arm/mach-at91/setup.c                        |   27 ++
 arch/arm/mach-at91/soc.h                          |    5 +
 15 files changed, 1144 insertions(+), 18 deletions(-)
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d3.h
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d3_matrix.h
 create mode 100644 arch/arm/mach-at91/sama5d3.c
 create mode 100644 arch/arm/mach-at91/sama5d3_devices.c
 create mode 100644 arch/arm/mach-at91/sama5d3_lowlevel_init.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index cd25ac8..0af0606 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -18,6 +18,12 @@ config SOC_AT91SAM9
 	select AT91SAM9_SMC
 	select AT91SAM9_TIMER
 
+config SOC_SAMA5
+	bool
+	select CPU_V7
+	select AT91SAM9_SMC
+	select AT91SAM9_TIMER
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x73f00000 if ARCH_AT91SAM9G45
@@ -168,6 +174,15 @@ config ARCH_AT91SAM9N12
 	bool "AT91SAM9N12"
 	select SOC_AT91SAM9N12
 
+config ARCH_SAMA5D3
+	bool "SAMA5D3x"
+	select SOC_SAMA5
+	select HAVE_AT91_DBGU1
+	select HAS_MACB
+	select AT91SAM9G45_RESET
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
+
 endchoice
 
 config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
@@ -180,6 +195,7 @@ config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	default 0xF000 if ARCH_AT91SAM9G45
 	default 0x6000 if ARCH_AT91SAM9X5
 	default 0x6000 if ARCH_AT91SAM9N12
+	default 0x6000 if ARCH_SAMA5D3
 	default 0xffffffff
 
 config SUPPORT_CALAO_DAB_MMX
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 634b160..511d6ef 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
 lowlevel_init-y = at91sam926x_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
+lowlevel_init-$(CONFIG_ARCH_SAMA5D3) = sama5d3_lowlevel_init.o
 obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
 
 pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
@@ -24,3 +25,4 @@ obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9N12)	+= at91sam9n12.o at91sam9n12_devices.o
+obj-$(CONFIG_ARCH_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 4572705..28dc2b0 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -44,7 +44,10 @@
  */
 #define cpu_has_utmi()		(  cpu_is_at91sam9rl() \
 				|| cpu_is_at91sam9g45() \
-				|| cpu_is_at91sam9x5())
+				|| cpu_is_at91sam9x5() \
+				|| cpu_is_sama5d3())
+
+#define cpu_has_1056M_plla()	(cpu_is_sama5d3())
 
 #define cpu_has_800M_plla()	(  cpu_is_at91sam9g20() \
 				|| cpu_is_at91sam9g45() \
@@ -65,7 +68,8 @@
 				|| cpu_is_at91sam9n12()))
 
 #define cpu_has_upll()		(cpu_is_at91sam9g45() \
-				|| cpu_is_at91sam9x5())
+				|| cpu_is_at91sam9x5() \
+				|| cpu_is_sama5d3())
 
 /* USB host HS & FS */
 #define cpu_has_uhp()		(!cpu_is_at91sam9rl())
@@ -73,18 +77,22 @@
 /* USB device FS only */
 #define cpu_has_udpfs()		(!(cpu_is_at91sam9rl() \
 				|| cpu_is_at91sam9g45() \
-				|| cpu_is_at91sam9x5()))
+				|| cpu_is_at91sam9x5() \
+				|| cpu_is_sama5d3()))
 
 #define cpu_has_plladiv2()	(cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
-				|| cpu_is_at91sam9n12())
+				|| cpu_is_at91sam9n12() \
+				|| cpu_is_sama5d3())
 
 #define cpu_has_mdiv3()		(cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
-				|| cpu_is_at91sam9n12())
+				|| cpu_is_at91sam9n12() \
+				|| cpu_is_sama5d3())
 
 #define cpu_has_alt_prescaler()	(cpu_is_at91sam9x5() \
-				|| cpu_is_at91sam9n12())
+				|| cpu_is_at91sam9n12() \
+				|| cpu_is_sama5d3())
 
 static LIST_HEAD(clocks);
 
@@ -206,10 +214,26 @@ struct clk mck = {
 
 static void pmc_periph_mode(struct clk *clk, int is_on)
 {
-	if (is_on)
-		at91_pmc_write(AT91_PMC_PCER, clk->pmc_mask);
-	else
-		at91_pmc_write(AT91_PMC_PCDR, clk->pmc_mask);
+	u32 regval = 0;
+
+	/*
+	 * With sama5d3 chips, you have more than 32 peripherals so only one
+	 * register is not enough to manage their clocks. A peripheral
+	 * control register has been introduced to solve this issue.
+	 */
+	if (cpu_is_sama5d3()) {
+		regval |= AT91_PMC_PCR_CMD; /* write command */
+		regval |= clk->pid & AT91_PMC_PCR_PID; /* peripheral selection */
+		regval |= AT91_PMC_PCR_DIV(clk->div);
+		if (is_on)
+			regval |= AT91_PMC_PCR_EN; /* enable clock */
+		at91_pmc_write(AT91_PMC_PCR, regval);
+	} else {
+		if (is_on)
+			at91_pmc_write(AT91_PMC_PCER, clk->pmc_mask);
+		else
+			at91_pmc_write(AT91_PMC_PCDR, clk->pmc_mask);
+	}
 }
 
 static struct clk *at91_css_to_clk(unsigned long css)
@@ -431,6 +455,8 @@ int clk_register(struct clk *clk)
 	if (clk_is_peripheral(clk)) {
 		if (!clk->parent)
 			clk->parent = &mck;
+		if (cpu_is_sama5d3())
+			clk->rate_hz = DIV_ROUND_UP(clk->parent->rate_hz, 1 << clk->div);
 		clk->mode = pmc_periph_mode;
 	}
 	else if (clk_is_sys(clk)) {
@@ -456,7 +482,10 @@ static u32 at91_pll_rate(struct clk *pll, u32 freq, u32 reg)
 	unsigned mul, div;
 
 	div = reg & 0xff;
-	mul = (reg >> 16) & 0x7ff;
+	if (cpu_is_sama5d3())
+		mul = (reg >> 18) & 0x7ff;
+	else
+		mul = (reg >> 16) & 0x7ff;
 	if (div && mul) {
 		freq /= div;
 		freq *= mul + 1;
@@ -611,12 +640,18 @@ int at91_clock_init(unsigned long main_clock)
 
 	/* report if PLLA is more than mildly overclocked */
 	plla.rate_hz = at91_pll_rate(&plla, main_clock, at91_pmc_read(AT91_CKGR_PLLAR));
-	if (cpu_has_300M_plla()) {
+	if (cpu_has_1056M_plla()) {
+		if (plla.rate_hz > 1056000000)
+			pll_overclock = 1;
+	} else if (cpu_has_300M_plla()) {
 		if (plla.rate_hz > 300000000)
 			pll_overclock = 1;
 	} else if (cpu_has_800M_plla()) {
 		if (plla.rate_hz > 800000000)
 			pll_overclock = 1;
+	} else if (cpu_has_300M_plla()) {
+		if (plla.rate_hz > 300000000)
+			pll_overclock = 1;
 	} else if (cpu_has_240M_plla()) {
 		if (plla.rate_hz > 240000000)
 			pll_overclock = 1;
@@ -738,13 +773,22 @@ static int at91_clock_reset(void)
 	unsigned long pcdr = 0;
 	unsigned long scdr = 0;
 	struct clk *clk;
+	u32 regval;
 
 	list_for_each_entry(clk, &clocks, node) {
 		if (clk->users > 0)
 			continue;
 
-		if (clk->mode == pmc_periph_mode)
-			pcdr |= clk->pmc_mask;
+		regval = 0;
+		if (clk->mode == pmc_periph_mode) {
+			if (cpu_is_sama5d3()) {
+				regval |= AT91_PMC_PCR_CMD; /* write command */
+				regval |= clk->pid & AT91_PMC_PCR_PID; /* peripheral selection */
+				regval |= AT91_PMC_PCR_DIV(clk->div);
+				at91_pmc_write(AT91_PMC_PCR, regval);
+			} else
+				pcdr |= clk->pmc_mask;
+		}
 
 		if (clk->mode == pmc_sys_mode)
 			scdr |= clk->pmc_mask;
@@ -752,7 +796,8 @@ static int at91_clock_reset(void)
 		pr_debug("Clocks: disable unused %s\n", clk->name);
 	}
 
-	at91_pmc_write(AT91_PMC_PCDR, pcdr);
+	if (!cpu_is_sama5d3())
+		at91_pmc_write(AT91_PMC_PCDR, pcdr);
 	at91_pmc_write(AT91_PMC_SCDR, scdr);
 
 	return 0;
diff --git a/arch/arm/mach-at91/clock.h b/arch/arm/mach-at91/clock.h
index cacc0b5..8af8d96 100644
--- a/arch/arm/mach-at91/clock.h
+++ b/arch/arm/mach-at91/clock.h
@@ -20,7 +20,9 @@ struct clk {
 	const char	*name;		/* unique clock name */
 	struct clk_lookup cl;
 	unsigned long	rate_hz;
+	unsigned	div;		/* parent clock divider */
 	struct clk	*parent;
+	unsigned	pid;		/* peripheral ID */
 	u32		pmc_mask;
 	void		(*mode)(struct clk *, int);
 	unsigned	id:3;		/* PCK0..4, or 32k/main/a/b */
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc.h b/arch/arm/mach-at91/include/mach/at91_pmc.h
index 6fcbf40..0cff0be 100644
--- a/arch/arm/mach-at91/include/mach/at91_pmc.h
+++ b/arch/arm/mach-at91/include/mach/at91_pmc.h
@@ -168,8 +168,11 @@
 #define AT91_PMC_PCR		(AT91_PMC + 0x10c)	/* Peripheral Control Register [some SAM9] */
 #define		AT91_PMC_PCR_PID	(0x3f  <<  0)		/* Peripheral ID */
 #define		AT91_PMC_PCR_CMD	(0x1  <<  12)		/* Command */
-#define		AT91_PMC_PCR_DIV	(0x3  <<  16)		/* Divisor Value */
-#define		AT91_PMC_PCRDIV(n)	(((n) <<  16) & AT91_PMC_PCR_DIV)
+#define		AT91_PMC_PCR_DIV(n)	((n) <<  16)	/* Divisor value */
+#define			AT91_PMC_PCR_DIV0	0x0		/* Peripheral clock is MCK */
+#define			AT91_PMC_PCR_DIV2	0x1		/* Peripheral clock is MCK/2 */
+#define			AT91_PMC_PCR_DIV4	0x2		/* Peripheral clock is MCK/4 */
+#define			AT91_PMC_PCR_DIV8	0x3		/* Peripheral clock is MCK/8 */
 #define		AT91_PMC_PCR_EN		(0x1  <<  28)		/* Enable */
 
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index f8699d7..f728399 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -146,7 +146,7 @@ static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
 	bool is_sdram;
 
 	cr = __raw_readl(base + AT91_DDRSDRC_CR);
-	mdr = __raw_readl(base + AT91_DDRSDRC_CR);
+	mdr = __raw_readl(base + AT91_DDRSDRC_MDR);
 
 	is_sdram = (mdr & AT91_DDRSDRC_MD) <= AT91_DDRSDRC_MD_LOW_POWER_SDR;
 
@@ -218,6 +218,43 @@ static inline u32 at91sam9n12_get_ddram_size(void)
 }
 #endif
 
+#ifdef CONFIG_SOC_SAMA5
+static inline u32 at91sama5_get_ddram_size(void)
+{
+	u32 cr;
+	u32 mdr;
+	u32 size;
+	void * __iomem base = IOMEM(SAMA5D3_BASE_MPDDRC);
+
+	cr = __raw_readl(base + AT91_DDRSDRC_CR);
+	mdr = __raw_readl(base + AT91_DDRSDRC_MDR);
+
+	/* Formula:
+	 * size = bank << (col + row + 1);
+	 * if (bandwidth == 32 bits)
+	 *	size <<= 1;
+	 */
+	size = 1;
+	/* COL */
+	size += (cr & AT91_DDRSDRC_NC) + 9;
+	/* ROW */
+	size += ((cr & AT91_DDRSDRC_NR) >> 2) + 11;
+	/* BANK */
+	size = ((cr & AT91_DDRSDRC_NB) ? 8 : 4) << size;
+
+	/* bandwidth */
+	if (!(mdr & AT91_DDRSDRC_DBW))
+		size <<= 1;
+
+	return size;
+}
+#else
+static inline u32 at91sama5_get_ddram_size(void)
+{
+	return 0;
+}
+#endif
+
 #endif
 
 #endif
diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
index b6504c1..7132489 100644
--- a/arch/arm/mach-at91/include/mach/cpu.h
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -26,6 +26,7 @@
 #define ARCH_ID_AT91SAM9G45ES	0x819b05a1	/* 9G45-ES (Engineering Sample) */
 #define ARCH_ID_AT91SAM9X5	0x819a05a0
 #define ARCH_ID_AT91SAM9N12	0x819a07a0
+#define ARCH_ID_SAMA5D3		0x8A5C07C0
 
 #define ARCH_ID_AT91SAM9XE128	0x329973a0
 #define ARCH_ID_AT91SAM9XE256	0x329a93a0
@@ -47,6 +48,11 @@
 #define ARCH_EXID_AT91SAM9G25	0x00000003
 #define ARCH_EXID_AT91SAM9X25	0x00000004
 
+#define ARCH_EXID_SAMA5D31	0x00444300
+#define ARCH_EXID_SAMA5D33	0x00414300
+#define ARCH_EXID_SAMA5D34	0x00414301
+#define ARCH_EXID_SAMA5D35	0x00584300
+
 #define ARCH_FAMILY_AT91X92	0x09200000
 #define ARCH_FAMILY_AT91SAM9	0x01900000
 #define ARCH_FAMILY_AT91SAM9XE	0x02900000
@@ -75,6 +81,9 @@ enum at91_soc_type {
 	/* SAM9N12 */
 	AT91_SOC_SAM9N12,
 
+	/* SAMA5D3 */
+	AT91_SOC_SAMA5D3,
+
 	/* Unknown type */
 	AT91_SOC_NONE
 };
@@ -93,6 +102,10 @@ enum at91_soc_subtype {
 	AT91_SOC_SAM9G15, AT91_SOC_SAM9G35, AT91_SOC_SAM9X35,
 	AT91_SOC_SAM9G25, AT91_SOC_SAM9X25,
 
+	/* SAMA5D3 */
+	AT91_SOC_SAMA5D31, AT91_SOC_SAMA5D33, AT91_SOC_SAMA5D34,
+	AT91_SOC_SAMA5D35,
+
 	/* Unknown subtype */
 	AT91_SOC_SUBTYPE_NONE
 };
@@ -187,6 +200,20 @@ static inline int at91_soc_is_detected(void)
 #define cpu_is_at91sam9n12()	(0)
 #endif
 
+#ifdef CONFIG_ARCH_SAMA5D3
+#define cpu_is_sama5d3()	(at91_soc_initdata.type == AT91_SOC_SAMA5D3)
+#define cpu_is_sama5d31()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D31)
+#define cpu_is_sama5d33()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D33)
+#define cpu_is_sama5d34()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D34)
+#define cpu_is_sama5d35()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D35)
+#else
+#define cpu_is_sama5d3()	(0)
+#define cpu_is_sama5d31()	(0)
+#define cpu_is_sama5d33()	(0)
+#define cpu_is_sama5d34()	(0)
+#define cpu_is_sama5d35()	(0)
+#endif
+
 /*
  * Since this is ARM, we will never run on any AVR32 CPU. But these
  * definitions may reduce clutter in common drivers.
diff --git a/arch/arm/mach-at91/include/mach/hardware.h b/arch/arm/mach-at91/include/mach/hardware.h
index e283b9d..8f004de 100644
--- a/arch/arm/mach-at91/include/mach/hardware.h
+++ b/arch/arm/mach-at91/include/mach/hardware.h
@@ -38,6 +38,8 @@
 #include <mach/at91sam9n12.h>
 #elif defined(CONFIG_ARCH_AT91SAM9X5)
 #include <mach/at91sam9x5.h>
+#elif defined(CONFIG_ARCH_SAMA5D3)
+#include <mach/sama5d3.h>
 #elif defined(CONFIG_ARCH_AT91CAP9)
 #include <mach/at91cap9.h>
 #elif defined(CONFIG_ARCH_AT91X40)
@@ -56,6 +58,12 @@
 #define AT91_CHIPSELECT_6	0x70000000
 #define AT91_CHIPSELECT_7	0x80000000
 
+#define SAMA5_CHIPSELECT_0	0x10000000
+#define SAMA5_DDRCS		0x20000000
+#define SAMA5_CHIPSELECT_1	0x40000000
+#define SAMA5_CHIPSELECT_2	0x50000000
+#define SAMA5_CHIPSELECT_3	0x60000000
+
 /* SDRAM */
 #ifdef CONFIG_DRAM_BASE
 #define AT91_SDRAM_BASE		CONFIG_DRAM_BASE
diff --git a/arch/arm/mach-at91/include/mach/sama5d3.h b/arch/arm/mach-at91/include/mach/sama5d3.h
new file mode 100644
index 0000000..6884ff6
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/sama5d3.h
@@ -0,0 +1,152 @@
+/*
+ * Chip-specific header file for the SAMA5D3 family
+ *
+ *  Copyright (C) 2009-2012 Atmel Corporation.
+ *
+ * Common definitions.
+ * Based on SAMA5D3 datasheet.
+ *
+ * Licensed under GPLv2 or later.
+ */
+
+#ifndef SAMA5D3_H
+#define SAMA5D3_H
+
+/*
+ * Peripheral identifiers/interrupts.
+ */
+#define AT91_ID_FIQ		 0	/* Advanced Interrupt Controller (FIQ) */
+#define AT91_ID_SYS		 1	/* System Peripherals */
+#define SAMA5D3_ID_DBGU		 2	/* debug Unit (usually no special interrupt line) */
+#define SAMA5D3_ID_PIT		 3	/* Periodic Interval Timer Interrupt */
+#define SAMA5D3_ID_WDT		 4	/* Watchdog timer Interrupt */
+#define SAMA5D3_ID_HSMC5	 5	/* Static Memory Controller */
+#define SAMA5D3_ID_PIOA		 6	/* Parallel I/O Controller A */
+#define SAMA5D3_ID_PIOB		 7	/* Parallel I/O Controller B */
+#define SAMA5D3_ID_PIOC		 8	/* Parallel I/O Controller C */
+#define SAMA5D3_ID_PIOD		 9	/* Parallel I/O Controller D */
+#define SAMA5D3_ID_PIOE		10	/* Parallel I/O Controller E */
+#define SAMA5D3_ID_SMD		11	/* SMD Soft Modem */
+#define SAMA5D3_ID_USART0	12	/* USART0 */
+#define SAMA5D3_ID_USART1	13	/* USART1 */
+#define SAMA5D3_ID_USART2	14	/* USART2 */
+#define SAMA5D3_ID_USART3	15	/* USART3 */
+#define SAMA5D3_ID_UART0	16	/* UART0 */
+#define SAMA5D3_ID_UART1	17	/* UART1 */
+#define SAMA5D3_ID_TWI0		18	/* Two-Wire Interface 0 */
+#define SAMA5D3_ID_TWI1		19	/* Two-Wire Interface 1 */
+#define SAMA5D3_ID_TWI2		20	/* Two-Wire Interface 2 */
+#define SAMA5D3_ID_HSMCI0	21	/* High Speed Multimedia Card Interface 0 */
+#define SAMA5D3_ID_HSMCI1	22	/* High Speed Multimedia Card Interface 1 */
+#define SAMA5D3_ID_HSMCI2	23	/* High Speed Multimedia Card Interface 2 */
+#define SAMA5D3_ID_SPI0		24	/* Serial Peripheral Interface 0 */
+#define SAMA5D3_ID_SPI1		25	/* Serial Peripheral Interface 1 */
+#define SAMA5D3_ID_TC0		26	/* Timer Counter 0 (ch. 0, 1, 2) */
+#define SAMA5D3_ID_TC1		27	/* Timer Counter 1 (ch. 3, 4, 5) */
+#define SAMA5D3_ID_PWM		28	/* Pulse Width Modulation Controller */
+#define SAMA5D3_ID_ADC		29	/* Touch Screen ADC Controller */
+#define SAMA5D3_ID_DMA0		30	/* DMA Controller 0 */
+#define SAMA5D3_ID_DMA1		31	/* DMA Controller 1 */
+#define SAMA5D3_ID_UHPHS	32	/* USB Host High Speed */
+#define SAMA5D3_ID_UDPHS	33	/* USB Device High Speed */
+#define SAMA5D3_ID_GMAC		34	/* Gigabit Ethernet MAC */
+#define SAMA5D3_ID_EMAC		35	/* Ethernet MAC */
+#define SAMA5D3_ID_LCDC		36	/* LCD Controller */
+#define SAMA5D3_ID_ISI		37	/* Image Sensor Interface */
+#define SAMA5D3_ID_SSC0		38	/* Synchronous Serial Controller 0 */
+#define SAMA5D3_ID_SSC1		39	/* Synchronous Serial Controller 1 */
+#define SAMA5D3_ID_CAN0		40	/* CAN controller 0 */
+#define SAMA5D3_ID_CAN1		41	/* CAN controller 1 */
+#define SAMA5D3_ID_SHA		42	/* Secure Hash Algorithm */
+#define SAMA5D3_ID_AES		43	/* Advanced Encryption Standard */
+#define SAMA5D3_ID_TDES		44	/* Triple Data Encryption Standard */
+#define SAMA5D3_ID_TRNG		45	/* True Random Number Generator */
+#define SAMA5D3_ID_ARM		46	/* Performance Monitor Unit */
+#define SAMA5D3_ID_AIC		47	/* Advanced Interrupt Controller */
+#define SAMA5D3_ID_FUSE		48	/* Fuse Controller */
+#define SAMA5D3_ID_MPDDRC	49	/* MPDDR controller */
+
+/*
+ * User Peripheral physical base addresses.
+ */
+
+#define SAMA5D3_BASE_HSMCI0	0xf0000000 /* (MMCI) Base Address */
+#define SAMA5D3_BASE_SPI0	0xf0004000
+#define SAMA5D3_BASE_TC0	0xf0010000 /* (TC0) Base Address */
+#define SAMA5D3_BASE_TC1	0xf0010040 /* (TC1) Base Address */
+#define	SAMA5D3_BASE_USART0	0xf001c000
+#define	SAMA5D3_BASE_USART1	0xf0020000
+#define SAMA5D3_BASE_GMAC	0xf0028000 /* (GMAC) Base Address */
+#define SAMA5D3_BASE_LCDC	0xf0030000 /* (HLCDC5) Base Address */
+#define SAMA5D3_BASE_HSMCI1	0xf8000000
+#define SAMA5D3_BASE_HSMCI2	0xf8004000
+#define SAMA5D3_BASE_SPI1	0xf8008000
+#define SAMA5D3_BASE_EMAC	0xf802c000 /* (EMAC) Base Address */
+#define SAMA5D3_BASE_UDPHS	0xf8030000
+#define AT91_BASE_SYS		0xffffc000
+
+/*
+ * System Peripherals (offset from AT91_BASE_SYS)
+ */
+#define AT91_MATRIX	(0xffffec00 - AT91_BASE_SYS)
+#define AT91_GPBR	(0xfffffe60 - AT91_BASE_SYS) // KO OAR_TEMP, NO GPBR, error while building in "drivers/rtc/rtc-at91sam9.c"
+#define AT91_DDRSDRC0	(0xffffea00 - AT91_BASE_SYS)
+#define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
+
+#define SAMA5D3_BASE_PIOA	0xfffff200
+#define SAMA5D3_BASE_PIOB	0xfffff400
+#define SAMA5D3_BASE_PIOC	0xfffff600
+#define SAMA5D3_BASE_PIOD	0xfffff800
+#define SAMA5D3_BASE_PIOE	0xfffffa00
+#define SAMA5D3_BASE_MPDDRC	0xffffea00
+#define	SAMA5D3_BASE_HSMC	0xffffc000
+#define SAMA5D3_BASE_PIT	0xfffffe30
+#define SAMA5D3_BASE_WDT	0xfffffe40
+
+#define SAMA5D3_BASE_PMECC	0xffffc070
+#define SAMA5D3_BASE_PMERRLOC	0xffffc500
+
+#define AT91_NB_USART	3
+
+/*
+ * Internal Memory.
+ */
+#define SAMA5D3_SRAM_BASE	0x00300000	/* Internal SRAM base address */
+#define SAMA5D3_SRAM_SIZE	(128 * SZ_1K)	/* Internal SRAM size (128Kb) */
+
+#define SAMA5D3_ROM_BASE	0x00100000
+#define SAMA5D3_ROM_SIZE	SZ_1M
+
+#define SAMA5D3_UDPHS_FIFO	0x00500000
+#define SAMA5D3_OHCI_BASE	0x00600000	/* USB Host controller (OHCI) */
+#define SAMA5D3_EHCI_BASE	0x00700000	/* USB Host controller (EHCI) */
+
+/*
+ * DMA0 peripheral identifiers
+ * for hardware handshaking interface
+ */
+#define SAMA5_DMA_ID_MCI0	 0
+#define SAMA5_DMA_ID_SPI0_TX	 1
+#define SAMA5_DMA_ID_SPI0_RX	 2
+#define SAMA5_DMA_ID_USART0_TX	 3
+#define SAMA5_DMA_ID_USART0_RX	 4
+#define SAMA5_DMA_ID_USART1_TX	 5
+#define SAMA5_DMA_ID_USART1_RX	 6
+#define SAMA5_DMA_ID_TWI0_TX	 7
+#define SAMA5_DMA_ID_TWI0_RX	 8
+#define SAMA5_DMA_ID_TWI1_TX	 9
+#define SAMA5_DMA_ID_TWI1_RX	10
+#define SAMA5_DMA_ID_UART0_TX	11
+#define SAMA5_DMA_ID_UART0_RX	12
+#define SAMA5_DMA_ID_SSC0_TX	13
+#define SAMA5_DMA_ID_SSC0_RX	14
+#define SAMA5_DMA_ID_SMD_TX	15
+#define SAMA5_DMA_ID_SMD_RX	16
+
+/*
+ * DMA1 peripheral identifiers
+ * for hardware handshaking interface
+ */
+#define SAMA5_DMA_ID_MCI1	0
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/sama5d3_matrix.h b/arch/arm/mach-at91/include/mach/sama5d3_matrix.h
new file mode 100644
index 0000000..8176b38
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/sama5d3_matrix.h
@@ -0,0 +1,15 @@
+/*
+ * Matrix-centric header file for the SAMA5D3 family
+ *
+ *  Copyright (C) 2009-2012 Atmel Corporation.
+ *
+ * Only EBI related registers.
+ * Write Protect register definitions may be useful.
+ *
+ * Licensed under GPLv2 or later.
+ */
+
+#ifndef SAMA5D3_MATRIX_H
+#define SAMA5D3_MATRIX_H
+
+#endif
diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
new file mode 100644
index 0000000..8a40c10
--- /dev/null
+++ b/arch/arm/mach-at91/sama5d3.c
@@ -0,0 +1,319 @@
+#include <common.h>
+#include <gpio.h>
+#include <init.h>
+#include <asm/hardware.h>
+#include <mach/at91_pmc.h>
+#include <mach/io.h>
+#include <mach/cpu.h>
+
+#include "soc.h"
+#include "generic.h"
+#include "clock.h"
+
+/* --------------------------------------------------------------------
+ *  Clocks
+ * -------------------------------------------------------------------- */
+
+/*
+ * The peripheral clocks.
+ */
+
+
+static struct clk pit_clk = {
+	.name		= "pit_clk",
+	.pid		= SAMA5D3_ID_PIT,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk smc_clk = {
+	.name		= "smc_clk",
+	.pid		= SAMA5D3_ID_HSMC5,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioA_clk = {
+	.name		= "pioA_clk",
+	.pid		= SAMA5D3_ID_PIOA,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioB_clk = {
+	.name		= "pioB_clk",
+	.pid		= SAMA5D3_ID_PIOB,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioC_clk = {
+	.name		= "pioC_clk",
+	.pid		= SAMA5D3_ID_PIOC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioD_clk = {
+	.name		= "pioD_clk",
+	.pid		= SAMA5D3_ID_PIOD,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioE_clk = {
+	.name		= "pioE_clk",
+	.pid		= SAMA5D3_ID_PIOE,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart0_clk = {
+	.name		= "usart0_clk",
+	.pid		= SAMA5D3_ID_USART0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart1_clk = {
+	.name		= "usart1_clk",
+	.pid		= SAMA5D3_ID_USART1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart2_clk = {
+	.name		= "usart2_clk",
+	.pid		= SAMA5D3_ID_USART2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart3_clk = {
+	.name		= "usart3_clk",
+	.pid		= SAMA5D3_ID_USART3,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk uart0_clk = {
+	.name		= "uart0_clk",
+	.pid		= SAMA5D3_ID_UART0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk uart1_clk = {
+	.name		= "uart1_clk",
+	.pid		= SAMA5D3_ID_UART1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc0_clk = {
+	.name		= "mci0_clk",
+	.pid		= SAMA5D3_ID_HSMCI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc1_clk = {
+	.name		= "mci1_clk",
+	.pid		= SAMA5D3_ID_HSMCI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc2_clk = {
+	.name		= "mci2_clk",
+	.pid		= SAMA5D3_ID_HSMCI2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi0_clk = {
+	.name		= "spi0_clk",
+	.pmc_mask	= 1 << SAMA5D3_ID_SPI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi1_clk = {
+	.name		= "spi1_clk",
+	.pmc_mask	= 1 << SAMA5D3_ID_SPI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tcb0_clk = {
+	.name		= "tcb0_clk",
+	.pid		= SAMA5D3_ID_TC0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tcb1_clk = {
+	.name		= "tcb1_clk",
+	.pid		= SAMA5D3_ID_TC1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk adc_clk = {
+	.name		= "adc_clk",
+	.pid		= SAMA5D3_ID_ADC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk dma0_clk = {
+	.name		= "dma0_clk",
+	.pid		= SAMA5D3_ID_DMA0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk dma1_clk = {
+	.name		= "dma1_clk",
+	.pid		= SAMA5D3_ID_DMA1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk uhphs_clk = {
+	.name		= "uhphs",
+	.pid		= SAMA5D3_ID_UHPHS,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twi0_clk = {
+	.name		= "twi0_clk",
+	.pid		= SAMA5D3_ID_TWI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+	.div		= AT91_PMC_PCR_DIV8,
+};
+static struct clk twi1_clk = {
+	.name		= "twi1_clk",
+	.pid		= SAMA5D3_ID_TWI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+	.div		= AT91_PMC_PCR_DIV8,
+};
+static struct clk twi2_clk = {
+	.name		= "twi2_clk",
+	.pid		= SAMA5D3_ID_TWI2,
+	.type		= CLK_TYPE_PERIPHERAL,
+	.div		= AT91_PMC_PCR_DIV8,
+};
+static struct clk aes_clk = {
+	.name		= "aes_clk",
+	.pid		= SAMA5D3_ID_AES,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tdes_clk = {
+	.name		= "tdes_clk",
+	.pid		= SAMA5D3_ID_TDES,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk sha_clk = {
+	.name		= "sha_clk",
+	.pid		= SAMA5D3_ID_SHA,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+/* gmac only for sama5d33, sama5d34, sama5d35 */
+static struct clk macb0_clk = {
+	.name		= "macb0_clk",
+	.pid		= SAMA5D3_ID_GMAC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+/* emac only for sama5d31, sama5d35 */
+static struct clk macb1_clk = {
+	.name		= "macb1_clk",
+	.pid		= SAMA5D3_ID_EMAC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+/* lcd only for sama5d31, sama5d33, sama5d34 */
+static struct clk lcdc_clk = {
+	.name		= "lcdc_clk",
+	.pid		= SAMA5D3_ID_LCDC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+/* isi only for sama5d33, sama5d35 */
+static struct clk isi_clk = {
+	.name		= "isi_clk",
+	.pid		= SAMA5D3_ID_ISI,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+
+static struct clk *periph_clocks[] __initdata = {
+	&pit_clk,
+	&smc_clk,
+	&pioA_clk,
+	&pioB_clk,
+	&pioC_clk,
+	&pioD_clk,
+	&pioE_clk,
+	&usart0_clk,
+	&usart1_clk,
+	&usart2_clk,
+	&usart3_clk,
+	&uart0_clk,
+	&uart1_clk,
+	&mmc0_clk,
+	&mmc1_clk,
+	&mmc2_clk,
+	&spi0_clk,
+	&spi1_clk,
+	&tcb0_clk,
+	&tcb1_clk,
+	&adc_clk,
+	&dma0_clk,
+	&dma1_clk,
+	&uhphs_clk,
+	&twi0_clk,
+	&twi1_clk,
+	&twi2_clk,
+	&aes_clk,
+	&tdes_clk,
+	&sha_clk,
+};
+
+static struct clk pck2 = {
+	.name		= "pck2",
+	.pmc_mask	= AT91_PMC_PCK2,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 2,
+};
+
+static struct clk_lookup periph_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("macb_clk", "macb0", &macb0_clk),
+	CLKDEV_CON_DEV_ID("macb_clk", "macb1", &macb1_clk),
+	CLKDEV_CON_ID("ohci_clk", &uhphs_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
+	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci0", &mmc0_clk),
+	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
+	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci2", &mmc2_clk),
+	CLKDEV_DEV_ID("at91sam9x5-gpio0", &pioA_clk),
+	CLKDEV_DEV_ID("at91sam9x5-gpio1", &pioB_clk),
+	CLKDEV_DEV_ID("at91sam9x5-gpio2", &pioC_clk),
+	CLKDEV_DEV_ID("at91sam9x5-gpio3", &pioD_clk),
+	CLKDEV_DEV_ID("at91sam9x5-gpio4", &pioE_clk),
+	CLKDEV_DEV_ID("at91-pit", &pit_clk),
+};
+
+static struct clk_lookup usart_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart2", &usart1_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart3", &usart2_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart4", &usart3_clk),
+};
+
+static void __init sama5d3_register_clocks(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
+		clk_register(periph_clocks[i]);
+
+	clkdev_add_table(periph_clocks_lookups,
+			 ARRAY_SIZE(periph_clocks_lookups));
+	clkdev_add_table(usart_clocks_lookups,
+			 ARRAY_SIZE(usart_clocks_lookups));
+
+	if ( cpu_is_sama5d33()
+	|| cpu_is_sama5d34()
+	|| cpu_is_sama5d35() )
+		clk_register(&macb0_clk);
+
+	if ( cpu_is_sama5d31()
+	|| cpu_is_sama5d35() )
+		clk_register(&macb1_clk);
+
+	if (!cpu_is_sama5d35())
+		clk_register(&lcdc_clk);
+
+	clk_register(&isi_clk);
+
+	clk_register(&pck2);
+}
+
+/* --------------------------------------------------------------------
+ *  AT91SAM9x5 processor initialization
+ * -------------------------------------------------------------------- */
+
+static void sama5d3_initialize(void)
+{
+	/* Init clock subsystem */
+	at91_clock_init(AT91_MAIN_CLOCK);
+
+	/* Register the processor-specific clocks */
+	sama5d3_register_clocks();
+
+	/* Register GPIO subsystem */
+	at91_add_sam9x5_gpio(0, SAMA5D3_BASE_PIOA);
+	at91_add_sam9x5_gpio(1, SAMA5D3_BASE_PIOB);
+	at91_add_sam9x5_gpio(2, SAMA5D3_BASE_PIOC);
+	at91_add_sam9x5_gpio(3, SAMA5D3_BASE_PIOD);
+	at91_add_sam9x5_gpio(4, SAMA5D3_BASE_PIOE);
+
+	at91_add_pit(SAMA5D3_BASE_PIT);
+	at91_add_sam9_smc(DEVICE_ID_SINGLE, SAMA5D3_BASE_HSMC + 0x600, 0xa0);
+}
+
+AT91_SOC_START(sama5d3)
+	.init = sama5d3_initialize,
+AT91_SOC_END
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
new file mode 100644
index 0000000..23e4ab9
--- /dev/null
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -0,0 +1,444 @@
+/*
+ *  On-Chip devices setup code for the AT91SAM9x5 family
+ *
+ *  Copyright (C) 2010 Atmel Corporation.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <sizes.h>
+#include <asm/armlinux.h>
+#include <asm/hardware.h>
+#include <mach/board.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91sam9x5_matrix.h>
+#include <mach/at91sam9_ddrsdr.h>
+#include <mach/gpio.h>
+#include <mach/io.h>
+#include <mach/cpu.h>
+#include <i2c/i2c-gpio.h>
+
+#include "generic.h"
+
+void at91_add_device_sdram(u32 size)
+{
+	if (!size)
+		size = at91sama5_get_ddram_size();
+
+	arm_add_mem_device("ram0", SAMA5_DDRCS, size);
+	add_mem_device("sram0", SAMA5D3_SRAM_BASE,
+			SAMA5D3_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
+}
+
+/* --------------------------------------------------------------------
+ *  NAND / SmartMedia
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= SAMA5_CHIPSELECT_3,
+		.end	= SAMA5_CHIPSELECT_3 + SZ_256M - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+	[1] = {
+		.start	= SAMA5D3_BASE_PMECC,
+		.end	= SAMA5D3_BASE_PMECC + 0x490 - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+	[2] = {
+		.start	= SAMA5D3_BASE_PMERRLOC,
+		.end	= SAMA5D3_BASE_PMERRLOC + 0x100 - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+	[3] = {
+		.start	= SAMA5D3_ROM_BASE,
+		.end	= SAMA5D3_ROM_BASE + SAMA5D3_ROM_SIZE - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+void __init at91_add_device_nand(struct atmel_nand_data *data)
+{
+	if (!data)
+		return;
+
+	switch (data->pmecc_sector_size) {
+	case 512:
+		data->pmecc_lookup_table_offset = 0x10000;
+		break;
+	case 1024:
+		data->pmecc_lookup_table_offset = 0x18000;
+		break;
+	default:
+		pr_err("%s: invalid pmecc_sector_size (%d)\n", __func__,
+			data->pmecc_sector_size);
+		return;
+	}
+
+	at91_set_A_periph(AT91_PIN_PE21, 1);		/* ALE */
+	at91_set_A_periph(AT91_PIN_PE22, 1);		/* CLE */
+
+	/* enable pin */
+	if (gpio_is_valid(data->enable_pin))
+		at91_set_gpio_output(data->enable_pin, 1);
+
+	/* ready/busy pin */
+	if (gpio_is_valid(data->rdy_pin))
+		at91_set_gpio_input(data->rdy_pin, 1);
+
+	/* card detect pin */
+	if (gpio_is_valid(data->det_pin))
+		at91_set_gpio_input(data->det_pin, 1);
+
+	add_generic_device_res("atmel_nand", 0, nand_resources,
+			       ARRAY_SIZE(nand_resources), data);
+}
+#else
+void __init at91_add_device_nand(struct atmel_nand_data *data) {}
+#endif
+
+#if defined(CONFIG_DRIVER_NET_MACB)
+void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
+{
+	if (!data)
+		return;
+
+	switch (id) {
+	case 0:
+		if (cpu_is_sama5d31()) {
+			pr_warn("AT91: no gmac on sama5d31\n");
+			return;
+		}
+
+		at91_set_A_periph(AT91_PIN_PB16, 0);	/* GMDC */
+		at91_set_A_periph(AT91_PIN_PB17, 0);	/* GMDIO */
+
+		at91_set_A_periph(AT91_PIN_PB9, 0);	/* GTXEN */
+		at91_set_A_periph(AT91_PIN_PB11, 0);	/* GRXCK */
+		at91_set_A_periph(AT91_PIN_PB13, 0);	/* GRXER */
+
+		switch (data->phy_interface) {
+		case PHY_INTERFACE_MODE_GMII:
+			at91_set_B_periph(AT91_PIN_PB19, 0);	/* GTX4 */
+			at91_set_B_periph(AT91_PIN_PB20, 0);	/* GTX5 */
+			at91_set_B_periph(AT91_PIN_PB21, 0);	/* GTX6 */
+			at91_set_B_periph(AT91_PIN_PB22, 0);	/* GTX7 */
+			at91_set_B_periph(AT91_PIN_PB23, 0);	/* GRX4 */
+			at91_set_B_periph(AT91_PIN_PB24, 0);	/* GRX5 */
+			at91_set_B_periph(AT91_PIN_PB25, 0);	/* GRX6 */
+			at91_set_B_periph(AT91_PIN_PB26, 0);	/* GRX7 */
+		case PHY_INTERFACE_MODE_MII:
+		case PHY_INTERFACE_MODE_RGMII:
+			at91_set_A_periph(AT91_PIN_PB0, 0);	/* GTX0 */
+			at91_set_A_periph(AT91_PIN_PB1, 0);	/* GTX1 */
+			at91_set_A_periph(AT91_PIN_PB2, 0);	/* GTX2 */
+			at91_set_A_periph(AT91_PIN_PB3, 0);	/* GTX3 */
+			at91_set_A_periph(AT91_PIN_PB4, 0);	/* GRX0 */
+			at91_set_A_periph(AT91_PIN_PB5, 0);	/* GRX1 */
+			at91_set_A_periph(AT91_PIN_PB6, 0);	/* GRX2 */
+			at91_set_A_periph(AT91_PIN_PB7, 0);	/* GRX3 */
+			break;
+		default:
+			return;
+		}
+
+		switch (data->phy_interface) {
+		case PHY_INTERFACE_MODE_MII:
+			at91_set_A_periph(AT91_PIN_PB8, 0);	/* GTXCK */
+			at91_set_A_periph(AT91_PIN_PB10, 0);	/* GTXER */
+			at91_set_A_periph(AT91_PIN_PB12, 0);	/* GRXDV */
+			at91_set_A_periph(AT91_PIN_PB14, 0);	/* GCRS */
+			at91_set_A_periph(AT91_PIN_PB15, 0);	/* GCOL */
+			break;
+		case PHY_INTERFACE_MODE_RGMII:
+			at91_set_A_periph(AT91_PIN_PB8, 0);	/* GTXCK */
+			at91_set_A_periph(AT91_PIN_PB18, 0);	/* G125CK */
+			break;
+		case PHY_INTERFACE_MODE_GMII:
+			at91_set_A_periph(AT91_PIN_PB10, 0);	/* GTXER */
+			at91_set_A_periph(AT91_PIN_PB12, 0);	/* GRXDV */
+			at91_set_A_periph(AT91_PIN_PB14, 0);	/* GCRS */
+			at91_set_A_periph(AT91_PIN_PB15, 0);	/* GCOL */
+			at91_set_A_periph(AT91_PIN_PB27, 0);	/* G125CK0 */
+			break;
+		default:
+			return;
+		}
+
+		add_generic_device("macb", id, NULL, SAMA5D3_BASE_GMAC, SZ_16K,
+			   IORESOURCE_MEM, data);
+		break;
+	case 1:
+		if (cpu_is_sama5d33() || cpu_is_sama5d34()) {
+			pr_warn("AT91: no macb on sama5d33/d34\n");
+			return;
+		}
+
+		if (data->phy_interface != PHY_INTERFACE_MODE_RMII) {
+			pr_warn("AT91: Only RMII available on interfacr macb%d.\n", id);
+			return;
+		}
+
+		at91_set_A_periph(AT91_PIN_PC7, 0);	/* ETXCK_EREFCK */
+		at91_set_A_periph(AT91_PIN_PC5, 0);	/* ERXDV */
+		at91_set_A_periph(AT91_PIN_PC2, 0);	/* ERX0 */
+		at91_set_A_periph(AT91_PIN_PC3, 0);	/* ERX1 */
+		at91_set_A_periph(AT91_PIN_PC6, 0);	/* ERXER */
+		at91_set_A_periph(AT91_PIN_PC4, 0);	/* ETXEN */
+		at91_set_A_periph(AT91_PIN_PC0, 0);	/* ETX0 */
+		at91_set_A_periph(AT91_PIN_PC1, 0);	/* ETX1 */
+		at91_set_A_periph(AT91_PIN_PC9, 0);	/* EMDIO */
+		at91_set_A_periph(AT91_PIN_PC8, 0);	/* EMDC */
+		add_generic_device("macb", id, NULL, SAMA5D3_BASE_EMAC, SZ_16K,
+			   IORESOURCE_MEM, data);
+		break;
+	default:
+		return;
+	}
+
+}
+#else
+void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
+#endif
+
+#if defined(CONFIG_MCI_ATMEL)
+/* Consider only one slot : slot 0 */
+void __init at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
+{
+	resource_size_t start = ~0;
+
+	if (!data)
+		return;
+
+	/* Must have at least one usable slot */
+	if (!data->bus_width)
+		return;
+
+	/* input/irq */
+	if (gpio_is_valid(data->detect_pin)) {
+		at91_set_gpio_input(data->detect_pin, 1);
+		at91_set_deglitch(data->detect_pin, 1);
+	}
+	if (gpio_is_valid(data->wp_pin))
+		at91_set_gpio_input(data->wp_pin, 1);
+
+	switch (mmc_id) {
+	case 0:		/* MCI0 */
+		start = SAMA5D3_BASE_HSMCI0;
+
+		/* CLK */
+		at91_set_A_periph(AT91_PIN_PD9, 0);
+
+		/* CMD */
+		at91_set_A_periph(AT91_PIN_PD0, 1);
+
+		/* DAT0, maybe DAT1..DAT3 */
+		at91_set_A_periph(AT91_PIN_PD1, 1);
+		switch (data->bus_width) {
+		case 8:
+			at91_set_A_periph(AT91_PIN_PD5, 1);
+			at91_set_A_periph(AT91_PIN_PD6, 1);
+			at91_set_A_periph(AT91_PIN_PD7, 1);
+			at91_set_A_periph(AT91_PIN_PD8, 1);
+		case 4:
+			at91_set_A_periph(AT91_PIN_PD2, 1);
+			at91_set_A_periph(AT91_PIN_PD3, 1);
+			at91_set_A_periph(AT91_PIN_PD4, 1);
+		};
+
+		break;
+	case 1:			/* MCI1 */
+		start = SAMA5D3_BASE_HSMCI1;
+
+		/* CLK */
+		at91_set_A_periph(AT91_PIN_PB24, 0);
+
+		/* CMD */
+		at91_set_A_periph(AT91_PIN_PB19, 1);
+
+		/* DAT0, maybe DAT1..DAT3 */
+		at91_set_A_periph(AT91_PIN_PB20, 1);
+		if (data->bus_width == 4) {
+			at91_set_A_periph(AT91_PIN_PB21, 1);
+			at91_set_A_periph(AT91_PIN_PB22, 1);
+			at91_set_A_periph(AT91_PIN_PB23, 1);
+		}
+		break;
+	case 2:			/* MCI2 */
+		start = SAMA5D3_BASE_HSMCI2;
+
+		/* CLK */
+		at91_set_A_periph(AT91_PIN_PC15, 0);
+
+		/* CMD */
+		at91_set_A_periph(AT91_PIN_PC10, 1);
+
+		/* DAT0, maybe DAT1..DAT3 */
+		at91_set_A_periph(AT91_PIN_PC11, 1);
+		if (data->bus_width == 4) {
+			at91_set_A_periph(AT91_PIN_PC12, 1);
+			at91_set_A_periph(AT91_PIN_PC13, 1);
+			at91_set_A_periph(AT91_PIN_PC14, 1);
+		}
+	}
+
+	add_generic_device("atmel_mci", mmc_id, NULL, start, SZ_16K,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
+#endif
+
+#if defined(CONFIG_I2C_GPIO)
+static struct i2c_gpio_platform_data pdata_i2c [] = {
+	{
+		.sda_pin		= AT91_PIN_PA30,
+		.sda_is_open_drain	= 1,
+		.scl_pin		= AT91_PIN_PA31,
+		.scl_is_open_drain	= 1,
+		.udelay			= 5,		/* ~100 kHz */
+	}, {
+		.sda_pin		= AT91_PIN_PC26,
+		.sda_is_open_drain	= 1,
+		.scl_pin		= AT91_PIN_PC27,
+		.scl_is_open_drain	= 1,
+		.udelay			= 5,		/* ~100 kHz */
+	}, {
+		.sda_pin		= AT91_PIN_PA18,
+		.sda_is_open_drain	= 1,
+		.scl_pin		= AT91_PIN_PA19,
+		.scl_is_open_drain	= 1,
+		.udelay			= 5,		/* ~100 kHz */
+	}
+};
+
+void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices, int nr_devices)
+{
+	struct i2c_gpio_platform_data *pdata;
+
+	if (i2c_id > ARRAY_SIZE(pdata_i2c))
+		return;
+
+	i2c_register_board_info(i2c_id, devices, nr_devices);
+
+	pdata = &pdata_i2c[i2c_id];
+
+	at91_set_GPIO_periph(pdata->sda_pin, 1);		/* TWD (SDA) */
+	at91_set_multi_drive(pdata->sda_pin, 1);
+
+	at91_set_GPIO_periph(pdata->scl_pin, 1);		/* TWCK (SCL) */
+	at91_set_multi_drive(pdata->scl_pin, 1);
+
+	add_generic_device_res("i2c-gpio", i2c_id, NULL, 0, pdata);
+}
+#else
+void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices, int nr_devices) {}
+#endif
+
+/* --------------------------------------------------------------------
+ *  SPI
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_SPI_ATMEL)
+static unsigned spi0_standard_cs[4] = { AT91_PIN_PD13, AT91_PIN_PD14, AT91_PIN_PD15, AT91_PIN_PD16 };
+
+static unsigned spi1_standard_cs[4] = { AT91_PIN_PC25, AT91_PIN_PC26, AT91_PIN_PC27, AT91_PIN_PC28 };
+
+static struct at91_spi_platform_data spi_pdata[] = {
+	[0] = {
+		.chipselect = spi0_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+	},
+	[1] = {
+		.chipselect = spi1_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi1_standard_cs),
+	},
+};
+
+void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
+{
+	int i;
+	int cs_pin;
+	resource_size_t start = ~0;
+
+	BUG_ON(spi_id > 1);
+
+	if (!pdata)
+		pdata = &spi_pdata[spi_id];
+
+	for (i = 0; i < pdata->num_chipselect; i++) {
+		cs_pin = pdata->chipselect[i];
+
+		/* enable chip-select pin */
+		if (gpio_is_valid(cs_pin))
+			at91_set_gpio_output(cs_pin, 1);
+	}
+
+	/* Configure SPI bus(es) */
+	switch (spi_id) {
+	case 0:
+		start = SAMA5D3_BASE_SPI0;
+		at91_set_A_periph(AT91_PIN_PD10, 0);	/* SPI0_MISO */
+		at91_set_A_periph(AT91_PIN_PD11, 0);	/* SPI0_MOSI */
+		at91_set_A_periph(AT91_PIN_PD12, 0);	/* SPI0_SPCK */
+		break;
+	case 1:
+		start = SAMA5D3_BASE_SPI1;
+		at91_set_B_periph(AT91_PIN_PC22, 0);	/* SPI1_MISO */
+		at91_set_B_periph(AT91_PIN_PC23, 0);	/* SPI1_MOSI */
+		at91_set_B_periph(AT91_PIN_PC24, 0);	/* SPI1_SPCK */
+		break;
+	}
+
+	add_generic_device("atmel_spi", spi_id, NULL, start, SZ_16K,
+			   IORESOURCE_MEM, pdata);
+}
+#else
+void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
+#endif
+
+/* --------------------------------------------------------------------
+ *  UART
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_SERIAL_ATMEL)
+resource_size_t __init at91_configure_dbgu(void)
+{
+	at91_set_A_periph(AT91_PIN_PB30, 0);		/* DRXD */
+	at91_set_A_periph(AT91_PIN_PB31, 1);		/* DTXD */
+
+	return AT91_BASE_DBGU1;
+}
+
+resource_size_t __init at91_configure_usart0(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PD18, 1);		/* TXD0 */
+	at91_set_A_periph(AT91_PIN_PD17, 0);		/* RXD0 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_A_periph(AT91_PIN_PD16, 0);	/* RTS0 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_A_periph(AT91_PIN_PD15, 0);	/* CTS0 */
+
+	return SAMA5D3_BASE_USART0;
+}
+
+resource_size_t __init at91_configure_usart1(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PB29, 1);		/* TXD1 */
+	at91_set_A_periph(AT91_PIN_PB28, 0);		/* RXD1 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_A_periph(AT91_PIN_PB27, 0);	/* RTS1 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_A_periph(AT91_PIN_PB26, 0);	/* CTS1 */
+
+	return SAMA5D3_BASE_USART1;
+}
+#endif
diff --git a/arch/arm/mach-at91/sama5d3_lowlevel_init.c b/arch/arm/mach-at91/sama5d3_lowlevel_init.c
new file mode 100644
index 0000000..d15cf1c
--- /dev/null
+++ b/arch/arm/mach-at91/sama5d3_lowlevel_init.c
@@ -0,0 +1,24 @@
+/*
+ * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <asm/system.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/hardware.h>
+#include <mach/at91_pmc.h>
+#include <mach/io.h>
+#include <init.h>
+
+void __naked __bare_init reset(void)
+{
+	common_reset();
+
+	at91_pmc_write(AT91_PMC_PCER, 0xffffffff);
+	at91_pmc_write(AT91_PMC_SCER, 0xffffffff);
+
+	board_init_lowlevel_return();
+}
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 9b73bcf..0444a5f 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -87,6 +87,11 @@ static void __init soc_detect(u32 dbgu_base)
 		at91_soc_initdata.type = AT91_SOC_SAM9N12;
 		at91_boot_soc = at91sam9n12_soc;
 		break;
+
+	case ARCH_ID_SAMA5D3:
+		at91_soc_initdata.type = AT91_SOC_SAMA5D3;
+		at91_boot_soc = at91sama5d3_soc;
+		break;
 	}
 
 	/* at91sam9g10 */
@@ -142,6 +147,23 @@ static void __init soc_detect(u32 dbgu_base)
 			break;
 		}
 	}
+
+	if (at91_soc_initdata.type == AT91_SOC_SAMA5D3) {
+		switch (at91_soc_initdata.exid) {
+		case ARCH_EXID_SAMA5D31:
+			at91_soc_initdata.subtype = AT91_SOC_SAMA5D31;
+			break;
+		case ARCH_EXID_SAMA5D33:
+			at91_soc_initdata.subtype = AT91_SOC_SAMA5D33;
+			break;
+		case ARCH_EXID_SAMA5D34:
+			at91_soc_initdata.subtype = AT91_SOC_SAMA5D34;
+			break;
+		case ARCH_EXID_SAMA5D35:
+			at91_soc_initdata.subtype = AT91_SOC_SAMA5D35;
+			break;
+		}
+	}
 }
 
 static const char *soc_name[] = {
@@ -155,6 +177,7 @@ static const char *soc_name[] = {
 	[AT91_SOC_SAM9RL]	= "at91sam9rl",
 	[AT91_SOC_SAM9X5]	= "at91sam9x5",
 	[AT91_SOC_SAM9N12]	= "at91sam9n12",
+	[AT91_SOC_SAMA5D3]	= "sama5d3",
 	[AT91_SOC_NONE]		= "Unknown"
 };
 
@@ -177,6 +200,10 @@ static const char *soc_subtype_name[] = {
 	[AT91_SOC_SAM9X35]	= "at91sam9x35",
 	[AT91_SOC_SAM9G25]	= "at91sam9g25",
 	[AT91_SOC_SAM9X25]	= "at91sam9x25",
+	[AT91_SOC_SAMA5D31]	= "sama5d31",
+	[AT91_SOC_SAMA5D33]	= "sama5d33",
+	[AT91_SOC_SAMA5D34]	= "sama5d34",
+	[AT91_SOC_SAMA5D35]	= "sama5d35",
 	[AT91_SOC_SUBTYPE_NONE]	= "Unknown"
 };
 
diff --git a/arch/arm/mach-at91/soc.h b/arch/arm/mach-at91/soc.h
index 8019ced..b2278a5 100644
--- a/arch/arm/mach-at91/soc.h
+++ b/arch/arm/mach-at91/soc.h
@@ -18,6 +18,7 @@ extern struct at91_init_soc at91sam9g45_soc;
 extern struct at91_init_soc at91sam9rl_soc;
 extern struct at91_init_soc at91sam9x5_soc;
 extern struct at91_init_soc at91sam9n12_soc;
+extern struct at91_init_soc at91sama5d3_soc;
 
 #define AT91_SOC_START(_name)				\
 struct at91_init_soc __initdata at91##_name##_soc	\
@@ -64,3 +65,7 @@ static inline int at91_soc_is_enabled(void)
 #if !defined(CONFIG_SOC_AT91SAM9N12)
 #define at91sam9n12_soc	at91_boot_soc
 #endif
+
+#if !defined(CONFIG_SOC_SAMA5)
+#define at91sama5d3_soc	at91_boot_soc
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUHgx-0002At-4G
 for barebox@lists.infradead.org; Tue, 15 May 2012 13:21:36 +0000
Received: by mail-lpp01m010-f49.google.com with SMTP id p9so5174116laa.36
 for <barebox@lists.infradead.org>; Tue, 15 May 2012 06:21:30 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Tue, 15 May 2012 19:20:39 +0600
Message-Id: <1337088040-24138-7-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1337088040-24138-1-git-send-email-agalakhov@gmail.com>
References: <1337088040-24138-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 6/7] S5P DRAM support
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 arch/arm/mach-samsung/Makefile                    |    2 +-
 arch/arm/mach-samsung/include/mach/s3c-generic.h  |    1 +
 arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h |    3 +
 arch/arm/mach-samsung/mem-s5pcxx.c                |  260 +++++++++++++++++++++
 4 files changed, 265 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-samsung/mem-s5pcxx.c

diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index d7344c8..6020587 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -2,5 +2,5 @@ obj-y += s3c-timer.o generic.o
 obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
 obj-lowlevel-$(CONFIG_ARCH_S5PCxx) += lowlevel-s5pcxx.o
 obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o s3c24xx-clocks.o mem-s3c24x0.o
-obj-$(CONFIG_ARCH_S5PCxx) += gpio-s5pcxx.o clocks-s5pcxx.o
+obj-$(CONFIG_ARCH_S5PCxx) += gpio-s5pcxx.o clocks-s5pcxx.o mem-s5pcxx.o
 obj-$(CONFIG_S3C_LOWLEVEL_INIT) += $(obj-lowlevel-y)
diff --git a/arch/arm/mach-samsung/include/mach/s3c-generic.h b/arch/arm/mach-samsung/include/mach/s3c-generic.h
index 578aae1..9a5a642 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-generic.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-generic.h
@@ -41,4 +41,5 @@ void s3c24xx_disable_second_sdram_bank(void);
 
 #ifdef CONFIG_ARCH_S5PCxx
 void s5p_init_pll(void);
+void s5p_init_dram_bank(uint32_t base, uint32_t mc0, uint32_t mc1);
 #endif
diff --git a/arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h b/arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h
index cb05527..248f868 100644
--- a/arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h
+++ b/arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h
@@ -47,3 +47,6 @@
 #define S3C_UART3_SIZE 0x400
 #define S3C_UART_HAS_UBRDIVSLOT
 #define S3C_UART_HAS_UINTM
+
+#define S5P_DMC0_BASE 0xF0000000
+#define S5P_DMC1_BASE 0xF1400000
diff --git a/arch/arm/mach-samsung/mem-s5pcxx.c b/arch/arm/mach-samsung/mem-s5pcxx.c
new file mode 100644
index 0000000..f3d325a
--- /dev/null
+++ b/arch/arm/mach-samsung/mem-s5pcxx.c
@@ -0,0 +1,260 @@
+/*
+ * Copyright (C) 2012 Alexey Galakhov
+ *
+ * Based on code from u-boot found somewhere on the web
+ * that seems to originate from Samsung
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
+ */
+
+#include <config.h>
+#include <common.h>
+#include <io.h>
+#include <init.h>
+#include <mach/s3c-generic.h>
+#include <mach/s3c-iomap.h>
+
+#define S5P_DMC_CONCONTROL	0x00
+#define S5P_DMC_MEMCONTROL	0x04
+#define S5P_DMC_MEMCONFIG0	0x08
+#define S5P_DMC_MEMCONFIG1	0x0C
+#define S5P_DMC_DIRECTCMD	0x10
+#define S5P_DMC_PRECHCONFIG	0x14
+#define S5P_DMC_PHYCONTROL0	0x18
+#define S5P_DMC_PHYCONTROL1	0x1C
+#define S5P_DMC_PWRDNCONFIG	0x28
+#define S5P_DMC_TIMINGAREF	0x30
+#define S5P_DMC_TIMINGROW	0x34
+#define S5P_DMC_TIMINGDATA	0x38
+#define S5P_DMC_TIMINGPOWER	0x3C
+#define S5P_DMC_PHYSTATUS	0x40
+
+/* DRAM commands */
+#define CMD(x)  ((x) << 24)
+#define BANK(x) ((x) << 16)
+#define CHIP(x) ((x) << 20)
+#define ADDR(x) (x)
+
+/**
+ *  MR definition:
+ *  1 11
+ *  2 1098 7654 3210
+ *      |     |  ^^^- burst length, 010=4, 011=8
+ *      |     | ^- burst type 0=sequnential, 1=interleaved
+ *      |   ^^^-- CAS latency
+ *      |  ^----- test, 0=normal, 1=test
+ *      |^---- DLL reset, 1=yes
+ *    ^^^----- WR, 1=2, 2=3 etc.
+ *  ^------- PD, 0=fast exit, 1=low power
+ *
+ *  EMR1 definition:
+ *  1 11
+ *  2 1098 7654 3210
+ *         |       ^- DLL, 0=enable
+ *         |      ^-- output strength, 0=full, 1=reduced
+ *         |^.. .^--- Rtt, 00=off, 01=75, 10=150, 11=50 Ohm
+ *         | ^^ ^-- Posted CAS# AL, 0-6
+ *      ^^ ^------ OCD: 000=OCD exit, 111=enable defaults
+ *     ^------ DQS#, 0=enable, 1=disable
+ *    ^------- RDQS enable, 0=no, 1=yes
+ *  ^-------- outputs, 0=enabled, 1=disabled
+ *
+ *  EMR2 definition:
+ *  bit 7
+ *  1 1
+ *  2 1098 7654 3210
+ *         ^-- SRT, 0=1x (0-85 deg.C), 1=2x (>85 deg.C)
+ *  all other bits = 0
+ *
+ *  EMR3 definition: all bits 0
+ */
+
+#define MRS	CMD(0x0)
+#define PALL	CMD(0x1)
+#define PRE	CMD(0x2)
+#define DPD	CMD(0x3)
+#define REFS	CMD(0x4)
+#define REFA	CMD(0x5)
+#define CKEL	CMD(0x6)
+#define NOP	CMD(0x7)
+#define REFSX	CMD(0x8)
+#define MRR	CMD(0x9)
+
+#define EMRS1 (MRS | BANK(1))
+#define EMRS2 (MRS | BANK(2))
+#define EMRS3 (MRS | BANK(3))
+
+/* Burst is (1 << S5P_DRAM_BURST), i.e. S5P_DRAM_BURST=2 for burst 4 */
+#ifndef S5P_DRAM_BURST
+/* (LP)DDR2 supports burst 4 only, make it default */
+# define S5P_DRAM_BURST 2
+#endif
+
+/**
+ * Initialization sequences for different kinds of DRAM
+ */
+#define dcmd(x) writel((x) | CHIP(chip), base + S5P_DMC_DIRECTCMD)
+
+/* TODO: LPDDR and LPDDR2 */
+
+#ifdef S5P_DRAM_DDR2
+static void __bare_init init_seq(uint32_t base, unsigned chip)
+{
+	const uint32_t emr = 0x400; /* DQS disable */
+	const uint32_t mr = (((S5P_DRAM_WR) - 1) << 9)
+			  | ((S5P_DRAM_CAS) << 4)
+			  | (S5P_DRAM_BURST);
+	dcmd(NOP);
+	/* FIXME wait here? */
+	dcmd(PALL); dcmd(EMRS2); dcmd(EMRS3);
+	dcmd(EMRS1 | ADDR(emr));         /* DQS disable */
+	dcmd(MRS   | ADDR(mr | 0x100));  /* DLL reset */
+	dcmd(PALL); dcmd(REFA); dcmd(REFA);
+	dcmd(MRS   | ADDR(mr));          /* DLL no reset */
+	dcmd(EMRS1 | ADDR(emr | 0x380)); /* OCD defaults */
+	dcmd(EMRS1 | ADDR(emr));         /* OCD exit */
+}
+#endif
+
+#undef dcmd
+
+
+static inline void __bare_init start_dll(uint32_t base)
+{
+	uint32_t pc0 = 0x00101000; /* the only legal initial value */
+	uint32_t lv;
+	/* Init DLL */
+	writel(pc0, base + S5P_DMC_PHYCONTROL0);
+#ifdef S5P_DRAM_DDR2
+	/* refcount 8, 180 deg. shift */
+	writel(0x00000086, base + S5P_DMC_PHYCONTROL1);
+#else
+	/* refcount 8, 90 deg. shift */
+	writel(0x00000085, base + S5P_DMC_PHYCONTROL1);
+#endif
+	/* DLL on */
+	pc0 |= 0x2;
+	writel(pc0, base + S5P_DMC_PHYCONTROL0);
+	/* DLL start */
+	pc0 |= 0x1;
+	writel(pc0, base + S5P_DMC_PHYCONTROL0);
+
+	/* Find lock val */
+	do {
+		lv = readl(base + S5P_DMC_PHYSTATUS);
+	} while ((lv & 0x7) != 0x7);
+
+	lv >>= 6;
+	lv &= 0xff; /* ctrl_lock_value[9:2] - coarse */
+	pc0 |= (lv << 24); /* ctrl_force */
+	writel(pc0, base + S5P_DMC_PHYCONTROL0); /* force value locking */
+}
+
+
+
+void __bare_init s5p_init_dram_bank(uint32_t base, uint32_t mc0, uint32_t mc1)
+{
+#ifdef S5P_DRAM_LPDDR
+	uint32_t reg = 0x100;
+#endif
+#ifdef S5P_DRAM_LPDDR2
+	uint32_t reg = 0x200;
+#endif
+#ifdef S5P_DRAM_DDR2
+	uint32_t reg = 0x400;
+#endif
+	reg |= (S5P_DRAM_BURST) << 20;
+#ifdef S5P_DRAM_16BIT
+	reg |= 0x1000;
+#else /* 32-bit */
+	reg |= 0x2000;
+#endif
+	if (mc1)
+		reg |= 0x10000; /* two chips */
+
+	start_dll(base);
+	writel(reg, base + S5P_DMC_MEMCONTROL);
+
+	/* Set up memory layout */
+	writel(mc0, base + S5P_DMC_MEMCONFIG0);
+	if (mc1)
+		writel(mc1, base + S5P_DMC_MEMCONFIG1);
+	/* Open page precharge policy - reasonable defaults */
+	writel(0xFF000000, base + S5P_DMC_PRECHCONFIG);
+	/* Set up timings */
+	writel(DMC_TIMING_AREF, base + S5P_DMC_TIMINGAREF);
+	writel(DMC_TIMING_ROW,  base + S5P_DMC_TIMINGROW);
+	writel(DMC_TIMING_DATA, base + S5P_DMC_TIMINGDATA);
+	writel(DMC_TIMING_PWR,  base + S5P_DMC_TIMINGPOWER);
+
+	/* Start-Up Commands */
+	init_seq(base, 0);
+	if (mc1)
+		init_seq(base, 1);
+
+	/* Reasonable defaults and auto-refresh on */
+	writel(0x0FFF1070, base + S5P_DMC_CONCONTROL);
+	/* Reasonable defaults */
+	writel(0xFFFF00FF, base + S5P_DMC_PWRDNCONFIG);
+}
+
+
+#define BANK_ENABLED(base) (readl((base) + S5P_DMC_PHYCONTROL0) & 1)
+#define NUM_EXTRA_CHIPS(base) ((readl((base) + S5P_DMC_MEMCONTROL) >> 16) & 0xF)
+
+#define BANK_START(x) ((x) & 0xFF000000)
+#define BANK_END(x) (BANK_START(x) | ~(((x) & 0x00FF0000) << 8))
+#define BANK_LEN(x) (BANK_END(x) - BANK_START(x) + 1)
+
+static inline void sortswap(uint32_t *x, uint32_t *y)
+{
+	if (*y < *x) {
+		*x ^= *y;
+		*y ^= *x;
+		*x ^= *y;
+	}
+}
+
+uint32_t s3c_get_memory_size(void)
+{
+	int i;
+	uint32_t len;
+	uint32_t mc[4] = { 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF };
+	/* Read MEMCONFIG registers */
+	if (BANK_ENABLED(S5P_DMC0_BASE)) {
+		mc[0] = readl(S5P_DMC0_BASE + S5P_DMC_MEMCONFIG0);
+		if (NUM_EXTRA_CHIPS(S5P_DMC0_BASE) > 0)
+			mc[1] = readl(S5P_DMC0_BASE + S5P_DMC_MEMCONFIG1);
+	}
+	if (BANK_ENABLED(S5P_DMC1_BASE)) {
+		mc[2] = readl(S5P_DMC1_BASE + S5P_DMC_MEMCONFIG0);
+		if (NUM_EXTRA_CHIPS(S5P_DMC1_BASE) > 0)
+			mc[3] = readl(S5P_DMC1_BASE + S5P_DMC_MEMCONFIG1);
+	}
+	/* Sort using a sorting network */
+	sortswap(mc + 0, mc + 2);
+	sortswap(mc + 1, mc + 3);
+	sortswap(mc + 0, mc + 1);
+	sortswap(mc + 2, mc + 3);
+	sortswap(mc + 1, mc + 2);
+	/* Is at least one chip enabled? */
+	if (mc[0] == 0xFFFFFFFF)
+		return 0;
+	/* Determine maximum continuous region at start */
+	len = BANK_LEN(mc[0]);
+	for (i = 1; i < 4; ++i) {
+		if (BANK_START(mc[i]) == BANK_END(mc[i - 1]) + 1)
+			len += BANK_LEN(mc[i]);
+		else
+			break;
+	}
+	return len;
+}
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

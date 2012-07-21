Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsWYE-0002ho-Iv
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 10:05:13 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SsWY7-0003va-H1
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 12:04:35 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SsWY6-0001VM-HA
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 12:04:34 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 21 Jul 2012 12:04:28 +0200
Message-Id: <1342865073-5209-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342865073-5209-1-git-send-email-jbe@pengutronix.de>
References: <1342865073-5209-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/8] ARM/Samsung: add the clock tree support for the S3C6410
 SoC
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/Makefile                     |    1 +
 arch/arm/mach-samsung/clocks-s3c64xx.c             |  296 ++++++++++++++++++++
 arch/arm/mach-samsung/include/mach/s3c-clocks.h    |    3 +
 .../arm/mach-samsung/include/mach/s3c64xx-clocks.h |   58 ++++
 drivers/serial/serial_s3c.c                        |    3 +
 5 files changed, 361 insertions(+)
 create mode 100644 arch/arm/mach-samsung/clocks-s3c64xx.c
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c64xx-clocks.h

diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 40180d7..807e91b 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -2,4 +2,5 @@ obj-y += s3c-timer.o generic.o
 obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
 obj-lowlevel-$(CONFIG_ARCH_S5PCxx) += lowlevel-s5pcxx.o
 obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o clocks-s3c24xx.o mem-s3c24x0.o
+obj-$(CONFIG_ARCH_S3C64xx) += clocks-s3c64xx.o
 obj-$(CONFIG_S3C_LOWLEVEL_INIT) += $(obj-lowlevel-y)
diff --git a/arch/arm/mach-samsung/clocks-s3c64xx.c b/arch/arm/mach-samsung/clocks-s3c64xx.c
new file mode 100644
index 0000000..a4beaf7
--- /dev/null
+++ b/arch/arm/mach-samsung/clocks-s3c64xx.c
@@ -0,0 +1,296 @@
+/*
+ * Copyright (C) 2012 Juergen Beisert
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
+#include <init.h>
+#include <clock.h>
+#include <io.h>
+#include <asm-generic/div64.h>
+#include <mach/s3c-iomap.h>
+#include <mach/s3c-generic.h>
+#include <mach/s3c-clocks.h>
+
+/*
+ * The main clock tree:
+ *
+ *  ref_in ----o-----------\
+ *             |            MUX -o------------\
+ *             |           / ^   |             MUX --- DIV_APLL ------- ARMCLK -> CPU core
+ *             o--- APLL --  |   |            / |
+ *             |             |   o--/2 -------  |
+ *             |       APLL_SEL  |              |<-MISC_CON_SYN667
+ *             |                 \              |
+ *             o-----------\      MUX-o-------\ |
+ *             |            MUX--/ ^  |        MUX --- DIV -o--------- HCLKx2 -> SDRAM (max. 266 MHz)
+ *             |           / ^     |  |       /             |
+ *             o---- MPLL--  |     |  o--/5 --              o-- DIV -- HCLK -> AXI / AHB (max. 133 MHz)
+ *             |             |     |                        |
+ *             |       MPLL_SEL  OTHERS_CLK_SELECT          o-- DIV -- PCLK -> APB (max. 66 MHz)
+ *             |
+ *             o-----------\
+ *             |            MUX---- to various hardware
+ *             |           / ^
+ *             o---- EPLL--  EPLL_SEL
+ *
+ */
+
+static unsigned s3c_get_apllclk(void)
+{
+	uint32_t m, p, s, reg_val;
+
+	if (!(readl(S3C_CLK_SRC) & S3C_CLK_SRC_FOUTAPLL))
+		return S3C64XX_CLOCK_REFERENCE;
+
+	reg_val = readl(S3C_APLLCON);
+	m = S3C_APLLCON_GET_MDIV(reg_val);
+	p = S3C_APLLCON_GET_PDIV(reg_val);
+	s = S3C_APLLCON_GET_SDIV(reg_val);
+
+	return (S3C64XX_CLOCK_REFERENCE * m) / (p << s);
+}
+
+uint32_t s3c_get_mpllclk(void)
+{
+	uint32_t m, p, s, reg_val;
+
+	if (!(readl(S3C_CLK_SRC) & S3C_CLK_SRC_FOUTMPLL))
+		return S3C64XX_CLOCK_REFERENCE;
+
+	reg_val = readl(S3C_MPLLCON);
+	m = S3C_MPLLCON_GET_MDIV(reg_val);
+	p = S3C_MPLLCON_GET_PDIV(reg_val);
+	s = S3C_MPLLCON_GET_SDIV(reg_val);
+
+	return (S3C64XX_CLOCK_REFERENCE * m) / (p << s);
+}
+
+unsigned s3c_get_epllclk(void)
+{
+	u32 m, p, s, k, reg0_val, reg1_val;
+	u64 tmp;
+
+	if (!(readl(S3C_CLK_SRC) & S3C_CLK_SRC_FOUTEPLL))
+		return S3C64XX_CLOCK_REFERENCE;
+
+	reg0_val = readl(S3C_EPLLCON0);
+	reg1_val = readl(S3C_EPLLCON1);
+	m = S3C_EPLLCON0_GET_MDIV(reg0_val);
+	p = S3C_EPLLCON0_GET_PDIV(reg0_val);
+	s = S3C_EPLLCON0_GET_SDIV(reg0_val);
+	k = S3C_EPLLCON1_GET_KDIV(reg1_val);
+
+	tmp = S3C64XX_CLOCK_REFERENCE;
+	tmp *= (m << 16) + k;
+	do_div(tmp, (p << s));
+
+	return (unsigned)tmp >> 16;
+}
+
+uint32_t s3c_get_fclk(void)
+{
+	unsigned clk;
+
+	clk = s3c_get_apllclk();
+	if (readl(S3C_MISC_CON) & S3C_MISC_CON_SYN667)
+		clk /= 2;
+
+	return clk / (S3C_CLK_DIV0_GET_ADIV(readl(S3C_CLK_DIV0)) + 1);
+}
+
+static unsigned s3c_get_hclk_in(void)
+{
+	unsigned clk;
+
+	if (readl(S3C_OTHERS) & S3C_OTHERS_CLK_SELECT)
+		clk = s3c_get_apllclk();
+	else
+		clk = s3c_get_mpllclk();
+
+	if (readl(S3C_MISC_CON) & S3C_MISC_CON_SYN667)
+		clk /= 5;
+
+	return clk;
+}
+
+static unsigned s3c_get_hclkx2(void)
+{
+	return s3c_get_hclk_in() /
+			(S3C_CLK_DIV0_GET_HCLK2(readl(S3C_CLK_DIV0)) + 1);
+}
+
+uint32_t s3c_get_hclk(void)
+{
+	return s3c_get_hclkx2() /
+			(S3C_CLK_DIV0_GET_HCLK(readl(S3C_CLK_DIV0)) + 1);
+}
+
+uint32_t s3c_get_pclk(void)
+{
+	return s3c_get_hclkx2() /
+			(S3C_CLK_DIV0_GET_PCLK(readl(S3C_CLK_DIV0)) + 1);
+}
+
+static void s3c_init_mpll_dout(void)
+{
+	unsigned reg;
+
+	/* keep it at the same frequency as HCLKx2 */
+	reg = readl(S3C_CLK_DIV0) | S3C_CLK_DIV0_SET_MPLL_DIV(1); /* e.g. / 2 */
+	writel(reg, S3C_CLK_DIV0);
+}
+
+/* configure and enable UCLK1 */
+static int s3c_init_uart_clock(void)
+{
+	unsigned reg;
+
+	s3c_init_mpll_dout();	/* to have a reliable clock source */
+
+	/* source the UART clock from the MPLL, currently *not* from EPLL */
+	reg = readl(S3C_CLK_SRC) | S3C_CLK_SRC_UARTMPLL;
+	writel(reg, S3C_CLK_SRC);
+
+	/* keep UART clock at the same frequency than the PCLK */
+	reg = readl(S3C_CLK_DIV2) & ~S3C_CLK_DIV2_UART_MASK;
+	reg |= S3C_CLK_DIV2_SET_UART(0x3);	/* / 4 */
+	writel(reg, S3C_CLK_DIV2);
+
+	/* ensure this very special clock is running */
+	reg = readl(S3C_SCLK_GATE) | S3C_SCLK_GATE_UART;
+	writel(reg, S3C_SCLK_GATE);
+
+	return 0;
+}
+core_initcall(s3c_init_uart_clock);
+
+/*
+ * The UART related clock path:
+ *
+ * PCLK --------------------------------------o-----0-\
+ * ???? -------------------------------UCLK0--|-----1--\MUX----- UART
+ * MPLL -----DIV0------\                      +-----2--/ ^
+ *                     MUX---DIV2------UCLK1--------3-/  UART setting (source)
+ * EPLL ---------------/
+ *                      ^SRC_UARTMPLL
+ */
+unsigned s3c_get_uart_clk(unsigned source)
+{
+	u32 reg;
+	unsigned clk, pdiv, uartpdiv;
+
+	switch (source) {
+	default: /* PCLK */
+		clk = s3c_get_pclk();
+		pdiv = uartpdiv = 1;
+		break;
+	case 1: /* UCLK0 */
+		clk = 0;
+		pdiv = uartpdiv = 1;	/* TODO */
+		break;
+	case 3: /* UCLK1 */
+		reg = readl(S3C_CLK_SRC);
+		if (reg & S3C_CLK_SRC_UARTMPLL) {
+			clk = s3c_get_mpllclk();
+			pdiv = S3C_CLK_DIV0_GET_MPLL_DIV(readl(S3C_CLK_DIV0)) + 1;
+		} else {
+			clk = s3c_get_epllclk();
+			pdiv = 1;
+		}
+		uartpdiv = S3C_CLK_DIV2_GET_UART(readl(S3C_CLK_DIV2)) + 1;
+		break;
+	}
+
+	return clk / pdiv / uartpdiv;
+}
+
+/*
+ * The MMC related clock path:
+ *
+ *             MMCx_SEL
+ *                |
+ * EPLLout --0-\  v
+ * MPLLout --1--\MUX----SCLK_MMCx----DIV_MMCx------>HSMMCx
+ * EPLLin  --2--/       on/off     / 1..16
+ * 27 MHz  --3-/
+ *
+ * The datasheet is not very precise here, so the schematic shown above was
+ * made by checking various bits in the SYSCON.
+ */
+unsigned s3c_get_hsmmc_clk(int id)
+{
+	u32 sel, div, sclk = readl(S3C_SCLK_GATE);
+	unsigned bclk;
+
+	if (!(sclk & S3C_SCLK_GATE_MMC(id)))
+		return 0; /* disabled */
+
+	sel = S3C_CLK_SRC_GET_MMC_SEL(id, readl(S3C_CLK_SRC));
+	switch (sel) {
+	case 0:
+		bclk = s3c_get_epllclk();
+		break;
+	case 1:
+		bclk = s3c_get_mpllclk();
+		break;
+	case 2:
+		bclk = S3C64XX_CLOCK_REFERENCE;
+		break;
+	case 3:
+		bclk = 27000000;
+		break;
+	}
+
+	div = S3C_CLK_DIV0_GET_MMC(id, readl(S3C_CLK_DIV0)) + 1;
+
+	return bclk / div;
+}
+
+void s3c_set_hsmmc_clk(int id, int src, unsigned div)
+{
+	u32 reg;
+
+	if (!div)
+		div = 1;
+
+	writel(readl(S3C_SCLK_GATE) & ~S3C_SCLK_GATE_MMC(id), S3C_SCLK_GATE);
+
+	/* select the new clock source */
+	reg = readl(S3C_CLK_SRC) & ~S3C_CLK_SRC_SET_MMC_SEL(id, ~0);
+	reg |= S3C_CLK_SRC_SET_MMC_SEL(id, src);
+	writel(reg, S3C_CLK_SRC);
+
+	/* select the new pre-divider */
+	reg = readl(S3C_CLK_DIV0) & ~ S3C_CLK_DIV0_SET_MMC(id, ~0);
+	reg |= S3C_CLK_DIV0_SET_MMC(id, div - 1);
+	writel(reg, S3C_CLK_DIV0);
+
+	/* calling this function implies enabling of the clock */
+	writel(readl(S3C_SCLK_GATE) | S3C_SCLK_GATE_MMC(id), S3C_SCLK_GATE);
+}
+
+int s3c64xx_dump_clocks(void)
+{
+	printf("refclk:  %7d kHz\n", S3C64XX_CLOCK_REFERENCE / 1000);
+	printf("apll:    %7d kHz\n", s3c_get_apllclk() / 1000);
+	printf("mpll:    %7d kHz\n", s3c_get_mpllclk() / 1000);
+	printf("epll:    %7d kHz\n", s3c_get_epllclk() / 1000);
+	printf("CPU:     %7d kHz\n", s3c_get_fclk() / 1000);
+	printf("hclkx2:  %7d kHz\n", s3c_get_hclkx2() / 1000);
+	printf("hclk:    %7d kHz\n", s3c_get_hclk() / 1000);
+	printf("pclk:    %7d kHz\n", s3c_get_pclk() / 1000);
+	return 0;
+}
+
+late_initcall(s3c64xx_dump_clocks);
diff --git a/arch/arm/mach-samsung/include/mach/s3c-clocks.h b/arch/arm/mach-samsung/include/mach/s3c-clocks.h
index f577306..6920ca9 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-clocks.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-clocks.h
@@ -25,6 +25,9 @@
 #ifdef CONFIG_ARCH_S3C24xx
 # include <mach/s3c24xx-clocks.h>
 #endif
+#ifdef CONFIG_ARCH_S3C64xx
+# include <mach/s3c64xx-clocks.h>
+#endif
 #ifdef CONFIG_ARCH_S5PCxx
 # include <mach/s5pcxx-clocks.h>
 #endif
diff --git a/arch/arm/mach-samsung/include/mach/s3c64xx-clocks.h b/arch/arm/mach-samsung/include/mach/s3c64xx-clocks.h
new file mode 100644
index 0000000..9646705
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c64xx-clocks.h
@@ -0,0 +1,58 @@
+/*
+ * Copyright (C) 2012 Juergen Beisert
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
+#define S3C_APLLCON (S3C_CLOCK_POWER_BASE + 0x0c)
+# define S3C_APLLCON_GET_MDIV(x) (((x) >> 16) & 0x3ff)
+# define S3C_APLLCON_GET_PDIV(x) (((x) >> 8) & 0x3f)
+# define S3C_APLLCON_GET_SDIV(x) ((x) & 0x7)
+#define S3C_MPLLCON (S3C_CLOCK_POWER_BASE + 0x10)
+# define S3C_MPLLCON_GET_MDIV(x) (((x) >> 16) & 0x3ff)
+# define S3C_MPLLCON_GET_PDIV(x) (((x) >> 8) & 0x3f)
+# define S3C_MPLLCON_GET_SDIV(x) ((x) & 0x7)
+#define S3C_EPLLCON0 (S3C_CLOCK_POWER_BASE + 0x14)
+# define S3C_EPLLCON0_GET_MDIV(x) (((x) >> 16) & 0x3ff)
+# define S3C_EPLLCON0_GET_PDIV(x) (((x) >> 8) & 0x3f)
+# define S3C_EPLLCON0_GET_SDIV(x) ((x) & 0x7)
+#define S3C_EPLLCON1 (S3C_CLOCK_POWER_BASE + 0x18)
+# define S3C_EPLLCON1_GET_KDIV(x) ((x) & 0xffff)
+#define S3C_CLKCON (S3C_CLOCK_POWER_BASE + 0xc)
+#define S3C_CLKSLOW (S3C_CLOCK_POWER_BASE + 0x10)
+#define S3C_CLKDIVN (S3C_CLOCK_POWER_BASE + 0x14)
+#define S3C_CLK_SRC (S3C_CLOCK_POWER_BASE + 0x01c)
+# define S3C_CLK_SRC_GET_MMC_SEL(x, v) (((v) >> (18 + (x * 2))) & 0x3)
+# define S3C_CLK_SRC_SET_MMC_SEL(x, v) (((v) & 0x3) << (18 + (x * 2)))
+# define S3C_CLK_SRC_UARTMPLL (1 << 13)
+# define S3C_CLK_SRC_FOUTEPLL (1 << 2)
+# define S3C_CLK_SRC_FOUTMPLL (1 << 1)
+# define S3C_CLK_SRC_FOUTAPLL (1 << 0)
+#define S3C_CLK_DIV0 (S3C_CLOCK_POWER_BASE + 0x020)
+# define S3C_CLK_DIV0_GET_ADIV(x) ((x) & 0xf)
+# define S3C_CLK_DIV0_GET_HCLK2(x) (((x) >> 9) & 0x7)
+# define S3C_CLK_DIV0_GET_HCLK(x) (((x) >> 8) & 0x1)
+# define S3C_CLK_DIV0_GET_PCLK(x) (((x) >> 12) & 0xf)
+# define S3C_CLK_DIV0_SET_MPLL_DIV(x) (((x) & 0x1) << 4)
+# define S3C_CLK_DIV0_GET_MPLL_DIV(x) (((x) >> 4) & 0x1)
+# define S3C_CLK_DIV0_GET_MMC(x, v) (((v) >> (4 * x)) & 0xf)
+# define S3C_CLK_DIV0_SET_MMC(x, v) (((v) & 0xf) << (4 * x))
+#define S3C_CLK_DIV2 (S3C_CLOCK_POWER_BASE + 0x028)
+# define S3C_CLK_DIV2_UART_MASK (0xf << 16)
+# define S3C_CLK_DIV2_SET_UART(x) ((x) << 16)
+# define S3C_CLK_DIV2_GET_UART(x) (((x) >> 16) & 0xf)
+#define S3C_SCLK_GATE (S3C_CLOCK_POWER_BASE + 0x038)
+# define S3C_SCLK_GATE_UART (1 << 5)
+# define S3C_SCLK_GATE_MMC(x) (1 << (24 + x))
+#define S3C_MISC_CON (S3C_CLOCK_POWER_BASE + 0x838)
+# define S3C_MISC_CON_SYN667 (1 << 19)
+#define S3C_OTHERS (S3C_CLOCK_POWER_BASE + 0x900)
+# define S3C_OTHERS_CLK_SELECT (1 << 6)
diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index 53ac77f..0611f24 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -58,6 +58,9 @@ static unsigned s3c_select_arch_input_clock(void)
 	/* S3C24xx: 0=2=PCLK, 1=UEXTCLK, 3=FCLK/n */
 	if (IS_ENABLED(CONFIG_ARCH_S3C24xx))
 		return 0;	/* use the internal PCLK */
+	/* S3C64xx: 0=2=PCLK, 1=UCLK0, 3=UCLK1 */
+	if (IS_ENABLED(CONFIG_ARCH_S3C64xx))
+		return 3;	/* use the internal UCLK1 */
 	/* S5PCxx: 0=PCLK, 1=SCLK_UART */
 	if (IS_ENABLED(CONFIG_ARCH_S5PCxx))
 		return 0;	/* use the internal PCLK */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

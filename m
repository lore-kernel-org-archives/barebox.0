Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Spl77-0002ec-M1
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 19:01:48 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0008EZ-Ir
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:12 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0005IX-GB
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:12 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 13 Jul 2012 21:00:55 +0200
Message-Id: <1342206070-29698-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
References: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 03/18] ARM/Samsung: follow the name style of the other source
 files in this directory
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/Makefile         |    2 +-
 arch/arm/mach-samsung/clocks-s3c24xx.c |  157 ++++++++++++++++++++++++++++++++
 arch/arm/mach-samsung/s3c24xx-clocks.c |  157 --------------------------------
 3 files changed, 158 insertions(+), 158 deletions(-)
 create mode 100644 arch/arm/mach-samsung/clocks-s3c24xx.c
 delete mode 100644 arch/arm/mach-samsung/s3c24xx-clocks.c

diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 6020587..091b600 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -1,6 +1,6 @@
 obj-y += s3c-timer.o generic.o
 obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
 obj-lowlevel-$(CONFIG_ARCH_S5PCxx) += lowlevel-s5pcxx.o
-obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o s3c24xx-clocks.o mem-s3c24x0.o
+obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o clocks-s3c24xx.o mem-s3c24x0.o
 obj-$(CONFIG_ARCH_S5PCxx) += gpio-s5pcxx.o clocks-s5pcxx.o mem-s5pcxx.o
 obj-$(CONFIG_S3C_LOWLEVEL_INIT) += $(obj-lowlevel-y)
diff --git a/arch/arm/mach-samsung/clocks-s3c24xx.c b/arch/arm/mach-samsung/clocks-s3c24xx.c
new file mode 100644
index 0000000..13e6867
--- /dev/null
+++ b/arch/arm/mach-samsung/clocks-s3c24xx.c
@@ -0,0 +1,157 @@
+/*
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
+ */
+
+#include <config.h>
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <io.h>
+#include <mach/s3c-iomap.h>
+#include <mach/s3c-generic.h>
+#include <mach/s3c-clocks.h>
+#include <mach/s3c-busctl.h>
+
+/**
+ * Calculate the current M-PLL clock.
+ * @return Current frequency in Hz
+ */
+uint32_t s3c_get_mpllclk(void)
+{
+	uint32_t m, p, s, reg_val;
+
+	reg_val = readl(S3C_MPLLCON);
+	m = ((reg_val & 0xFF000) >> 12) + 8;
+	p = ((reg_val & 0x003F0) >> 4) + 2;
+	s = reg_val & 0x3;
+#ifdef CONFIG_CPU_S3C2410
+	return (S3C24XX_CLOCK_REFERENCE * m) / (p << s);
+#endif
+#ifdef CONFIG_CPU_S3C2440
+	return 2 * m * (S3C24XX_CLOCK_REFERENCE / (p << s));
+#endif
+}
+
+/**
+ * Calculate the current U-PLL clock
+ * @return Current frequency in Hz
+ */
+uint32_t s3c_get_upllclk(void)
+{
+	uint32_t m, p, s, reg_val;
+
+	reg_val = readl(S3C_UPLLCON);
+	m = ((reg_val & 0xFF000) >> 12) + 8;
+	p = ((reg_val & 0x003F0) >> 4) + 2;
+	s = reg_val & 0x3;
+
+	return (S3C24XX_CLOCK_REFERENCE * m) / (p << s);
+}
+
+/**
+ * Calculate the FCLK frequency used for the ARM CPU core
+ * @return Current frequency in Hz
+ */
+uint32_t s3c_get_fclk(void)
+{
+	return s3c_get_mpllclk();
+}
+
+/**
+ * Calculate the HCLK frequency used for the AHB bus (CPU to main peripheral)
+ * @return Current frequency in Hz
+ */
+uint32_t s3c_get_hclk(void)
+{
+	uint32_t f_clk;
+
+	f_clk = s3c_get_fclk();
+#ifdef CONFIG_CPU_S3C2410
+	if (readl(S3C_CLKDIVN) & 0x02)
+		return f_clk >> 1;
+#endif
+#ifdef CONFIG_CPU_S3C2440
+	switch(readl(S3C_CLKDIVN) & 0x06) {
+	case 2:
+		return f_clk >> 1;
+	case 4:
+		return f_clk >> 2;	/* TODO consider CAMDIVN */
+	case 6:
+		return f_clk / 3;	/* TODO consider CAMDIVN */
+	}
+#endif
+	return f_clk;
+}
+
+/**
+ * Calculate the PCLK frequency used for the slower peripherals
+ * @return Current frequency in Hz
+ */
+uint32_t s3c_get_pclk(void)
+{
+	uint32_t p_clk;
+
+	p_clk = s3c_get_hclk();
+	if (readl(S3C_CLKDIVN) & 0x01)
+		return p_clk >> 1;
+	return p_clk;
+}
+
+/**
+ * Calculate the UCLK frequency used by the USB host device
+ * @return Current frequency in Hz
+ */
+uint32_t s3c24_get_uclk(void)
+{
+	return s3c_get_upllclk();
+}
+
+/**
+ * Return correct UART frequency based on the UCON register
+ */
+unsigned s3c_get_uart_clk(unsigned src)
+{
+	switch (src & 3) {
+	case 0:
+	case 2:
+		return s3c_get_pclk();
+	case 1:
+		return 0; /* TODO UEXTCLK */
+	case 3:
+		return 0; /* TODO FCLK/n */
+	}
+	return 0; /* not reached, to make compiler happy */
+}
+
+/**
+ * Show the user the current clock settings
+ */
+int s3c24xx_dump_clocks(void)
+{
+	printf("refclk:  %7d kHz\n", S3C24XX_CLOCK_REFERENCE / 1000);
+	printf("mpll:    %7d kHz\n", s3c_get_mpllclk() / 1000);
+	printf("upll:    %7d kHz\n", s3c_get_upllclk() / 1000);
+	printf("fclk:    %7d kHz\n", s3c_get_fclk() / 1000);
+	printf("hclk:    %7d kHz\n", s3c_get_hclk() / 1000);
+	printf("pclk:    %7d kHz\n", s3c_get_pclk() / 1000);
+	printf("SDRAM1:   CL%d@%dMHz\n", ((readl(S3C_BANKCON6) & 0xc) >> 2) + 2,
+						s3c_get_hclk() / 1000000);
+	if ((readl(S3C_BANKCON7) & (0x3 << 15)) == (0x3 << 15))
+		printf("SDRAM2:   CL%d@%dMHz\n",
+			((readl(S3C_BANKCON7) & 0xc) >> 2) + 2,
+			s3c_get_hclk() / 1000000);
+	return 0;
+}
+
+late_initcall(s3c24xx_dump_clocks);
diff --git a/arch/arm/mach-samsung/s3c24xx-clocks.c b/arch/arm/mach-samsung/s3c24xx-clocks.c
deleted file mode 100644
index 13e6867..0000000
--- a/arch/arm/mach-samsung/s3c24xx-clocks.c
+++ /dev/null
@@ -1,157 +0,0 @@
-/*
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <config.h>
-#include <common.h>
-#include <init.h>
-#include <clock.h>
-#include <io.h>
-#include <mach/s3c-iomap.h>
-#include <mach/s3c-generic.h>
-#include <mach/s3c-clocks.h>
-#include <mach/s3c-busctl.h>
-
-/**
- * Calculate the current M-PLL clock.
- * @return Current frequency in Hz
- */
-uint32_t s3c_get_mpllclk(void)
-{
-	uint32_t m, p, s, reg_val;
-
-	reg_val = readl(S3C_MPLLCON);
-	m = ((reg_val & 0xFF000) >> 12) + 8;
-	p = ((reg_val & 0x003F0) >> 4) + 2;
-	s = reg_val & 0x3;
-#ifdef CONFIG_CPU_S3C2410
-	return (S3C24XX_CLOCK_REFERENCE * m) / (p << s);
-#endif
-#ifdef CONFIG_CPU_S3C2440
-	return 2 * m * (S3C24XX_CLOCK_REFERENCE / (p << s));
-#endif
-}
-
-/**
- * Calculate the current U-PLL clock
- * @return Current frequency in Hz
- */
-uint32_t s3c_get_upllclk(void)
-{
-	uint32_t m, p, s, reg_val;
-
-	reg_val = readl(S3C_UPLLCON);
-	m = ((reg_val & 0xFF000) >> 12) + 8;
-	p = ((reg_val & 0x003F0) >> 4) + 2;
-	s = reg_val & 0x3;
-
-	return (S3C24XX_CLOCK_REFERENCE * m) / (p << s);
-}
-
-/**
- * Calculate the FCLK frequency used for the ARM CPU core
- * @return Current frequency in Hz
- */
-uint32_t s3c_get_fclk(void)
-{
-	return s3c_get_mpllclk();
-}
-
-/**
- * Calculate the HCLK frequency used for the AHB bus (CPU to main peripheral)
- * @return Current frequency in Hz
- */
-uint32_t s3c_get_hclk(void)
-{
-	uint32_t f_clk;
-
-	f_clk = s3c_get_fclk();
-#ifdef CONFIG_CPU_S3C2410
-	if (readl(S3C_CLKDIVN) & 0x02)
-		return f_clk >> 1;
-#endif
-#ifdef CONFIG_CPU_S3C2440
-	switch(readl(S3C_CLKDIVN) & 0x06) {
-	case 2:
-		return f_clk >> 1;
-	case 4:
-		return f_clk >> 2;	/* TODO consider CAMDIVN */
-	case 6:
-		return f_clk / 3;	/* TODO consider CAMDIVN */
-	}
-#endif
-	return f_clk;
-}
-
-/**
- * Calculate the PCLK frequency used for the slower peripherals
- * @return Current frequency in Hz
- */
-uint32_t s3c_get_pclk(void)
-{
-	uint32_t p_clk;
-
-	p_clk = s3c_get_hclk();
-	if (readl(S3C_CLKDIVN) & 0x01)
-		return p_clk >> 1;
-	return p_clk;
-}
-
-/**
- * Calculate the UCLK frequency used by the USB host device
- * @return Current frequency in Hz
- */
-uint32_t s3c24_get_uclk(void)
-{
-	return s3c_get_upllclk();
-}
-
-/**
- * Return correct UART frequency based on the UCON register
- */
-unsigned s3c_get_uart_clk(unsigned src)
-{
-	switch (src & 3) {
-	case 0:
-	case 2:
-		return s3c_get_pclk();
-	case 1:
-		return 0; /* TODO UEXTCLK */
-	case 3:
-		return 0; /* TODO FCLK/n */
-	}
-	return 0; /* not reached, to make compiler happy */
-}
-
-/**
- * Show the user the current clock settings
- */
-int s3c24xx_dump_clocks(void)
-{
-	printf("refclk:  %7d kHz\n", S3C24XX_CLOCK_REFERENCE / 1000);
-	printf("mpll:    %7d kHz\n", s3c_get_mpllclk() / 1000);
-	printf("upll:    %7d kHz\n", s3c_get_upllclk() / 1000);
-	printf("fclk:    %7d kHz\n", s3c_get_fclk() / 1000);
-	printf("hclk:    %7d kHz\n", s3c_get_hclk() / 1000);
-	printf("pclk:    %7d kHz\n", s3c_get_pclk() / 1000);
-	printf("SDRAM1:   CL%d@%dMHz\n", ((readl(S3C_BANKCON6) & 0xc) >> 2) + 2,
-						s3c_get_hclk() / 1000000);
-	if ((readl(S3C_BANKCON7) & (0x3 << 15)) == (0x3 << 15))
-		printf("SDRAM2:   CL%d@%dMHz\n",
-			((readl(S3C_BANKCON7) & 0xc) >> 2) + 2,
-			s3c_get_hclk() / 1000000);
-	return 0;
-}
-
-late_initcall(s3c24xx_dump_clocks);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

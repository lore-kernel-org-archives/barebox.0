Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhgJU-0006iS-VI
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 11:44:29 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJA-0002o9-3s
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:04 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJA-0002TB-0j
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:04 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon,  2 Jan 2012 12:43:55 +0100
Message-Id: <1325504642-9324-8-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1325504642-9324-1-git-send-email-jbe@pengutronix.de>
References: <1325504642-9324-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 07/14] MACH SAMSUNG/S3C: Separate S3C24XX clock management
To: barebox@lists.infradead.org

There are major differences in the clock tree of the S3C24xx family and the
more recent CPUs of the S3C family. Keep the S3C24XX clock routines separate to
avoid an ifdef hell. But also use generic function names to be able to
share drivers among the S3C family.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/Makefile                   |    2 +-
 arch/arm/mach-samsung/generic.c                  |  117 +------------------
 arch/arm/mach-samsung/include/mach/s3c-clocks.h  |   31 +++++
 arch/arm/mach-samsung/include/mach/s3c-generic.h |   12 +-
 arch/arm/mach-samsung/include/mach/s3c-iomap.h   |   11 +--
 arch/arm/mach-samsung/lowlevel-init.S            |    2 +-
 arch/arm/mach-samsung/s3c24xx-clocks.c           |  137 ++++++++++++++++++++++
 drivers/mci/s3c.c                                |   10 +-
 drivers/serial/serial_s3c24x0.c                  |    2 +-
 drivers/video/s3c24xx.c                          |    4 +-
 10 files changed, 187 insertions(+), 141 deletions(-)
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c-clocks.h
 create mode 100644 arch/arm/mach-samsung/s3c24xx-clocks.c

diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index f329cdb..c590180 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -1,3 +1,3 @@
 obj-y += generic.o
-obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o
+obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o s3c24xx-clocks.o
 obj-$(CONFIG_S3C24XX_LOW_LEVEL_INIT) += lowlevel-init.o
diff --git a/arch/arm/mach-samsung/generic.c b/arch/arm/mach-samsung/generic.c
index 3c24b1a..3f6e801 100644
--- a/arch/arm/mach-samsung/generic.c
+++ b/arch/arm/mach-samsung/generic.c
@@ -28,100 +28,7 @@
 #include <clock.h>
 #include <io.h>
 #include <mach/s3c-iomap.h>
-
-/**
- * Calculate the current M-PLL clock.
- * @return Current frequency in Hz
- */
-uint32_t s3c24xx_get_mpllclk(void)
-{
-	uint32_t m, p, s, reg_val;
-
-	reg_val = readl(MPLLCON);
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
-uint32_t s3c24xx_get_upllclk(void)
-{
-	uint32_t m, p, s, reg_val;
-
-	reg_val = readl(UPLLCON);
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
-uint32_t s3c24xx_get_fclk(void)
-{
-	return s3c24xx_get_mpllclk();
-}
-
-/**
- * Calculate the HCLK frequency used for the AHB bus (CPU to main peripheral)
- * @return Current frequency in Hz
- */
-uint32_t s3c24xx_get_hclk(void)
-{
-	uint32_t f_clk;
-
-	f_clk = s3c24xx_get_fclk();
-#ifdef CONFIG_CPU_S3C2410
-	if (readl(CLKDIVN) & 0x02)
-		return f_clk >> 1;
-#endif
-#ifdef CONFIG_CPU_S3C2440
-	switch(readl(CLKDIVN) & 0x06) {
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
-uint32_t s3c24xx_get_pclk(void)
-{
-	uint32_t p_clk;
-
-	p_clk = s3c24xx_get_hclk();
-	if (readl(CLKDIVN) & 0x01)
-		return p_clk >> 1;
-	return p_clk;
-}
-
-/**
- * Calculate the UCLK frequency used by the USB host device
- * @return Current frequency in Hz
- */
-uint32_t s3c24xx_get_uclk(void)
-{
-    return s3c24xx_get_upllclk();
-}
+#include <mach/s3c-generic.h>
 
 /**
  * Calculate the amount of connected and available memory
@@ -169,26 +76,6 @@ uint32_t s3c24x0_get_memory_size(void)
 	return size;
 }
 
-/**
- * Show the user the current clock settings
- */
-int s3c24xx_dump_clocks(void)
-{
-	printf("refclk:  %7d kHz\n", S3C24XX_CLOCK_REFERENCE / 1000);
-	printf("mpll:    %7d kHz\n", s3c24xx_get_mpllclk() / 1000);
-	printf("upll:    %7d kHz\n", s3c24xx_get_upllclk() / 1000);
-	printf("fclk:    %7d kHz\n", s3c24xx_get_fclk() / 1000);
-	printf("hclk:    %7d kHz\n", s3c24xx_get_hclk() / 1000);
-	printf("pclk:    %7d kHz\n", s3c24xx_get_pclk() / 1000);
-	printf("SDRAM1:   CL%d@%dMHz\n", ((readl(BANKCON6) & 0xc) >> 2) + 2, s3c24xx_get_hclk() / 1000000);
-	if ((readl(BANKCON7) & (0x3 << 15)) == (0x3 << 15))
-		printf("SDRAM2:   CL%d@%dMHz\n", ((readl(BANKCON7) & 0xc) >> 2) + 2,
-			s3c24xx_get_hclk() / 1000000);
-	return 0;
-}
-
-late_initcall(s3c24xx_dump_clocks);
-
 static uint64_t s3c24xx_clocksource_read(void)
 {
 	/* note: its a down counter */
@@ -203,7 +90,7 @@ static struct clocksource cs = {
 
 static int clocksource_init (void)
 {
-	uint32_t p_clk = s3c24xx_get_pclk();
+	uint32_t p_clk = s3c_get_pclk();
 
 	writel(0x00000000, TCON);	/* stop all timers */
 	writel(0x00ffffff, TCFG0);	/* PCLK / (255 + 1) for timer 4 */
diff --git a/arch/arm/mach-samsung/include/mach/s3c-clocks.h b/arch/arm/mach-samsung/include/mach/s3c-clocks.h
new file mode 100644
index 0000000..44b2a6c
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c-clocks.h
@@ -0,0 +1,31 @@
+/*
+ * Copyright (C) 2011 Juergen Beisert, Pengutronix
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
+#ifndef __MACH_S3C_CLOCKS_H
+# define __MACH_S3C_CLOCKS_H
+
+#ifdef CONFIG_ARCH_S3C24xx
+# define S3C_LOCKTIME (S3C_CLOCK_POWER_BASE)
+# define S3C_MPLLCON (S3C_CLOCK_POWER_BASE + 0x4)
+# define S3C_UPLLCON (S3C_CLOCK_POWER_BASE + 0x8)
+# define S3C_CLKCON (S3C_CLOCK_POWER_BASE + 0xc)
+# define S3C_CLKSLOW (S3C_CLOCK_POWER_BASE + 0x10)
+# define S3C_CLKDIVN (S3C_CLOCK_POWER_BASE + 0x14)
+
+# define S3C_MPLLCON_GET_MDIV(x) ((((x) >> 12) & 0xff) + 8)
+# define S3C_MPLLCON_GET_PDIV(x) ((((x) >> 4) & 0x3f) + 2)
+# define S3C_MPLLCON_GET_SDIV(x) ((x) & 0x3)
+#endif
+
+#endif /* __MACH_S3C_CLOCKS_H */
diff --git a/arch/arm/mach-samsung/include/mach/s3c-generic.h b/arch/arm/mach-samsung/include/mach/s3c-generic.h
index b8abcf1..33f025d 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-generic.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-generic.h
@@ -24,10 +24,10 @@
  * MA 02111-1307 USA
  */
 
-uint32_t s3c24xx_get_mpllclk(void);
-uint32_t s3c24xx_get_upllclk(void);
-uint32_t s3c24xx_get_fclk(void);
-uint32_t s3c24xx_get_hclk(void);
-uint32_t s3c24xx_get_pclk(void);
-uint32_t s3c24xx_get_uclk(void);
+uint32_t s3c_get_mpllclk(void);
+uint32_t s3c_get_upllclk(void);
+uint32_t s3c_get_fclk(void);
+uint32_t s3c_get_hclk(void);
+uint32_t s3c_get_pclk(void);
+uint32_t s3c_get_uclk(void);
 uint32_t s3c24x0_get_memory_size(void);
diff --git a/arch/arm/mach-samsung/include/mach/s3c-iomap.h b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
index a990d80..7cedf6a 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-iomap.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
@@ -25,7 +25,7 @@
 #define S3C2410_USB_HOST_BASE		0x49000000
 #define S3C2410_INTERRUPT_BASE		0x4A000000
 #define S3C2410_DMA_BASE		0x4B000000
-#define S3C24X0_CLOCK_POWER_BASE	0x4C000000
+#define S3C_CLOCK_POWER_BASE		0x4C000000
 #define S3C2410_LCD_BASE		0x4D000000
 #define S3C24X0_NAND_BASE		0x4E000000
 #define S3C24X0_UART_BASE		0x50000000
@@ -40,15 +40,6 @@
 #define S3C2410_SPI_BASE		0x59000000
 #define S3C2410_SDI_BASE		0x5A000000
 
-/* Clock control (direct access) */
-
-#define LOCKTIME (S3C24X0_CLOCK_POWER_BASE)
-#define MPLLCON (S3C24X0_CLOCK_POWER_BASE + 0x4)
-#define UPLLCON (S3C24X0_CLOCK_POWER_BASE + 0x8)
-#define CLKCON (S3C24X0_CLOCK_POWER_BASE + 0xc)
-#define CLKSLOW (S3C24X0_CLOCK_POWER_BASE + 0x10)
-#define CLKDIVN (S3C24X0_CLOCK_POWER_BASE + 0x14)
-
 /* Timer (direct access) */
 #define TCFG0 (S3C24X0_TIMER_BASE + 0x00)
 #define TCFG1 (S3C24X0_TIMER_BASE + 0x04)
diff --git a/arch/arm/mach-samsung/lowlevel-init.S b/arch/arm/mach-samsung/lowlevel-init.S
index 8529283..e2e3fc0 100644
--- a/arch/arm/mach-samsung/lowlevel-init.S
+++ b/arch/arm/mach-samsung/lowlevel-init.S
@@ -77,7 +77,7 @@ routine very early in your board_init_lowlevel routine.
 .globl s3c24x0_pll_init
 s3c24x0_pll_init:
 
-	mov r0, #S3C24X0_CLOCK_POWER_BASE
+	mov r0, #S3C_CLOCK_POWER_BASE
 
 	/* configure internal clock ratio */
 	mov r1, #BOARD_SPECIFIC_CLKDIVN
diff --git a/arch/arm/mach-samsung/s3c24xx-clocks.c b/arch/arm/mach-samsung/s3c24xx-clocks.c
new file mode 100644
index 0000000..beacc76
--- /dev/null
+++ b/arch/arm/mach-samsung/s3c24xx-clocks.c
@@ -0,0 +1,137 @@
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
+	printf("SDRAM1:   CL%d@%dMHz\n", ((readl(BANKCON6) & 0xc) >> 2) + 2, s3c_get_hclk() / 1000000);
+	if ((readl(BANKCON7) & (0x3 << 15)) == (0x3 << 15))
+		printf("SDRAM2:   CL%d@%dMHz\n", ((readl(BANKCON7) & 0xc) >> 2) + 2,
+			s3c_get_hclk() / 1000000);
+	return 0;
+}
+
+late_initcall(s3c24xx_dump_clocks);
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 12d2c03..7babab4 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -191,7 +191,7 @@ static unsigned s3c_setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 	if (nc == 0)
 		return 0;
 
-	clock = s3c24xx_get_pclk();
+	clock = s3c_get_pclk();
 	/* Calculate the required prescaler value to get the requested frequency */
 	mci_psc = (clock + (nc >> 2)) / nc;
 
@@ -760,8 +760,8 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 	struct s3c_mci_platform_data *pd = hw_dev->platform_data;
 
 	/* TODO replace by the global func: enable the SDI unit clock */
-	writel(readl(S3C24X0_CLOCK_POWER_BASE + 0x0c) | 0x200,
-		S3C24X0_CLOCK_POWER_BASE + 0x0c);
+	writel(readl(S3C_CLOCK_POWER_BASE + 0x0c) | 0x200,
+		S3C_CLOCK_POWER_BASE + 0x0c);
 
 	if (pd == NULL) {
 		pr_err("Missing platform data\n");
@@ -775,8 +775,8 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 	/* feed forward the platform specific values */
 	mci_pdata.voltages = pd->voltages;
 	mci_pdata.host_caps = pd->caps;
-	mci_pdata.f_min = pd->f_min == 0 ? s3c24xx_get_pclk() / 256 : pd->f_min;
-	mci_pdata.f_max = pd->f_max == 0 ? s3c24xx_get_pclk() / 2 : pd->f_max;
+	mci_pdata.f_min = pd->f_min == 0 ? s3c_get_pclk() / 256 : pd->f_min;
+	mci_pdata.f_max = pd->f_max == 0 ? s3c_get_pclk() / 2 : pd->f_max;
 
 	/*
 	 * Start the clock to let the engine and the card finishes its startup
diff --git a/drivers/serial/serial_s3c24x0.c b/drivers/serial/serial_s3c24x0.c
index 4e95e5c..4191a49 100644
--- a/drivers/serial/serial_s3c24x0.c
+++ b/drivers/serial/serial_s3c24x0.c
@@ -48,7 +48,7 @@ static int s3c24x0_serial_setbaudrate(struct console_device *cdev, int baudrate)
 	unsigned val;
 
 	/* value is calculated so : PCLK / (16 * baudrate) -1 */
-	val = s3c24xx_get_pclk() / (16 * baudrate) - 1;
+	val = s3c_get_pclk() / (16 * baudrate) - 1;
 	writew(val, base + UBRDIV);
 
 	return 0;
diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
index 75677c3..f6af773 100644
--- a/drivers/video/s3c24xx.c
+++ b/drivers/video/s3c24xx.c
@@ -227,7 +227,7 @@ static int s3cfb_activate_var(struct fb_info *fb_info)
 	/* ensure video output is _off_ */
 	writel(0x00000000, fbi->base + LCDCON1);
 
-	hclk = s3c24xx_get_hclk() / 1000U;	/* hclk in kHz */
+	hclk = s3c_get_hclk() / 1000U;	/* hclk in kHz */
 	div = hclk / PICOS2KHZ(mode->pixclock);
 	if (div < 3)
 		div  = 3;
@@ -339,7 +339,7 @@ static void s3cfb_info(struct device_d *hw_dev)
 	addr3 = readl(fbi->base + LCDSADDR3);
 
 	printf(" Video hardware info:\n");
-	printf("  Video clock is running at %u Hz\n", s3c24xx_get_hclk() / ((GET_CLKVAL(con1) + 1) * 2));
+	printf("  Video clock is running at %u Hz\n", s3c_get_hclk() / ((GET_CLKVAL(con1) + 1) * 2));
 	printf("  Video memory bank starts at 0x%08X\n", GET_LCDBANK(addr1) << 22);
 	printf("  Video memory bank offset: 0x%08X\n", GET_LCDBASEU(addr1));
 	printf("  Video memory end: 0x%08X\n", GET_LCDBASEU(addr2));
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

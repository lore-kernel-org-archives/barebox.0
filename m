Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og108.obsmtp.com ([64.18.0.186])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T75IM-0004kR-4C
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 14:00:31 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 30 Aug 2012 15:00:16 +0100
Message-Id: <1346335217-9686-5-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
References: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 4/5] i2c: adapt the i2c-imx driver to mpc85xx machines.
To: barebox@lists.infradead.org

A function to calculate the frequency divider and digital filter sampling rate
for the 85xx processors is added to the i2c-imx driver. Hence, this driver is
used on IMX and 85xx machines.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h |    3 +
 drivers/i2c/busses/Kconfig                      |    4 +-
 drivers/i2c/busses/i2c-imx.c                    |   87 ++++++++++++++++++++++-
 3 files changed, 90 insertions(+), 4 deletions(-)

diff --git a/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h b/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
index bf0f7f5..d2f8bbe 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
@@ -136,4 +136,7 @@
 
 #define GFAR_BASE_ADDR		(CFG_IMMR + TSEC1_OFFSET)
 #define MDIO_BASE_ADDR		(CFG_IMMR + 0x24000)
+
+#define I2C1_BASE_ADDR		(CFG_IMMR + 0x3000)
+#define I2C2_BASE_ADDR		(CFG_IMMR + 0x3100)
 #endif /*__IMMAP_85xx__*/
diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 1ce5c00..3f998ea 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -5,8 +5,8 @@
 menu "I2C Hardware Bus support"
 
 config I2C_IMX
-	bool "i.MX I2C Master driver"
-	depends on ARCH_IMX && !ARCH_IMX1
+	bool "MPC85xx/i.MX I2C Master driver"
+	depends on (ARCH_IMX && !ARCH_IMX1) || ARCH_MPC85XX
 
 config I2C_OMAP
 	bool "OMAP I2C Master driver"
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index da6218f..2dfa4f1 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -1,4 +1,5 @@
 /*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
  * Copyright (C) 2002 Motorola GSG-China
  *               2009 Marc Kleine-Budde, Pengutronix
  *
@@ -22,7 +23,8 @@
  *
  * Desc.:
  *  Implementation of I2C Adapter/Algorithm Driver
- *  for I2C Bus integrated in Freescale i.MX/MXC processors
+ *  for I2C Bus integrated in Freescale i.MX/MXC processors and
+ *  85xx processors.
  *
  * Derived from Motorola GSG China I2C example driver
  *
@@ -36,7 +38,6 @@
 #include <clock.h>
 #include <common.h>
 #include <driver.h>
-#include <gpio.h>
 #include <init.h>
 #include <malloc.h>
 #include <types.h>
@@ -50,7 +51,11 @@
 #include <mach/clock.h>
 
 /* This will be the driver name */
+#ifdef CONFIG_PPC
+#define DRIVER_NAME "i2c-mpc"
+#else
 #define DRIVER_NAME "i2c-imx"
+#endif
 
 /* Default value */
 #define IMX_I2C_BIT_RATE	100000	/* 100kHz */
@@ -61,6 +66,7 @@
 #define IMX_I2C_I2CR	0x08	/* i2c control */
 #define IMX_I2C_I2SR	0x0C	/* i2c status */
 #define IMX_I2C_I2DR	0x10	/* i2c transfer data */
+#define IMX_I2C_DFSRR	0x14	/* i2c digital filter smapling rate */
 
 /* Bits of IMX I2C registers */
 #define I2SR_RXAK	0x01
@@ -85,6 +91,7 @@
  *
  * Duplicated divider values removed from list
  */
+#ifndef CONFIG_PPC
 static u16 i2c_clk_div[50][2] = {
 	{ 22,	0x20 }, { 24,	0x21 }, { 26,	0x22 }, { 28,	0x23 },
 	{ 30,	0x00 },	{ 32,	0x24 }, { 36,	0x25 }, { 40,	0x26 },
@@ -100,6 +107,7 @@ static u16 i2c_clk_div[50][2] = {
 	{ 1920,	0x1B },	{ 2048,	0x3F }, { 2304,	0x1C }, { 2560,	0x1D },
 	{ 3072,	0x1E }, { 3840,	0x1F }
 };
+#endif
 
 struct imx_i2c_struct {
 	void __iomem		*base;
@@ -107,6 +115,7 @@ struct imx_i2c_struct {
 	unsigned int 		disable_delay;
 	int			stopped;
 	unsigned int		ifdr;	/* IMX_I2C_IFDR */
+	unsigned int		dfsrr;  /* IMX_I2C_DFSRR */
 };
 #define to_imx_i2c_struct(a)	container_of(a, struct imx_i2c_struct, adapter)
 
@@ -215,6 +224,8 @@ static int i2c_imx_start(struct i2c_adapter *adapter)
 	int result;
 
 	writeb(i2c_imx->ifdr, base + IMX_I2C_IFDR);
+	if (i2c_imx->dfsrr != -1)
+		writeb(i2c_imx->dfsrr, base + IMX_I2C_DFSRR);
 	/* Enable I2C controller */
 	writeb(0, base + IMX_I2C_I2SR);
 	writeb(I2CR_IEN, base + IMX_I2C_I2CR);
@@ -271,6 +282,76 @@ static void i2c_imx_stop(struct i2c_adapter *adapter)
 	writeb(0, base + IMX_I2C_I2CR);
 }
 
+#ifdef CONFIG_PPC
+static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
+				    unsigned int rate)
+{
+	void __iomem *base;
+	unsigned int i2c_clk;
+	unsigned short divider;
+	/*
+	 * We want to choose an FDR/DFSR that generates an I2C bus speed that
+	 * is equal to or lower than the requested speed.  That means that we
+	 * want the first divider that is equal to or greater than the
+	 * calculated divider.
+	 */
+	u8 dfsr, fdr;
+	/* a, b and dfsr matches identifiers A,B and C respectively in AN2919 */
+	unsigned short a, b, ga, gb;
+	unsigned long c_div, est_div;
+
+	fdr = 0x31; /* Default if no FDR found */
+	base = i2c_imx->base;
+	i2c_clk = fsl_get_i2c_freq();
+	divider = min((unsigned short)(i2c_clk / rate), (unsigned short) -1);
+
+	/*
+	 * Condition 1: dfsr <= 50ns/T (T=period of I2C source clock in ns).
+	 * or (dfsr * T) <= 50ns.
+	 * Translate to dfsr = 5 * Frequency / 100,000,000
+	 */
+	dfsr = (5 * (i2c_clk / 1000)) / 100000;
+	dev_dbg(i2c_imx->adapter.dev,
+		"<%s> requested speed:%d, i2c_clk:%d\n", __func__,
+		rate, i2c_clk);
+	if (!dfsr)
+		dfsr = 1;
+
+	est_div = ~0;
+	for (ga = 0x4, a = 10; a <= 30; ga++, a += 2) {
+		for (gb = 0; gb < 8; gb++) {
+			b = 16 << gb;
+			c_div = b * (a + ((3*dfsr)/b)*2);
+			if ((c_div > divider) && (c_div < est_div)) {
+				unsigned short bin_gb, bin_ga;
+
+				est_div = c_div;
+				bin_gb = gb << 2;
+				bin_ga = (ga & 0x3) | ((ga & 0x4) << 3);
+				fdr = bin_gb | bin_ga;
+				rate = i2c_clk / est_div;
+				dev_dbg(i2c_imx->adapter.dev,
+					"FDR:0x%.2x, div:%ld, ga:0x%x, gb:0x%x,"
+					" a:%d, b:%d, speed:%d\n", fdr, est_div,
+					ga, gb, a, b, rate);
+				/* Condition 2 not accounted for */
+				dev_dbg(i2c_imx->adapter.dev,
+					"Tr <= %d ns\n", (b - 3 * dfsr) *
+					1000000 / (i2c_clk / 1000));
+			}
+		}
+		if (a == 20)
+			a += 2;
+		if (a == 24)
+			a += 4;
+	}
+	dev_dbg(i2c_imx->adapter.dev,
+		"divider:%d, est_div:%ld, DFSR:%d\n", divider, est_div, dfsr);
+	dev_dbg(i2c_imx->adapter.dev, "FDR:0x%.2x, speed:%d\n", fdr, rate);
+	i2c_imx->ifdr = fdr;
+	i2c_imx->dfsrr = dfsr;
+}
+#else
 static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
 			    unsigned int rate)
 {
@@ -307,6 +388,7 @@ static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
 	dev_dbg(i2c_imx->adapter.dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
 		__func__, i2c_clk_div[i][1], i2c_clk_div[i][0]);
 }
+#endif
 
 static int i2c_imx_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 {
@@ -474,6 +556,7 @@ static int __init i2c_imx_probe(struct device_d *pdev)
 	i2c_imx->adapter.nr = pdev->id;
 	i2c_imx->adapter.dev = pdev;
 	i2c_imx->base = dev_request_mem_region(pdev, 0);
+	i2c_imx->dfsrr = -1;
 
 	/* Set up clock divider */
 	if (pdata && pdata->bitrate)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

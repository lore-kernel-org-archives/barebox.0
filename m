Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDt64-0000RZ-Gh
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:00:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:00:21 +0100
Message-Id: <1392285621-17485-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392285621-17485-1-git-send-email-s.hauer@pengutronix.de>
References: <1392285621-17485-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] PWM: Add i.MX PWM driver
To: barebox@lists.infradead.org

The Kernel driver from Linux-3.13 with some adjustments for
barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pwm/Kconfig   |   6 ++
 drivers/pwm/Makefile  |   3 +-
 drivers/pwm/pwm-imx.c | 269 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 277 insertions(+), 1 deletion(-)
 create mode 100644 drivers/pwm/pwm-imx.c

diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index fc08363..8324d5e 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -16,4 +16,10 @@ config PWM_PXA
 	  This enables PWM support for Intel/Marvell PXA chips, such
 	  as the PXA25x, PXA27x.
 
+config PWM_IMX
+	bool "i.MX PWM Support"
+	depends on ARCH_IMX
+	help
+	  This enables PWM support for Freescale i.MX SoCs
+
 endif
diff --git a/drivers/pwm/Makefile b/drivers/pwm/Makefile
index c886bd5..dea9956 100644
--- a/drivers/pwm/Makefile
+++ b/drivers/pwm/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_PWM)		+= core.o
-obj-$(CONFIG_PWM_PXA)		+= pxa_pwm.o
\ No newline at end of file
+obj-$(CONFIG_PWM_PXA)		+= pxa_pwm.o
+obj-$(CONFIG_PWM_IMX)		+= pwm-imx.o
diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
new file mode 100644
index 0000000..fa2d68e
--- /dev/null
+++ b/drivers/pwm/pwm-imx.c
@@ -0,0 +1,269 @@
+/*
+ * simple driver for PWM (Pulse Width Modulator) controller
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * Derived from pxa PWM driver by eric miao <eric.miao@marvell.com>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <errno.h>
+#include <io.h>
+#include <pwm.h>
+#include <linux/clk.h>
+#include <asm-generic/div64.h>
+
+/* i.MX1 and i.MX21 share the same PWM function block: */
+
+#define MX1_PWMC    0x00   /* PWM Control Register */
+#define MX1_PWMS    0x04   /* PWM Sample Register */
+#define MX1_PWMP    0x08   /* PWM Period Register */
+
+#define MX1_PWMC_EN		(1 << 4)
+
+/* i.MX27, i.MX31, i.MX35 share the same PWM function block: */
+
+#define MX3_PWMCR                 0x00    /* PWM Control Register */
+#define MX3_PWMSAR                0x0C    /* PWM Sample Register */
+#define MX3_PWMPR                 0x10    /* PWM Period Register */
+#define MX3_PWMCR_PRESCALER(x)    (((x - 1) & 0xFFF) << 4)
+#define MX3_PWMCR_DOZEEN                (1 << 24)
+#define MX3_PWMCR_WAITEN                (1 << 23)
+#define MX3_PWMCR_DBGEN			(1 << 22)
+#define MX3_PWMCR_CLKSRC_IPG_HIGH (2 << 16)
+#define MX3_PWMCR_CLKSRC_IPG      (1 << 16)
+#define MX3_PWMCR_EN              (1 << 0)
+
+struct imx_chip {
+	struct clk	*clk_per;
+
+	void __iomem	*mmio_base;
+
+	struct pwm_chip	chip;
+
+	int (*config)(struct pwm_chip *chip,
+		int duty_ns, int period_ns);
+	void (*set_enable)(struct pwm_chip *chip, bool enable);
+};
+
+#define to_imx_chip(chip)	container_of(chip, struct imx_chip, chip)
+
+static int imx_pwm_config_v1(struct pwm_chip *chip,
+		int duty_ns, int period_ns)
+{
+	struct imx_chip *imx = to_imx_chip(chip);
+
+	/*
+	 * The PWM subsystem allows for exact frequencies. However,
+	 * I cannot connect a scope on my device to the PWM line and
+	 * thus cannot provide the program the PWM controller
+	 * exactly. Instead, I'm relying on the fact that the
+	 * Bootloader (u-boot or WinCE+haret) has programmed the PWM
+	 * function group already. So I'll just modify the PWM sample
+	 * register to follow the ratio of duty_ns vs. period_ns
+	 * accordingly.
+	 *
+	 * This is good enough for programming the brightness of
+	 * the LCD backlight.
+	 *
+	 * The real implementation would divide PERCLK[0] first by
+	 * both the prescaler (/1 .. /128) and then by CLKSEL
+	 * (/2 .. /16).
+	 */
+	u32 max = readl(imx->mmio_base + MX1_PWMP);
+	u32 p = max * duty_ns / period_ns;
+	writel(max - p, imx->mmio_base + MX1_PWMS);
+
+	return 0;
+}
+
+static void imx_pwm_set_enable_v1(struct pwm_chip *chip, bool enable)
+{
+	struct imx_chip *imx = to_imx_chip(chip);
+	u32 val;
+
+	val = readl(imx->mmio_base + MX1_PWMC);
+
+	if (enable)
+		val |= MX1_PWMC_EN;
+	else
+		val &= ~MX1_PWMC_EN;
+
+	writel(val, imx->mmio_base + MX1_PWMC);
+}
+
+static int imx_pwm_config_v2(struct pwm_chip *chip,
+		int duty_ns, int period_ns)
+{
+	struct imx_chip *imx = to_imx_chip(chip);
+	unsigned long long c;
+	unsigned long period_cycles, duty_cycles, prescale;
+	u32 cr;
+
+	c = clk_get_rate(imx->clk_per);
+	c = c * period_ns;
+	do_div(c, 1000000000);
+	period_cycles = c;
+
+	prescale = period_cycles / 0x10000 + 1;
+
+	period_cycles /= prescale;
+	c = (unsigned long long)period_cycles * duty_ns;
+	do_div(c, period_ns);
+	duty_cycles = c;
+
+	/*
+	 * according to imx pwm RM, the real period value should be
+	 * PERIOD value in PWMPR plus 2.
+	 */
+	if (period_cycles > 2)
+		period_cycles -= 2;
+	else
+		period_cycles = 0;
+
+	writel(duty_cycles, imx->mmio_base + MX3_PWMSAR);
+	writel(period_cycles, imx->mmio_base + MX3_PWMPR);
+
+	cr = MX3_PWMCR_PRESCALER(prescale) |
+		MX3_PWMCR_DOZEEN | MX3_PWMCR_WAITEN |
+		MX3_PWMCR_DBGEN | MX3_PWMCR_CLKSRC_IPG_HIGH;
+
+	if (readl(imx->mmio_base + MX3_PWMCR) & MX3_PWMCR_EN)
+		cr |= MX3_PWMCR_EN;
+
+	writel(cr, imx->mmio_base + MX3_PWMCR);
+
+	return 0;
+}
+
+static void imx_pwm_set_enable_v2(struct pwm_chip *chip, bool enable)
+{
+	struct imx_chip *imx = to_imx_chip(chip);
+	u32 val;
+
+	val = readl(imx->mmio_base + MX3_PWMCR);
+
+	if (enable)
+		val |= MX3_PWMCR_EN;
+	else
+		val &= ~MX3_PWMCR_EN;
+
+	writel(val, imx->mmio_base + MX3_PWMCR);
+}
+
+static int imx_pwm_config(struct pwm_chip *chip,
+		int duty_ns, int period_ns)
+{
+	struct imx_chip *imx = to_imx_chip(chip);
+	int ret;
+
+	ret = imx->config(chip, duty_ns, period_ns);
+
+	return ret;
+}
+
+static int imx_pwm_enable(struct pwm_chip *chip)
+{
+	struct imx_chip *imx = to_imx_chip(chip);
+	int ret;
+
+	ret = clk_enable(imx->clk_per);
+	if (ret)
+		return ret;
+
+	imx->set_enable(chip, true);
+
+	return 0;
+}
+
+static void imx_pwm_disable(struct pwm_chip *chip)
+{
+	struct imx_chip *imx = to_imx_chip(chip);
+
+	imx->set_enable(chip, false);
+
+	clk_disable(imx->clk_per);
+}
+
+static struct pwm_ops imx_pwm_ops = {
+	.enable = imx_pwm_enable,
+	.disable = imx_pwm_disable,
+	.config = imx_pwm_config,
+};
+
+struct imx_pwm_data {
+	int (*config)(struct pwm_chip *chip,
+		int duty_ns, int period_ns);
+	void (*set_enable)(struct pwm_chip *chip, bool enable);
+};
+
+static struct imx_pwm_data imx_pwm_data_v1 = {
+	.config = imx_pwm_config_v1,
+	.set_enable = imx_pwm_set_enable_v1,
+};
+
+static struct imx_pwm_data imx_pwm_data_v2 = {
+	.config = imx_pwm_config_v2,
+	.set_enable = imx_pwm_set_enable_v2,
+};
+
+static struct of_device_id imx_pwm_dt_ids[] = {
+	{ .compatible = "fsl,imx1-pwm", .data = (unsigned long)&imx_pwm_data_v1, },
+	{ .compatible = "fsl,imx27-pwm", .data = (unsigned long)&imx_pwm_data_v2, },
+	{ /* sentinel */ }
+};
+
+static int imx_pwm_probe(struct device_d *dev)
+{
+	const struct imx_pwm_data *data;
+	struct imx_chip *imx;
+	int ret = 0;
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&data);
+	if (ret)
+		return ret;
+
+	imx = xzalloc(sizeof(*imx));
+
+	imx->clk_per = clk_get(dev, "per");
+	if (IS_ERR(imx->clk_per))
+		return PTR_ERR(imx->clk_per);
+
+	imx->chip.ops = &imx_pwm_ops;
+	if (dev->device_node) {
+		imx->chip.devname = of_alias_get(dev->device_node);
+		if (!imx->chip.devname) {
+			dev_err(dev, "no alias for pwm\n");
+			return -EINVAL;
+		}
+	} else {
+		imx->chip.devname = asprintf("pwm%d", dev->id);
+	}
+
+	imx->mmio_base = dev_request_mem_region(dev, 0);
+	if (!imx->mmio_base)
+		return -EBUSY;
+
+	imx->config = data->config;
+	imx->set_enable = data->set_enable;
+
+	ret = pwmchip_add(&imx->chip, dev);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static struct driver_d imx_pwm_driver = {
+	.name	= "imx-pwm",
+	.of_compatible	= imx_pwm_dt_ids,
+	.probe		= imx_pwm_probe,
+};
+
+coredevice_platform_driver(imx_pwm_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Sascha Hauer <s.hauer@pengutronix.de>");
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

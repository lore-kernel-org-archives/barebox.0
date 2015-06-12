Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3LfI-0004dD-Sg
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 09:54:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 11:53:41 +0200
Message-Id: <1434102821-10555-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434102821-10555-1-git-send-email-s.hauer@pengutronix.de>
References: <1434102821-10555-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] PWM: Add MXS PWM support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pwm/Kconfig   |   6 ++
 drivers/pwm/Makefile  |   1 +
 drivers/pwm/pwm-mxs.c | 174 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 181 insertions(+)
 create mode 100644 drivers/pwm/pwm-mxs.c

diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 8324d5e..97c3def 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -22,4 +22,10 @@ config PWM_IMX
 	help
 	  This enables PWM support for Freescale i.MX SoCs
 
+config PWM_MXS
+	bool "i.MXs PWM Support"
+	depends on ARCH_MXS
+	help
+	  This enables PWM support for Freescale i.MX23/i.MX28 SoCs
+
 endif
diff --git a/drivers/pwm/Makefile b/drivers/pwm/Makefile
index dea9956..46865a2 100644
--- a/drivers/pwm/Makefile
+++ b/drivers/pwm/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_PWM)		+= core.o
 obj-$(CONFIG_PWM_PXA)		+= pxa_pwm.o
 obj-$(CONFIG_PWM_IMX)		+= pwm-imx.o
+obj-$(CONFIG_PWM_MXS)		+= pwm-mxs.o
diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
new file mode 100644
index 0000000..e667442
--- /dev/null
+++ b/drivers/pwm/pwm-mxs.c
@@ -0,0 +1,174 @@
+/*
+ * Copyright 2012 Freescale Semiconductor, Inc.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <common.h>
+#include <init.h>
+#include <errno.h>
+#include <io.h>
+#include <pwm.h>
+#include <stmp-device.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <asm-generic/div64.h>
+
+#define SET	0x4
+#define CLR	0x8
+#define TOG	0xc
+
+#define PWM_CTRL		0x0
+#define PWM_ACTIVE0		0x10
+#define PWM_PERIOD0		0x20
+#define  PERIOD_PERIOD(p)	((p) & 0xffff)
+#define  PERIOD_PERIOD_MAX	0x10000
+#define  PERIOD_ACTIVE_HIGH	(3 << 16)
+#define  PERIOD_INACTIVE_LOW	(2 << 18)
+#define  PERIOD_CDIV(div)	(((div) & 0x7) << 20)
+#define  PERIOD_CDIV_MAX	8
+
+static const unsigned int cdiv[PERIOD_CDIV_MAX] = {
+	1, 2, 4, 8, 16, 64, 256, 1024
+};
+
+struct mxs_pwm;
+
+struct mxs_pwm_chip {
+	struct pwm_chip chip;
+	struct mxs_pwm *mxs;
+};
+
+struct mxs_pwm {
+	struct mxs_pwm_chip pwm[8];
+	struct clk *clk;
+	void __iomem *base;
+};
+
+#define to_mxs_pwm_chip(_chip) container_of(_chip, struct mxs_pwm_chip, chip)
+
+static int mxs_pwm_config(struct pwm_chip *chip, int duty_ns, int period_ns)
+{
+	struct mxs_pwm_chip *mxs = to_mxs_pwm_chip(chip);
+	int div = 0;
+	unsigned int period_cycles, duty_cycles;
+	unsigned long rate;
+	unsigned long long c;
+
+	rate = clk_get_rate(mxs->mxs->clk);
+	while (1) {
+		c = rate / cdiv[div];
+		c = c * period_ns;
+		do_div(c, 1000000000);
+		if (c < PERIOD_PERIOD_MAX)
+			break;
+		div++;
+		if (div >= PERIOD_CDIV_MAX)
+			return -EINVAL;
+	}
+
+	period_cycles = c;
+	c *= duty_ns;
+	do_div(c, period_ns);
+	duty_cycles = c;
+
+	writel(duty_cycles << 16,
+			mxs->mxs->base + PWM_ACTIVE0 + mxs->chip.id * 0x20);
+	writel(PERIOD_PERIOD(period_cycles) | PERIOD_ACTIVE_HIGH |
+	       PERIOD_INACTIVE_LOW | PERIOD_CDIV(div),
+			mxs->mxs->base + PWM_PERIOD0 + mxs->chip.id * 0x20);
+
+	return 0;
+}
+
+static int mxs_pwm_enable(struct pwm_chip *chip)
+{
+	struct mxs_pwm_chip *mxs = to_mxs_pwm_chip(chip);
+
+	writel(1 << mxs->chip.id, mxs->mxs->base + PWM_CTRL + SET);
+
+	return 0;
+}
+
+static void mxs_pwm_disable(struct pwm_chip *chip)
+{
+	struct mxs_pwm_chip *mxs = to_mxs_pwm_chip(chip);
+
+	writel(1 << mxs->chip.id, mxs->mxs->base + PWM_CTRL + CLR);
+}
+
+static struct pwm_ops mxs_pwm_ops = {
+	.config = mxs_pwm_config,
+	.enable = mxs_pwm_enable,
+	.disable = mxs_pwm_disable,
+};
+
+static int mxs_pwm_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct mxs_pwm *mxs;
+	int ret, i;
+	uint32_t npwm;
+
+	mxs = xzalloc(sizeof(*mxs));
+
+	mxs->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(mxs->base))
+		return PTR_ERR(mxs->base);
+
+	mxs->clk = clk_get(dev, NULL);
+	if (IS_ERR(mxs->clk))
+		return PTR_ERR(mxs->clk);
+
+	clk_enable(mxs->clk);
+
+	ret = stmp_reset_block(mxs->base, 0);
+	if (ret)
+		return ret;
+
+	ret = of_property_read_u32(np, "fsl,pwm-number", &npwm);
+	if (ret < 0) {
+		dev_err(dev, "failed to get pwm number: %d\n", ret);
+		return ret;
+	}
+
+	for (i = 0; i < npwm; i++) {
+		struct mxs_pwm_chip *mxspwm = &mxs->pwm[i];
+
+		mxspwm->chip.ops = &mxs_pwm_ops;
+		mxspwm->chip.devname = asprintf("pwm%d", i);
+		mxspwm->chip.id = i;
+		mxspwm->mxs = mxs;
+
+		ret = pwmchip_add(&mxspwm->chip, dev);
+		if (ret < 0) {
+			dev_err(dev, "failed to add pwm chip %d\n", ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static const struct of_device_id mxs_pwm_dt_ids[] = {
+	{ .compatible = "fsl,imx23-pwm", },
+	{ /* sentinel */ }
+};
+
+static struct driver_d mxs_pwm_driver = {
+	.name	= "mxs-pwm",
+	.of_compatible	= mxs_pwm_dt_ids,
+	.probe		= mxs_pwm_probe,
+};
+
+coredevice_platform_driver(mxs_pwm_driver);
+
+MODULE_ALIAS("platform:mxs-pwm");
+MODULE_AUTHOR("Shawn Guo <shawn.guo@linaro.org>");
+MODULE_DESCRIPTION("Freescale MXS PWM Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

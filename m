Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHEn9-00017I-Ay
 for barebox@lists.infradead.org; Tue, 21 Nov 2017 20:05:13 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 21 Nov 2017 21:04:33 +0100
Message-Id: <1511294675-14438-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH v1 1/3] watchdog: add ar9344-wdt driver
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

this driver was developed and tested on QCA AR9344 WiSoC
but it may work on most know Atheros/QCA WiSoCs.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/watchdog/Kconfig      |   6 ++
 drivers/watchdog/Makefile     |   1 +
 drivers/watchdog/ar9344_wdt.c | 136 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 143 insertions(+)
 create mode 100644 drivers/watchdog/ar9344_wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 83b6528..1f04c7f 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -10,6 +10,12 @@ menuconfig WATCHDOG
 
 if WATCHDOG
 
+config WATCHDOG_AR9344
+	bool "QCA AR9344"
+	depends on SOC_QCA_AR9344
+	help
+	  Add support for watchdog on the QCA AR9344 SoC.
+
 config WATCHDOG_DAVINCI
 	bool "TI Davinci"
 	depends on ARCH_DAVINCI
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index a3b2667..c607f75 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_WATCHDOG) += wd_core.o
+obj-$(CONFIG_WATCHDOG_AR9344) += ar9344_wdt.o
 obj-$(CONFIG_WATCHDOG_DAVINCI) += davinci_wdt.o
 obj-$(CONFIG_WATCHDOG_OMAP) += omap_wdt.o
 obj-$(CONFIG_WATCHDOG_MXS28) += im28wd.o
diff --git a/drivers/watchdog/ar9344_wdt.c b/drivers/watchdog/ar9344_wdt.c
new file mode 100644
index 0000000..1f44604
--- /dev/null
+++ b/drivers/watchdog/ar9344_wdt.c
@@ -0,0 +1,136 @@
+/*
+ *  AR9344 Watchdog driver
+ *
+ *  Copyright (C) 2017 Oleksij Rempel <linux@rempel-privat.de>
+ *
+ *  This program is free software; you can redistribute it and/or modify it
+ *  under  the terms of the GNU General  Public License as published by the
+ *  Free Software Foundation;  either version 2 of the License, or (at your
+ *  option) any later version.
+ *
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <of.h>
+#include <reset_source.h>
+#include <watchdog.h>
+
+#define AR9344_WD_REG_CTRL		0x00
+#define AR9344_WD_CTRL_LAST_RESET	BIT(31)
+#define AR9344_WD_CTRL_ACTION_MASK	3
+#define AR9344_WD_CTRL_ACTION_NONE	0	/* no action */
+#define AR9344_WD_CTRL_ACTION_GPI	1	/* general purpose interrupt */
+#define AR9344_WD_CTRL_ACTION_NMI	2	/* NMI */
+#define AR9344_WD_CTRL_ACTION_FCR	3	/* full chip reset */
+
+#define AR9344_WD_REG_TIMER		0x04
+
+#define to_ar9344_wd(h) container_of(h, struct ar9344_wd, wd)
+
+struct ar9344_wd {
+	struct watchdog		wd;
+	void __iomem		*base;
+	struct clk		*clk;
+	struct device_d		*dev;
+};
+
+static int ar9344_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
+{
+	struct ar9344_wd *priv = (struct ar9344_wd *)to_ar9344_wd(wd);
+	u32 val, ctrl, rate, max_timout;
+
+	rate = clk_get_rate(priv->clk);
+	max_timout = U32_MAX / rate;
+
+	if (timeout > max_timout) {
+		dev_err(priv->dev, "timeout value out of range: %d > %d\n",
+			timeout, max_timout);
+		return -EINVAL;
+	}
+
+	if (timeout) {
+		ctrl = AR9344_WD_CTRL_ACTION_FCR;
+		val = timeout * rate;
+	} else {
+		ctrl = AR9344_WD_CTRL_ACTION_NONE;
+		val = U32_MAX;
+	}
+
+	dev_dbg(priv->dev, "%s: %d, timer:%x, ctrl: %x \n", __func__,
+		timeout, val, ctrl);
+
+	iowrite32be(val, priv->base + AR9344_WD_REG_TIMER);
+	iowrite32be(ctrl, priv->base + AR9344_WD_REG_CTRL);
+
+	return 0;
+}
+
+static void ar9344_watchdog_detect_reset_source(struct ar9344_wd *priv)
+{
+	u32 val = readw(priv->base + AR9344_WD_REG_CTRL);
+
+	if (val & AR9344_WD_CTRL_LAST_RESET)
+		reset_source_set(RESET_WDG);
+
+	/* else keep the default 'unknown' state */
+}
+
+static int ar9344_wdt_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct ar9344_wd *priv;
+	int ret;
+
+	priv = xzalloc(sizeof(struct ar9344_wd));
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		dev_err(dev, "could not get memory region\n");
+		return PTR_ERR(iores);
+	}
+
+	priv->base = IOMEM(iores->start);
+	priv->wd.set_timeout = ar9344_watchdog_set_timeout;
+	priv->wd.dev = dev;
+	priv->dev = dev;
+
+	dev->priv = priv;
+
+	ar9344_watchdog_detect_reset_source(priv);
+
+	priv->clk = clk_get(dev, NULL);
+	if (WARN_ON(IS_ERR(priv->clk))) {
+		ret = PTR_ERR(priv->clk);
+		goto on_error;
+	}
+
+	clk_enable(priv->clk);
+
+	ret = watchdog_register(&priv->wd);
+	if (ret)
+		goto on_error;
+
+	return 0;
+
+on_error:
+	free(priv);
+	return ret;
+}
+
+static __maybe_unused struct of_device_id ar9344_wdt_dt_ids[] = {
+	{
+		.compatible = "qca,ar9344-wdt",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d ar9344_wdt_driver = {
+	.name   = "ar9344-wdt",
+	.probe  = ar9344_wdt_probe,
+	.of_compatible = DRV_OF_COMPAT(ar9344_wdt_dt_ids),
+};
+device_platform_driver(ar9344_wdt_driver);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

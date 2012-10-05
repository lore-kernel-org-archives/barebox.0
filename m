Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5Aa-0003g9-Hz
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:30:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 12:29:58 +0200
Message-Id: <1349433000-1320-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349433000-1320-1-git-send-email-s.hauer@pengutronix.de>
References: <1349433000-1320-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] watchdog: Add i.MX watchdog support
To: barebox@lists.infradead.org

This adds a driver for the watchdog found on i.MX1-i.MX6.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/Kconfig  |    6 ++
 drivers/watchdog/Makefile |    1 +
 drivers/watchdog/imxwd.c  |  180 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 187 insertions(+)
 create mode 100644 drivers/watchdog/imxwd.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 8fdc7a5..645b5c7 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -12,4 +12,10 @@ config WATCHDOG_MXS28
 	help
 	  Add support for watchdog management for the i.MX28 SoC.
 
+config WATCHDOG_IMX
+	bool "i.MX watchdog"
+	depends on ARCH_IMX
+	help
+	  Add support for watchdog found on Freescale i.MX SoCs.
+
 endif
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index b29103b..e655454 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_WATCHDOG) += wd_core.o
 obj-$(CONFIG_WATCHDOG_MXS28) += im28wd.o
+obj-$(CONFIG_WATCHDOG_IMX) += imxwd.o
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
new file mode 100644
index 0000000..43e4803
--- /dev/null
+++ b/drivers/watchdog/imxwd.c
@@ -0,0 +1,180 @@
+/*
+ * (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <errno.h>
+#include <malloc.h>
+#include <watchdog.h>
+#include <reset_source.h>
+
+struct imx_wd {
+	struct watchdog wd;
+	void __iomem *base;
+	struct device_d *dev;
+	int (*set_timeout)(struct imx_wd *, unsigned);
+};
+
+#define to_imx_wd(h) container_of(h, struct imx_wd, wd)
+
+#define IMX1_WDOG_WCR	0x00 /* Watchdog Control Register */
+#define IMX1_WDOG_WSR	0x04 /* Watchdog Service Register */
+#define IMX1_WDOG_WSTR	0x08 /* Watchdog Status Register  */
+#define IMX1_WDOG_WCR_WDE	(1 << 0)
+#define IMX1_WDOG_WCR_WHALT	(1 << 15)
+
+#define IMX21_WDOG_WCR	0x00 /* Watchdog Control Register */
+#define IMX21_WDOG_WSR	0x02 /* Watchdog Service Register */
+#define IMX21_WDOG_WSTR	0x04 /* Watchdog Status Register  */
+#define IMX21_WDOG_WCR_WDE	(1 << 2)
+#define IMX21_WDOG_WCR_SRS	(1 << 4)
+#define IMX21_WDOG_WCR_WDA	(1 << 5)
+
+static int imx1_watchdog_set_timeout(struct imx_wd *priv, int timeout)
+{
+	u16 val;
+
+	dev_dbg(priv->dev, "%s: %d\n", __func__, timeout);
+
+	if (timeout > 64)
+		return -EINVAL;
+
+	if (!timeout) {
+		writew(IMX1_WDOG_WCR_WHALT, priv->base + IMX1_WDOG_WCR);
+		return 0;
+	}
+
+	if (timeout > 0)
+		val = (timeout * 2 - 1) << 8;
+	else
+		val = 0;
+
+	writew(val, priv->base + IMX1_WDOG_WCR);
+	writew(IMX1_WDOG_WCR_WDE | val, priv->base + IMX1_WDOG_WCR);
+
+	/* Write Service Sequence */
+	writew(0x5555, priv->base + IMX1_WDOG_WSR);
+	writew(0xaaaa, priv->base + IMX1_WDOG_WSR);
+
+	return 0;
+}
+
+static int imx21_watchdog_set_timeout(struct imx_wd *priv, int timeout)
+{
+	u16 val;
+
+	dev_dbg(priv->dev, "%s: %d\n", __func__, timeout);
+
+	if (!timeout || timeout > 128)
+		return -EINVAL;
+
+	if (timeout > 0)
+		val = ((timeout * 2 - 1) << 8) | IMX21_WDOG_WCR_SRS |
+			IMX21_WDOG_WCR_WDA;
+	else
+		val = 0;
+
+	writew(val, priv->base + IMX21_WDOG_WCR);
+	writew(IMX21_WDOG_WCR_WDE | val, priv->base + IMX21_WDOG_WCR);
+
+	/* Write Service Sequence */
+	writew(0x5555, priv->base + IMX21_WDOG_WSR);
+	writew(0xaaaa, priv->base + IMX21_WDOG_WSR);
+
+	return 0;
+}
+
+static int imx_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
+{
+	struct imx_wd *priv = (struct imx_wd *)to_imx_wd(wd);
+
+	return priv->set_timeout(priv, timeout);
+}
+
+static int imx_wd_probe(struct device_d *dev)
+{
+	struct imx_wd *priv;
+	void *fn;
+	int ret;
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&fn);
+	if (ret)
+		return ret;
+
+	priv = xzalloc(sizeof(struct imx_wd));
+	priv->base = dev_request_mem_region(dev, 0);
+	priv->set_timeout = fn;
+	priv->wd.set_timeout = imx_watchdog_set_timeout;
+	priv->dev = dev;
+
+	ret = watchdog_register(&priv->wd);
+	if (ret)
+		goto on_error;
+
+	dev->priv = priv;
+
+	return 0;
+
+on_error:
+	free(priv);
+	return ret;
+}
+
+static void imx_wd_remove(struct device_d *dev)
+{
+	struct imx_wd *priv = dev->priv;
+
+	watchdog_deregister(&priv->wd);
+	free(priv);
+}
+
+static __maybe_unused struct of_device_id imx_wdt_dt_ids[] = {
+	{
+		.compatible = "fsl,imx1-wdt",
+		.data = (unsigned long)&imx1_watchdog_set_timeout,
+	}, {
+		.compatible = "fsl,imx21-wdt",
+		.data = (unsigned long)&imx21_watchdog_set_timeout,
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct platform_device_id imx_wdt_ids[] = {
+	{
+		.name = "imx1-wdt",
+		.driver_data = (unsigned long)&imx1_watchdog_set_timeout,
+	}, {
+		.name = "imx21-wdt",
+		.driver_data = (unsigned long)&imx21_watchdog_set_timeout,
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d imx_wd_driver = {
+	.name   = "imx-watchdog",
+	.probe  = imx_wd_probe,
+	.remove = imx_wd_remove,
+	.of_compatible = DRV_OF_COMPAT(imx_wdt_dt_ids),
+	.id_table = imx_wdt_ids,
+};
+
+static int imx_wd_init(void)
+{
+	return platform_driver_register(&imx_wd_driver);
+}
+
+device_initcall(imx_wd_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

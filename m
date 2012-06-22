Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from canuck.infradead.org ([2001:4978:20e::1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Si0Z6-0007rd-90
 for barebox@lists.infradead.org; Fri, 22 Jun 2012 09:54:08 +0000
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Si0Z4-0004jh-Rj
 for barebox@lists.infradead.org; Fri, 22 Jun 2012 09:54:08 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Si0Z2-0006zc-Nz
 for barebox@lists.infradead.org; Fri, 22 Jun 2012 11:54:04 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Si0Z2-0001PN-MN
 for barebox@lists.infradead.org; Fri, 22 Jun 2012 11:54:04 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 22 Jun 2012 11:54:03 +0200
Message-Id: <1340358843-30614-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1340358843-30614-1-git-send-email-jbe@pengutronix.de>
References: <1340358843-30614-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/2] ARM/MXS: add a watchdog driver for i.MX28
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/watchdog/Kconfig  |    7 +++
 drivers/watchdog/Makefile |    1 +
 drivers/watchdog/im28wd.c |  121 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 129 insertions(+)
 create mode 100644 drivers/watchdog/im28wd.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index b5970c9..b1a73c0 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -7,4 +7,11 @@ if WATCHDOG
 config WATCHDOG_CORE
 	bool
 
+config WATCHDOG_MXS28
+	bool "i.MX28"
+	depends on ARCH_IMX28
+	select WATCHDOG_CORE
+	help
+	  Add support for watchdog management for the i.MX28 SoC.
+
 endif
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 7a446d7..b0d4d2a 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_WATCHDOG_CORE) += wd_core.o
+obj-$(CONFIG_WATCHDOG_MXS28) += im28wd.o
diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
new file mode 100644
index 0000000..b1c4809
--- /dev/null
+++ b/drivers/watchdog/im28wd.c
@@ -0,0 +1,121 @@
+/*
+ * (c) 2012 Juergen Beisert <kernel@pengutronix.de>
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
+ *
+ * Note: this driver works for the i.MX28 SoC. It might work for the
+ * i.MX23 Soc as well, but is not tested yet.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <errno.h>
+#include <malloc.h>
+
+#define MXS_RTC_CTRL 0x0
+#define MXS_RTC_SET_ADDR 0x4
+#define MXS_RTC_CLR_ADDR 0x8
+# define MXS_RTC_CTRL_WATCHDOGEN (1 << 4)
+
+#define MXS_RTC_STAT 0x10
+# define MXS_RTC_STAT_WD_PRESENT (1 << 29)
+
+#define MXS_RTC_WATCHDOG 0x50
+
+#define MXS_RTC_PERSISTENT0 0x60
+/* dubious meaning from inside the SoC's firmware ROM */
+# define MXS_RTC_PERSISTENT0_EXT_RST (1 << 21)
+/* dubious meaning from inside the SoC's firmware ROM */
+# define MXS_RTC_PERSISTENT0_THM_RST (1 << 20)
+
+#define MXS_RTC_PERSISTENT1 0x70
+/* dubious meaning from inside the SoC's firmware ROM */
+# define MXS_RTC_PERSISTENT1_FORCE_UPDATER (1 << 31)
+
+#define MXS_RTC_DEBUG 0xc0
+
+#define WDOG_TICK_RATE 1000 /* the watchdog uses a 1 kHz clock rate */
+
+struct imx28_wd {
+	void __iomem *regs;
+	u32 timeout;
+};
+
+static struct imx28_wd *wd;
+
+/* note: 'timeout' in clock ticks */
+static void imx28_wd_set_timeout(const struct imx28_wd *p, unsigned timeout)
+{
+	void __iomem *base;
+
+	if (timeout) {
+		writel(timeout, p->regs + MXS_RTC_WATCHDOG);
+		base = p->regs + MXS_RTC_SET_ADDR;
+	} else {
+		base = p->regs + MXS_RTC_CLR_ADDR;
+	}
+	writel(MXS_RTC_CTRL_WATCHDOGEN, base + MXS_RTC_CTRL);
+	writel(MXS_RTC_PERSISTENT1_FORCE_UPDATER, base + MXS_RTC_PERSISTENT1);
+}
+
+/* note: 'timeout' in [seconds] */
+int watchdog_set_timeout(unsigned timeout)
+{
+	if (timeout > (ULONG_MAX / WDOG_TICK_RATE))
+		return -EINVAL;
+
+	imx28_wd_set_timeout(wd, timeout * WDOG_TICK_RATE);
+	return 0;
+}
+EXPORT_SYMBOL(watchdog_set_timeout);
+
+static int imx28_wd_probe(struct device_d *dev)
+{
+	struct imx28_wd *priv;
+
+	priv = xzalloc(sizeof(struct imx28_wd));
+	priv->regs = dev_request_mem_region(dev, 0);
+	priv->timeout = 20;
+	dev->priv = priv;
+	wd = priv;
+
+	if (!(readl(priv->regs + MXS_RTC_STAT) & MXS_RTC_STAT_WD_PRESENT)) {
+		free(priv);
+		return -ENODEV;
+	}
+
+	/* disable the debug feature to ensure a working WD */
+	writel(0x00000000, priv->regs + MXS_RTC_DEBUG);
+
+	return 0;
+}
+
+static void imx28_wd_remove(struct device_d *dev)
+{
+	struct imx28_wd *priv= dev->priv;
+	wd = NULL;
+	free(priv);
+}
+
+static struct driver_d imx28_wd_driver = {
+	.name   = "im28wd",
+	.probe  = imx28_wd_probe,
+	.remove = imx28_wd_remove,
+};
+
+static int imx28_wd_init(void)
+{
+	register_driver(&imx28_wd_driver);
+	return 0;
+}
+
+device_initcall(imx28_wd_init);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

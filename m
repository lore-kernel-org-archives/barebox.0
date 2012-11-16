Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TZPLr-0007Y9-L6
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 17:05:14 +0000
Received: from mail406.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 06A30DC2F36
 for <barebox@lists.infradead.org>; Fri, 16 Nov 2012 18:12:47 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 16 Nov 2012 18:03:00 +0100
Message-Id: <1353085385-14090-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1353085385-14090-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121116165729.GA8327@game.jcrosoft.org>
 <1353085385-14090-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/7] watchdog: add at91sam9 watchdog support
To: barebox@lists.infradead.org

with keep alive support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/watchdog/Kconfig        |    7 +++
 drivers/watchdog/Makefile       |    1 +
 drivers/watchdog/at91sam9_wdt.c |  131 +++++++++++++++++++++++++++++++++++++++
 drivers/watchdog/at91sam9_wdt.h |   38 ++++++++++++
 4 files changed, 177 insertions(+)
 create mode 100644 drivers/watchdog/at91sam9_wdt.c
 create mode 100644 drivers/watchdog/at91sam9_wdt.h

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 21480a1..5bd1083 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -7,6 +7,13 @@ menuconfig WATCHDOG
 
 if WATCHDOG
 
+config WATCHDOG_AT91SAM9X
+	tristate "AT91SAM9X / AT91CAP9 watchdog"
+	depends on ARCH_AT91
+	help
+	  Watchdog timer embedded into AT91SAM9X and AT91CAP9 chips. This will
+	  reboot your system when the timeout is reached.
+
 config WATCHDOG_MXS28
 	bool "i.MX28"
 	depends on ARCH_IMX28
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index b29103b..4e863a5 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_WATCHDOG) += wd_core.o
+obj-$(CONFIG_WATCHDOG_AT91SAM9X) += at91sam9_wdt.o
 obj-$(CONFIG_WATCHDOG_MXS28) += im28wd.o
diff --git a/drivers/watchdog/at91sam9_wdt.c b/drivers/watchdog/at91sam9_wdt.c
new file mode 100644
index 0000000..c76ceee
--- /dev/null
+++ b/drivers/watchdog/at91sam9_wdt.c
@@ -0,0 +1,131 @@
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
+#include <watchdog.h>
+
+#include "at91sam9_wdt.h"
+
+struct at91sam9_wdt {
+	struct watchdog wdt;
+	void __iomem *base;
+};
+
+#define to_at91sam9_wdt(h) container_of(h, struct at91sam9_wdt, wdt)
+
+#define wdt_read(at91wdt, field) \
+	__raw_readl(at91wdt->base + field)
+#define wdt_write(at91wdt, field, val) \
+	__raw_writel((val), at91wdt->base + field)
+
+static void at91sam9_wdt_keep_alive(struct watchdog *wdt)
+{
+	struct at91sam9_wdt *at91wdt = to_at91sam9_wdt(wdt);
+	
+	wdt_write(at91wdt, AT91_WDT_CR, AT91_WDT_KEY | AT91_WDT_WDRSTT);
+}
+
+static int at91sam9_wdt_settimeout(struct watchdog *wdt, unsigned int timeout)
+{
+	struct at91sam9_wdt *at91wdt = to_at91sam9_wdt(wdt);
+	unsigned int reg;
+	unsigned int mr;
+
+	/* Check if disabled */
+	mr = wdt_read(at91wdt, AT91_WDT_MR);
+	if (mr & AT91_WDT_WDDIS) {
+		pr_err("sorry, watchdog is disabled\n");
+		return -EIO;
+	}
+
+	if (!timeout) {
+		wdt_write(at91wdt, AT91_WDT_MR, AT91_WDT_WDDIS);
+		return 0;
+	}
+
+	/*
+	 * All counting occurs at SLOW_CLOCK / 128 = 256 Hz
+	 *
+	 * Since WDV is a 12-bit counter, the maximum period is
+	 * 4096 / 256 = 16 seconds.
+	 */
+	reg = AT91_WDT_WDRSTEN	/* causes watchdog reset */
+		/* | AT91_WDT_WDRPROC	causes processor reset only */
+		| AT91_WDT_WDDBGHLT	/* disabled in debug mode */
+		| AT91_WDT_WDD		/* restart at any time */
+		| (timeout & AT91_WDT_WDV);  /* timer value */
+	wdt_write(at91wdt, AT91_WDT_MR, reg);
+
+	return 0;
+}
+
+static int at91sam9_wdt_probe(struct device_d *dev)
+{
+	struct at91sam9_wdt *priv;
+	struct watchdog *wdt;
+	int ret;
+	unsigned int mr;
+
+	priv = xzalloc(sizeof(struct at91sam9_wdt));
+	priv->base = dev_request_mem_region(dev, 0);
+	wdt = &priv->wdt;
+	
+	wdt->set_timeout = at91sam9_wdt_settimeout;
+	wdt->keep_alive = at91sam9_wdt_keep_alive;
+
+	/* Check if disabled */
+	mr = wdt_read(priv, AT91_WDT_MR);
+	if (mr & AT91_WDT_WDDIS) {
+		dev_err(dev, "sorry, watchdog is disabled\n");
+		ret = -EIO;
+		goto err;
+	}
+
+	ret = watchdog_register(wdt);
+	if (ret != 0)
+		goto err;
+
+	dev->priv = priv;
+	return 0;
+
+err:
+	free(priv);
+	return ret;
+}
+
+static void at91sam9_wdt_remove(struct device_d *dev)
+{
+	struct at91sam9_wdt *priv= dev->priv;
+	watchdog_deregister(&priv->wdt);
+	free(priv);
+}
+
+static struct driver_d at91sam9_wdt_driver = {
+	.name   = "at91sam9_wdt",
+	.probe  = at91sam9_wdt_probe,
+	.remove = at91sam9_wdt_remove,
+};
+
+static int at91sam9_wdt_init(void)
+{
+	return platform_driver_register(&at91sam9_wdt_driver);
+}
+device_initcall(at91sam9_wdt_init);
diff --git a/drivers/watchdog/at91sam9_wdt.h b/drivers/watchdog/at91sam9_wdt.h
new file mode 100644
index 0000000..2b68c1a
--- /dev/null
+++ b/drivers/watchdog/at91sam9_wdt.h
@@ -0,0 +1,38 @@
+/*
+ * drivers/watchdog/at91sam9_wdt.h
+ *
+ * Copyright (C) 2007 Andrew Victor
+ * Copyright (C) 2007 Atmel Corporation.
+ *
+ * Watchdog Timer (WDT) - System peripherals regsters.
+ * Based on AT91SAM9261 datasheet revision D.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91_WDT_H
+#define AT91_WDT_H
+
+#define AT91_WDT_CR		0x00			/* Watchdog Control Register */
+#define		AT91_WDT_WDRSTT		(1    << 0)		/* Restart */
+#define		AT91_WDT_KEY		(0xa5 << 24)		/* KEY Password */
+
+#define AT91_WDT_MR		0x04			/* Watchdog Mode Register */
+#define		AT91_WDT_WDV		(0xfff << 0)		/* Counter Value */
+#define		AT91_WDT_WDFIEN		(1     << 12)		/* Fault Interrupt Enable */
+#define		AT91_WDT_WDRSTEN	(1     << 13)		/* Reset Processor */
+#define		AT91_WDT_WDRPROC	(1     << 14)		/* Timer Restart */
+#define		AT91_WDT_WDDIS		(1     << 15)		/* Watchdog Disable */
+#define		AT91_WDT_WDD		(0xfff << 16)		/* Delta Value */
+#define		AT91_WDT_WDDBGHLT	(1     << 28)		/* Debug Halt */
+#define		AT91_WDT_WDIDLEHLT	(1     << 29)		/* Idle Halt */
+
+#define AT91_WDT_SR		0x08			/* Watchdog Status Register */
+#define		AT91_WDT_WDUNF		(1 << 0)		/* Watchdog Underflow */
+#define		AT91_WDT_WDERR		(1 << 1)		/* Watchdog Error */
+
+
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

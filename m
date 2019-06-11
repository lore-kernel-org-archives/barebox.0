Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haffp-0003lu-Ch
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 12:14:47 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990406AbfFKMOkJwmgq (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Tue, 11 Jun 2019 14:14:40 +0200
Date: Tue, 11 Jun 2019 14:14:38 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20190611121438.GA20474@lenoch>
References: <20190611094319.9143-1-a.fatoum@pengutronix.de>
 <20190611094319.9143-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611094319.9143-4-a.fatoum@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 3/6] watchdog: add stm32 watchdog and reset driver
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad,

I'm sorry for hijacking this thread, but see reasons bellow.

On Tue, Jun 11, 2019 at 11:43:16AM +0200, Ahmad Fatoum wrote:
> The driver supports setting watchdog timeout, system reset
> and querying reset reason. Disabling watchdog isn't possible
> in hardware, thus users should either only enable it before
> boot or have the poller take care of feeding it.

AT91 watchdog is even more strict as it is enabled after power
on reset and it's configuration register can be written only once.
Thus you can either disable it or set it to some arbitrary value
which cannot be changed later.

I would prefer not touching it at all in barebox and just try
to ping it based on its initial timeout. That means we should be
able to enable poller from driver and also watchdog core should
get information about watchog timeout to program poller
accordingly. Patch bellow is my quick and dirty version of AT91
watchdog driver good enough to work. It is mostly reminder for
me to solve things properly once time permits, but if anyone has
different ideas or recommendations I'm all ears.

--- 8< ---

From: Ladislav Michl <ladis@linux-mips.org>
Date: Wed, 5 Jun 2019 08:29:48 +0200
Subject: [PATCH 1/3] watchdog: Add at91sam9 watchdog driver

---
 drivers/watchdog/Kconfig        |   7 +++
 drivers/watchdog/Makefile       |   1 +
 drivers/watchdog/at91sam9_wdt.c | 100 ++++++++++++++++++++++++++++++++
 drivers/watchdog/at91sam9_wdt.h |  36 ++++++++++++
 drivers/watchdog/wd_core.c      |   3 +
 5 files changed, 147 insertions(+)
 create mode 100644 drivers/watchdog/at91sam9_wdt.c
 create mode 100644 drivers/watchdog/at91sam9_wdt.h

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 04efb1a3c..09ed175f6 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -22,6 +22,13 @@ config WATCHDOG_AR9344
 	help
 	  Add support for watchdog on the QCA AR9344 SoC.
 
+config WATCHDOG_AT91SAM9X
+	bool "AT91SAM9X / AT91CAP9 watchdog"
+	depends on ARCH_AT91
+	help
+	  Add support for watchdog timer embedded into AT91SAM9X and
+	  AT91CAP9 chips.
+
 config WATCHDOG_EFI
 	bool "Generic EFI Watchdog Driver"
 	depends on EFI_BOOTUP
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 6c8d36c8b..a08c79090 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_WATCHDOG) += wd_core.o
 obj-$(CONFIG_WATCHDOG_AR9344) += ar9344_wdt.o
+obj-$(CONFIG_WATCHDOG_AT91SAM9X) += at91sam9_wdt.o
 obj-$(CONFIG_WATCHDOG_EFI) += efi_wdt.o
 obj-$(CONFIG_WATCHDOG_DAVINCI) += davinci_wdt.o
 obj-$(CONFIG_WATCHDOG_OMAP) += omap_wdt.o
diff --git a/drivers/watchdog/at91sam9_wdt.c b/drivers/watchdog/at91sam9_wdt.c
new file mode 100644
index 000000000..d5fbe780b
--- /dev/null
+++ b/drivers/watchdog/at91sam9_wdt.c
@@ -0,0 +1,100 @@
+/*
+ * Watchdog driver for Atmel AT91SAM9x processors.
+ *
+ *
+ */
+
+/*
+ * The Watchdog Timer Mode Register can be only written to once. If the
+ * timeout need to be set from Linux, be sure that the bootstrap or the
+ * bootloader doesn't write to this register.
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <malloc.h>
+#include <of.h>
+#include <reset_source.h>
+#include <watchdog.h>
+
+#include "at91sam9_wdt.h"
+
+#define wdt_read(wdt, field) \
+	readl((wdt)->base + (field))
+#define wdt_write(wtd, field, val) \
+	writel((val), (wdt)->base + (field))
+
+/* AT91SAM9 watchdog runs a 12bit counter @ 256Hz,
+ * use this to convert a watchdog
+ * value from/to milliseconds.
+ */
+#define ticks_to_secs(t)		(((t) + 1) >> 8)
+#define secs_to_ticks(s)		((s) ? (((s) << 8) - 1) : 0)
+
+#define to_wdt(_wdd) container_of(_wdd, struct at91wdt, wdd)
+struct at91wdt {
+	struct watchdog wdd;
+	void __iomem *base;
+};
+
+/* ......................................................................... */
+
+static int at91_wdt_set_timeout(struct watchdog *wd, unsigned timeout)
+{
+	struct at91wdt *wdt = to_wdt(wd);
+
+	wdt_write(wdt, AT91_WDT_CR, AT91_WDT_KEY | AT91_WDT_WDRSTT);
+
+	return 0;
+}
+
+/* ......................................................................... */
+
+static int __init at91wdt_probe(struct device_d *dev)
+{
+	u32 tmp, delta, value;
+	struct resource *iores;
+	struct at91wdt *wdt;
+
+	wdt = xzalloc(sizeof(*wdt));
+	if (!wdt)
+		return -ENOMEM;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	wdt->base = IOMEM(iores->start);
+
+	tmp = wdt_read(wdt, AT91_WDT_MR);
+	if (tmp & AT91_WDT_WDDIS) {
+		dev_err(dev, "watchdog is disabled\n");
+		return -EINVAL;
+	}
+
+	value = tmp & AT91_WDT_WDV;
+	delta = (tmp & AT91_WDT_WDD) >> 16;
+
+	wdt->wdd.timeout_max = ticks_to_secs(value);
+	wdt->wdd.timeout_cur = ticks_to_secs((value + delta) / 2);
+	wdt->wdd.set_timeout = at91_wdt_set_timeout;
+	wdt->wdd.poller_enable = 1;
+	wdt->wdd.hwdev = dev;
+
+	return watchdog_register(&wdt->wdd);
+}
+
+static const struct of_device_id at91_wdt_dt_ids[] = {
+	{ .compatible = "atmel,at91sam9260-wdt" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d at91_wdt_driver = {
+	.probe		= at91wdt_probe,
+	.name		= "at91_wdt",
+	.of_compatible = DRV_OF_COMPAT(at91_wdt_dt_ids),
+};
+device_platform_driver(at91_wdt_driver);
diff --git a/drivers/watchdog/at91sam9_wdt.h b/drivers/watchdog/at91sam9_wdt.h
new file mode 100644
index 000000000..390941c65
--- /dev/null
+++ b/drivers/watchdog/at91sam9_wdt.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * drivers/watchdog/at91sam9_wdt.h
+ *
+ * Copyright (C) 2007 Andrew Victor
+ * Copyright (C) 2007 Atmel Corporation.
+ *
+ * Watchdog Timer (WDT) - System peripherals regsters.
+ * Based on AT91SAM9261 datasheet revision D.
+ *
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
+#define			AT91_WDT_SET_WDV(x)	((x) & AT91_WDT_WDV)
+#define		AT91_WDT_WDFIEN		(1     << 12)		/* Fault Interrupt Enable */
+#define		AT91_WDT_WDRSTEN	(1     << 13)		/* Reset Processor */
+#define		AT91_WDT_WDRPROC	(1     << 14)		/* Timer Restart */
+#define		AT91_WDT_WDDIS		(1     << 15)		/* Watchdog Disable */
+#define		AT91_WDT_WDD		(0xfff << 16)		/* Delta Value */
+#define			AT91_WDT_SET_WDD(x)	(((x) << 16) & AT91_WDT_WDD)
+#define		AT91_WDT_WDDBGHLT	(1     << 28)		/* Debug Halt */
+#define		AT91_WDT_WDIDLEHLT	(1     << 29)		/* Idle Halt */
+
+#define AT91_WDT_SR		0x08			/* Watchdog Status Register */
+#define		AT91_WDT_WDUNF		(1 << 0)		/* Watchdog Underflow */
+#define		AT91_WDT_WDERR		(1 << 1)		/* Watchdog Error */
+
+#endif
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index e6e5ddecd..b0f73baf7 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -97,6 +97,9 @@ static int watchdog_register_poller(struct watchdog *wd)
 	p = dev_add_param_bool(&wd->dev, "autoping", watchdog_set_poller,
 			NULL, &wd->poller_enable, wd);
 
+	wd->poller_enable = 1;
+	watchdog_poller_start(wd);
+
 	return PTR_ERR_OR_ZERO(p);
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

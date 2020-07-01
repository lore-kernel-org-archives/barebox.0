Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqYmc-0001H2-1c
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 09:12:01 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 11:11:03 +0200
Message-Id: <20200701091122.3437-10-a.fatoum@pengutronix.de>
In-Reply-To: <20200701091122.3437-1-a.fatoum@pengutronix.de>
References: <20200701091122.3437-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 09/28] watchdog: add support for at91sam9/sama5 watchdog
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The watchdog on these SoCs is enabled by default on system boot, so a
driver is especially useful. According to data sheet the mode register
containing the timeout can be configured only once, but I couldn't
verify this on the sama5d2. Regardless, the driver takes care not to
change the mode register unless necessary. Implementation that want to
leave to the OS the decision which timeout to choose, can just keep
pinging with the POR-default of 16 seconds and the OS will be able to
set the final timeout.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/Kconfig        |   6 ++
 drivers/watchdog/Makefile       |   1 +
 drivers/watchdog/at91sam9_wdt.c | 109 ++++++++++++++++++++++++++++++++
 3 files changed, 116 insertions(+)
 create mode 100644 drivers/watchdog/at91sam9_wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index d9734ef58895..cf83b6a15bd4 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -22,6 +22,12 @@ config WATCHDOG_AR9344
 	help
 	  Add support for watchdog on the QCA AR9344 SoC.
 
+config WATCHDOG_AT91SAM9
+	bool "Watchdog for AT91SAM9 and SAMA5 SoCs"
+	depends on ARCH_AT91
+	help
+	  Support for the watchdog in AT91SAM9X and SAMA5D{2,3,4} SoCs.
+
 config WATCHDOG_EFI
 	bool "Generic EFI Watchdog Driver"
 	depends on EFI_BOOTUP
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 3af64db3f247..dc9842770a62 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_WATCHDOG) += wd_core.o
 obj-$(CONFIG_WATCHDOG_AR9344) += ar9344_wdt.o
+obj-$(CONFIG_WATCHDOG_AT91SAM9) += at91sam9_wdt.o
 obj-$(CONFIG_WATCHDOG_EFI) += efi_wdt.o
 obj-$(CONFIG_WATCHDOG_DAVINCI) += davinci_wdt.o
 obj-$(CONFIG_WATCHDOG_OMAP) += omap_wdt.o
diff --git a/drivers/watchdog/at91sam9_wdt.c b/drivers/watchdog/at91sam9_wdt.c
new file mode 100644
index 000000000000..3f554bf47b76
--- /dev/null
+++ b/drivers/watchdog/at91sam9_wdt.c
@@ -0,0 +1,109 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Pengutronix, Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <watchdog.h>
+#include <linux/clk.h>
+#include <mach/at91_wdt.h>
+
+#define MIN_WDT_TIMEOUT		1
+#define MAX_WDT_TIMEOUT		16
+#define SECS_TO_WDOG_TICKS(s)	((s) ? (((s) << 8) - 1) : 0)
+
+struct at91sam9x_wdt {
+	struct watchdog wdd;
+	void __iomem *base;
+};
+
+static inline void at91sam9x_wdt_ping(struct at91sam9x_wdt *wdt)
+{
+	writel(AT91_WDT_WDRSTT | AT91_WDT_KEY, wdt->base + AT91_WDT_CR);
+}
+
+static int at91sam9x_wdt_set_timeout(struct watchdog *wdd, unsigned timeout)
+{
+	struct at91sam9x_wdt *wdt = container_of(wdd, struct at91sam9x_wdt, wdd);
+	u32 mr_old, mr_new;
+
+	mr_old = readl(wdt->base + AT91_WDT_MR);
+
+	if (!timeout) {
+		mr_new = mr_old | AT91_WDT_WDDIS;
+		writel(mr_new, wdt->base + AT91_WDT_MR);
+		return 0;
+	}
+
+	mr_new = AT91_WDT_WDRSTEN
+		| AT91_WDT_WDDBGHLT | AT91_WDT_WDIDLEHLT
+		| AT91_WDT_WDD
+		| (SECS_TO_WDOG_TICKS(timeout) & AT91_WDT_WDV);
+
+	if (mr_new != mr_old)
+		writel(mr_new, wdt->base + AT91_WDT_MR);
+
+	at91sam9x_wdt_ping(wdt);
+	return 0;
+}
+
+static inline bool at91sam9x_wdt_is_disabled(struct at91sam9x_wdt *wdt)
+{
+	return readl(wdt->base + AT91_WDT_MR) & AT91_WDT_WDDIS;
+}
+
+static int at91sam9x_wdt_probe(struct device_d *dev)
+{
+	struct at91sam9x_wdt *wdt;
+	struct resource *iores;
+	struct clk *clk;
+	int ret;
+
+	wdt = xzalloc(sizeof(*wdt));
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		dev_err(dev, "could not get watchdog memory region\n");
+		return PTR_ERR(iores);
+	}
+	wdt->base = IOMEM(iores->start);
+	clk = clk_get(dev, NULL);
+	if (WARN_ON(IS_ERR(clk)))
+		return PTR_ERR(clk);
+
+	clk_enable(clk);
+
+	wdt->wdd.set_timeout = at91sam9x_wdt_set_timeout;
+	wdt->wdd.timeout_max = MAX_WDT_TIMEOUT;
+	wdt->wdd.hwdev = dev;
+
+	if (at91sam9x_wdt_is_disabled(wdt))
+		wdt->wdd.running = WDOG_HW_NOT_RUNNING;
+	else
+		wdt->wdd.running = WDOG_HW_RUNNING;
+
+	ret = watchdog_register(&wdt->wdd);
+	if (ret)
+		free(wdt);
+
+	return ret;
+}
+
+static const __maybe_unused struct of_device_id at91sam9x_wdt_dt_ids[] = {
+	{ .compatible = "atmel,at91sam9260-wdt", },
+	{ .compatible = "atmel,sama5d4-wdt", },
+	{ /* sentinel */ },
+};
+
+static struct driver_d at91sam9x_wdt_driver = {
+	.name		= "at91sam9x-wdt",
+	.of_compatible	= DRV_OF_COMPAT(at91sam9x_wdt_dt_ids),
+	.probe		= at91sam9x_wdt_probe,
+};
+
+static int __init at91sam9x_wdt_init(void)
+{
+	return platform_driver_register(&at91sam9x_wdt_driver);
+}
+device_initcall(at91sam9x_wdt_init);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

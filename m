Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([78.47.171.185])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKpnG-0001HD-Al
 for barebox@lists.infradead.org; Thu, 30 Jul 2015 15:30:55 +0000
Received: from polaris.fritz.box (f053152215.adsl.alicedsl.de [78.53.152.215])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id 9ED48C08C6
 for <barebox@lists.infradead.org>; Thu, 30 Jul 2015 17:30:28 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Thu, 30 Jul 2015 17:30:26 +0200
Message-Id: <1438270226-577-1-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH v2] watchdog: add davinci watchdog driver
To: barebox@lists.infradead.org

This driver is based on the Linux driver (v4.0).

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---

Changes from v1:
  - Check result of dev_request_mem_region() with IS_ERR (reported by Sascha
    Hauer).

 drivers/watchdog/Kconfig       |   6 ++
 drivers/watchdog/Makefile      |   1 +
 drivers/watchdog/davinci_wdt.c | 172 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 179 insertions(+)
 create mode 100644 drivers/watchdog/davinci_wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 7f7b02e..582c615 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -10,6 +10,12 @@ menuconfig WATCHDOG
 
 if WATCHDOG
 
+config WATCHDOG_DAVINCI
+	bool "TI Davinci"
+	depends on ARCH_DAVINCI
+	help
+	  Add support for watchdog on the TI Davinci SoC.
+
 config WATCHDOG_MXS28
 	bool "i.MX28"
 	depends on ARCH_IMX28
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 865fc47..1e63c49 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_WATCHDOG) += wd_core.o
+obj-$(CONFIG_WATCHDOG_DAVINCI) += davinci_wdt.o
 obj-$(CONFIG_WATCHDOG_MXS28) += im28wd.o
 obj-$(CONFIG_WATCHDOG_JZ4740) += jz4740.o
 obj-$(CONFIG_WATCHDOG_IMX_RESET_SOURCE) += imxwd.o
diff --git a/drivers/watchdog/davinci_wdt.c b/drivers/watchdog/davinci_wdt.c
new file mode 100644
index 0000000..ecf6e89
--- /dev/null
+++ b/drivers/watchdog/davinci_wdt.c
@@ -0,0 +1,172 @@
+/*
+ * drivers/char/watchdog/davinci_wdt.c
+ *
+ * Watchdog driver for DaVinci DM644x/DM646x processors
+ *
+ * Copyright (C) 2006-2013 Texas Instruments.
+ * Copyright (C) 2015 Jan Luebbe <jluebbe@debian.org>
+ *
+ * 2007 (c) MontaVista Software, Inc. This file is licensed under
+ * the terms of the GNU General Public License version 2. This program
+ * is licensed "as is" without any warranty of any kind, whether express
+ * or implied.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <errno.h>
+#include <malloc.h>
+#include <watchdog.h>
+
+#include <linux/clk.h>
+
+/* Timer register set definition */
+#define PID12	(0x0)
+#define EMUMGT	(0x4)
+#define TIM12	(0x10)
+#define TIM34	(0x14)
+#define PRD12	(0x18)
+#define PRD34	(0x1C)
+#define TCR	(0x20)
+#define TGCR	(0x24)
+#define WDTCR	(0x28)
+
+/* TCR bit definitions */
+#define ENAMODE12_DISABLED	(0 << 6)
+#define ENAMODE12_ONESHOT	(1 << 6)
+#define ENAMODE12_PERIODIC	(2 << 6)
+
+/* TGCR bit definitions */
+#define TIM12RS_UNRESET		(1 << 0)
+#define TIM34RS_UNRESET		(1 << 1)
+#define TIMMODE_64BIT_WDOG      (2 << 2)
+
+/* WDTCR bit definitions */
+#define WDEN			(1 << 14)
+#define WDFLAG			(1 << 15)
+#define WDKEY_SEQ0		(0xa5c6 << 16)
+#define WDKEY_SEQ1		(0xda7e << 16)
+
+/*
+ * struct to hold data for each WDT device
+ * @wd - hold watchdog device as is in WDT core
+ * @base - base io address of WD device
+ * @clk - source clock of WDT
+ * @timeout - previously configured timeout
+ */
+struct davinci_wdt {
+	struct watchdog	wd;
+	void __iomem	*base;
+	struct clk	*clk;
+	unsigned	timeout;
+};
+
+#define to_davinci_wdt(h) container_of(h, struct davinci_wdt, wd)
+
+static int davinci_wdt_start(struct watchdog *wd)
+{
+	u32 tgcr;
+	u32 timer_margin;
+	unsigned long wdt_freq;
+	struct davinci_wdt *davinci_wdt = to_davinci_wdt(wd);
+
+	wdt_freq = clk_get_rate(davinci_wdt->clk);
+
+	/* disable, internal clock source */
+	iowrite32(0, davinci_wdt->base + TCR);
+	/* reset timer, set mode to 64-bit watchdog, and unreset */
+	iowrite32(0, davinci_wdt->base + TGCR);
+	tgcr = TIMMODE_64BIT_WDOG | TIM12RS_UNRESET | TIM34RS_UNRESET;
+	iowrite32(tgcr, davinci_wdt->base + TGCR);
+	/* clear counter regs */
+	iowrite32(0, davinci_wdt->base + TIM12);
+	iowrite32(0, davinci_wdt->base + TIM34);
+	/* set timeout period */
+	timer_margin = (((u64)davinci_wdt->timeout * wdt_freq) & 0xffffffff);
+	iowrite32(timer_margin, davinci_wdt->base + PRD12);
+	timer_margin = (((u64)davinci_wdt->timeout * wdt_freq) >> 32);
+	iowrite32(timer_margin, davinci_wdt->base + PRD34);
+	/* enable run continuously */
+	iowrite32(ENAMODE12_PERIODIC, davinci_wdt->base + TCR);
+	/* Once the WDT is in pre-active state write to
+	 * TIM12, TIM34, PRD12, PRD34, TCR, TGCR, WDTCR are
+	 * write protected (except for the WDKEY field)
+	 */
+	/* put watchdog in pre-active state */
+	iowrite32(WDKEY_SEQ0 | WDEN, davinci_wdt->base + WDTCR);
+	/* put watchdog in active state */
+	iowrite32(WDKEY_SEQ1 | WDEN, davinci_wdt->base + WDTCR);
+	return 0;
+}
+
+static int davinci_wdt_ping(struct watchdog *wd)
+{
+	struct davinci_wdt *davinci_wdt = to_davinci_wdt(wd);
+
+	/* put watchdog in service state */
+	iowrite32(WDKEY_SEQ0, davinci_wdt->base + WDTCR);
+	/* put watchdog in active state */
+	iowrite32(WDKEY_SEQ1, davinci_wdt->base + WDTCR);
+	return 0;
+}
+
+static int davinci_wdt_set_timeout(struct watchdog *wd, unsigned timeout)
+{
+	struct davinci_wdt *davinci_wdt = to_davinci_wdt(wd);
+
+	if (!davinci_wdt->timeout) {
+		davinci_wdt->timeout = timeout;
+		davinci_wdt_start(wd);
+	} else {
+		davinci_wdt_ping(wd);
+		if (davinci_wdt->timeout != timeout)
+			pr_warn("watchdog timeout can not be changed (currently %d)\n",
+				davinci_wdt->timeout);
+	}
+
+	return 0;
+}
+
+static int davinci_wdt_probe(struct device_d *dev)
+{
+	int ret = 0;
+	struct davinci_wdt *davinci_wdt;
+
+	davinci_wdt = xzalloc(sizeof(*davinci_wdt));
+
+	davinci_wdt->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(davinci_wdt->base))
+		return PTR_ERR(davinci_wdt->base);
+
+	davinci_wdt->clk = clk_get(dev, NULL);
+	if (WARN_ON(IS_ERR(davinci_wdt->clk)))
+		return PTR_ERR(davinci_wdt->clk);
+
+	clk_enable(davinci_wdt->clk);
+
+	davinci_wdt->wd.set_timeout = davinci_wdt_set_timeout;
+
+	ret = watchdog_register(&davinci_wdt->wd);
+	if (ret < 0)
+		dev_err(dev, "cannot register watchdog device\n");
+
+	return ret;
+}
+
+static __maybe_unused struct of_device_id davinci_wdt_of_match[] = {
+	{ .compatible = "ti,davinci-wdt", },
+	{},
+};
+
+static struct driver_d platform_wdt_driver = {
+	.name = "davinci-wdt",
+	.of_compatible = DRV_OF_COMPAT(davinci_wdt_of_match),
+	.probe = davinci_wdt_probe,
+};
+device_platform_driver(platform_wdt_driver);
+
+MODULE_AUTHOR("Texas Instruments");
+MODULE_DESCRIPTION("DaVinci Watchdog Driver");
+MODULE_LICENSE("GPL");
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKpQC-0002cq-BC
 for barebox@lists.infradead.org; Sat, 04 Apr 2020 20:29:42 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Sat,  4 Apr 2020 22:29:10 +0200
Message-Id: <20200404202910.12524-7-cleger@kalray.eu>
In-Reply-To: <20200404202910.12524-1-cleger@kalray.eu>
References: <20200404202910.12524-1-cleger@kalray.eu>
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
Subject: [PATCH v2 6/6] watchdog: kvx: Add kvx watchdog support
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

Add a watchdog for kvx architecture based on core watchdog.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/kvx/configs/generic_defconfig |  3 +
 drivers/watchdog/Kconfig           |  6 ++
 drivers/watchdog/Makefile          |  1 +
 drivers/watchdog/kvx_wdt.c         | 94 ++++++++++++++++++++++++++++++
 4 files changed, 104 insertions(+)
 create mode 100644 drivers/watchdog/kvx_wdt.c

diff --git a/arch/kvx/configs/generic_defconfig b/arch/kvx/configs/generic_defconfig
index d0c2252bf..f9ff773a0 100644
--- a/arch/kvx/configs/generic_defconfig
+++ b/arch/kvx/configs/generic_defconfig
@@ -6,6 +6,9 @@ CONFIG_CMD_CMP=y
 CONFIG_CMD_OF_DUMP=y
 CONFIG_CMD_POWEROFF=y
 CONFIG_CMD_RESET=y
+CONFIG_CMD_WD=y
 CONFIG_CONSOLE_RATP=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_PINCTRL_SINGLE=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_KVX=y
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 45dd41a2a..fe979d930 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -70,6 +70,12 @@ config WATCHDOG_ORION
 	help
 	  Add support for watchdog on the Marvall Armada XP
 
+config WATCHDOG_KVX
+	bool "KVX Core watchdog"
+	depends on KVX
+	help
+	  Add support for the KVX core watchdog.
+
 config WATCHDOG_BCM2835
 	bool "Watchdog for BCM283x SoCs"
 	depends on ARCH_BCM283X
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 63efc2a87..3af64db3f 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_WATCHDOG_DW) += dw_wdt.o
 obj-$(CONFIG_WATCHDOG_JZ4740) += jz4740.o
 obj-$(CONFIG_WATCHDOG_IMX_RESET_SOURCE) += imxwd.o
 obj-$(CONFIG_WATCHDOG_IMX) += imxwd.o
+obj-$(CONFIG_WATCHDOG_KVX) += kvx_wdt.o
 obj-$(CONFIG_WATCHDOG_ORION) += orion_wdt.o
 obj-$(CONFIG_ARCH_BCM283X) += bcm2835_wdt.o
 obj-$(CONFIG_RAVE_SP_WATCHDOG) += rave-sp-wdt.o
diff --git a/drivers/watchdog/kvx_wdt.c b/drivers/watchdog/kvx_wdt.c
new file mode 100644
index 000000000..da19136fd
--- /dev/null
+++ b/drivers/watchdog/kvx_wdt.c
@@ -0,0 +1,94 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2018 Kalray Inc.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <watchdog.h>
+
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include <asm/sfr.h>
+
+struct kvx_wdt {
+	uint64_t clk_rate;
+	struct watchdog wdd;
+};
+
+static void kvx_watchdog_disable(void)
+{
+	kvx_sfr_set_field(TCR, WUI, 0);
+	kvx_sfr_set_field(TCR, WCE, 0);
+}
+
+static int kvx_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
+{
+	struct kvx_wdt *wdt = container_of(wdd, struct kvx_wdt, wdd);
+	uint64_t cycle_timeout = wdt->clk_rate * timeout;
+
+	/* Disable watchdog */
+	if (timeout == 0) {
+		kvx_watchdog_disable();
+		return 0;
+	}
+
+	kvx_sfr_set(WDV, cycle_timeout);
+	kvx_sfr_set(WDR, 0);
+
+	/* Start watchdog counting */
+	kvx_sfr_set_field(TCR, WUI, 1);
+	kvx_sfr_set_field(TCR, WCE, 1);
+
+	return 0;
+}
+
+static int count;
+
+static int kvx_wdt_drv_probe(struct device_d *dev)
+{
+	struct watchdog *wdd;
+	struct clk *clk;
+	struct kvx_wdt *kvx_wdt;
+
+	if (count != 0) {
+		dev_warn(dev, "Tried to register core watchdog twice\n");
+		return -EINVAL;
+	}
+	count++;
+
+	kvx_wdt = xzalloc(sizeof(*kvx_wdt));
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	kvx_wdt->clk_rate = clk_get_rate(clk);
+	clk_put(clk);
+
+	wdd = &kvx_wdt->wdd;
+	wdd->name = "kvx_wdt";
+	wdd->hwdev = dev;
+	wdd->set_timeout = kvx_wdt_set_timeout;
+
+	/* Be sure that interrupt are disable */
+	kvx_sfr_set_field(TCR, WIE, 0);
+
+	kvx_watchdog_disable();
+
+	return watchdog_register(wdd);
+}
+
+static struct of_device_id kvx_wdt_of_match[] = {
+	{ .compatible = "kalray,kvx-core-watchdog", },
+	{ /* sentinel */ }
+};
+
+static struct driver_d kvx_wdt_driver = {
+	.name		= "kvx-wdt",
+	.probe		= kvx_wdt_drv_probe,
+	.of_compatible	= DRV_OF_COMPAT(kvx_wdt_of_match),
+};
+device_platform_driver(kvx_wdt_driver);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

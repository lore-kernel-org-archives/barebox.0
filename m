Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grgQ2-0003WQ-UP
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 09:56:32 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Feb 2019 10:56:24 +0100
Message-Id: <20190207095625.11582-2-o.rempel@pengutronix.de>
In-Reply-To: <20190207095625.11582-1-o.rempel@pengutronix.de>
References: <20190207095625.11582-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 2/3] watchdog: add (U)EFI watchdog driver
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

This driver is using SetWatchdogTimer() UEFI interface and was
tested on iBASE MI991AF Mini-ITX motherboard.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/efi/efi.c           |  9 ++++-
 drivers/watchdog/Kconfig   |  6 ++++
 drivers/watchdog/Makefile  |  1 +
 drivers/watchdog/efi_wdt.c | 69 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 84 insertions(+), 1 deletion(-)
 create mode 100644 drivers/watchdog/efi_wdt.c

diff --git a/common/efi/efi.c b/common/efi/efi.c
index 1f451a157e..a7b25cbbe2 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -367,8 +367,15 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 
 static int efi_core_init(void)
 {
-	struct device_d *dev = device_alloc("efi-cs", DEVICE_ID_SINGLE);
+	struct device_d *dev;
+	int ret;
+
+	dev = device_alloc("efi-cs", DEVICE_ID_SINGLE);
+	ret = platform_device_register(dev);
+	if (ret)
+		return ret;
 
+	dev = device_alloc("efi-wdt", DEVICE_ID_SINGLE);
 	return platform_device_register(dev);
 }
 core_initcall(efi_core_init);
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 27e9f6d8b4..96e91fc2ce 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -22,6 +22,12 @@ config WATCHDOG_AR9344
 	help
 	  Add support for watchdog on the QCA AR9344 SoC.
 
+config WATCHDOG_EFI
+	bool "Generic EFI Watchdog Driver"
+	depends on EFI_BOOTUP
+	help
+	  Add support for the EFI watchdog.
+
 config WATCHDOG_DAVINCI
 	bool "TI Davinci"
 	depends on ARCH_DAVINCI
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index faf06110a3..69189ba1f3 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_WATCHDOG) += wd_core.o
 obj-$(CONFIG_WATCHDOG_AR9344) += ar9344_wdt.o
+obj-$(CONFIG_WATCHDOG_EFI) += efi_wdt.o
 obj-$(CONFIG_WATCHDOG_DAVINCI) += davinci_wdt.o
 obj-$(CONFIG_WATCHDOG_OMAP) += omap_wdt.o
 obj-$(CONFIG_WATCHDOG_MXS28) += im28wd.o
diff --git a/drivers/watchdog/efi_wdt.c b/drivers/watchdog/efi_wdt.c
new file mode 100644
index 0000000000..70554770f3
--- /dev/null
+++ b/drivers/watchdog/efi_wdt.c
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2019 Oleksij Rempel <o.rempel@pengutronix.de>, Pengutronix
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <efi.h>
+#include <efi/efi.h>
+#include <watchdog.h>
+
+struct efi_wdt_priv {
+	struct watchdog		wd;
+	struct device_d		*dev;
+};
+
+#define to_efi_wdt(h) container_of(h, struct efi_wdt_priv, wd)
+
+static int efi_wdt_set_timeout(struct watchdog *wd, unsigned timeout)
+{
+	struct efi_wdt_priv *priv = to_efi_wdt(wd);
+	efi_status_t efiret;
+
+	efiret = BS->set_watchdog_timer(timeout, 0, 0, NULL);
+	if (EFI_ERROR(efiret))
+		dev_err(priv->dev, "filed to set EFI watchdog: %lx\n", efiret);
+
+	return 0;
+}
+
+static int efi_wdt_probe(struct device_d *dev)
+{
+	struct efi_wdt_priv *priv;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->wd.set_timeout = efi_wdt_set_timeout;
+	priv->wd.hwdev = dev;
+	priv->dev = dev;
+
+	dev->priv = priv;
+
+	priv->wd.timeout_max = U32_MAX;
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
+
+
+static struct driver_d efi_wdt_driver = {
+	.name = "efi-wdt",
+	.probe = efi_wdt_probe,
+};
+
+static int efi_wdt_initcall(void)
+{
+	return platform_driver_register(&efi_wdt_driver);
+}
+device_initcall(efi_wdt_initcall);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgFB-0006rj-V9
 for barebox@lists.infradead.org; Wed, 15 Jan 2020 10:49:54 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Wed, 15 Jan 2020 11:26:49 +0100
Message-Id: <20200115102650.11739-5-cleger@kalray.eu>
In-Reply-To: <20200115102650.11739-1-cleger@kalray.eu>
References: <20200115102650.11739-1-cleger@kalray.eu>
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
Subject: [PATCH 4/5] clocksource: k1c: Add k1c clocksource support
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Clement Leger <cleger@kalray.eu>

Add a clocksource for k1c architecture based on core performance
counter. This performance counter is configured to count cycles and as
such can be used to be a clocksource.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/k1c/configs/generic_defconfig |  1 +
 drivers/clocksource/Kconfig        |  4 +++
 drivers/clocksource/Makefile       |  1 +
 drivers/clocksource/k1c_timer.c    | 59 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 65 insertions(+)
 create mode 100644 drivers/clocksource/k1c_timer.c

diff --git a/arch/k1c/configs/generic_defconfig b/arch/k1c/configs/generic_defconfig
index 535f1cf8b..0821030f6 100644
--- a/arch/k1c/configs/generic_defconfig
+++ b/arch/k1c/configs/generic_defconfig
@@ -1,6 +1,7 @@
 CONFIG_AUTO_COMPLETE=y
 CONFIG_BAUDRATE=115200
 # CONFIG_BOOTM is not set
+CONFIG_CLOCKSOURCE_K1C=y
 CONFIG_CMD_CMP=y
 CONFIG_CMD_OF_DUMP=y
 CONFIG_CMD_POWEROFF=y
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 44a6cef6f..12ff00be9 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -47,6 +47,10 @@ config CLOCKSOURCE_EFI_X86
 	bool "EFI X86 HW driver"
 	depends on EFI_BOOTUP && X86
 
+config CLOCKSOURCE_K1C
+	bool "K1C core timer clocksource"
+	depends on K1C
+
 config CLOCKSOURCE_MVEBU
 	bool
 	depends on ARCH_MVEBU
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index f8ff83d60..678b587dc 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_CLOCKSOURCE_CLPS711X) += clps711x.o
 obj-$(CONFIG_CLOCKSOURCE_DIGIC)   += digic.o
 obj-$(CONFIG_CLOCKSOURCE_EFI) += efi.o
 obj-$(CONFIG_CLOCKSOURCE_EFI_X86) += efi_x86.o
+obj-$(CONFIG_CLOCKSOURCE_K1C)     += k1c_timer.o
 obj-$(CONFIG_CLOCKSOURCE_MVEBU)   += mvebu.o
 obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
 obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
diff --git a/drivers/clocksource/k1c_timer.c b/drivers/clocksource/k1c_timer.c
new file mode 100644
index 000000000..af5f73a66
--- /dev/null
+++ b/drivers/clocksource/k1c_timer.c
@@ -0,0 +1,59 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2018 Kalray Inc.
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <init.h>
+
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include <asm/sfr.h>
+
+static uint64_t k1c_pm_read(void)
+{
+	return k1c_sfr_get(K1C_SFR_PM0);
+}
+
+static struct clocksource k1c_clksrc = {
+	.read	= k1c_pm_read,
+	.mask	= CLOCKSOURCE_MASK(64),
+	.shift	= 0,
+};
+
+static int k1c_timer_probe(struct device_d *dev)
+{
+	struct clk *clk;
+	uint32_t clk_freq;
+	struct device_node *np = dev->device_node;
+
+	/* Get clock frequency */
+	clk = of_clk_get(np, 0);
+	if (IS_ERR(clk)) {
+		pr_err("Failed to get CPU clock: %ld\n", PTR_ERR(clk));
+		return PTR_ERR(clk);
+	}
+
+	clk_freq = clk_get_rate(clk);
+	clk_put(clk);
+
+	/* Init clocksource */
+	k1c_clksrc.mult = clocksource_hz2mult(clk_freq, k1c_clksrc.shift);
+
+	return init_clock(&k1c_clksrc);
+}
+
+static struct of_device_id k1c_timer_dt_ids[] = {
+	{ .compatible = "kalray,k1c-core-timer", },
+	{ }
+};
+
+static struct driver_d k1c_timer_driver = {
+	.name = "k1c-timer",
+	.probe = k1c_timer_probe,
+	.of_compatible = DRV_OF_COMPAT(k1c_timer_dt_ids),
+};
+
+device_platform_driver(k1c_timer_driver);
-- 
2.15.0.276.g89ea799


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

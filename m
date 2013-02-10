Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4ZNc-0004vi-5i
 for barebox@lists.infradead.org; Sun, 10 Feb 2013 16:03:49 +0000
Received: from mail641.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id F2543DC12EB
 for <barebox@lists.infradead.org>; Sun, 10 Feb 2013 17:14:05 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 10 Feb 2013 17:02:35 +0100
Message-Id: <1360512157-22161-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130210155819.GU19322@game.jcrosoft.org>
References: <20130210155819.GU19322@game.jcrosoft.org>
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
Subject: [PATCH 1/3] clocksource: add ARM AMBA SP804 support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/clocksource/Kconfig      |    4 ++
 drivers/clocksource/Makefile     |    1 +
 drivers/clocksource/amba-sp804.c |   89 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 94 insertions(+)
 create mode 100644 drivers/clocksource/amba-sp804.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 09acdd7..3f27cf2 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -1,3 +1,7 @@
+config AMBA_SP804
+	bool
+	depends on ARM_AMBA
+
 config ARM_SMP_TWD
 	bool
 	depends on ARM && CPU_V7
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 92d7c13..b0bc8bd 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -1,3 +1,4 @@
+obj-$(CONFIG_AMBA_SP804) += amba-sp804.o
 obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
 obj-$(CONFIG_CLOCKSOURCE_BCM2835) += bcm2835.o
 obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
diff --git a/drivers/clocksource/amba-sp804.c b/drivers/clocksource/amba-sp804.c
new file mode 100644
index 0000000..bb6facc
--- /dev/null
+++ b/drivers/clocksource/amba-sp804.c
@@ -0,0 +1,89 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPL v2
+ */
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <io.h>
+#include <driver.h>
+#include <errno.h>
+#include <linux/amba/bus.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include <asm/hardware/arm_timer.h>
+
+static __iomem void *sp804_base;
+static struct clk *sp804_clk;
+
+static uint64_t sp804_read(void)
+{
+	return ~readl(sp804_base + TIMER_VALUE);
+}
+
+static struct clocksource sp804_clksrc = {
+	.read	= sp804_read,
+	.shift	= 20,
+	.mask	= CLOCKSOURCE_MASK(32),
+};
+
+static int sp804_probe(struct amba_device *dev, const struct amba_id *id)
+{
+	u32 tick_rate;
+	int ret;
+
+	sp804_clk = clk_get(&dev->dev, NULL);
+	if (IS_ERR(sp804_clk)) {
+		ret = PTR_ERR(sp804_clk);
+		dev_err(&dev->dev, "clock not found: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_enable(sp804_clk);
+	if (ret < 0) {
+		dev_err(&dev->dev, "clock failed to enable: %d\n", ret);
+		clk_put(sp804_clk);
+		return ret;
+	}
+
+	sp804_base = amba_get_mem_region(dev);
+
+	tick_rate = clk_get_rate(sp804_clk);
+
+	/* setup timer 0 as free-running clocksource */
+	writel(0, sp804_base + TIMER_CTRL);
+	writel(0xffffffff, sp804_base + TIMER_LOAD);
+	writel(0xffffffff, sp804_base + TIMER_VALUE);
+	writel(TIMER_CTRL_32BIT | TIMER_CTRL_ENABLE | TIMER_CTRL_PERIODIC,
+		sp804_base + TIMER_CTRL);
+
+	sp804_clksrc.mult = clocksource_hz2mult(tick_rate, sp804_clksrc.shift);
+
+	init_clock(&sp804_clksrc);
+
+	return 0;
+}
+
+static struct amba_id sp804_ids[] = {
+	{
+		.id	= 0x00141804,
+		.mask	= 0x00ffffff,
+	},
+	{ 0, 0 },
+};
+
+struct amba_driver sp804_driver = {
+	.drv = {
+		.name = "sp804",
+	},
+	.probe		= sp804_probe,
+	.id_table	= sp804_ids,
+};
+
+static int sp804_init(void)
+{
+	return amba_driver_register(&sp804_driver);
+}
+coredevice_initcall(sp804_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

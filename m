Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBL3m-0006ds-My
 for barebox@lists.infradead.org; Sun, 27 Jul 2014 09:48:07 +0000
Received: by mail-lb0-f170.google.com with SMTP id w7so4794514lbi.1
 for <barebox@lists.infradead.org>; Sun, 27 Jul 2014 02:47:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 27 Jul 2014 13:47:22 +0400
Message-Id: <1406454448-10645-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
References: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/9] clocksource: add driver for Canon DIGIC timer
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clocksource/Kconfig  |  4 ++
 drivers/clocksource/Makefile |  1 +
 drivers/clocksource/digic.c  | 93 ++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 98 insertions(+)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index c1480ce..fc5a389 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -14,6 +14,10 @@ config CLOCKSOURCE_CLPS711X
 	bool
 	depends on ARCH_CLPS711X
 
+config CLOCKSOURCE_DIGIC
+	bool
+	depends on ARCH_DIGIC
+
 config CLOCKSOURCE_DUMMY
 	bool "Enable dummy software-only clocksource"
 	help
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 97c0288..b80df6b 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -2,6 +2,7 @@ obj-$(CONFIG_AMBA_SP804) += amba-sp804.o
 obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
 obj-$(CONFIG_CLOCKSOURCE_BCM2835) += bcm2835.o
 obj-$(CONFIG_CLOCKSOURCE_CLPS711X) += clps711x.o
+obj-$(CONFIG_CLOCKSOURCE_DIGIC)   += digic.o
 obj-$(CONFIG_CLOCKSOURCE_DUMMY)   += dummy.o
 obj-$(CONFIG_CLOCKSOURCE_MVEBU)   += mvebu.o
 obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
diff --git a/drivers/clocksource/digic.c b/drivers/clocksource/digic.c
new file mode 100644
index 0000000..b80ef6f
--- /dev/null
+++ b/drivers/clocksource/digic.c
@@ -0,0 +1,93 @@
+/*
+ * Copyright (C) 2013, 2014 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <io.h>
+#include <init.h>
+#include <clock.h>
+
+#define DIGIC_TIMER_CLOCK 1000000
+
+#define DIGIC_TIMER_CONTROL 0x00
+#define DIGIC_TIMER_VALUE 0x0c
+
+static void __iomem *timer_base;
+
+static uint64_t digic_cs_read(void)
+{
+	return (uint64_t)(0xffff - readl(timer_base + DIGIC_TIMER_VALUE));
+}
+
+static struct clocksource digic_cs = {
+	.read	= digic_cs_read,
+	.mask   = CLOCKSOURCE_MASK(16),
+};
+
+static int digic_timer_probe(struct device_d *dev)
+{
+	/* use only one timer */
+	if (timer_base)
+		return -EBUSY;
+
+	timer_base = dev_request_mem_region(dev, 0);
+	if (!timer_base) {
+		dev_err(dev, "could not get memory region\n");
+		return -ENODEV;
+	}
+
+	clocks_calc_mult_shift(&digic_cs.mult, &digic_cs.shift,
+		DIGIC_TIMER_CLOCK, NSEC_PER_SEC, 1);
+
+	/* disable timer */
+	writel(0x80000000, timer_base + DIGIC_TIMER_CONTROL);
+
+	/* magic values... divider? */
+	writel(0x00000002, timer_base + 0x04);
+	writel(0x00000003, timer_base + 0x14);
+
+	/* max counter value */
+	writel(0x0000ffff, timer_base + 0x08);
+
+	init_clock(&digic_cs);
+
+	/* enable timer */
+	writel(0x00000001, timer_base + DIGIC_TIMER_CONTROL);
+	/* start timer */
+	writel(0x00000001, timer_base + 0x10);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id digic_timer_dt_ids[] = {
+	{
+		.compatible = "canon,digic-timer",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d digic_timer_driver = {
+	.probe	= digic_timer_probe,
+	.name	= "digic-timer",
+	.of_compatible = DRV_OF_COMPAT(digic_timer_dt_ids),
+};
+
+static int digic_timer_init(void)
+{
+	return platform_driver_register(&digic_timer_driver);
+}
+coredevice_initcall(digic_timer_init);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

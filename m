Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJp2o-0007LW-Dx
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 17:17:07 +0000
Received: from mail247.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id A76E4104FDE8
 for <barebox@lists.infradead.org>; Thu,  4 Oct 2012 19:23:20 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  4 Oct 2012 19:14:37 +0200
Message-Id: <1349370878-8047-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121004171151.GO26553@game.jcrosoft.org>
References: <20121004171151.GO26553@game.jcrosoft.org>
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
Subject: [PATCH 1/2] arm: add generic smp twd timer
To: barebox@lists.infradead.org

on Cortex A9 and Cortex A5 we have a generic timer which we can use as
clocksource

Limit the timer frequency to < 25Mhz

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/Kconfig                   |    1 +
 drivers/Makefile                  |    1 +
 drivers/clocksource/Kconfig       |    3 ++
 drivers/clocksource/Makefile      |    1 +
 drivers/clocksource/arm_smp_twd.c |  101 +++++++++++++++++++++++++++++++++++++
 5 files changed, 107 insertions(+)
 create mode 100644 drivers/clocksource/Kconfig
 create mode 100644 drivers/clocksource/Makefile
 create mode 100644 drivers/clocksource/arm_smp_twd.c

diff --git a/drivers/Kconfig b/drivers/Kconfig
index d0b5e3a..6f78644 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -11,6 +11,7 @@ source "drivers/usb/Kconfig"
 source "drivers/video/Kconfig"
 source "drivers/mci/Kconfig"
 source "drivers/clk/Kconfig"
+source "drivers/clocksource/Kconfig"
 source "drivers/mfd/Kconfig"
 source "drivers/misc/Kconfig"
 source "drivers/led/Kconfig"
diff --git a/drivers/Makefile b/drivers/Makefile
index 2a1f8b0..742a5bd 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -11,6 +11,7 @@ obj-$(CONFIG_I2C) += i2c/
 obj-$(CONFIG_MCI) += mci/
 obj-$(CONFIG_VIDEO) += video/
 obj-y	+= clk/
+obj-y	+= clocksource/
 obj-y	+= mfd/
 obj-$(CONFIG_LED) += led/
 obj-y	+= eeprom/
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
new file mode 100644
index 0000000..05c1f0a
--- /dev/null
+++ b/drivers/clocksource/Kconfig
@@ -0,0 +1,3 @@
+config ARM_SMP_TWD
+	bool
+	depends on ARM && CPU_V7
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
new file mode 100644
index 0000000..9186a5c
--- /dev/null
+++ b/drivers/clocksource/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
diff --git a/drivers/clocksource/arm_smp_twd.c b/drivers/clocksource/arm_smp_twd.c
new file mode 100644
index 0000000..746d566
--- /dev/null
+++ b/drivers/clocksource/arm_smp_twd.c
@@ -0,0 +1,101 @@
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
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#define TWD_TIMER_LOAD			0x00
+#define TWD_TIMER_COUNTER		0x04
+#define TWD_TIMER_CONTROL		0x08
+#define TWD_TIMER_INTSTAT		0x0C
+
+#define TWD_TIMER_CONTROL_ENABLE	(1 << 0)
+#define TWD_TIMER_CONTROL_ONESHOT	(0 << 1)
+#define TWD_TIMER_CONTROL_PERIODIC	(1 << 1)
+#define TWD_TIMER_CONTROL_IT_ENABLE	(1 << 2)
+
+#define TWD_TIMER_CONTROL_PRESC(x)	(((x) & 0xff) << 8)
+
+static __iomem void *twd_base;
+static struct clk *twd_clk;
+
+static uint64_t smp_twd_read(void)
+{
+	return ~readl(twd_base + TWD_TIMER_COUNTER);
+}
+
+static struct clocksource smp_twd_clksrc = {
+	.read	= smp_twd_read,
+	.shift	= 20,
+	.mask	= CLOCKSOURCE_MASK(32),
+};
+
+#define SMP_TWD_MAX_FREQ (25 *1000 * 1000)
+
+static int smp_twd_probe(struct device_d *dev)
+{
+	u32 tick_rate;
+	u32 val;
+	int ret;
+	u32 presc = 0;
+
+	twd_clk = clk_get(dev, NULL);
+	if (IS_ERR(twd_clk)) {
+		ret = PTR_ERR(twd_clk);
+		dev_err(dev, "clock not found: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_enable(twd_clk);
+	if (ret < 0) {
+		dev_err(dev, "clock failed to enable: %d\n", ret);
+		clk_put(twd_clk);
+		return ret;
+	}
+
+	twd_base = dev_request_mem_region(dev, 0);
+
+	tick_rate = clk_get_rate(twd_clk);
+	if (tick_rate > SMP_TWD_MAX_FREQ) {
+		presc = tick_rate / SMP_TWD_MAX_FREQ;
+		if (presc)
+			presc--;
+		presc = min((u32)0xff, presc);
+		tick_rate /= presc + 1;
+	}
+
+	val = TWD_TIMER_CONTROL_PRESC(presc) |
+	      TWD_TIMER_CONTROL_PERIODIC;
+	writel(val, twd_base + TWD_TIMER_CONTROL);
+
+	writel(0xffffffff, twd_base + TWD_TIMER_LOAD);
+
+	val = readl(twd_base + TWD_TIMER_CONTROL);
+	val |= TWD_TIMER_CONTROL_ENABLE;
+	writel(val, twd_base + TWD_TIMER_CONTROL);
+
+	smp_twd_clksrc.mult = clocksource_hz2mult(tick_rate, smp_twd_clksrc.shift);
+
+	init_clock(&smp_twd_clksrc);
+
+	return 0;
+}
+
+static struct driver_d smp_twd_driver = {
+	.name = "smp_twd",
+	.probe = smp_twd_probe,
+};
+
+static int smp_twd_init(void)
+{
+	return platform_driver_register(&smp_twd_driver);
+}
+coredevice_initcall(smp_twd_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

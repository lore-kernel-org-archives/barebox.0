Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCDjo-0005SD-2W
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 20:11:09 +0000
Received: by mail-lb0-f178.google.com with SMTP id c11so137419lbj.23
 for <barebox@lists.infradead.org>; Tue, 29 Jul 2014 13:10:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 30 Jul 2014 00:10:23 +0400
Message-Id: <1406664625-19653-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406664625-19653-1-git-send-email-antonynpavlov@gmail.com>
References: <1406664625-19653-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v4 7/9] rtc: add jz4740 driver
To: barebox@lists.infradead.org

Add support for the RTC unit on Ingenic JZ4740, JZ475x and JZ477x SoCs.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/rtc/Kconfig      |   7 ++
 drivers/rtc/Makefile     |   1 +
 drivers/rtc/rtc-jz4740.c | 165 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 173 insertions(+)

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index c2b3764..957fee7 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -34,4 +34,11 @@ config RTC_DRV_DS1307
 
 endif # I2C
 
+config RTC_DRV_JZ4740
+	tristate "Ingenic JZ4740 RTC"
+	depends on MACH_MIPS_XBURST
+	help
+	  If you say yes here you get support for the Ingenic JZ4740 SoC RTC
+	  controller.
+
 endif # RTC_CLASS
diff --git a/drivers/rtc/Makefile b/drivers/rtc/Makefile
index 2c5a50e..1cc9bb8 100644
--- a/drivers/rtc/Makefile
+++ b/drivers/rtc/Makefile
@@ -8,3 +8,4 @@ obj-$(CONFIG_RTC_CLASS)         += class.o
 # Keep the list ordered.
 
 obj-$(CONFIG_RTC_DRV_DS1307)    += rtc-ds1307.o
+obj-$(CONFIG_RTC_DRV_JZ4740)	+= rtc-jz4740.o
diff --git a/drivers/rtc/rtc-jz4740.c b/drivers/rtc/rtc-jz4740.c
new file mode 100644
index 0000000..8194050
--- /dev/null
+++ b/drivers/rtc/rtc-jz4740.c
@@ -0,0 +1,165 @@
+/*
+ *  JZ4740 SoC RTC driver
+ *
+ *  This code was ported from linux-3.15 kernel by Antony Pavlov.
+ *
+ *  Copyright (C) 2009-2010, Lars-Peter Clausen <lars@metafoo.de>
+ *  Copyright (C) 2010, Paul Cercueil <paul@crapouillou.net>
+ *
+ *  This program is free software; you can redistribute it and/or modify it
+ *  under  the terms of  the GNU General Public License as published by the
+ *  Free Software Foundation;  either version 2 of the License, or (at your
+ *  option) any later version.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <io.h>
+#include <rtc.h>
+#include <linux/rtc.h>
+
+#define JZ_REG_RTC_CTRL		0x00
+#define JZ_REG_RTC_SEC		0x04
+#define JZ_REG_RTC_SEC_ALARM	0x08
+#define JZ_REG_RTC_REGULATOR	0x0C
+#define JZ_REG_RTC_HIBERNATE	0x20
+#define JZ_REG_RTC_SCRATCHPAD	0x34
+
+#define JZ_RTC_CTRL_WRDY	BIT(7)
+
+struct jz4740_rtc {
+	struct rtc_device rtc;
+
+	void __iomem *base;
+};
+
+static inline uint32_t jz4740_rtc_reg_read(struct jz4740_rtc *rtc, size_t reg)
+{
+	return readl(rtc->base + reg);
+}
+
+static int jz4740_rtc_wait_write_ready(struct jz4740_rtc *rtc)
+{
+	uint32_t ctrl;
+	int timeout = 1000;
+
+	do {
+		ctrl = jz4740_rtc_reg_read(rtc, JZ_REG_RTC_CTRL);
+	} while (!(ctrl & JZ_RTC_CTRL_WRDY) && --timeout);
+
+	return timeout ? 0 : -EIO;
+}
+
+static inline int jz4740_rtc_reg_write(struct jz4740_rtc *rtc, size_t reg,
+	uint32_t val)
+{
+	int ret;
+	ret = jz4740_rtc_wait_write_ready(rtc);
+	if (ret == 0)
+		writel(val, rtc->base + reg);
+
+	return ret;
+}
+
+static inline struct jz4740_rtc *to_jz4740_rtc_priv(struct rtc_device *rtcdev)
+{
+	return container_of(rtcdev, struct jz4740_rtc, rtc);
+}
+
+static int jz4740_rtc_read_time(struct rtc_device *rtcdev, struct rtc_time *time)
+{
+	struct jz4740_rtc *rtc = to_jz4740_rtc_priv(rtcdev);
+	uint32_t secs, secs2;
+	int timeout = 5;
+
+	/* If the seconds register is read while it is updated, it can contain a
+	 * bogus value. This can be avoided by making sure that two consecutive
+	 * reads have the same value.
+	 */
+	secs = jz4740_rtc_reg_read(rtc, JZ_REG_RTC_SEC);
+	secs2 = jz4740_rtc_reg_read(rtc, JZ_REG_RTC_SEC);
+
+	while (secs != secs2 && --timeout) {
+		secs = secs2;
+		secs2 = jz4740_rtc_reg_read(rtc, JZ_REG_RTC_SEC);
+	}
+
+	if (timeout == 0)
+		return -EIO;
+
+	rtc_time_to_tm(secs, time);
+
+	return rtc_valid_tm(time);
+}
+
+static int jz4740_rtc_set_time(struct rtc_device *rtcdev, struct rtc_time *t)
+{
+	struct jz4740_rtc *rtc = to_jz4740_rtc_priv(rtcdev);
+	unsigned long secs;
+
+	rtc_tm_to_time(t, &secs);
+
+	return jz4740_rtc_reg_write(rtc, JZ_REG_RTC_SEC, secs);
+}
+
+static struct rtc_class_ops jz4740_rtc_ops = {
+	.read_time	= jz4740_rtc_read_time,
+	.set_time	= jz4740_rtc_set_time,
+};
+
+static int jz4740_rtc_probe(struct device_d *dev)
+{
+	int ret;
+	struct jz4740_rtc *rtc;
+	uint32_t scratchpad;
+	void __iomem *base;
+
+	base = dev_request_mem_region(dev, 0);
+	if (!base) {
+		dev_err(dev, "could not get memory region\n");
+		return -ENODEV;
+	}
+
+	rtc = xzalloc(sizeof(*rtc));
+
+	rtc->base = base;
+	rtc->rtc.ops = &jz4740_rtc_ops;
+	rtc->rtc.dev = dev;
+
+	ret = rtc_register(&rtc->rtc);
+	if (ret) {
+		dev_err(dev, "Failed to register rtc device: %d\n", ret);
+		return ret;
+	}
+
+	scratchpad = jz4740_rtc_reg_read(rtc, JZ_REG_RTC_SCRATCHPAD);
+	if (scratchpad != 0x12345678) {
+		ret = jz4740_rtc_reg_write(rtc, JZ_REG_RTC_SCRATCHPAD, 0x12345678);
+		ret = jz4740_rtc_reg_write(rtc, JZ_REG_RTC_SEC, 0);
+		if (ret) {
+			dev_err(dev, "Could not write write to RTC registers\n");
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id jz4740_rtc_dt_ids[] = {
+	{
+		.compatible = "ingenic,jz4740-rtc",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d jz4740_rtc_driver = {
+	.name  = "jz4740-rtc",
+	.probe	 = jz4740_rtc_probe,
+	.of_compatible = DRV_OF_COMPAT(jz4740_rtc_dt_ids),
+};
+device_platform_driver(jz4740_rtc_driver);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

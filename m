Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjSRL-0007nJ-Rc
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 09:52:09 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 26 Jun 2012 11:51:44 +0200
Message-Id: <1340704314-12593-3-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 02/12] mach-davinci: add GPIO support
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-davinci/Makefile            |    1 +
 arch/arm/mach-davinci/gpio.c              |  117 +++++++++++++++++++++++++++++
 arch/arm/mach-davinci/include/mach/gpio.h |   11 +++
 3 files changed, 129 insertions(+)
 create mode 100644 arch/arm/mach-davinci/gpio.c
 create mode 100644 arch/arm/mach-davinci/include/mach/gpio.h

diff --git a/arch/arm/mach-davinci/Makefile b/arch/arm/mach-davinci/Makefile
index 5f1e545..0a4e2dc 100644
--- a/arch/arm/mach-davinci/Makefile
+++ b/arch/arm/mach-davinci/Makefile
@@ -1,2 +1,3 @@
 obj-y += clock.o
 obj-y += clocksource.o
+obj-y += gpio.o
diff --git a/arch/arm/mach-davinci/gpio.c b/arch/arm/mach-davinci/gpio.c
new file mode 100644
index 0000000..12a50c1
--- /dev/null
+++ b/arch/arm/mach-davinci/gpio.c
@@ -0,0 +1,117 @@
+/*
+ * TI DaVinci GPIO Support
+ *
+ * Copyright (c) 2006-2007 David Brownell
+ * Copyright (c) 2007, MontaVista Software, Inc. <source@mvista.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <io.h>
+#include <mach/gpio.h>
+
+#ifndef CONFIG_SOC_DA8XX
+#define DAVINCI_GPIO_BASE 0x01C67000
+#else
+#define DAVINCI_GPIO_BASE 0x01E26000
+#endif
+
+struct davinci_gpio_regs {
+	u32	dir;
+	u32	out_data;
+	u32	set_data;
+	u32	clr_data;
+	u32	in_data;
+	u32	set_rising;
+	u32	clr_rising;
+	u32	set_falling;
+	u32	clr_falling;
+	u32	intstat;
+};
+
+static void __iomem *gpio_base = (void *)DAVINCI_GPIO_BASE;
+
+static struct davinci_gpio_regs __iomem *gpio2regs(unsigned gpio)
+{
+	void __iomem *ptr;
+
+	if (gpio < 32 * 1)
+		ptr = gpio_base + 0x10;
+	else if (gpio < 32 * 2)
+		ptr = gpio_base + 0x38;
+	else if (gpio < 32 * 3)
+		ptr = gpio_base + 0x60;
+	else if (gpio < 32 * 4)
+		ptr = gpio_base + 0x88;
+	else if (gpio < 32 * 5)
+		ptr = gpio_base + 0xb0;
+	else
+		ptr = NULL;
+	return ptr;
+}
+
+static inline int __davinci_direction(unsigned gpio, bool out, int value)
+{
+	struct davinci_gpio_regs __iomem *g = gpio2regs(gpio);
+	u32 temp;
+	int shift = gpio % 32;
+	u32 mask = 1 << shift;
+
+	temp = readl(&g->dir);
+	if (out) {
+		temp &= ~mask;
+		writel(mask, value ? &g->set_data : &g->clr_data);
+	} else {
+		temp |= mask;
+	}
+	writel(temp, &g->dir);
+
+	return 0;
+}
+
+int gpio_direction_input(unsigned gpio)
+{
+	return __davinci_direction(gpio, false, 0);
+}
+
+int gpio_direction_output(unsigned gpio, int value)
+{
+	return __davinci_direction(gpio, true, value);
+}
+
+/*
+ * Read the pin's value (works even if it's set up as output);
+ * returns zero/nonzero.
+ *
+ * Note that changes are synched to the GPIO clock, so reading values back
+ * right after you've set them may give old values.
+ */
+int gpio_get_value(unsigned gpio)
+{
+	struct davinci_gpio_regs __iomem *g = gpio2regs(gpio);
+	int shift = gpio % 32;
+
+	if (!g)
+		return -EINVAL;
+
+	return readl(&g->in_data) & (1 << shift) ? 1 : 0;
+}
+
+/*
+ * Assuming the pin is muxed as a gpio output, set its output value.
+ */
+void gpio_set_value(unsigned gpio, int value)
+{
+	struct davinci_gpio_regs __iomem *g = gpio2regs(gpio);
+	int shift = gpio % 32;
+
+	if (!g)
+		return;
+
+	writel((1 << shift), value ? &g->set_data : &g->clr_data);
+}
diff --git a/arch/arm/mach-davinci/include/mach/gpio.h b/arch/arm/mach-davinci/include/mach/gpio.h
new file mode 100644
index 0000000..a71946c
--- /dev/null
+++ b/arch/arm/mach-davinci/include/mach/gpio.h
@@ -0,0 +1,11 @@
+#ifndef __ASM_ARCH_GPIO_H
+#define __ASM_ARCH_GPIO_H
+
+#define GPIO_TO_PIN(bank, gpio) (16 * (bank) + (gpio))
+
+int gpio_direction_output(unsigned gpio, int value);
+int gpio_direction_input(unsigned gpio);
+int gpio_get_value(unsigned gpio);
+void gpio_set_value(unsigned gpio, int value);
+
+#endif /* __ASM_ARCH_GPIO_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

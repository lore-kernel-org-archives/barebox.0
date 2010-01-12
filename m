Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NUmWQ-0005lb-3X
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 19:35:27 +0000
Received: from d4rwin.no-ip.org (139.Red-83-38-127.dynamicIP.rima-tde.net
	[83.38.127.139])
	by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 8172D2552F9
	for <barebox@lists.infradead.org>; Tue, 12 Jan 2010 20:35:14 +0100 (CET)
Date: Tue, 12 Jan 2010 20:30:47 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100112193047.GO14051@darwin>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] Add support for EP9xx GPIOs
To: barebox@lists.infradead.org

Added generic GPIO support for EP93xx SoCs

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 arch/arm/Kconfig                         |    1 +
 arch/arm/mach-ep93xx/Makefile            |    2 +-
 arch/arm/mach-ep93xx/gpio.c              |  136 ++++++++++++++++++++++++++++++
 arch/arm/mach-ep93xx/include/mach/gpio.h |   29 +++++++
 4 files changed, 167 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/mach-ep93xx/gpio.c
 create mode 100644 arch/arm/mach-ep93xx/include/mach/gpio.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 414a013..9cad224 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -34,6 +34,7 @@ config ARCH_AT91RM9200
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
 	select CPU_ARM920T
+	select GENERIC_GPIO
 
 config ARCH_IMX
 	bool "Freescale iMX-based"
diff --git a/arch/arm/mach-ep93xx/Makefile b/arch/arm/mach-ep93xx/Makefile
index d5786db..dac6571 100644
--- a/arch/arm/mach-ep93xx/Makefile
+++ b/arch/arm/mach-ep93xx/Makefile
@@ -1,3 +1,3 @@
-obj-y += clocksource.o led.o
+obj-y += clocksource.o gpio.o led.o
 
 obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/mach-ep93xx/gpio.c b/arch/arm/mach-ep93xx/gpio.c
new file mode 100644
index 0000000..5d57434
--- /dev/null
+++ b/arch/arm/mach-ep93xx/gpio.c
@@ -0,0 +1,136 @@
+/*
+ * Copyright (C) 2010 Matthias Kaehlcke <matthias@kaehlcke.net>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ *
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <init.h>
+#include <asm/io.h>
+#include <mach/ep93xx-regs.h>
+
+#define EP93XX_GPIO_NUM_PORTS	8
+#define EP93XX_GPIO_NUM_GPIOS	(EP93XX_GPIO_NUM_PORTS * 8)
+
+struct gpio_port {
+	uint32_t *dr;
+	uint32_t *ddr;
+};
+
+struct gpio_port gpio_ports[EP93XX_GPIO_NUM_PORTS];
+
+static int ep93xx_gpio_init(void)
+{
+	struct gpio_regs *gpio_regs = (struct gpio_regs *)GPIO_BASE;
+
+	gpio_ports[0].dr = &gpio_regs->padr;
+	gpio_ports[0].ddr = &gpio_regs->paddr;
+	gpio_ports[1].dr = &gpio_regs->pbdr;
+	gpio_ports[1].ddr = &gpio_regs->pbddr;
+	gpio_ports[2].dr = &gpio_regs->pcdr;
+	gpio_ports[2].ddr = &gpio_regs->pcddr;
+	gpio_ports[3].dr = &gpio_regs->pddr;
+	gpio_ports[3].ddr = &gpio_regs->pdddr;
+	gpio_ports[4].dr = &gpio_regs->pedr;
+	gpio_ports[4].ddr = &gpio_regs->peddr;
+	gpio_ports[5].dr = &gpio_regs->pfdr;
+	gpio_ports[5].ddr = &gpio_regs->pfddr;
+	gpio_ports[6].dr = &gpio_regs->pgdr;
+	gpio_ports[6].ddr = &gpio_regs->pgddr;
+	gpio_ports[7].dr = &gpio_regs->phdr;
+	gpio_ports[7].ddr = &gpio_regs->phddr;
+
+	return 0;
+}
+
+postcore_initcall(ep93xx_gpio_init);
+
+static struct gpio_port *gpio_get_port(unsigned gpio)
+{
+	if (gpio >= EP93XX_GPIO_NUM_GPIOS)
+		return 0;
+
+	return &gpio_ports[gpio / 8];
+}
+
+void gpio_set_value(unsigned gpio, int value)
+{
+	struct gpio_port *port = gpio_get_port(gpio);
+	const int shift = gpio % 8;
+	u32 val;
+
+	if (!port)
+		return;
+
+	val = readl(port->dr);
+
+	if (value)
+		val |= 1 << shift;
+	else
+		val &= ~(1 << shift);
+
+	writel(val, port->dr);
+}
+
+int gpio_direction_input(unsigned gpio)
+{
+	struct gpio_port *port = gpio_get_port(gpio);
+	const int shift = gpio % 8;
+	u32 val;
+
+	if (!port)
+		return -EINVAL;
+
+	val = readl(port->ddr);
+	val &= ~(1 << shift);
+	writel(val, port->ddr);
+
+	return 0;
+}
+
+int gpio_direction_output(unsigned gpio, int value)
+{
+	struct gpio_port *port = gpio_get_port(gpio);
+	const int shift = gpio % 8;
+	u32 val;
+
+	if (!port)
+		return -EINVAL;
+
+	gpio_set_value(gpio, value);
+
+	val = readl(port->ddr);
+	val |= 1 << shift;
+	writel(val, port->ddr);
+
+	return 0;
+}
+
+int gpio_get_value(unsigned gpio)
+{
+	struct gpio_port *port = gpio_get_port(gpio);
+	const int shift = gpio % 8;
+	u32 val;
+
+	if (!port)
+		return -EINVAL;
+
+	val = readl(port->dr);
+
+	return val & (1 << shift) ? 1 : 0;
+}
+
diff --git a/arch/arm/mach-ep93xx/include/mach/gpio.h b/arch/arm/mach-ep93xx/include/mach/gpio.h
new file mode 100644
index 0000000..a305f27
--- /dev/null
+++ b/arch/arm/mach-ep93xx/include/mach/gpio.h
@@ -0,0 +1,29 @@
+/*
+ * Copyright (C) 2010 Matthias Kaehlcke <matthias@kaehlcke.net>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ *
+ */
+
+#ifndef __ASM_ARCH_GPIO_H
+#define __ASM_ARCH_GPIO_H
+
+void gpio_set_value(unsigned gpio, int value);
+int gpio_get_value(unsigned gpio);
+int gpio_direction_output(unsigned gpio, int value);
+int gpio_direction_input(unsigned gpio);
+
+#endif /* __ASM_ARCH_GPIO_H */
+
-- 
1.6.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

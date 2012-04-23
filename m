Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMDaw-0006hZ-PL
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 07:22:06 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2A8A9FFA66F
 for <barebox@lists.infradead.org>; Mon, 23 Apr 2012 09:23:31 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 23 Apr 2012 09:02:14 +0200
Message-Id: <1335164539-2188-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120423065650.GM20601@game.jcrosoft.org>
References: <20120423065650.GM20601@game.jcrosoft.org>
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
Subject: [PATCH 05/10] ixp4xx: add gpio support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig                                |    1 +
 arch/arm/mach-ixp4xx/include/mach/gpio.h        |   69 +++++++++++++++++++++++
 arch/arm/mach-ixp4xx/include/mach/ixp4xx-regs.h |    2 +-
 arch/arm/mach-ixp4xx/include/mach/platform.h    |   46 +++++++++++++++
 4 files changed, 117 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/mach-ixp4xx/include/mach/gpio.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 2cc3f2d..7549ea5 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -51,6 +51,7 @@ config ARCH_MXS
 
 config ARCH_IXP4XX
 	bool "Intel IXP4xx-based"
+	select GENERIC_GPIO
 	select CPU_XSCALE
 	select ARCH_SUPPORTS_BIG_ENDIAN
 	select CPU_BIG_ENDIAN
diff --git a/arch/arm/mach-ixp4xx/include/mach/gpio.h b/arch/arm/mach-ixp4xx/include/mach/gpio.h
new file mode 100644
index 0000000..415ff56
--- /dev/null
+++ b/arch/arm/mach-ixp4xx/include/mach/gpio.h
@@ -0,0 +1,69 @@
+/*
+ * arch/arm/mach-ixp4xx/include/mach/gpio.h
+ *
+ * IXP4XX GPIO wrappers for arch-neutral GPIO calls
+ *
+ * Written by Milan Svoboda <msvoboda@ra.rockwell.com>
+ * Based on PXA implementation by Philipp Zabel <philipp.zabel@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ *
+ */
+
+#ifndef __ASM_ARCH_IXP4XX_GPIO_H
+#define __ASM_ARCH_IXP4XX_GPIO_H
+
+#include <linux/kernel.h>
+#include <mach/ixp4xx-regs.h>
+#include <mach/platform.h>
+
+static inline int gpio_request(unsigned gpio, const char *label)
+{
+	return 0;
+}
+
+static inline void gpio_free(unsigned gpio)
+{
+	return;
+}
+
+static inline int gpio_direction_input(unsigned gpio)
+{
+	gpio_line_config(gpio, IXP4XX_GPIO_IN);
+	return 0;
+}
+
+static inline int gpio_direction_output(unsigned gpio, int level)
+{
+	gpio_line_set(gpio, level);
+	gpio_line_config(gpio, IXP4XX_GPIO_OUT);
+	return 0;
+}
+
+static inline int gpio_get_value(unsigned gpio)
+{
+	int value;
+
+	gpio_line_get(gpio, &value);
+
+	return value;
+}
+
+static inline void gpio_set_value(unsigned gpio, int value)
+{
+	gpio_line_set(gpio, value);
+}
+
+#endif
diff --git a/arch/arm/mach-ixp4xx/include/mach/ixp4xx-regs.h b/arch/arm/mach-ixp4xx/include/mach/ixp4xx-regs.h
index da4dc8a..3ee88e7 100644
--- a/arch/arm/mach-ixp4xx/include/mach/ixp4xx-regs.h
+++ b/arch/arm/mach-ixp4xx/include/mach/ixp4xx-regs.h
@@ -84,7 +84,7 @@
 #define IXP4XX_UART2_BASE    IXP4XX_BASE(IXP4XX_PERIPHERAL_BASE + 0x1000)
 #define IXP4XX_PMU_BASE      IXP4XX_BASE(IXP4XX_PERIPHERAL_BASE + 0x2000)
 #define IXP4XX_INTC_BASE     IXP4XX_BASE(IXP4XX_PERIPHERAL_BASE + 0x3000)
-#define IXP4XX_GPIO_BASE     IXP4XX_BASE(IXP4XX_PERIPHERAL_BASE + 0x4000)
+#define IXP4XX_GPIO_BASE     IXP4XX_PERIPHERAL_BASE + 0x4000
 #define IXP4XX_NPEA_BASE     IXP4XX_BASE(IXP4XX_PERIPHERAL_BASE + 0x6000)
 #define IXP4XX_NPEB_BASE     IXP4XX_BASE(IXP4XX_PERIPHERAL_BASE + 0x7000)
 #define IXP4XX_NPEC_BASE     IXP4XX_BASE(IXP4XX_PERIPHERAL_BASE + 0x8000)
diff --git a/arch/arm/mach-ixp4xx/include/mach/platform.h b/arch/arm/mach-ixp4xx/include/mach/platform.h
index bff9185..8f71d66 100644
--- a/arch/arm/mach-ixp4xx/include/mach/platform.h
+++ b/arch/arm/mach-ixp4xx/include/mach/platform.h
@@ -23,6 +23,52 @@ struct eth_plat_info {
 	u8 hwaddr[6];
 };
 
+/*
+ * GPIO-functions
+ */
+/*
+ * The following converted to the real HW bits the gpio_line_config
+ */
+/* GPIO pin types */
+#define IXP4XX_GPIO_OUT 		0x1
+#define IXP4XX_GPIO_IN  		0x2
+
+/* GPIO signal types */
+#define IXP4XX_GPIO_LOW			0
+#define IXP4XX_GPIO_HIGH		1
+
+/* GPIO Clocks */
+#define IXP4XX_GPIO_CLK_0		14
+#define IXP4XX_GPIO_CLK_1		15
+
+static inline void gpio_line_config(u8 line, u32 direction)
+{
+	if (direction == IXP4XX_GPIO_IN)
+		*IXP4XX_GPIO_GPOER |= (1 << line);
+	else
+		*IXP4XX_GPIO_GPOER &= ~(1 << line);
+}
+
+static inline void gpio_line_get(u8 line, int *value)
+{
+	*value = (*IXP4XX_GPIO_GPINR >> line) & 0x1;
+}
+
+static inline void gpio_line_set(u8 line, int value)
+{
+	if (value == IXP4XX_GPIO_HIGH)
+	    *IXP4XX_GPIO_GPOUTR |= (1 << line);
+	else if (value == IXP4XX_GPIO_LOW)
+	    *IXP4XX_GPIO_GPOUTR &= ~(1 << line);
+}
+
+static inline void gpio_int_act_low_set(u8 line)
+{
+	u32 val = *IXP4XX_GPIO_GPIT1R;
+
+	*IXP4XX_GPIO_GPIT1R = (val & ~(0x7 << (line * 3))) | (0x1 << (line * 3));
+}
+
 struct device_d* ixp4xx_add_uart(int id, u32 base);
 
 static inline struct device_d* ixp4xx_add_uart1(void)
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9Fc7-0002lC-Hy
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 15:02:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Jan 2014 15:24:23 +0100
Message-Id: <1391178263-21637-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: Add lowlevel gpio functions
To: barebox@lists.infradead.org

Some boards need gpio functions very early and also sometimes
is useful to toggle gpios during early code debug. This adds a header
file for setting i.MX gpios early.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx-gpio.h | 48 +++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 arch/arm/mach-imx/include/mach/imx-gpio.h

diff --git a/arch/arm/mach-imx/include/mach/imx-gpio.h b/arch/arm/mach-imx/include/mach/imx-gpio.h
new file mode 100644
index 0000000..5e673be
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx-gpio.h
@@ -0,0 +1,48 @@
+#ifndef __MACH_IMX_GPIO_H
+#define __MACH_IMX_GPIO_H
+
+#include <io.h>
+
+/*
+ * i.MX lowlevel gpio functions. Only for use with lowlevel code. Use
+ * regular gpio functions outside of lowlevel code!
+ */
+
+static inline void imx_gpio_direction_output(void __iomem *gdir, void __iomem *dr,
+		int gpio, int value)
+{
+	uint32_t val;
+
+	val = readl(gdir);
+	val |= 1 << gpio;
+	writel(val, gdir);
+
+	val = readl(dr);
+	if (value)
+		val |= 1 << gpio;
+	else
+		val &= ~(1 << gpio);
+
+	writel(val, dr);
+}
+
+static inline void imx1_gpio_direction_output(void *base, int gpio, int value)
+{
+	imx_gpio_direction_output(base + 0x0, base + 0x1c, gpio, value);
+}
+
+#define imx21_gpio_direction_output(base, gpio, value) imx1_gpio_direction_output(base, gpio,value)
+#define imx27_gpio_direction_output(base, gpio, value) imx1_gpio_direction_output(base, gpio,value)
+
+static inline void imx31_gpio_direction_output(void *base, int gpio, int value)
+{
+	imx_gpio_direction_output(base + 0x4, base + 0x0, gpio, value);
+}
+
+#define imx25_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
+#define imx35_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
+#define imx51_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
+#define imx53_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
+#define imx6_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
+
+#endif /* __MACH_IMX_GPIO_H */
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

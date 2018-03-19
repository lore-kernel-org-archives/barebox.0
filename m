Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqz5-0005hu-72
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 09:21:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1exqys-0007GA-Fi
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 10:21:26 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.90_1)
 (envelope-from <mgr@pengutronix.de>) id 1exqys-0006PD-80
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 10:21:26 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 19 Mar 2018 10:21:19 +0100
Message-Id: <20180319092120.11773-2-m.grzeschik@pengutronix.de>
In-Reply-To: <20180319092120.11773-1-m.grzeschik@pengutronix.de>
References: <20180319092120.11773-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v2 1/2] ARM: i.MX: Add lowlevel gpio input functions
To: barebox@lists.infradead.org

This adds the function to set direction input and read the values
in the header file for setting i.MX gpios early.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx-gpio.h | 46 +++++++++++++++++++++++++++----
 1 file changed, 41 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-gpio.h b/arch/arm/mach-imx/include/mach/imx-gpio.h
index 5e673beef9..891c33a3f4 100644
--- a/arch/arm/mach-imx/include/mach/imx-gpio.h
+++ b/arch/arm/mach-imx/include/mach/imx-gpio.h
@@ -8,15 +8,21 @@
  * regular gpio functions outside of lowlevel code!
  */
 
-static inline void imx_gpio_direction_output(void __iomem *gdir, void __iomem *dr,
-		int gpio, int value)
+static inline void imx_gpio_direction(void __iomem *gdir, void __iomem *dr,
+		int gpio, int out, int value)
 {
 	uint32_t val;
 
 	val = readl(gdir);
-	val |= 1 << gpio;
+	if (out)
+		val |= 1 << gpio;
+	else
+		val &= ~(1 << gpio);
 	writel(val, gdir);
 
+	if (!out)
+		return;
+
 	val = readl(dr);
 	if (value)
 		val |= 1 << gpio;
@@ -28,7 +34,7 @@ static inline void imx_gpio_direction_output(void __iomem *gdir, void __iomem *d
 
 static inline void imx1_gpio_direction_output(void *base, int gpio, int value)
 {
-	imx_gpio_direction_output(base + 0x0, base + 0x1c, gpio, value);
+	imx_gpio_direction(base + 0x0, base + 0x1c, gpio, 1, value);
 }
 
 #define imx21_gpio_direction_output(base, gpio, value) imx1_gpio_direction_output(base, gpio,value)
@@ -36,7 +42,7 @@ static inline void imx1_gpio_direction_output(void *base, int gpio, int value)
 
 static inline void imx31_gpio_direction_output(void *base, int gpio, int value)
 {
-	imx_gpio_direction_output(base + 0x4, base + 0x0, gpio, value);
+	imx_gpio_direction(base + 0x4, base + 0x0, gpio, 1, value);
 }
 
 #define imx25_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
@@ -45,4 +51,34 @@ static inline void imx31_gpio_direction_output(void *base, int gpio, int value)
 #define imx53_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
 #define imx6_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
 
+static inline void imx1_gpio_direction_input(void *base, int gpio, int value)
+{
+	imx_gpio_direction(base + 0x0, base + 0x1c, gpio, 0, 0);
+}
+
+#define imx21_gpio_direction_input(base, gpio, value) imx1_gpio_direction_input(base, gpio)
+#define imx27_gpio_direction_input(base, gpio, value) imx1_gpio_direction_input(base, gpio)
+
+static inline void imx31_gpio_direction_input(void *base, int gpio)
+{
+	imx_gpio_direction(base + 0x4, base + 0x0, gpio, 0, 0);
+}
+
+#define imx25_gpio_direction_input(base, gpio, value) imx31_gpio_direction_input(base, gpio)
+#define imx35_gpio_direction_input(base, gpio, value) imx31_gpio_direction_input(base, gpio)
+#define imx51_gpio_direction_input(base, gpio, value) imx31_gpio_direction_input(base, gpio)
+#define imx53_gpio_direction_input(base, gpio, value) imx31_gpio_direction_input(base, gpio)
+#define imx6_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
+
+#define imx1_gpio_val(base, gpio) readl(base + 0x1c) & (1 << gpio) ? 1 : 0
+#define imx21_gpio_val(base, gpio) imx1_gpio_val(base, gpio)
+#define imx27_gpio_val(base, gpio) imx1_gpio_val(base, gpio)
+
+#define imx31_gpio_val(base, gpio) readl(base) & (1 << gpio) ? 1 : 0
+#define imx25_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
+#define imx35_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
+#define imx51_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
+#define imx53_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
+#define imx6_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
+
 #endif /* __MACH_IMX_GPIO_H */
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

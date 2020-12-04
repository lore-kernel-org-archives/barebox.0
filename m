Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klF4b-0004ZD-Se
 for barebox@lists.infradead.org; Fri, 04 Dec 2020 17:40:50 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Dec 2020 18:40:44 +0100
Message-Id: <20201204174045.27340-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ARM: i.MX: add low level gpio helpers for i.MX8M
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Like many GPIO controllers of times past, the i.MX8M is also compatible
with the i.MX31 GPIO controller. Add GPIO helpers for low-level code to
use.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx-gpio.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/imx-gpio.h b/arch/arm/mach-imx/include/mach/imx-gpio.h
index 891c33a3f411..0cfd16f4fa43 100644
--- a/arch/arm/mach-imx/include/mach/imx-gpio.h
+++ b/arch/arm/mach-imx/include/mach/imx-gpio.h
@@ -50,6 +50,7 @@ static inline void imx31_gpio_direction_output(void *base, int gpio, int value)
 #define imx51_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
 #define imx53_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
 #define imx6_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
+#define imx8m_gpio_direction_output(base, gpio, value) imx31_gpio_direction_output(base, gpio,value)
 
 static inline void imx1_gpio_direction_input(void *base, int gpio, int value)
 {
@@ -69,6 +70,7 @@ static inline void imx31_gpio_direction_input(void *base, int gpio)
 #define imx51_gpio_direction_input(base, gpio, value) imx31_gpio_direction_input(base, gpio)
 #define imx53_gpio_direction_input(base, gpio, value) imx31_gpio_direction_input(base, gpio)
 #define imx6_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
+#define imx8m_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
 
 #define imx1_gpio_val(base, gpio) readl(base + 0x1c) & (1 << gpio) ? 1 : 0
 #define imx21_gpio_val(base, gpio) imx1_gpio_val(base, gpio)
@@ -80,5 +82,6 @@ static inline void imx31_gpio_direction_input(void *base, int gpio)
 #define imx51_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
 #define imx53_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
 #define imx6_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
+#define imx8m_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
 
 #endif /* __MACH_IMX_GPIO_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

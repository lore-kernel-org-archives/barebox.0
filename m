Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj6-0005rL-Uq
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:01 +0200
Message-Id: <1287492930-15716-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/42] imx gpio: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/gpio.c |   15 ++++++++-------
 1 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/gpio.c b/arch/arm/mach-imx/gpio.c
index c6a59a6..0a3e046 100644
--- a/arch/arm/mach-imx/gpio.c
+++ b/arch/arm/mach-imx/gpio.c
@@ -27,6 +27,7 @@
 #include <errno.h>
 #include <asm/io.h>
 #include <mach/imx-regs.h>
+#include <mach/gpio.h>
 
 #if defined CONFIG_ARCH_IMX1 || defined CONFIG_ARCH_IMX21 || defined CONFIG_ARCH_IMX27
 #define GPIO_DR		0x1c
@@ -47,20 +48,20 @@
 #define GPIO_ISR	0x18
 #endif
 
-extern void *imx_gpio_base[];
+extern void __iomem *imx_gpio_base[];
 extern int imx_gpio_count;
 
-static void *gpio_get_base(unsigned gpio)
+static void __iomem *gpio_get_base(unsigned gpio)
 {
 	if (gpio >= imx_gpio_count)
-		return 0;
+		return NULL;
 
 	return imx_gpio_base[gpio / 32];
 }
 
 void gpio_set_value(unsigned gpio, int value)
 {
-	void *base = gpio_get_base(gpio);
+	void __iomem *base = gpio_get_base(gpio);
 	int shift = gpio % 32;
 	u32 val;
 
@@ -79,7 +80,7 @@ void gpio_set_value(unsigned gpio, int value)
 
 int gpio_direction_input(unsigned gpio)
 {
-	void *base = gpio_get_base(gpio);
+	void __iomem *base = gpio_get_base(gpio);
 	int shift = gpio % 32;
 	u32 val;
 
@@ -96,7 +97,7 @@ int gpio_direction_input(unsigned gpio)
 
 int gpio_direction_output(unsigned gpio, int value)
 {
-	void *base = gpio_get_base(gpio);
+	void __iomem *base = gpio_get_base(gpio);
 	int shift = gpio % 32;
 	u32 val;
 
@@ -114,7 +115,7 @@ int gpio_direction_output(unsigned gpio, int value)
 
 int gpio_get_value(unsigned gpio)
 {
-	void *base = gpio_get_base(gpio);
+	void __iomem *base = gpio_get_base(gpio);
 	int shift = gpio % 32;
 	u32 val;
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

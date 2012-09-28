Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THa7x-0004Qe-0c
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 12:57:10 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Fri, 28 Sep 2012 14:57:01 +0200
Message-Id: <1348837021-18424-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] gpio: reduce verbosity while probing
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-imx/gpio.c  |    2 +-
 arch/arm/mach-omap/gpio.c |    2 +-
 drivers/gpio/gpio-stmpe.c |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/gpio.c b/arch/arm/mach-imx/gpio.c
index e661cc1..268e598 100644
--- a/arch/arm/mach-imx/gpio.c
+++ b/arch/arm/mach-imx/gpio.c
@@ -145,7 +145,7 @@ static int imx_gpio_probe(struct device_d *dev)
 	imxgpio->regs = regs;
 	gpiochip_add(&imxgpio->chip);
 
-	dev_info(dev, "probed gpiochip%d with base %d\n", dev->id, imxgpio->chip.base);
+	dev_dbg(dev, "probed gpiochip%d with base %d\n", dev->id, imxgpio->chip.base);
 
 	return 0;
 }
diff --git a/arch/arm/mach-omap/gpio.c b/arch/arm/mach-omap/gpio.c
index 422831b..ff49708 100644
--- a/arch/arm/mach-omap/gpio.c
+++ b/arch/arm/mach-omap/gpio.c
@@ -138,7 +138,7 @@ static int omap_gpio_probe(struct device_d *dev)
 	omapgpio->chip.dev = dev;
 	gpiochip_add(&omapgpio->chip);
 
-	dev_info(dev, "probed gpiochip%d with base %d\n",
+	dev_dbg(dev, "probed gpiochip%d with base %d\n",
 				dev->id, omapgpio->chip.base);
 
 	return 0;
diff --git a/drivers/gpio/gpio-stmpe.c b/drivers/gpio/gpio-stmpe.c
index fa3b041..1181351 100644
--- a/drivers/gpio/gpio-stmpe.c
+++ b/drivers/gpio/gpio-stmpe.c
@@ -145,7 +145,7 @@ static int stmpe_gpio_probe(struct device_d *dev)
 		return ret;
 	}
 
-	dev_info(dev, "probed stmpe gpiochip%d with base %d\n", dev->id, stmpegpio->chip.base);
+	dev_dbg(dev, "probed stmpe gpiochip%d with base %d\n", dev->id, stmpegpio->chip.base);
 	return 0;
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

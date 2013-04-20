Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp37.i.mail.ru ([94.100.177.97])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UTPGi-0001yr-7M
 for barebox@lists.infradead.org; Sat, 20 Apr 2013 04:19:24 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 20 Apr 2013 08:18:52 +0400
Message-Id: <1366431532-29121-6-git-send-email-shc_work@mail.ru>
In-Reply-To: <1366431532-29121-1-git-send-email-shc_work@mail.ru>
References: <1366431532-29121-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 5/5] Introduce coredevice_platform_driver() macro and use it
 for GPIO drivers
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/gpio/gpio-bcm2835.c  | 7 +------
 drivers/gpio/gpio-clps711x.c | 7 +------
 drivers/gpio/gpio-generic.c  | 8 +-------
 drivers/gpio/gpio-imx.c      | 7 +------
 drivers/gpio/gpio-stmpe.c    | 7 +------
 include/driver.h             | 6 ++++--
 6 files changed, 9 insertions(+), 33 deletions(-)

diff --git a/drivers/gpio/gpio-bcm2835.c b/drivers/gpio/gpio-bcm2835.c
index cec15c9..9df8a1a 100644
--- a/drivers/gpio/gpio-bcm2835.c
+++ b/drivers/gpio/gpio-bcm2835.c
@@ -150,9 +150,4 @@ static struct driver_d bcm2835_gpio_driver = {
 	.probe = bcm2835_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(bcm2835_gpio_dt_ids),
 };
-
-static int bcm2835_gpio_add(void)
-{
-	return platform_driver_register(&bcm2835_gpio_driver);
-}
-coredevice_initcall(bcm2835_gpio_add);
+coredevice_platform_driver(bcm2835_gpio_driver);
diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index feead51..778a8d1 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -62,9 +62,4 @@ static struct driver_d clps711x_gpio_driver = {
 	.name	= "clps711x-gpio",
 	.probe	= clps711x_gpio_probe,
 };
-
-static __init int clps711x_gpio_register(void)
-{
-	return platform_driver_register(&clps711x_gpio_driver);
-}
-coredevice_initcall(clps711x_gpio_register);
+coredevice_platform_driver(clps711x_gpio_driver);
diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index a2fc400..0f49712 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -414,13 +414,7 @@ static struct driver_d bgpio_driver = {
 	.probe		= bgpio_dev_probe,
 	.remove		= bgpio_dev_remove,
 };
-
-static int bgpio_register(void)
-{
-	return platform_driver_register(&bgpio_driver);
-}
-coredevice_initcall(bgpio_register);
-
+coredevice_platform_driver(bgpio_driver);
 #endif
 
 MODULE_DESCRIPTION("Driver for basic memory-mapped GPIO controllers");
diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index f56346b..17261e4 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -124,9 +124,4 @@ static struct driver_d imx_gpio_driver = {
 	.of_compatible	= DRV_OF_COMPAT(imx_gpio_dt_ids),
 	.id_table	= imx_gpio_ids,
 };
-
-static int imx_gpio_add(void)
-{
-	return platform_driver_register(&imx_gpio_driver);
-}
-coredevice_initcall(imx_gpio_add);
+coredevice_platform_driver(imx_gpio_driver);
diff --git a/drivers/gpio/gpio-stmpe.c b/drivers/gpio/gpio-stmpe.c
index d7e6404..d0319a6 100644
--- a/drivers/gpio/gpio-stmpe.c
+++ b/drivers/gpio/gpio-stmpe.c
@@ -153,9 +153,4 @@ static struct driver_d stmpe_gpio_driver = {
 	.name = "stmpe-gpio",
 	.probe = stmpe_gpio_probe,
 };
-
-static int stmpe_gpio_add(void)
-{
-	return platform_driver_register(&stmpe_gpio_driver);
-}
-coredevice_initcall(stmpe_gpio_add);
+coredevice_platform_driver(stmpe_gpio_driver);
diff --git a/include/driver.h b/include/driver.h
index 716f792..5e8561f 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -406,10 +406,12 @@ int platform_driver_register(struct driver_d *drv);
 	}						\
 	level##_initcall(drv##_register)
 
-#define device_platform_driver(drv)	\
-	register_driver_macro(device,platform,drv)
 #define console_platform_driver(drv)	\
 	register_driver_macro(console,platform,drv)
+#define coredevice_platform_driver(drv)	\
+	register_driver_macro(coredevice,platform,drv)
+#define device_platform_driver(drv)	\
+	register_driver_macro(device,platform,drv)
 
 int platform_device_register(struct device_d *new_device);
 
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

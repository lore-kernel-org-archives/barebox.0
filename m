Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD5PP-0006P5-KL
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 10:20:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>) id 1gD5PA-0006Jo-9E
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 12:19:48 +0200
Received: from mfe by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <mfe@pengutronix.de>) id 1gD5PA-00048d-1b
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 12:19:48 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 18 Oct 2018 12:19:31 +0200
Message-Id: <20181018101931.11417-1-m.felsch@pengutronix.de>
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
Subject: [PATCH] i2c: introduce device_i2c_driver() macro
To: barebox@lists.infradead.org

Add macro and dependency to avoid boilerplate code. Since now simple
i2c drivers only have to include the i2c.h header and call the
device_i2c_driver() macro to register a i2c device driver.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/aiodev/lm75.c               | 10 +---------
 drivers/eeprom/at24.c               |  9 +--------
 drivers/gpio/gpio-pca953x.c         |  8 +-------
 drivers/gpio/gpio-sx150x.c          |  8 +-------
 drivers/i2c/muxes/i2c-mux-pca954x.c |  8 +-------
 drivers/input/qt1070.c              |  9 +--------
 drivers/mfd/act8846.c               | 10 +---------
 drivers/mfd/da9053.c                | 10 +---------
 drivers/mfd/da9063.c                |  9 +--------
 drivers/mfd/lp3972.c                | 10 +---------
 drivers/mfd/mc34704.c               |  9 +--------
 drivers/mfd/mc9sdz60.c              | 10 +---------
 drivers/mfd/stmpe-i2c.c             | 10 +---------
 drivers/mfd/twl4030.c               | 10 +---------
 drivers/mfd/twl6030.c               | 10 +---------
 drivers/rtc/rtc-abracon.c           |  8 +-------
 drivers/rtc/rtc-ds1307.c            |  8 +-------
 drivers/video/mtl017.c              | 10 +---------
 drivers/video/ssd1307fb.c           | 10 +---------
 drivers/video/tc358767.c            |  8 +-------
 include/i2c/i2c.h                   |  4 ++++
 21 files changed, 24 insertions(+), 164 deletions(-)

diff --git a/drivers/aiodev/lm75.c b/drivers/aiodev/lm75.c
index b4da5a0f75..af54227e40 100644
--- a/drivers/aiodev/lm75.c
+++ b/drivers/aiodev/lm75.c
@@ -19,7 +19,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <driver.h>
 #include <xfuncs.h>
 #include <i2c/i2c.h>
@@ -252,11 +251,4 @@ static struct driver_d lm75_driver = {
 	.probe = lm75_probe,
 	.id_table = lm75_ids,
 };
-
-static int lm75_init(void)
-{
-	i2c_driver_register(&lm75_driver);
-	return 0;
-}
-
-device_initcall(lm75_init);
+device_i2c_driver(lm75_driver);
diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 4fae3a12e4..e79031a2d3 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -11,7 +11,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <malloc.h>
 #include <clock.h>
 #include <driver.h>
@@ -529,10 +528,4 @@ static struct driver_d at24_driver = {
 	.probe		= at24_probe,
 	.id_table	= at24_ids,
 };
-
-static int at24_init(void)
-{
-	i2c_driver_register(&at24_driver);
-	return 0;
-}
-device_initcall(at24_init);
+device_i2c_driver(at24_driver);
diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
index 3c952301a1..55254c1c40 100644
--- a/drivers/gpio/gpio-pca953x.c
+++ b/drivers/gpio/gpio-pca953x.c
@@ -14,7 +14,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <malloc.h>
 #include <driver.h>
 #include <xfuncs.h>
@@ -473,9 +472,4 @@ static struct driver_d pca953x_driver = {
 	.probe		= pca953x_probe,
 	.id_table	= pca953x_id,
 };
-
-static int __init pca953x_init(void)
-{
-	return i2c_driver_register(&pca953x_driver);
-}
-device_initcall(pca953x_init);
+device_i2c_driver(pca953x_driver);
diff --git a/drivers/gpio/gpio-sx150x.c b/drivers/gpio/gpio-sx150x.c
index 7b8cfb5042..76535187b0 100644
--- a/drivers/gpio/gpio-sx150x.c
+++ b/drivers/gpio/gpio-sx150x.c
@@ -17,7 +17,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <malloc.h>
 #include <driver.h>
 #include <xfuncs.h>
@@ -266,9 +265,4 @@ static struct driver_d sx150x_driver = {
 	.probe = sx150x_probe,
 	.of_compatible = sx150x_dt_ids,
 };
-
-static int __init sx150x_init(void)
-{
-	return i2c_driver_register(&sx150x_driver);
-}
-device_initcall(sx150x_init);
+device_i2c_driver(sx150x_driver);
diff --git a/drivers/i2c/muxes/i2c-mux-pca954x.c b/drivers/i2c/muxes/i2c-mux-pca954x.c
index 395254cdca..d397e803b1 100644
--- a/drivers/i2c/muxes/i2c-mux-pca954x.c
+++ b/drivers/i2c/muxes/i2c-mux-pca954x.c
@@ -44,7 +44,6 @@
 #include <i2c/i2c.h>
 #include <i2c/i2c-algo-bit.h>
 #include <i2c/i2c-mux.h>
-#include <init.h>
 #include <gpio.h>
 #include <of_gpio.h>
 
@@ -248,12 +247,7 @@ static struct driver_d pca954x_driver = {
 	.probe		= pca954x_probe,
 	.id_table	= pca954x_id,
 };
-
-static int __init pca954x_init(void)
-{
-	return i2c_driver_register(&pca954x_driver);
-}
-device_initcall(pca954x_init);
+device_i2c_driver(pca954x_driver);
 
 MODULE_AUTHOR("Rodolfo Giometti <giometti@linux.it>");
 MODULE_DESCRIPTION("PCA954x I2C mux/switch driver");
diff --git a/drivers/input/qt1070.c b/drivers/input/qt1070.c
index d81a8fa401..59acee5c39 100644
--- a/drivers/input/qt1070.c
+++ b/drivers/input/qt1070.c
@@ -6,7 +6,6 @@
 
 #include <common.h>
 #include <errno.h>
-#include <init.h>
 #include <clock.h>
 #include <poller.h>
 #include <kfifo.h>
@@ -284,10 +283,4 @@ static struct driver_d qt1070_driver = {
 	.name	= "qt1070",
 	.probe	= qt1070_probe,
 };
-
-static int qt1070_init(void)
-{
-	i2c_driver_register(&qt1070_driver);
-	return 0;
-}
-device_initcall(qt1070_init);
+device_i2c_driver(qt1070_driver);
diff --git a/drivers/mfd/act8846.c b/drivers/mfd/act8846.c
index dfca0498b1..53ab70f5cc 100644
--- a/drivers/mfd/act8846.c
+++ b/drivers/mfd/act8846.c
@@ -18,7 +18,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <driver.h>
 #include <xfuncs.h>
 #include <errno.h>
@@ -144,11 +143,4 @@ static struct driver_d act8846_driver = {
 	.name  = DRIVERNAME,
 	.probe = act8846_probe,
 };
-
-static int act8846_init(void)
-{
-	i2c_driver_register(&act8846_driver);
-	return 0;
-}
-
-device_initcall(act8846_init);
+device_i2c_driver(act8846_driver);
diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index c706082a8b..b156bf113f 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -15,7 +15,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <driver.h>
 #include <xfuncs.h>
 #include <errno.h>
@@ -310,11 +309,4 @@ static struct driver_d da9053_driver = {
 	.probe = da9053_probe,
 	.of_compatible = DRV_OF_COMPAT(da9053_dt_ids),
 };
-
-static int da9053_init(void)
-{
-	i2c_driver_register(&da9053_driver);
-	return 0;
-}
-
-device_initcall(da9053_init);
+device_i2c_driver(da9053_driver);
diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index 0c27bf495f..b6114a614b 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -16,7 +16,6 @@
 #include <common.h>
 #include <driver.h>
 #include <restart.h>
-#include <init.h>
 #include <i2c/i2c.h>
 #include <malloc.h>
 #include <notifier.h>
@@ -297,10 +296,4 @@ static struct driver_d da9063_driver = {
 	.id_table = da9063_id,
 	.of_compatible  = DRV_OF_COMPAT(da906x_dt_ids),
 };
-
-static int da9063_init(void)
-{
-	return i2c_driver_register(&da9063_driver);
-}
-
-device_initcall(da9063_init);
+device_i2c_driver(da9063_driver);
diff --git a/drivers/mfd/lp3972.c b/drivers/mfd/lp3972.c
index 054713b942..42b28070ad 100644
--- a/drivers/mfd/lp3972.c
+++ b/drivers/mfd/lp3972.c
@@ -17,7 +17,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <driver.h>
 #include <xfuncs.h>
 #include <errno.h>
@@ -96,11 +95,4 @@ static struct driver_d lp_driver = {
 	.name  = DRIVERNAME,
 	.probe = lp_probe,
 };
-
-static int lp_init(void)
-{
-	i2c_driver_register(&lp_driver);
-	return 0;
-}
-
-device_initcall(lp_init);
+device_i2c_driver(lp_driver);
diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
index bfda169aaa..f15f37ef6e 100644
--- a/drivers/mfd/mc34704.c
+++ b/drivers/mfd/mc34704.c
@@ -17,7 +17,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <driver.h>
 #include <xfuncs.h>
 #include <errno.h>
@@ -133,10 +132,4 @@ static struct driver_d mc34704_driver = {
 	.probe = mc34704_probe,
 	.of_compatible = DRV_OF_COMPAT(mc34704_dt_ids),
 };
-
-static int mc34704_init(void)
-{
-	i2c_driver_register(&mc34704_driver);
-	return 0;
-}
-device_initcall(mc34704_init);
+device_i2c_driver(mc34704_driver);
diff --git a/drivers/mfd/mc9sdz60.c b/drivers/mfd/mc9sdz60.c
index 9993efc5de..2cb38d9784 100644
--- a/drivers/mfd/mc9sdz60.c
+++ b/drivers/mfd/mc9sdz60.c
@@ -16,7 +16,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <driver.h>
 #include <xfuncs.h>
 #include <errno.h>
@@ -139,11 +138,4 @@ static struct driver_d mc_driver = {
 	.name  = DRIVERNAME,
 	.probe = mc_probe,
 };
-
-static int mc_init(void)
-{
-        i2c_driver_register(&mc_driver);
-        return 0;
-}
-
-device_initcall(mc_init);
+device_i2c_driver(mc_driver);
diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index 51c56bbf56..084e4b43bb 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -15,7 +15,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <driver.h>
 #include <xfuncs.h>
 #include <errno.h>
@@ -173,11 +172,4 @@ static struct driver_d stmpe_driver = {
 	.probe = stmpe_probe,
 	.id_table = stmpe_i2c_id,
 };
-
-static int stmpe_init(void)
-{
-        i2c_driver_register(&stmpe_driver);
-        return 0;
-}
-
-device_initcall(stmpe_init);
+device_i2c_driver(stmpe_driver);
diff --git a/drivers/mfd/twl4030.c b/drivers/mfd/twl4030.c
index 3b4c661a87..cf33efbd89 100644
--- a/drivers/mfd/twl4030.c
+++ b/drivers/mfd/twl4030.c
@@ -6,7 +6,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <driver.h>
 #include <xfuncs.h>
 #include <errno.h>
@@ -50,11 +49,4 @@ static struct driver_d twl_driver = {
 	.name  = DRIVERNAME,
 	.probe = twl_probe,
 };
-
-static int twl_init(void)
-{
-	i2c_driver_register(&twl_driver);
-	return 0;
-}
-
-device_initcall(twl_init);
+device_i2c_driver(twl_driver);
diff --git a/drivers/mfd/twl6030.c b/drivers/mfd/twl6030.c
index 0645d3c4db..0a244de077 100644
--- a/drivers/mfd/twl6030.c
+++ b/drivers/mfd/twl6030.c
@@ -5,7 +5,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <driver.h>
 #include <xfuncs.h>
 #include <errno.h>
@@ -67,11 +66,4 @@ static struct driver_d twl_driver = {
 	.name  = DRIVERNAME,
 	.probe = twl_probe,
 };
-
-static int twl_init(void)
-{
-	i2c_driver_register(&twl_driver);
-	return 0;
-}
-
-device_initcall(twl_init);
+device_i2c_driver(twl_driver);
diff --git a/drivers/rtc/rtc-abracon.c b/drivers/rtc/rtc-abracon.c
index 02de2f1063..571909bf71 100644
--- a/drivers/rtc/rtc-abracon.c
+++ b/drivers/rtc/rtc-abracon.c
@@ -10,7 +10,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <driver.h>
 #include <xfuncs.h>
 #include <errno.h>
@@ -118,9 +117,4 @@ static struct driver_d abracon_driver = {
 	.probe		= abracon_probe,
 	.id_table	= abracon_id,
 };
-
-static int __init abracon_init(void)
-{
-	return i2c_driver_register(&abracon_driver);
-}
-device_initcall(abracon_init);
+device_i2c_driver(abracon_driver);
diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index 73d88ba6f2..78419811bd 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -14,7 +14,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <driver.h>
 #include <xfuncs.h>
 #include <malloc.h>
@@ -489,9 +488,4 @@ static struct driver_d ds1307_driver = {
 	.probe		= ds1307_probe,
 	.id_table	= ds1307_id,
 };
-
-static int __init ds1307_init(void)
-{
-	return i2c_driver_register(&ds1307_driver);
-}
-device_initcall(ds1307_init);
+device_i2c_driver(ds1307_driver);
diff --git a/drivers/video/mtl017.c b/drivers/video/mtl017.c
index 1a1f686223..085ea110ba 100644
--- a/drivers/video/mtl017.c
+++ b/drivers/video/mtl017.c
@@ -16,7 +16,6 @@
  *
  */
 #include <common.h>
-#include <init.h>
 #include <driver.h>
 #include <xfuncs.h>
 #include <errno.h>
@@ -270,11 +269,4 @@ static struct driver_d twl_driver = {
 	.name  = "mtl017",
 	.probe = mtl017_probe,
 };
-
-static int mtl017_init(void)
-{
-	i2c_driver_register(&twl_driver);
-	return 0;
-}
-
-device_initcall(mtl017_init);
+device_i2c_driver(twl_driver);
diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index 54e02e7220..d68f0c5056 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -18,7 +18,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <fb.h>
 #include <i2c/i2c.h>
 #include <of_device.h>
@@ -581,11 +580,4 @@ static struct driver_d ssd1307fb_driver = {
 	.probe = ssd1307fb_probe,
 	.of_compatible = DRV_OF_COMPAT(ssd1307fb_of_match),
 };
-
-static int ssd1307_init(void)
-{
-	i2c_driver_register(&ssd1307fb_driver);
-	return 0;
-}
-
-device_initcall(ssd1307_init);
+device_i2c_driver(ssd1307fb_driver);
diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index 125e8236c1..e64dde1ddf 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -20,7 +20,6 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <driver.h>
 #include <malloc.h>
 #include <errno.h>
@@ -1434,9 +1433,4 @@ static struct driver_d tc_driver = {
 	.name		= "tc358767",
 	.probe		= tc_probe,
 };
-
-static int tc_init(void)
-{
-	return i2c_driver_register(&tc_driver);
-}
-device_initcall(tc_init);
+device_i2c_driver(tc_driver);
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index cf784ca1f1..17b507ca22 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -17,6 +17,7 @@
 #define I2C_I2C_H
 
 #include <driver.h>
+#include <init.h>
 #include <linux/types.h>
 
 struct i2c_adapter;
@@ -297,4 +298,7 @@ static inline int i2c_driver_register(struct driver_d *drv)
 	return register_driver(drv);
 }
 
+#define device_i2c_driver(drv) \
+	register_driver_macro(device, i2c, drv)
+
 #endif /* I2C_I2C_H */
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

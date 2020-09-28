Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvQg-0008Bs-Ej
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:51:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQf-0000Z4-FA
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:05 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQe-0000JR-IV
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:04 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 28 Sep 2020 17:50:26 +0200
Message-Id: <20200928155041.32649-4-m.felsch@pengutronix.de>
In-Reply-To: <20200928155041.32649-1-m.felsch@pengutronix.de>
References: <20200928155041.32649-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 03/18] drivers: gpio: treewide: [cosmetic] use
 register_driver_macros
To: barebox@lists.infradead.org

Use the existing macros to register the drivers. No functional changes
except for the gpio-mxs and gpio-imx driver. Now they do not ignore the
return values anymore.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpio/gpio-ath79.c          | 7 +------
 drivers/gpio/gpio-davinci.c        | 7 +------
 drivers/gpio/gpio-digic.c          | 7 +------
 drivers/gpio/gpio-dw.c             | 7 +------
 drivers/gpio/gpio-generic.c        | 7 +------
 drivers/gpio/gpio-imx.c            | 8 +-------
 drivers/gpio/gpio-jz4740.c         | 7 +------
 drivers/gpio/gpio-malta-fpga-i2c.c | 7 +------
 drivers/gpio/gpio-mpc8xxx.c        | 7 +------
 drivers/gpio/gpio-mxs.c            | 8 +-------
 drivers/gpio/gpio-omap.c           | 7 +------
 drivers/gpio/gpio-stmpe.c          | 7 +------
 drivers/gpio/gpio-tegra.c          | 7 +------
 drivers/gpio/gpio-vf610.c          | 7 +------
 14 files changed, 14 insertions(+), 86 deletions(-)

diff --git a/drivers/gpio/gpio-ath79.c b/drivers/gpio/gpio-ath79.c
index d08d743b54..a33d7d290e 100644
--- a/drivers/gpio/gpio-ath79.c
+++ b/drivers/gpio/gpio-ath79.c
@@ -150,9 +150,4 @@ static struct driver_d ath79_gpio_driver = {
 	.probe = ath79_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(ath79_gpio_of_match),
 };
-
-static int ath79_gpio_init(void)
-{
-	return platform_driver_register(&ath79_gpio_driver);
-}
-coredevice_initcall(ath79_gpio_init);
+coredevice_platform_driver(ath79_gpio_driver);
diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
index 7c060a09b1..bffe385860 100644
--- a/drivers/gpio/gpio-davinci.c
+++ b/drivers/gpio/gpio-davinci.c
@@ -205,9 +205,4 @@ static struct driver_d davinci_gpio_driver = {
 	.probe		= davinci_gpio_probe,
 	.of_compatible	= DRV_OF_COMPAT(davinci_gpio_ids),
 };
-
-static int davinci_gpio_drv_reg(void)
-{
-	return platform_driver_register(&davinci_gpio_driver);
-}
-coredevice_initcall(davinci_gpio_drv_reg);
+coredevice_platform_driver(davinci_gpio_driver);
diff --git a/drivers/gpio/gpio-digic.c b/drivers/gpio/gpio-digic.c
index f7a68d09fc..4cf45397ce 100644
--- a/drivers/gpio/gpio-digic.c
+++ b/drivers/gpio/gpio-digic.c
@@ -175,9 +175,4 @@ static struct driver_d digic_gpio_driver = {
 	.probe = digic_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(digic_gpio_dt_ids),
 };
-
-static int digic_gpio_init(void)
-{
-	return platform_driver_register(&digic_gpio_driver);
-}
-coredevice_initcall(digic_gpio_init);
+coredevice_platform_driver(digic_gpio_driver);
diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index b81e6a75c5..dd7efd2942 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -194,9 +194,4 @@ static struct driver_d dwgpio_driver = {
 	.probe = dw_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(dwgpio_match),
 };
-
-static int __init dwgpio_init(void)
-{
-	return platform_driver_register(&dwgpio_driver);
-}
-postcore_initcall(dwgpio_init);
+postcore_platform_driver(dwgpio_driver);
diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index 2e0dad9974..ad4e6859cb 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -423,12 +423,7 @@ static struct driver_d bgpio_driver = {
 	.probe		= bgpio_dev_probe,
 	.remove		= bgpio_dev_remove,
 };
-
-static int bgpio_register(void)
-{
-	return platform_driver_register(&bgpio_driver);
-}
-coredevice_initcall(bgpio_register);
+coredevice_platform_driver(bgpio_driver);
 
 #endif
 
diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index 2827e11e73..6f913377f0 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -216,10 +216,4 @@ static struct driver_d imx_gpio_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx_gpio_dt_ids),
 	.id_table = imx_gpio_ids,
 };
-
-static int imx_gpio_add(void)
-{
-	platform_driver_register(&imx_gpio_driver);
-	return 0;
-}
-postcore_initcall(imx_gpio_add);
+postcore_platform_driver(imx_gpio_driver);
diff --git a/drivers/gpio/gpio-jz4740.c b/drivers/gpio/gpio-jz4740.c
index 87e0716b06..bd126c83c1 100644
--- a/drivers/gpio/gpio-jz4740.c
+++ b/drivers/gpio/gpio-jz4740.c
@@ -135,9 +135,4 @@ static struct driver_d jz4740_gpio_driver = {
 	.probe = jz4740_gpio_probe,
 	.of_compatible	= DRV_OF_COMPAT(jz4740_gpio_dt_ids),
 };
-
-static int jz4740_gpio_init(void)
-{
-	return platform_driver_register(&jz4740_gpio_driver);
-}
-coredevice_initcall(jz4740_gpio_init);
+coredevice_platform_driver(jz4740_gpio_driver);
diff --git a/drivers/gpio/gpio-malta-fpga-i2c.c b/drivers/gpio/gpio-malta-fpga-i2c.c
index 9142248571..7afa40460f 100644
--- a/drivers/gpio/gpio-malta-fpga-i2c.c
+++ b/drivers/gpio/gpio-malta-fpga-i2c.c
@@ -179,9 +179,4 @@ static struct driver_d malta_i2c_gpio_driver = {
 	.probe = malta_i2c_gpio_probe,
 	.of_compatible	= DRV_OF_COMPAT(malta_i2c_gpio_dt_ids),
 };
-
-static int malta_i2c_gpio_driver_init(void)
-{
-	return platform_driver_register(&malta_i2c_gpio_driver);
-}
-coredevice_initcall(malta_i2c_gpio_driver_init);
+coredevice_platform_driver(malta_i2c_gpio_driver);
diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
index 979f92ad30..a5a383bfd6 100644
--- a/drivers/gpio/gpio-mpc8xxx.c
+++ b/drivers/gpio/gpio-mpc8xxx.c
@@ -114,9 +114,4 @@ static struct driver_d mpc8xxx_driver = {
 	.probe		= mpc8xxx_probe,
 	.of_compatible  = DRV_OF_COMPAT(mpc8xxx_gpio_ids),
 };
-
-static int __init mpc8xxx_init(void)
-{
-	return platform_driver_register(&mpc8xxx_driver);
-}
-postcore_initcall(mpc8xxx_init);
+postcore_platform_driver(mpc8xxx_driver);
diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
index ef78873ad2..43a1379077 100644
--- a/drivers/gpio/gpio-mxs.c
+++ b/drivers/gpio/gpio-mxs.c
@@ -177,10 +177,4 @@ static struct driver_d mxs_gpio_driver = {
 	.of_compatible = DRV_OF_COMPAT(mxs_gpio_dt_ids),
 	.id_table = mxs_gpio_ids,
 };
-
-static int mxs_gpio_add(void)
-{
-	platform_driver_register(&mxs_gpio_driver);
-	return 0;
-}
-postcore_initcall(mxs_gpio_add);
+postcore_platform_driver(mxs_gpio_driver);
diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
index b00766a6aa..9075f68926 100644
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -191,9 +191,4 @@ static struct driver_d omap_gpio_driver = {
 	.probe = omap_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(omap_gpio_dt_ids),
 };
-
-static int omap_gpio_add(void)
-{
-	return platform_driver_register(&omap_gpio_driver);
-}
-coredevice_initcall(omap_gpio_add);
+coredevice_platform_driver(omap_gpio_driver);
diff --git a/drivers/gpio/gpio-stmpe.c b/drivers/gpio/gpio-stmpe.c
index d7e64045b4..d0319a6dc8 100644
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
diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index 56808b57e4..331402607c 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -200,9 +200,4 @@ static struct driver_d tegra_gpio_driver = {
 	.of_compatible	= DRV_OF_COMPAT(tegra_gpio_dt_ids),
 	.probe		= tegra_gpio_probe,
 };
-
-static int __init tegra_gpio_init(void)
-{
-	return platform_driver_register(&tegra_gpio_driver);
-}
-coredevice_initcall(tegra_gpio_init);
+coredevice_platform_driver(tegra_gpio_driver);
diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index ab35310fbe..55df0a591c 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -155,9 +155,4 @@ static struct driver_d vf610_gpio_driver = {
 	.probe  = vf610_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(vf610_gpio_dt_ids),
 };
-
-static int __init gpio_vf610_init(void)
-{
-	return platform_driver_register(&vf610_gpio_driver);
-}
-postcore_initcall(gpio_vf610_init);
+postcore_platform_driver(vf610_gpio_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

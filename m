Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.mail.ru ([94.100.176.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEZwy-0005sz-Sk
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 06:41:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 10 Mar 2013 10:41:32 +0400
Message-Id: <1362897695-3936-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1362897695-3936-1-git-send-email-shc_work@mail.ru>
References: <1362897695-3936-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 3/6] Introduce console_platform_driver() macro and use it
 for serial drivers
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/serial/arm_dcc.c              |  6 ++----
 drivers/serial/atmel.c                |  9 +--------
 drivers/serial/linux_console.c        |  9 +--------
 drivers/serial/serial_altera.c        |  9 +--------
 drivers/serial/serial_altera_jtag.c   |  8 +-------
 drivers/serial/serial_auart.c         |  9 +--------
 drivers/serial/serial_blackfin.c      | 10 +---------
 drivers/serial/serial_clps711x.c      |  7 +------
 drivers/serial/serial_imx.c           |  9 +--------
 drivers/serial/serial_mpc5xxx.c       |  9 +--------
 drivers/serial/serial_netx.c          | 10 +---------
 drivers/serial/serial_ns16550.c       | 13 +------------
 drivers/serial/serial_omap4_usbboot.c |  7 +------
 drivers/serial/serial_pl010.c         | 10 +---------
 drivers/serial/serial_pxa.c           |  8 +-------
 drivers/serial/serial_s3c.c           |  9 +--------
 drivers/serial/stm-serial.c           |  9 +--------
 include/driver.h                      |  2 ++
 18 files changed, 20 insertions(+), 133 deletions(-)

diff --git a/drivers/serial/arm_dcc.c b/drivers/serial/arm_dcc.c
index e82218a..bab7299 100644
--- a/drivers/serial/arm_dcc.c
+++ b/drivers/serial/arm_dcc.c
@@ -149,6 +149,7 @@ static struct driver_d arm_dcc_driver = {
 	.name	= "arm_dcc",
 	.probe	= arm_dcc_probe,
 };
+console_platform_driver(arm_dcc_driver);
 
 static struct device_d arm_dcc_device = {
 	.id	= DEVICE_ID_DYNAMIC,
@@ -157,9 +158,6 @@ static struct device_d arm_dcc_device = {
 
 static int arm_dcc_init(void)
 {
-	platform_device_register(&arm_dcc_device);
-	platform_driver_register(&arm_dcc_driver);
-	return 0;
+	return platform_device_register(&arm_dcc_device);
 }
-
 console_initcall(arm_dcc_init);
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 6beae25..89c141e 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -418,11 +418,4 @@ static struct driver_d atmel_serial_driver = {
         .name  = "atmel_usart",
         .probe = atmel_serial_probe,
 };
-
-static int atmel_serial_init(void)
-{
-	platform_driver_register(&atmel_serial_driver);
-	return 0;
-}
-
-console_initcall(atmel_serial_init);
+console_platform_driver(atmel_serial_driver);
diff --git a/drivers/serial/linux_console.c b/drivers/serial/linux_console.c
index 4a99e96..7ded091 100644
--- a/drivers/serial/linux_console.c
+++ b/drivers/serial/linux_console.c
@@ -78,11 +78,4 @@ static struct driver_d linux_console_driver = {
         .name  = "console",
         .probe = linux_console_probe,
 };
-
-static int console_init(void)
-{
-	return platform_driver_register(&linux_console_driver);
-}
-
-console_initcall(console_init);
-
+console_platform_driver(linux_console_driver);
diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
index 013b32c..7ff38d7 100644
--- a/drivers/serial/serial_altera.c
+++ b/drivers/serial/serial_altera.c
@@ -101,11 +101,4 @@ static struct driver_d altera_serial_driver = {
 	.name = "altera_serial",
 	.probe = altera_serial_probe,
 };
-
-static int altera_serial_init(void)
-{
-	return platform_driver_register(&altera_serial_driver);
-}
-
-console_initcall(altera_serial_init);
-
+console_platform_driver(altera_serial_driver);
diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
index b83fcbd..edc3c76 100644
--- a/drivers/serial/serial_altera_jtag.c
+++ b/drivers/serial/serial_altera_jtag.c
@@ -106,10 +106,4 @@ static struct driver_d altera_serial_jtag_driver = {
 	.name = "altera_serial_jtag",
 	.probe = altera_serial_jtag_probe,
 };
-
-static int altera_serial_jtag_init(void)
-{
-	return platform_driver_register(&altera_serial_jtag_driver);
-}
-
-console_initcall(altera_serial_jtag_init);
+console_platform_driver(altera_serial_jtag_driver);
diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index fa2e04f..7c179fa 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -228,11 +228,4 @@ static struct driver_d auart_serial_driver = {
 	.probe = auart_serial_probe,
 	.remove = auart_serial_remove,
 };
-
-static int auart_serial_init(void)
-{
-	platform_driver_register(&auart_serial_driver);
-	return 0;
-}
-
-console_initcall(auart_serial_init);
+console_platform_driver(auart_serial_driver);
diff --git a/drivers/serial/serial_blackfin.c b/drivers/serial/serial_blackfin.c
index 2117b11..7373a03 100644
--- a/drivers/serial/serial_blackfin.c
+++ b/drivers/serial/serial_blackfin.c
@@ -130,12 +130,4 @@ static struct driver_d blackfin_serial_driver = {
         .name  = "blackfin_serial",
         .probe = blackfin_serial_probe,
 };
-
-static int blackfin_serial_init(void)
-{
-	platform_driver_register(&blackfin_serial_driver);
-	return 0;
-}
-
-console_initcall(blackfin_serial_init);
-
+console_platform_driver(blackfin_serial_driver);
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index 21d0b55..c359741 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -149,9 +149,4 @@ static struct driver_d clps711x_driver = {
 	.probe	= clps711x_probe,
 	.remove	= clps711x_remove,
 };
-
-static int clps711x_init(void)
-{
-	return platform_driver_register(&clps711x_driver);
-}
-console_initcall(clps711x_init);
+console_platform_driver(clps711x_driver);
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 3f219ae..8553c2e 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -397,11 +397,4 @@ static struct driver_d imx_serial_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx_serial_dt_ids),
 	.id_table = imx_serial_ids,
 };
-
-static int imx_serial_init(void)
-{
-	platform_driver_register(&imx_serial_driver);
-	return 0;
-}
-
-console_initcall(imx_serial_init);
+console_platform_driver(imx_serial_driver);
diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index 81eaf07..532eea3 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -166,11 +166,4 @@ static struct driver_d mpc5xxx_serial_driver = {
         .name  = "mpc5xxx_serial",
         .probe = mpc5xxx_serial_probe,
 };
-
-static int mpc5xxx_serial_register(void)
-{
-	platform_driver_register(&mpc5xxx_serial_driver);
-	return 0;
-}
-
-console_initcall(mpc5xxx_serial_register);
+console_platform_driver(mpc5xxx_serial_driver);
diff --git a/drivers/serial/serial_netx.c b/drivers/serial/serial_netx.c
index 2ad9cfa..037b998 100644
--- a/drivers/serial/serial_netx.c
+++ b/drivers/serial/serial_netx.c
@@ -155,12 +155,4 @@ static struct driver_d netx_serial_driver = {
         .name  = "netx_serial",
         .probe = netx_serial_probe,
 };
-
-static int netx_serial_init(void)
-{
-	platform_driver_register(&netx_serial_driver);
-	return 0;
-}
-
-console_initcall(netx_serial_init);
-
+console_platform_driver(netx_serial_driver);
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 0ea940d..b7913aa 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -262,15 +262,4 @@ static struct driver_d ns16550_serial_driver = {
 	.name = "ns16550_serial",
 	.probe = ns16550_probe,
 };
-
-/**
- * @brief driver initialization function
- *
- * @return result of platform_driver_register
- */
-static int ns16550_serial_init(void)
-{
-	return platform_driver_register(&ns16550_serial_driver);
-}
-
-console_initcall(ns16550_serial_init);
+console_platform_driver(ns16550_serial_driver);
diff --git a/drivers/serial/serial_omap4_usbboot.c b/drivers/serial/serial_omap4_usbboot.c
index f0a2fd1..51b2d13 100644
--- a/drivers/serial/serial_omap4_usbboot.c
+++ b/drivers/serial/serial_omap4_usbboot.c
@@ -75,9 +75,4 @@ static struct driver_d serial_omap4_usbboot_driver = {
 	.name = "serial_omap4_usbboot",
 	.probe = serial_omap4_usbboot_probe,
 };
-
-static int serial_omap4_usbboot_init(void)
-{
-	return platform_driver_register(&serial_omap4_usbboot_driver);
-}
-console_initcall(serial_omap4_usbboot_init);
+console_platform_driver(serial_omap4_usbboot_driver);
diff --git a/drivers/serial/serial_pl010.c b/drivers/serial/serial_pl010.c
index 0526b00..9158774 100644
--- a/drivers/serial/serial_pl010.c
+++ b/drivers/serial/serial_pl010.c
@@ -157,12 +157,4 @@ static struct driver_d pl010_driver = {
 	.name  = "pl010_serial",
 	.probe = pl010_probe,
 };
-
-static int pl010_init(void)
-{
-	platform_driver_register(&pl010_driver);
-
-	return 0;
-}
-
-console_initcall(pl010_init);
+console_platform_driver(pl010_driver);
diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
index 08f3d7f..42355ce 100644
--- a/drivers/serial/serial_pxa.c
+++ b/drivers/serial/serial_pxa.c
@@ -195,10 +195,4 @@ static struct driver_d pxa_serial_driver = {
 	.probe = pxa_serial_probe,
 	.remove = pxa_serial_remove,
 };
-
-static int pxa_serial_init(void)
-{
-	return platform_driver_register(&pxa_serial_driver);
-}
-
-console_initcall(pxa_serial_init);
+console_platform_driver(pxa_serial_driver);
diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index ed401ab..cc7b33e 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -213,11 +213,4 @@ static struct driver_d s3c_serial_driver = {
 	.probe  = s3c_serial_probe,
 	.remove = s3c_serial_remove,
 };
-
-static int s3c_serial_init(void)
-{
-	platform_driver_register(&s3c_serial_driver);
-	return 0;
-}
-
-console_initcall(s3c_serial_init);
+console_platform_driver(s3c_serial_driver);
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 3968892..49ffb2c 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -187,11 +187,4 @@ static struct driver_d stm_serial_driver = {
         .probe  = stm_serial_probe,
 	.remove = stm_serial_remove,
 };
-
-static int stm_serial_init(void)
-{
-	platform_driver_register(&stm_serial_driver);
-	return 0;
-}
-
-console_initcall(stm_serial_init);
+console_platform_driver(stm_serial_driver);
diff --git a/include/driver.h b/include/driver.h
index 138eab4..8598a39 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -408,6 +408,8 @@ int platform_driver_register(struct driver_d *drv);
 
 #define device_platform_driver(drv)	\
 	register_driver_macro(device,platform,drv)
+#define console_platform_driver(drv)	\
+	register_driver_macro(console,platform,drv)
 
 int platform_device_register(struct device_d *new_device);
 
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

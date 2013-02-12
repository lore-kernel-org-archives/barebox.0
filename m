Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5.mail.ru ([94.100.176.132])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5KI1-0003WK-35
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 18:09:13 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 12 Feb 2013 22:08:57 +0400
Message-Id: <1360692537-22260-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1360692537-22260-1-git-send-email-shc_work@mail.ru>
References: <1360692537-22260-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 2/2] Use new device_platform_driver() macro for drivers
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/sandbox/board/hostfile.c      |  8 +-------
 drivers/ata/ahci.c                 |  8 +-------
 drivers/ata/intf_platform_ide.c    |  8 +-------
 drivers/ata/pata-imx.c             |  8 +-------
 drivers/ata/sata-imx.c             |  8 +-------
 drivers/i2c/busses/i2c-gpio.c      |  7 +------
 drivers/i2c/busses/i2c-imx.c       |  7 +------
 drivers/i2c/busses/i2c-omap.c      |  8 +-------
 drivers/i2c/busses/i2c-versatile.c |  8 +-------
 drivers/input/gpio_keys.c          |  8 +-------
 drivers/input/imx_keypad.c         |  8 +-------
 drivers/mci/atmel_mci.c            |  8 +-------
 drivers/mci/imx-esdhc.c            |  9 +--------
 drivers/mci/imx.c                  | 10 +---------
 drivers/mci/mxs.c                  |  9 +--------
 drivers/mci/omap_hsmmc.c           |  9 +--------
 drivers/mci/pxamci.c               |  9 +--------
 drivers/mci/s3c.c                  |  9 +--------
 drivers/misc/jtag.c                |  8 +-------
 drivers/mtd/devices/docg3.c        |  8 +-------
 drivers/mtd/nand/atmel_nand.c      |  8 +-------
 drivers/mtd/nand/nand_imx.c        | 12 +-----------
 drivers/mtd/nand/nand_mxs.c        |  8 +-------
 drivers/mtd/nand/nand_omap_gpmc.c  |  8 +-------
 drivers/mtd/nand/nand_s3c24xx.c    | 12 +-----------
 drivers/mtd/nand/nomadik_nand.c    |  9 +--------
 drivers/net/altera_tse.c           | 10 +---------
 drivers/net/at91_ether.c           |  8 +-------
 drivers/net/cpsw.c                 |  8 +-------
 drivers/net/cs8900.c               |  9 +--------
 drivers/net/davinci_emac.c         |  9 +--------
 drivers/net/designware.c           |  8 +-------
 drivers/net/dm9k.c                 |  9 +--------
 drivers/net/ep93xx.c               |  9 +--------
 drivers/net/fec_imx.c              |  9 +--------
 drivers/net/fec_mpc5200.c          | 10 +---------
 drivers/net/gianfar.c              |  9 +--------
 drivers/net/ks8851_mll.c           |  9 +--------
 drivers/net/macb.c                 |  9 +--------
 drivers/net/netx_eth.c             | 10 +---------
 drivers/net/smc91111.c             |  9 +--------
 drivers/net/smc911x.c              | 10 +---------
 drivers/net/tap.c                  |  9 +--------
 drivers/nor/cfi_flash.c            |  8 +-------
 drivers/spi/altera_spi.c           |  8 +-------
 drivers/spi/atmel_spi.c            |  9 +--------
 drivers/spi/imx_spi.c              | 10 +---------
 drivers/spi/omap3_spi.c            |  8 +-------
 drivers/usb/gadget/at91_udc.c      |  8 +-------
 drivers/usb/gadget/fsl_udc.c       |  9 +--------
 drivers/usb/gadget/pxa27x_udc.c    |  9 +--------
 drivers/usb/host/ehci-atmel.c      |  8 +-------
 drivers/usb/host/ehci-hcd.c        | 10 +---------
 drivers/usb/host/ohci-at91.c       |  8 +-------
 drivers/usb/host/ohci-hcd.c        | 10 +---------
 drivers/usb/imx/chipidea-imx.c     |  7 +------
 drivers/video/atmel_hlcdfb.c       |  7 +------
 drivers/video/atmel_lcdfb.c        |  7 +------
 drivers/video/imx-ipu-fb.c         |  8 +-------
 drivers/video/imx.c                |  9 +--------
 drivers/video/pxa.c                |  8 +-------
 drivers/video/s3c24xx.c            |  8 +-------
 drivers/video/sdl.c                |  7 +------
 drivers/video/stm.c                |  8 +-------
 drivers/w1/masters/w1-gpio.c       |  7 +------
 drivers/watchdog/im28wd.c          |  9 +--------
 drivers/watchdog/imxwd.c           |  8 +-------
 67 files changed, 67 insertions(+), 507 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index a3ebe19..48c6ea3 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -89,13 +89,7 @@ static struct driver_d hf_drv = {
 	.probe = hf_probe,
 	.info  = hf_info,
 };
-
-static int hf_init(void)
-{
-	return platform_driver_register(&hf_drv);
-}
-
-device_initcall(hf_init);
+device_platform_driver(hf_drv);
 
 int barebox_register_filedev(struct hf_platform_data *hf)
 {
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 14de3c5..4365e46 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -669,10 +669,4 @@ static struct driver_d ahci_driver = {
 	.probe  = ahci_probe,
 	.info	= ahci_info,
 };
-
-static int ahci_init(void)
-{
-	return platform_driver_register(&ahci_driver);
-}
-
-device_initcall(ahci_init);
+device_platform_driver(ahci_driver);
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index 6473b38..0b56eb4 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -108,13 +108,7 @@ static struct driver_d platform_ide_driver = {
 	.name   = "ide_intf",
 	.probe  = platform_ide_probe,
 };
-
-static int platform_ide_init(void)
-{
-	return platform_driver_register(&platform_ide_driver);
-}
-
-device_initcall(platform_ide_init);
+device_platform_driver(platform_ide_driver);
 
 /**
  * @file
diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
index 202f537..5d44883 100644
--- a/drivers/ata/pata-imx.c
+++ b/drivers/ata/pata-imx.c
@@ -194,10 +194,4 @@ static struct driver_d imx_pata_driver = {
 	.name   = "imx-pata",
 	.probe  = imx_pata_probe,
 };
-
-static int imx_pata_init(void)
-{
-	return platform_driver_register(&imx_pata_driver);
-}
-
-device_initcall(imx_pata_init);
+device_platform_driver(imx_pata_driver);
diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
index fc57f5f..bd48fae 100644
--- a/drivers/ata/sata-imx.c
+++ b/drivers/ata/sata-imx.c
@@ -146,10 +146,4 @@ static struct driver_d imx_sata_driver = {
 	.info	= ahci_info,
 	.id_table = imx_sata_ids,
 };
-
-static int ahci_init(void)
-{
-	return platform_driver_register(&imx_sata_driver);
-}
-
-device_initcall(ahci_init);
+device_platform_driver(imx_sata_driver);
diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
index 98ce2d5..8b49c2c 100644
--- a/drivers/i2c/busses/i2c-gpio.c
+++ b/drivers/i2c/busses/i2c-gpio.c
@@ -169,9 +169,4 @@ static struct driver_d i2c_gpio_driver = {
 	.name	= "i2c-gpio",
 	.probe	= i2c_gpio_probe,
 };
-
-static int __init i2c_gpio_init(void)
-{
-	return platform_driver_register(&i2c_gpio_driver);
-}
-device_initcall(i2c_gpio_init);
+device_platform_driver(i2c_gpio_driver);
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 68348eb..9fcfd5c 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -576,9 +576,4 @@ static struct driver_d i2c_fsl_driver = {
 	.probe	= i2c_fsl_probe,
 	.name	= DRIVER_NAME,
 };
-
-static int __init i2c_adap_fsl_init(void)
-{
-	return platform_driver_register(&i2c_fsl_driver);
-}
-device_initcall(i2c_adap_fsl_init);
+device_platform_driver(i2c_fsl_driver);
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index f371875..503443f 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -860,13 +860,7 @@ static struct driver_d omap_i2c_driver = {
 	.probe		= i2c_omap_probe,
 	.name		= DRIVER_NAME,
 };
-
-/* I2C may be needed to bring up other drivers */
-static int __init omap_i2c_init_driver(void)
-{
-	return platform_driver_register(&omap_i2c_driver);
-}
-device_initcall(omap_i2c_init_driver);
+device_platform_driver(omap_i2c_driver);
 
 MODULE_AUTHOR("MontaVista Software, Inc. (and others)");
 MODULE_DESCRIPTION("TI OMAP I2C bus adapter");
diff --git a/drivers/i2c/busses/i2c-versatile.c b/drivers/i2c/busses/i2c-versatile.c
index 7c99322..d395e1d 100644
--- a/drivers/i2c/busses/i2c-versatile.c
+++ b/drivers/i2c/busses/i2c-versatile.c
@@ -103,10 +103,4 @@ static struct driver_d i2c_versatile_driver = {
 	.name	= "versatile-i2c",
 	.probe	= i2c_versatile_probe,
 };
-
-static int __init i2c_versatile_init(void)
-{
-	return platform_driver_register(&i2c_versatile_driver);
-}
-
-device_initcall(i2c_versatile_init);
+device_platform_driver(i2c_versatile_driver);
diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index 543ad1a..b02e0ed 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -106,10 +106,4 @@ static struct driver_d gpio_keys_driver = {
 	.name	= "gpio_keys",
 	.probe	= gpio_keys_probe,
 };
-
-static int gpio_keys_init(void)
-{
-	platform_driver_register(&gpio_keys_driver);
-	return 0;
-}
-device_initcall(gpio_keys_init);
+device_platform_driver(gpio_keys_driver);
diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index f6c3b1b..2ee3d0f 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -454,10 +454,4 @@ static struct driver_d imx_keypad_driver = {
 	.name   = "imx-kpp",
 	.probe  = imx_keypad_probe,
 };
-
-static int imx_keypad_init(void)
-{
-	platform_driver_register(&imx_keypad_driver);
-	return 0;
-}
-device_initcall(imx_keypad_init);
+device_platform_driver(imx_keypad_driver);
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index dbfb53c..f032403 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -619,10 +619,4 @@ static struct driver_d atmci_driver = {
 	.info	= atmci_info,
 #endif
 };
-
-static int atmci_init_driver(void)
-{
-	platform_driver_register(&atmci_driver);
-	return 0;
-}
-device_initcall(atmci_init_driver);
+device_platform_driver(atmci_driver);
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index aad1b86..8c2695c 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -583,11 +583,4 @@ static struct driver_d fsl_esdhc_driver = {
 	.probe = fsl_esdhc_probe,
 	.of_compatible = DRV_OF_COMPAT(fsl_esdhc_compatible),
 };
-
-static int fsl_esdhc_init_driver(void)
-{
-	platform_driver_register(&fsl_esdhc_driver);
-	return 0;
-}
-
-device_initcall(fsl_esdhc_init_driver);
+device_platform_driver(fsl_esdhc_driver);
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 072ca93..1210a1d 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -524,12 +524,4 @@ static struct driver_d mxcmci_driver = {
         .name  = DRIVER_NAME,
         .probe = mxcmci_probe,
 };
-
-static int mxcmci_init_driver(void)
-{
-        platform_driver_register(&mxcmci_driver);
-        return 0;
-}
-
-device_initcall(mxcmci_init_driver);
-
+device_platform_driver(mxcmci_driver);
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index b5b3665..c65796b 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -760,11 +760,4 @@ static struct driver_d mxs_mci_driver = {
 	.info = mxs_mci_info,
 #endif
 };
-
-static int mxs_mci_init_driver(void)
-{
-        platform_driver_register(&mxs_mci_driver);
-        return 0;
-}
-
-device_initcall(mxs_mci_init_driver);
+device_platform_driver(mxs_mci_driver);
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index ffcb4ae..336745d 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -630,11 +630,4 @@ static struct driver_d omap_mmc_driver = {
 	.probe = omap_mmc_probe,
 	.id_table = omap_mmc_ids,
 };
-
-static int omap_mmc_init_driver(void)
-{
-	platform_driver_register(&omap_mmc_driver);
-	return 0;
-}
-
-device_initcall(omap_mmc_init_driver);
+device_platform_driver(omap_mmc_driver);
diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index c18e63a..c1380d1 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -378,11 +378,4 @@ static struct driver_d pxamci_driver = {
 	.name  = DRIVER_NAME,
 	.probe = pxamci_probe,
 };
-
-static int __init pxamci_init_driver(void)
-{
-	platform_driver_register(&pxamci_driver);
-	return 0;
-}
-
-device_initcall(pxamci_init_driver);
+device_platform_driver(pxamci_driver);
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 3e5d6d9..4e7345c 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -767,11 +767,4 @@ static struct driver_d s3c_mci_driver = {
 	.info = s3c_info,
 #endif
 };
-
-static int s3c_mci_init_driver(void)
-{
-        platform_driver_register(&s3c_mci_driver);
-        return 0;
-}
-
-device_initcall(s3c_mci_init_driver);
+device_platform_driver(s3c_mci_driver);
diff --git a/drivers/misc/jtag.c b/drivers/misc/jtag.c
index 6c5dea4..d302237 100644
--- a/drivers/misc/jtag.c
+++ b/drivers/misc/jtag.c
@@ -376,13 +376,7 @@ static struct driver_d jtag_driver = {
 	.remove = jtag_remove,
 	.info = jtag_info,
 };
-
-static int jtag_module_init(void)
-{
-	return platform_driver_register(&jtag_driver);
-}
-
-device_initcall(jtag_module_init);
+device_platform_driver(jtag_driver);
 
 MODULE_AUTHOR("Davide Rizzo <elpa.rizzo@gmail.com>");
 MODULE_AUTHOR("Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>");
diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index 2f89900..af3d174 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -1199,10 +1199,4 @@ static struct driver_d  g3_driver = {
 	.name	= "docg3",
 	.probe	= docg3_probe,
 };
-
-static int __init docg3_init(void)
-{
-	return platform_driver_register(&g3_driver);
-}
-
-device_initcall(docg3_init);
+device_platform_driver(g3_driver);
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 2a57dbb..63484f8 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1242,13 +1242,7 @@ static struct driver_d atmel_nand_driver = {
 	.name	= "atmel_nand",
 	.probe	= atmel_nand_probe,
 };
-
-static int __init atmel_nand_init(void)
-{
-	return platform_driver_register(&atmel_nand_driver);
-}
-
-device_initcall(atmel_nand_init);
+device_platform_driver(atmel_nand_driver);
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Rick Bronson");
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index a56c65f..dd66861 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1277,17 +1277,7 @@ static struct driver_d imx_nand_driver = {
 	.name  = "imx_nand",
 	.probe = imxnd_probe,
 };
-
-/*
- * Main initialization routine
- * @return  0 if successful; non-zero otherwise
- */
-static int __init imx_nand_init(void)
-{
-	return platform_driver_register(&imx_nand_driver);
-}
-
-device_initcall(imx_nand_init);
+device_platform_driver(imx_nand_driver);
 
 MODULE_AUTHOR("Freescale Semiconductor, Inc.");
 MODULE_DESCRIPTION("MXC NAND MTD driver");
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index bc34526..3812ac9 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1265,13 +1265,7 @@ static struct driver_d mxs_nand_driver = {
 	.name  = "mxs_nand",
 	.probe = mxs_nand_probe,
 };
-
-static int __init mxs_nand_init(void)
-{
-	return platform_driver_register(&mxs_nand_driver);
-}
-
-device_initcall(mxs_nand_init);
+device_platform_driver(mxs_nand_driver);
 
 MODULE_AUTHOR("Denx Software Engeneering and Wolfram Sang");
 MODULE_DESCRIPTION("MXS NAND MTD driver");
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 9050a8d..7849db5 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -1081,10 +1081,4 @@ static struct driver_d gpmc_nand_driver = {
 	.name = "gpmc_nand",
 	.probe = gpmc_nand_probe,
 };
-
-static int gpmc_nand_init(void)
-{
-	return platform_driver_register(&gpmc_nand_driver);
-}
-
-device_initcall(gpmc_nand_init);
+device_platform_driver(gpmc_nand_driver);
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index aef7fa9..fef9432 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -494,6 +494,7 @@ static struct driver_d s3c24x0_nand_driver = {
 	.name  = "s3c24x0_nand",
 	.probe = s3c24x0_nand_probe,
 };
+device_platform_driver(s3c24x0_nand_driver);
 
 #ifdef CONFIG_S3C_NAND_BOOT
 
@@ -646,17 +647,6 @@ BAREBOX_CMD_END
 
 #endif /* CONFIG_S3C_NAND_BOOT */
 
-/*
- * Main initialization routine
- * @return 0 if successful; non-zero otherwise
- */
-static int __init s3c24x0_nand_init(void)
-{
-	return platform_driver_register(&s3c24x0_nand_driver);
-}
-
-device_initcall(s3c24x0_nand_init);
-
 /**
  * @file
  * @brief Support for various kinds of NAND devices
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index 768b19c..834b6ac 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -234,14 +234,7 @@ static struct driver_d nomadik_nand_driver = {
 	.probe = nomadik_nand_probe,
 	.name = "nomadik_nand",
 };
-
-static int __init nand_nomadik_init(void)
-{
-	pr_info("Nomadik NAND driver\n");
-	return platform_driver_register(&nomadik_nand_driver);
-}
-
-device_initcall(nand_nomadik_init);
+device_platform_driver(nomadik_nand_driver);
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("ST Microelectronics (sachin.verma@st.com)");
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index f0e907e..1a44278 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -557,12 +557,4 @@ static struct driver_d altera_tse_driver = {
 	.name = "altera_tse",
 	.probe = tse_probe,
 };
-
-static int tse_init(void)
-{
-	platform_driver_register(&altera_tse_driver);
-	return 0;
-}
-
-device_initcall(tse_init);
-
+device_platform_driver(altera_tse_driver);
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index a0854df..dad7815 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -366,10 +366,4 @@ static struct driver_d at91_ether_driver = {
 	.probe = at91_ether_probe,
 	.remove = at91_ether_remove,
 };
-
-static int at91_ether_driver_init(void)
-{
-	platform_driver_register(&at91_ether_driver);
-	return 0;
-}
-device_initcall(at91_ether_driver_init);
+device_platform_driver(at91_ether_driver);
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 58c097a..e51a8b1 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1061,10 +1061,4 @@ static struct driver_d cpsw_driver = {
 	.name   = "cpsw",
 	.probe  = cpsw_probe,
 };
-
-static int cpsw_register(void)
-{
-	return platform_driver_register(&cpsw_driver);
-}
-
-device_initcall(cpsw_register);
+device_platform_driver(cpsw_driver);
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index b1ef390..b0d045a 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -468,11 +468,4 @@ static struct driver_d cs8900_driver = {
 	.probe = cs8900_probe,
 	.info = cs8900_info,
 };
-
-static int cs8900_init(void)
-{
-	platform_driver_register(&cs8900_driver);
-	return 0;
-}
-
-device_initcall(cs8900_init);
+device_platform_driver(cs8900_driver);
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 989e119..7848f50 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -608,11 +608,4 @@ static struct driver_d davinci_emac_driver = {
 	.probe  = davinci_emac_probe,
 	.remove = davinci_emac_remove,
 };
-
-static int davinci_emac_register(void)
-{
-	platform_driver_register(&davinci_emac_driver);
-	return 0;
-}
-
-device_initcall(davinci_emac_register);
+device_platform_driver(davinci_emac_driver);
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index f803e66..a6b32b9 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -455,10 +455,4 @@ static struct driver_d dwc_ether_driver = {
 	.probe = dwc_ether_probe,
 	.remove = dwc_ether_remove,
 };
-
-static int dwc_ether_driver_init(void)
-{
-	platform_driver_register(&dwc_ether_driver);
-	return 0;
-}
-device_initcall(dwc_ether_driver_init);
+device_platform_driver(dwc_ether_driver);
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 8be0f16..090482c 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -780,11 +780,4 @@ static struct driver_d dm9k_driver = {
 	.name  = "dm9000",
 	.probe = dm9k_probe,
 };
-
-static int dm9k_init(void)
-{
-	platform_driver_register(&dm9k_driver);
-	return 0;
-}
-
-device_initcall(dm9k_init);
+device_platform_driver(dm9k_driver);
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index 37c9f0a..1ecef13 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -663,11 +663,4 @@ static struct driver_d ep93xx_eth_driver = {
 	.name  = "ep93xx_eth",
 	.probe = ep93xx_eth_probe,
 };
-
-static int ep93xx_eth_init(void)
-{
-	platform_driver_register(&ep93xx_eth_driver);
-	return 0;
-}
-
-device_initcall(ep93xx_eth_init);
+device_platform_driver(ep93xx_eth_driver);
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 2378a19..9d875cf 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -768,14 +768,7 @@ static struct driver_d fec_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx_fec_dt_ids),
 	.id_table = imx_fec_ids,
 };
-
-static int fec_register(void)
-{
-	platform_driver_register(&fec_driver);
-	return 0;
-}
-
-device_initcall(fec_register);
+device_platform_driver(fec_driver);
 
 /**
  * @file
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index a14c8d1..9ef5350 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -717,12 +717,4 @@ static struct driver_d mpc5xxx_driver = {
         .probe = mpc5xxx_fec_probe,
 	.remove = mpc5xxx_fec_remove,
 };
-
-static int mpc5xxx_fec_register(void)
-{
-        platform_driver_register(&mpc5xxx_driver);
-        return 0;
-}
-
-device_initcall(mpc5xxx_fec_register);
-
+device_platform_driver(mpc5xxx_driver);
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 55675ba..96055bd 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -528,11 +528,4 @@ static struct driver_d gfar_eth_driver = {
 	.name  = "gfar",
 	.probe = gfar_probe,
 };
-
-static int gfar_eth_init(void)
-{
-	platform_driver_register(&gfar_eth_driver);
-	return 0;
-}
-
-device_initcall(gfar_eth_init);
+device_platform_driver(gfar_eth_driver);
diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 79b88f2..9c0e5a7 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -873,11 +873,4 @@ static struct driver_d ks8851_driver = {
 	.name  = "ks8851_mll",
 	.probe = ks8851_probe,
 };
-
-static int ks8851_init(void)
-{
-	platform_driver_register(&ks8851_driver);
-	return 0;
-}
-
-device_initcall(ks8851_init);
+device_platform_driver(ks8851_driver);
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 0cfad05..8602437 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -666,11 +666,4 @@ static struct driver_d macb_driver = {
 	.name  = "macb",
 	.probe = macb_probe,
 };
-
-static int macb_driver_init(void)
-{
-	debug("%s\n", __func__);
-	platform_driver_register(&macb_driver);
-	return 0;
-}
-device_initcall(macb_driver_init);
+device_platform_driver(macb_driver);
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index e2b5591..9ca9bce 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -276,12 +276,4 @@ static struct driver_d netx_eth_driver = {
         .name  = "netx-eth",
         .probe = netx_eth_probe,
 };
-
-static int netx_eth_init(void)
-{
-        platform_driver_register(&netx_eth_driver);
-        return 0;
-}
-
-device_initcall(netx_eth_init);
-
+device_platform_driver(netx_eth_driver);
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index ac978d9..695fa7d 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1319,11 +1319,4 @@ static struct driver_d smc91c111_driver = {
         .name  = "smc91c111",
         .probe = smc91c111_probe,
 };
-
-static int smc91c111_init(void)
-{
-        platform_driver_register(&smc91c111_driver);
-        return 0;
-}
-
-device_initcall(smc91c111_init);
+device_platform_driver(smc91c111_driver);
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 28c69ba..3b94779 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -638,12 +638,4 @@ static struct driver_d smc911x_driver = {
         .name  = "smc911x",
         .probe = smc911x_probe,
 };
-
-static int smc911x_init(void)
-{
-        platform_driver_register(&smc911x_driver);
-        return 0;
-}
-
-device_initcall(smc911x_init);
-
+device_platform_driver(smc911x_driver);
diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index 1cf4e18..436b0e0 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -109,11 +109,4 @@ static struct driver_d tap_driver = {
         .name  = "tap",
         .probe = tap_probe,
 };
-
-static int tap_init(void)
-{
-        platform_driver_register(&tap_driver);
-        return 0;
-}
-
-device_initcall(tap_init);
+device_platform_driver(tap_driver);
diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 637f98b..acdc386 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -1035,10 +1035,4 @@ static struct driver_d cfi_driver = {
 	.info    = cfi_info,
 	.of_compatible = DRV_OF_COMPAT(cfi_dt_ids),
 };
-
-static int cfi_init(void)
-{
-	return platform_driver_register(&cfi_driver);
-}
-
-device_initcall(cfi_init);
+device_platform_driver(cfi_driver);
diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
index a089761..60e124f 100644
--- a/drivers/spi/altera_spi.c
+++ b/drivers/spi/altera_spi.c
@@ -239,10 +239,4 @@ static struct driver_d altera_spi_driver = {
 	.name  = "altera_spi",
 	.probe = altera_spi_probe,
 };
-
-static int altera_spi_driver_init(void)
-{
-	return platform_driver_register(&altera_spi_driver);
-}
-
-device_initcall(altera_spi_driver_init);
+device_platform_driver(altera_spi_driver);
diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 478f5d3..a0f63d8 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -437,11 +437,4 @@ static struct driver_d atmel_spi_driver = {
 	.name  = "atmel_spi",
 	.probe = atmel_spi_probe,
 };
-
-static int atmel_spi_init(void)
-{
-	platform_driver_register(&atmel_spi_driver);
-	return 0;
-}
-
-device_initcall(atmel_spi_init);
+device_platform_driver(atmel_spi_driver);
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 71fac3d..987a883 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -597,12 +597,4 @@ static struct driver_d imx_spi_driver = {
 	.probe = imx_spi_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_spi_dt_ids),
 };
-
-static int imx_spi_init(void)
-{
-	platform_driver_register(&imx_spi_driver);
-	return 0;
-}
-
-device_initcall(imx_spi_init);
-
+device_platform_driver(imx_spi_driver);
diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
index f81b4aa..e6581df 100644
--- a/drivers/spi/omap3_spi.c
+++ b/drivers/spi/omap3_spi.c
@@ -390,10 +390,4 @@ static struct driver_d omap3_spi_driver = {
 	.name = "omap3_spi",
 	.probe = omap3_spi_probe,
 };
-
-static int omap3_spi_init(void)
-{
-	return platform_driver_register(&omap3_spi_driver);
-}
-
-device_initcall(omap3_spi_init);
+device_platform_driver(omap3_spi_driver);
diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 3899db2..917ec4d 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1537,10 +1537,4 @@ static struct driver_d at91_udc_driver = {
 	.name	= driver_name,
 	.probe	= at91udc_probe,
 };
-
-static int at91_udc_init(void)
-{
-	platform_driver_register(&at91_udc_driver);
-	return 0;
-}
-device_initcall(at91_udc_init);
+device_platform_driver(at91_udc_driver);
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 0a7c3ae..855dd93 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -2330,11 +2330,4 @@ static struct driver_d fsl_udc_driver = {
         .name   = "fsl-udc",
         .probe  = fsl_udc_probe,
 };
-
-static int fsl_udc_init(void)
-{
-	platform_driver_register(&fsl_udc_driver);
-	return 0;
-}
-
-device_initcall(fsl_udc_init);
+device_platform_driver(fsl_udc_driver);
diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
index 1ccc232..b18d7c5 100644
--- a/drivers/usb/gadget/pxa27x_udc.c
+++ b/drivers/usb/gadget/pxa27x_udc.c
@@ -1512,11 +1512,4 @@ static struct driver_d udc_driver = {
 	.name		= "pxa27x-udc",
 	.probe		= pxa_udc_probe,
 };
-
-static int __init pxa27x_udc_init(void)
-{
-	platform_driver_register(&udc_driver);
-	return 0;
-}
-
-device_initcall(pxa27x_udc_init);
+device_platform_driver(udc_driver);
diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index 5957b8e..11b1a89 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -87,10 +87,4 @@ static struct driver_d atmel_ehci_driver = {
 	.probe = atmel_ehci_probe,
 	.remove = atmel_ehci_remove,
 };
-
-static int atmel_ehci_init(void)
-{
-	platform_driver_register(&atmel_ehci_driver);
-	return 0;
-}
-device_initcall(atmel_ehci_init);
+device_platform_driver(atmel_ehci_driver);
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index d0d6ae4..d83e01c 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -909,12 +909,4 @@ static struct driver_d ehci_driver = {
 	.probe = ehci_probe,
 	.remove = ehci_remove,
 };
-
-static int ehcil_init(void)
-{
-	platform_driver_register(&ehci_driver);
-	return 0;
-}
-
-device_initcall(ehcil_init);
-
+device_platform_driver(ehci_driver);
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index b2598f2..0f5c8f1 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -85,10 +85,4 @@ static struct driver_d at91_ohci_driver = {
 	.probe = at91_ohci_probe,
 	.remove = at91_ohci_remove,
 };
-
-static int at91_ohci_init(void)
-{
-	platform_driver_register(&at91_ohci_driver);
-	return 0;
-}
-device_initcall(at91_ohci_init);
+device_platform_driver(at91_ohci_driver);
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index d9b5f60..ad39bcf 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -1819,12 +1819,4 @@ static struct driver_d ohci_driver = {
 	.name  = "ohci",
 	.probe = ohci_probe,
 };
-
-static int ohcil_init(void)
-{
-	platform_driver_register(&ohci_driver);
-	return 0;
-}
-
-device_initcall(ohcil_init);
-
+device_platform_driver(ohci_driver);
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 5b4c081..495ad62 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -83,9 +83,4 @@ static struct driver_d imx_chipidea_driver = {
 	.name   = "imx-usb",
 	.probe  = imx_chipidea_probe,
 };
-
-static int imx_chipidea_init(void)
-{
-	return platform_driver_register(&imx_chipidea_driver);
-}
-device_initcall(imx_chipidea_init);
+device_platform_driver(imx_chipidea_driver);
diff --git a/drivers/video/atmel_hlcdfb.c b/drivers/video/atmel_hlcdfb.c
index 78a737d..2956598 100644
--- a/drivers/video/atmel_hlcdfb.c
+++ b/drivers/video/atmel_hlcdfb.c
@@ -289,9 +289,4 @@ static struct driver_d atmel_hlcdc_driver = {
 	.name	= "atmel_hlcdfb",
 	.probe	= atmel_hlcdc_probe,
 };
-
-static int atmel_hlcdc_init(void)
-{
-	return platform_driver_register(&atmel_hlcdc_driver);
-}
-device_initcall(atmel_hlcdc_init);
+device_platform_driver(atmel_hlcdc_driver);
diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index 08888cc..e9164e3 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -255,9 +255,4 @@ static struct driver_d atmel_lcdc_driver = {
 	.name	= "atmel_lcdfb",
 	.probe	= atmel_lcdc_probe,
 };
-
-static int atmel_lcdc_init(void)
-{
-	return platform_driver_register(&atmel_lcdc_driver);
-}
-device_initcall(atmel_lcdc_init);
+device_platform_driver(atmel_lcdc_driver);
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index a29920d..db8b832 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -1039,13 +1039,7 @@ static struct driver_d imx3fb_driver = {
 	.probe = imxfb_probe,
 	.remove = imxfb_remove,
 };
-
-static int imx3fb_init(void)
-{
-	return platform_driver_register(&imx3fb_driver);
-}
-
-device_initcall(imx3fb_init);
+device_platform_driver(imx3fb_driver);
 
 /**
  * @file
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index a1ccf0a..736e8d0 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -597,11 +597,4 @@ static struct driver_d imxfb_driver = {
 	.probe		= imxfb_probe,
 	.remove		= imxfb_remove,
 };
-
-static int imxfb_init(void)
-{
-	return platform_driver_register(&imxfb_driver);
-}
-
-device_initcall(imxfb_init);
-
+device_platform_driver(imxfb_driver);
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index cec9d14..529190b 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -545,10 +545,4 @@ static struct driver_d pxafb_driver = {
 	.probe	= pxafb_probe,
 	.remove	= pxafb_remove,
 };
-
-static int pxafb_init(void)
-{
-	return platform_driver_register(&pxafb_driver);
-}
-
-device_initcall(pxafb_init);
+device_platform_driver(pxafb_driver);
diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
index 6dd49e2..d641cfa 100644
--- a/drivers/video/s3c24xx.c
+++ b/drivers/video/s3c24xx.c
@@ -406,13 +406,7 @@ static struct driver_d s3cfb_driver = {
 	.info	= s3cfb_info,
 #endif
 };
-
-static int s3cfb_init(void)
-{
-	return platform_driver_register(&s3cfb_driver);
-}
-
-device_initcall(s3cfb_init);
+device_platform_driver(s3cfb_driver);
 
 /**
  * The S3C244x LCD controller supports passive (CSTN/STN) and active (TFT) LC displays
diff --git a/drivers/video/sdl.c b/drivers/video/sdl.c
index 0021a06..8dec5e5 100644
--- a/drivers/video/sdl.c
+++ b/drivers/video/sdl.c
@@ -93,9 +93,4 @@ static struct driver_d sdlfb_driver = {
 	.probe	= sdlfb_probe,
 	.remove	= sdlfb_remove,
 };
-
-static int sdlfb_init(void)
-{
-	return platform_driver_register(&sdlfb_driver);
-}
-device_initcall(sdlfb_init);
+device_platform_driver(sdlfb_driver);
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 28c7b6e..cefdef2 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -516,13 +516,7 @@ static struct driver_d stmfb_driver = {
 	.probe	= stmfb_probe,
 	.info	= stmfb_info,
 };
-
-static int stmfb_init(void)
-{
-	return platform_driver_register(&stmfb_driver);
-}
-
-device_initcall(stmfb_init);
+device_platform_driver(stmfb_driver);
 
 /**
  * @file
diff --git a/drivers/w1/masters/w1-gpio.c b/drivers/w1/masters/w1-gpio.c
index 0a3794d..946e9d3 100644
--- a/drivers/w1/masters/w1-gpio.c
+++ b/drivers/w1/masters/w1-gpio.c
@@ -108,9 +108,4 @@ static struct driver_d w1_gpio_driver = {
 	.name	= "w1-gpio",
 	.probe	= w1_gpio_probe,
 };
-
-static int __init w1_gpio_init(void)
-{
-	return platform_driver_register(&w1_gpio_driver);
-}
-device_initcall(w1_gpio_init);
+device_platform_driver(w1_gpio_driver);
diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index bc19369..96cfe9a 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -150,11 +150,4 @@ static struct driver_d imx28_wd_driver = {
 	.probe  = imx28_wd_probe,
 	.remove = imx28_wd_remove,
 };
-
-static int imx28_wd_init(void)
-{
-	platform_driver_register(&imx28_wd_driver);
-	return 0;
-}
-
-device_initcall(imx28_wd_init);
+device_platform_driver(imx28_wd_driver);
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index c422f98..78f0f38 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -226,10 +226,4 @@ static struct driver_d imx_wd_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx_wdt_dt_ids),
 	.id_table = imx_wdt_ids,
 };
-
-static int imx_wd_init(void)
-{
-	return platform_driver_register(&imx_wd_driver);
-}
-
-device_initcall(imx_wd_init);
+device_platform_driver(imx_wd_driver);
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

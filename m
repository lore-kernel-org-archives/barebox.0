Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUK-0005Jz-F1
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:19 +0100
Message-Id: <1288718250-24919-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1288718250-24919-1-git-send-email-s.hauer@pengutronix.de>
References: <1288718250-24919-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/17] ARM pca100: Use device functions
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phycard-i.MX27/pca100.c |   28 +++++-----------------------
 1 files changed, 5 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 3a96180..32f7e74 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -1,4 +1,4 @@
-	/*
+/*
  * Copyright (C) 2007 Sascha Hauer, Pengutronix 
  *
  * This program is free software; you can redistribute it and/or
@@ -39,6 +39,7 @@
 #include <asm/mmu.h>
 #include <usb/isp1504.h>
 #include <mach/iomux-mx27.h>
+#include <mach/devices-imx27.h>
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
@@ -58,26 +59,12 @@ static struct fec_platform_data fec_info = {
 	.phy_addr = 1,
 };
 
-static struct device_d fec_dev = {
-	.id	  = -1,
-	.name     = "fec_imx",
-	.map_base = 0x1002b000,
-	.platform_data	= &fec_info,
-};
-
 struct imx_nand_platform_data nand_info = {
 	.width = 1,
 	.hw_ecc = 1,
 	.flash_bbt = 1,
 };
 
-static struct device_d nand_dev = {
-	.id	  = -1,
-	.name     = "imx_nand",
-	.map_base = 0xd8000000,
-	.platform_data	= &nand_info,
-};
-
 #ifdef CONFIG_USB
 static struct device_d usbh2_dev = {
 	.id	  = -1,
@@ -110,11 +97,6 @@ static void pca100_usbh_init(void)
 }
 #endif
 
-static struct device_d mmc_dev = {
-	.name		= "imx-mmc",
-	.map_base	= 0x10014000,
-};
-
 #ifdef CONFIG_MMU
 static void pca100_mmu_init(void)
 {
@@ -207,10 +189,10 @@ static int pca100_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
-	register_device(&nand_dev);
+	imx27_add_nand(&nand_info);
 	register_device(&sdram_dev);
-	register_device(&fec_dev);
-	register_device(&mmc_dev);
+	imx27_add_fec(&fec_info);
+	imx27_add_mmc0(NULL);
 
 	PCCR1 |= PCCR1_PERCLK2_EN;
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

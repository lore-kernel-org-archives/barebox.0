Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qn0KI-0001kW-7z
	for barebox@lists.infradead.org; Sat, 30 Jul 2011 03:35:04 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 8F849FF9FF6
	for <barebox@lists.infradead.org>;
	Sat, 30 Jul 2011 05:35:46 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 30 Jul 2011 05:17:08 +0200
Message-Id: <1311995831-25350-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110729155356.GF25658@game.jcrosoft.org>
References: <20110729155356.GF25658@game.jcrosoft.org>
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
Subject: [PATCH 20/23] imx: switch remaing board to resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/chumby_falconwing/falconwing.c    |   30 ++++------------
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   10 +----
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   21 +----------
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   10 +----
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c     |   11 ++----
 arch/arm/boards/karo-tx28/tx28-stk5.c             |   39 +++++---------------
 6 files changed, 28 insertions(+), 93 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 5875955..69c3a61 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -39,12 +39,6 @@ static struct mxs_mci_platform_data mci_pdata = {
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
 };
 
-static struct device_d mci_dev = {
-	.name     = "mxs_mci",
-	.map_base = IMX_SSP1_BASE,
-	.platform_data = &mci_pdata,
-};
-
 #define GPIO_LCD_RESET		50
 #define GPIO_LCD_BACKLIGHT	60
 
@@ -98,13 +92,6 @@ static struct imx_fb_platformdata fb_mode = {
 	.fixed_screen_size = MAX_FB_SIZE,
 };
 
-static struct device_d ldcif_dev = {
-	.name = "stmfb",
-	.map_base = IMX_FB_BASE,
-	.size = 4096,
-	.platform_data = &fb_mode,
-};
-
 static const uint32_t pad_setup[] = {
 	/* may be not required as already done by the bootlet code */
 #if 0
@@ -357,8 +344,10 @@ static int falconwing_devices_init(void)
 	imx_set_ioclk(480000000); /* enable IOCLK to run at the PLL frequency */
 	/* run the SSP unit clock at 100,000 kHz */
 	imx_set_sspclk(0, 100000000, 1);
-	register_device(&mci_dev);
-	register_device(&ldcif_dev);
+	add_generic_device("mxs_mci", 0, NULL, IMX_SSP1_BASE, 0,
+			   IORESOURCE_MEM, &mci_pdata);
+	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 4096,
+			   IORESOURCE_MEM, &fb_mode);
 
 	falconwing_init_usb();
 
@@ -375,15 +364,12 @@ static int falconwing_devices_init(void)
 
 device_initcall(falconwing_devices_init);
 
-static struct device_d falconwing_serial_device = {
-	.name     = "stm_serial",
-	.map_base = IMX_DBGUART_BASE,
-	.size     = 8192,
-};
-
 static int falconwing_console_init(void)
 {
-	return register_device(&falconwing_serial_device);
+	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 8192,
+			   IORESOURCE_MEM, NULL);
+
+	return 0;
 }
 
 console_initcall(falconwing_console_init);
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index ecb5a38..aeeed17 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -156,13 +156,6 @@ static struct fsl_usb2_platform_data usb_pdata = {
 	.phy_mode	= FSL_USB2_PHY_UTMI,
 };
 
-static struct device_d usbotg_dev = {
-	.name     = "fsl-udc",
-	.map_base = IMX_OTG_BASE,
-	.size     = 0x200,
-	.platform_data = &usb_pdata,
-};
-
 #ifdef CONFIG_MMU
 static void eukrea_cpuimx25_mmu_init(void)
 {
@@ -280,7 +273,8 @@ static int eukrea_cpuimx25_devices_init(void)
 	imx25_usb_init();
 	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
 #endif
-	register_device(&usbotg_dev);
+	add_generic_device("fsl-udc", -1, NULL, IMX_OTG_BASE, 0x200,
+			   IORESOURCE_MEM, &usb_pdata);
 
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX25);
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 65cf6d8..e8b62b2 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -149,14 +149,6 @@ static struct imx_fb_platform_data eukrea_cpuimx27_fb_data = {
 	.lscr1	= 0x00120300,
 	.dmacr	= 0x00020010,
 };
-
-static struct device_d imxfb_dev = {
-	.id		= -1,
-	.name		= "imxfb",
-	.map_base	= 0x10021000,
-	.size		= 0x1000,
-	.platform_data	= &eukrea_cpuimx27_fb_data,
-};
 #endif
 
 static int eukrea_cpuimx27_devices_init(void)
@@ -252,7 +244,7 @@ static int eukrea_cpuimx27_devices_init(void)
 	printf("Using environment in %s Flash\n", envdev);
 
 #ifdef CONFIG_DRIVER_VIDEO_IMX
-	register_device(&imxfb_dev);
+	imx_add_fb((void *)0x10021000, &eukrea_cpuimx27_fb_data);
 	gpio_direction_output(GPIO_PORTE | 5, 0);
 	gpio_set_value(GPIO_PORTE | 5, 1);
 	gpio_direction_output(GPIO_PORTA | 25, 0);
@@ -267,19 +259,10 @@ static int eukrea_cpuimx27_devices_init(void)
 
 device_initcall(eukrea_cpuimx27_devices_init);
 
-#ifdef CONFIG_DRIVER_SERIAL_IMX
-static struct device_d eukrea_cpuimx27_serial_device = {
-	.id	  = -1,
-	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
-};
-#endif
-
 static int eukrea_cpuimx27_console_init(void)
 {
 #ifdef CONFIG_DRIVER_SERIAL_IMX
-	register_device(&eukrea_cpuimx27_serial_device);
+	imx_add_uart((void *)IMX_UART1_BASE, -1);
 #endif
 	/* configure 8 bit UART on cs3 */
 	FMCR &= ~0x2;
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index c1fe144..53e5bad 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -124,13 +124,6 @@ static struct fsl_usb2_platform_data usb_pdata = {
 	.operating_mode	= FSL_USB2_DR_DEVICE,
 	.phy_mode	= FSL_USB2_PHY_UTMI,
 };
-
-static struct device_d usbotg_dev = {
-	.name     = "fsl-udc",
-	.map_base = IMX_OTG_BASE,
-	.size     = 0x200,
-	.platform_data = &usb_pdata,
-};
 #endif
 
 #ifdef CONFIG_MMU
@@ -182,7 +175,8 @@ static int eukrea_cpuimx35_devices_init(void)
 	/* Workaround ENGcm09152 */
 	tmp = readl(IMX_OTG_BASE + 0x608);
 	writel(tmp | (1 << 23), IMX_OTG_BASE + 0x608);
-	register_device(&usbotg_dev);
+	add_generic_device("fsl-udc", -1, NULL, IMX_OTG_BASE, 0x200,
+			   IORESOURCE_MEM, &usb_pdata);
 #endif
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX35);
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index d6c2996..f9f85fa 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -40,15 +40,12 @@ static int mx23_evk_devices_init(void)
 
 device_initcall(mx23_evk_devices_init);
 
-static struct device_d mx23_evk_serial_device = {
-	.name     = "stm_serial",
-	.map_base = IMX_DBGUART_BASE,
-	.size     = 8192,
-};
-
 static int mx23_evk_console_init(void)
 {
-	return register_device(&mx23_evk_serial_device);
+	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 8192,
+			   IORESOURCE_MEM, NULL);
+	
+	return 0;
 }
 
 console_initcall(mx23_evk_console_init);
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 81cb80c..8427dc2 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -35,24 +35,12 @@ static struct mxs_mci_platform_data mci_pdata = {
 	.f_max = 25000000,
 };
 
-static struct device_d mci_socket = {
-	.name = "mxs_mci",
-	.map_base = IMX_SSP0_BASE,
-	.platform_data = &mci_pdata,
-};
-
 /* PhyAD[0..2]=0, RMIISEL=1 */
 static struct fec_platform_data fec_info = {
 	.xcv_type = RMII,
 	.phy_addr = 0,
 };
 
-static struct device_d fec_dev = {
-	.name = "fec_imx",
-	.map_base = IMX_FEC0_BASE,
-	.platform_data = &fec_info,
-};
-
 /*
  * The TX28 EVK comes with a VGA connector. We can support many video modes
  *
@@ -215,13 +203,6 @@ static struct imx_fb_platformdata tx28_fb_pdata = {
 	.enable = tx28_fb_enable,
 };
 
-static struct device_d ldcif_dev = {
-	.name = "stmfb",
-	.map_base = IMX_FB_BASE,
-	.size = 4096,
-	.platform_data = &tx28_fb_pdata,
-};
-
 static const uint32_t tx28_starterkit_pad_setup[] = {
 	/*
 	 * Part II of phy's initialization
@@ -378,17 +359,20 @@ void base_board_init(void)
 	/* run the SSP unit clock at 100 MHz */
 	imx_set_sspclk(0, 100000000, 1);
 
-	register_device(&mci_socket);
+	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0,
+			   IORESOURCE_MEM, &mci_pdata);
 
 	if (tx28_fb_pdata.fixed_screen < (void *)&_end) {
 		printf("Warning: fixed_screen overlaps barebox\n");
 		tx28_fb_pdata.fixed_screen = NULL;
 	}
 
-	register_device(&ldcif_dev);
+	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 4096,
+			   IORESOURCE_MEM, &tx28_fb_pdata);
 
 	imx_enable_enetclk();
-	register_device(&fec_dev);
+	add_generic_device("fec_imx", 0, NULL, IMX_FEC0_BASE, 0,
+			   IORESOURCE_MEM, &fec_info);
 
 	ret = register_persistent_environment();
 	if (ret != 0)
@@ -396,15 +380,12 @@ void base_board_init(void)
 				"storage (%d)\n", ret);
 }
 
-static struct device_d tx28kit_serial_device = {
-	.name     = "stm_serial",
-	.map_base = IMX_DBGUART_BASE,
-	.size     = 8192,
-};
-
 static int tx28kit_console_init(void)
 {
-	return register_device(&tx28kit_serial_device);
+	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 8192,
+			   IORESOURCE_MEM, NULL);
+	
+	return 0;
 }
 
 console_initcall(tx28kit_console_init);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

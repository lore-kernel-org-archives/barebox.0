Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Axm-00068j-L4
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:32 +0100
Message-Id: <1389971012-22977-23-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/22] ARM: phyCARD-i.MX27: Switch to devicetree probe support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boards/phycard-i.MX27/env/init/mtdparts-nand   |  11 --
 arch/arm/boards/phycard-i.MX27/pca100.c            | 172 +--------------------
 arch/arm/configs/pca100_defconfig                  |   6 +
 3 files changed, 8 insertions(+), 181 deletions(-)
 delete mode 100644 arch/arm/boards/phycard-i.MX27/env/init/mtdparts-nand

diff --git a/arch/arm/boards/phycard-i.MX27/env/init/mtdparts-nand b/arch/arm/boards/phycard-i.MX27/env/init/mtdparts-nand
deleted file mode 100644
index e2dcfab..0000000
--- a/arch/arm/boards/phycard-i.MX27/env/init/mtdparts-nand
+++ /dev/null
@@ -1,11 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NAND partitions"
-	exit
-fi
-
-mtdparts="512k(nand0.barebox),512k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
-kernelname="mxc_nand"
-
-mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 69f9a3d..be3a840 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -41,94 +41,6 @@
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
 
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_MII,
-	.phy_addr = 1,
-};
-
-struct imx_nand_platform_data nand_info = {
-	.width = 1,
-	.hw_ecc = 1,
-	.flash_bbt = 1,
-};
-
-static struct imx_fb_videomode imxfb_mode[] = {
-	{
-		.mode = {
-			.name		= "Primeview-PD050VL1",
-			.refresh	= 60,
-			.xres		= 640,
-			.yres		= 480,
-			.pixclock	= 40000, /* in ps (25MHz) */
-			.hsync_len	= 32,
-			.left_margin	= 112,
-			.right_margin	= 36,
-			.vsync_len	= 2,
-			.upper_margin	= 33,
-			.lower_margin	= 33,
-		},
-		.pcr = 0xF0C88080,
-		.bpp = 16,
-	}, {
-		.mode = {
-			.name		= "Primeview-PD035VL1",
-			.refresh	= 60,
-			.xres		= 640,
-			.yres		= 480,
-			.pixclock	= 40000, /* in ps (25 MHz) */
-			.hsync_len	= 30,
-			.left_margin	= 98,
-			.right_margin	= 36,
-			.vsync_len	= 2,
-			.upper_margin	= 15,
-			.lower_margin	= 33,
-		},
-		.pcr = 0xF0C88080,
-		.bpp = 16,
-	}, {
-		.mode = {
-			.name		= "Primeview-PD104SLF",
-			.refresh	= 60,
-			.xres		= 800,
-			.yres		= 600,
-			.pixclock	= 25000, /* in ps (40,0 MHz) */
-			.hsync_len	= 40,
-			.left_margin	= 174,
-			.right_margin	= 174,
-			.vsync_len	= 4,
-			.upper_margin	= 24,
-			.lower_margin	= 23,
-		},
-		.pcr = 0xF0C88080,
-		.bpp = 16,
-	}, {
-		.mode = {
-			.name		= "Primeview-PM070WL4",
-			.refresh	= 60,
-			.xres		= 800,
-			.yres		= 480,
-			.pixclock	= 31250, /* in ps (32 MHz) */
-			.hsync_len	= 40,
-			.left_margin	= 174,
-			.right_margin	= 174,
-			.vsync_len	= 2,
-			.upper_margin	= 33,
-			.lower_margin	= 23,
-		},
-		.pcr = 0xF0C88080,
-		.bpp = 16,
-	},
-};
-
-static struct imx_fb_platform_data pca100_fb_data = {
-	.mode   = imxfb_mode,
-	.num_modes = ARRAY_SIZE(imxfb_mode),
-	.pwmr   = 0x00A903FF,
-	.lscr1  = 0x00120300,
-	.dmacr  = 0x00040060,
-};
-
-#ifdef CONFIG_USB
 static void pca100_usb_register(void)
 {
 	mdelay(10);
@@ -143,7 +55,6 @@ static void pca100_usb_register(void)
 	ulpi_setup((void *)(MX27_USB_OTG_BASE_ADDR + 0x570), 1);
 	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX27_USB_OTG_BASE_ADDR + 0x400, NULL);
 }
-#endif
 
 static void pca100_usb_init(void)
 {
@@ -180,38 +91,7 @@ static void pca100_usb_init(void)
 static int pca100_devices_init(void)
 {
 	int i;
-	struct device_d *nand;
-
 	unsigned int mode[] = {
-		PD0_AIN_FEC_TXD0,
-		PD1_AIN_FEC_TXD1,
-		PD2_AIN_FEC_TXD2,
-		PD3_AIN_FEC_TXD3,
-		PD4_AOUT_FEC_RX_ER,
-		PD5_AOUT_FEC_RXD1,
-		PD6_AOUT_FEC_RXD2,
-		PD7_AOUT_FEC_RXD3,
-		PD8_AF_FEC_MDIO,
-		PD9_AIN_FEC_MDC | GPIO_PUEN,
-		PD10_AOUT_FEC_CRS,
-		PD11_AOUT_FEC_TX_CLK,
-		PD12_AOUT_FEC_RXD0,
-		PD13_AOUT_FEC_RX_DV,
-		PD14_AOUT_FEC_RX_CLK,
-		PD15_AOUT_FEC_COL,
-		PD16_AIN_FEC_TX_ER,
-		PF23_AIN_FEC_TX_EN,
-		PE12_PF_UART1_TXD,
-		PE13_PF_UART1_RXD,
-		PE14_PF_UART1_CTS,
-		PE15_PF_UART1_RTS,
-		PD25_PF_CSPI1_RDY,
-		PD26_PF_CSPI1_SS2,
-		PD27_PF_CSPI1_SS1,
-		PD28_PF_CSPI1_SS0,
-		PD29_PF_CSPI1_SCLK,
-		PD30_PF_CSPI1_MISO,
-		PD31_PF_CSPI1_MOSI,
 		/* USB host 2 */
 		PA0_PF_USBH2_CLK,
 		PA1_PF_USBH2_DIR,
@@ -225,13 +105,6 @@ static int pca100_devices_init(void)
 		PD23_AF_USBH2_DATA2,
 		PD24_AF_USBH2_DATA1,
 		PD26_AF_USBH2_DATA5,
-		/* SDHC */
-		PB4_PF_SD2_D0,
-		PB5_PF_SD2_D1,
-		PB6_PF_SD2_D2,
-		PB7_PF_SD2_D3,
-		PB8_PF_SD2_CMD,
-		PB9_PF_SD2_CLK,
 		PC7_PF_USBOTG_DATA5,
 		PC8_PF_USBOTG_DATA6,
 		PC9_PF_USBOTG_DATA0,
@@ -244,33 +117,6 @@ static int pca100_devices_init(void)
 		PE2_PF_USBOTG_DIR,
 		PE24_PF_USBOTG_CLK,
 		PE25_PF_USBOTG_DATA7,
-		/* display */
-		PA5_PF_LSCLK,
-		PA6_PF_LD0,
-		PA7_PF_LD1,
-		PA8_PF_LD2,
-		PA9_PF_LD3,
-		PA10_PF_LD4,
-		PA11_PF_LD5,
-		PA12_PF_LD6,
-		PA13_PF_LD7,
-		PA14_PF_LD8,
-		PA15_PF_LD9,
-		PA16_PF_LD10,
-		PA17_PF_LD11,
-		PA18_PF_LD12,
-		PA19_PF_LD13,
-		PA20_PF_LD14,
-		PA21_PF_LD15,
-		PA22_PF_LD16,
-		PA23_PF_LD17,
-		PA26_PF_PS,
-		PA28_PF_HSYNC,
-		PA29_PF_VSYNC,
-		PA31_PF_OE_ACD,
-		/* external I2C */
-		PD17_PF_I2C_DATA,
-		PD18_PF_I2C_CLK,
 	};
 
 	pca100_usb_init();
@@ -279,21 +125,8 @@ static int pca100_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
-	imx27_add_nand(&nand_info);
-	imx27_add_fec(&fec_info);
-	imx27_add_mmc1(NULL);
-	imx27_add_fb(&pca100_fb_data);
-
-#ifdef CONFIG_USB
-	pca100_usb_register();
-#endif
-
-	nand = get_device_by_name("nand0");
-	devfs_add_partition("nand0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-
-	devfs_add_partition("nand0", SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
+	if (IS_ENABLED(CONFIG_USB))
+		pca100_usb_register();
 
 	imx_bbu_external_nand_register_handler("nand", "/dev/nand0.barebox",
 			BBU_HANDLER_FLAG_DEFAULT);
@@ -310,7 +143,6 @@ static int pca100_console_init(void)
 	barebox_set_model("Phytec phyCARD-i.MX27");
 	barebox_set_hostname("phycard-imx27");
 
-	imx27_add_uart0();
 	return 0;
 }
 
diff --git a/arch/arm/configs/pca100_defconfig b/arch/arm/configs/pca100_defconfig
index 12753cf..b6fefbf 100644
--- a/arch/arm/configs/pca100_defconfig
+++ b/arch/arm/configs/pca100_defconfig
@@ -1,3 +1,5 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="imx27-phytec-phycard-s-rdk"
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND=y
 CONFIG_MACH_PCA100=y
@@ -15,6 +17,7 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_BLSPEC=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phycard-i.MX27/env"
 CONFIG_RESET_SOURCE=y
@@ -60,6 +63,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
@@ -76,6 +81,7 @@ CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
 CONFIG_MCI=y
 CONFIG_MCI_IMX=y
+CONFIG_IMX_WEIM=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

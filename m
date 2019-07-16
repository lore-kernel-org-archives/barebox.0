Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKoU-0002uo-GG
 for barebox@lists.infradead.org; Tue, 16 Jul 2019 10:36:05 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 16 Jul 2019 12:35:57 +0200
Message-Id: <20190716103557.17446-3-o.rempel@pengutronix.de>
In-Reply-To: <20190716103557.17446-1-o.rempel@pengutronix.de>
References: <20190716103557.17446-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 3/3] arm: port imx28-evk to devicetree
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/freescale-mx28-evk/Makefile   |   2 +-
 arch/arm/boards/freescale-mx28-evk/board.c    |  41 +++
 arch/arm/boards/freescale-mx28-evk/lowlevel.c |   8 +-
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c | 306 ------------------
 arch/arm/configs/freescale-mx28-evk_defconfig |  11 +-
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx28-evk.dts                    |  32 ++
 7 files changed, 90 insertions(+), 311 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx28-evk/board.c
 delete mode 100644 arch/arm/boards/freescale-mx28-evk/mx28-evk.c
 create mode 100644 arch/arm/dts/imx28-evk.dts

diff --git a/arch/arm/boards/freescale-mx28-evk/Makefile b/arch/arm/boards/freescale-mx28-evk/Makefile
index a74ec2451b..01c7a259e9 100644
--- a/arch/arm/boards/freescale-mx28-evk/Makefile
+++ b/arch/arm/boards/freescale-mx28-evk/Makefile
@@ -1,2 +1,2 @@
-obj-y += mx28-evk.o
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx28-evk/board.c b/arch/arm/boards/freescale-mx28-evk/board.c
new file mode 100644
index 0000000000..4590ceaa35
--- /dev/null
+++ b/arch/arm/boards/freescale-mx28-evk/board.c
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2010 Juergen Beisert, Pengutronix <kernel@pengutronix.de>
+ * Copyright (C) 2011 Marc Kleine-Budde, Pengutronix <mkl@pengutronix.de>
+ * Copyright (C) 2011 Wolfram Sang, Pengutronix <w.sang@pengutronix.de>
+ * Copyright (C) 2019 Oleksij Rempel, Pengutronix <o.rempel@pengutronix.de>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <net.h>
+#include <mach/ocotp.h>
+
+static void mx28_evk_get_ethaddr(void)
+{
+	u8 mac_ocotp[3], mac[6];
+	int ret;
+
+	ret = mxs_ocotp_read(mac_ocotp, 3, 0);
+	if (ret != 3) {
+		pr_err("Reading MAC from OCOTP failed!\n");
+		return;
+	}
+
+	mac[0] = 0x00;
+	mac[1] = 0x04;
+	mac[2] = 0x9f;
+	mac[3] = mac_ocotp[2];
+	mac[4] = mac_ocotp[1];
+	mac[5] = mac_ocotp[0];
+
+	eth_register_ethaddr(0, mac);
+}
+
+static int mx28_evk_devices_init(void)
+{
+	mx28_evk_get_ethaddr(); /* must be after registering ocotp */
+
+	return 0;
+}
+fs_initcall(mx28_evk_devices_init);
diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
index 22cae1374c..82411bb516 100644
--- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
@@ -12,9 +12,15 @@
 #include <mach/iomux.h>
 #include <stmp-device.h>
 
+extern char __dtb_imx28_evk_start[];
+
 ENTRY_FUNCTION(start_barebox_freescale_mx28evk, r0, r1, r2)
 {
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, NULL);
+	void *fdt;
+
+	fdt = __dtb_imx28_evk_start + get_runtime_offset();
+
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, fdt);
 }
 
 static const uint32_t iomux_pads[] = {
diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
deleted file mode 100644
index 06a2c21a47..0000000000
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ /dev/null
@@ -1,306 +0,0 @@
-/*
- * Copyright (C) 2010 Juergen Beisert, Pengutronix <kernel@pengutronix.de>
- * Copyright (C) 2011 Marc Kleine-Budde, Pengutronix <mkl@pengutronix.de>
- * Copyright (C) 2011 Wolfram Sang, Pengutronix <w.sang@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <common.h>
-#include <environment.h>
-#include <errno.h>
-#include <platform_data/eth-fec.h>
-#include <gpio.h>
-#include <init.h>
-#include <mci.h>
-#include <io.h>
-#include <net.h>
-
-#include <mach/clock.h>
-#include <mach/imx-regs.h>
-#include <mach/iomux-imx28.h>
-#include <mach/mci.h>
-#include <mach/fb.h>
-#include <mach/iomux.h>
-#include <mach/ocotp.h>
-#include <mach/devices.h>
-#include <mach/usb.h>
-#include <usb/fsl_usb2.h>
-#include <spi/spi.h>
-
-#include <asm/armlinux.h>
-#include <asm/mmu.h>
-
-#include <generated/mach-types.h>
-
-#define MX28EVK_FEC_PHY_RESET_GPIO	141
-
-/* setup the CPU card internal signals */
-static const uint32_t mx28evk_pads[] = {
-	/* duart */
-	PWM0_DUART_RX | VE_3_3V,
-	PWM1_DUART_TX | VE_3_3V,
-
-	/* fec0 */
-	ENET_CLK | VE_3_3V | BITKEEPER(0),
-	ENET0_MDC | VE_3_3V | PULLUP(1),
-	ENET0_MDIO | VE_3_3V | PULLUP(1),
-	ENET0_TXD0 | VE_3_3V | PULLUP(1),
-	ENET0_TXD1 | VE_3_3V | PULLUP(1),
-	ENET0_TX_EN | VE_3_3V | PULLUP(1),
-	ENET0_TX_CLK | VE_3_3V | BITKEEPER(0),
-	ENET0_RXD0 | VE_3_3V | PULLUP(1),
-	ENET0_RXD1 | VE_3_3V | PULLUP(1),
-	ENET0_RX_EN | VE_3_3V | PULLUP(1),
-	/* send a "good morning" to the ext. phy 0 = reset */
-	ENET0_RX_CLK_GPIO | VE_3_3V | PULLUP(0) | GPIO_OUT | GPIO_VALUE(0),
-	/* phy power control 1 = on */
-	SSP1_D3_GPIO | VE_3_3V | PULLUP(0) | GPIO_OUT | GPIO_VALUE(0),
-
-	/* mmc0 */
-	SSP0_D0 | VE_3_3V | PULLUP(1),
-	SSP0_D1 | VE_3_3V | PULLUP(1),
-	SSP0_D2 | VE_3_3V | PULLUP(1),
-	SSP0_D3 | VE_3_3V | PULLUP(1),
-	SSP0_D4 | VE_3_3V | PULLUP(1),
-	SSP0_D5 | VE_3_3V | PULLUP(1),
-	SSP0_D6 | VE_3_3V | PULLUP(1),
-	SSP0_D7 | VE_3_3V | PULLUP(1),
-	SSP0_CMD | VE_3_3V | PULLUP(1),
-	SSP0_CD | VE_3_3V | PULLUP(1),
-	SSP0_SCK | VE_3_3V | BITKEEPER(0),
-	/* MCI slot power control 1 = off */
-	PWM3_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(0),
-	/* MCI write protect 1 = not protected */
-	SSP1_SCK_GPIO | VE_3_3V | GPIO_IN,
-
-	/* lcd */
-	LCD_WR_RWN_LCD_HSYNC | VE_3_3V | STRENGTH(S8MA),
-	LCD_RD_E_LCD_VSYNC | VE_3_3V | STRENGTH(S8MA),
-	LCD_CS_LCD_ENABLE | VE_3_3V | STRENGTH(S8MA),
-	LCD_RS_LCD_DOTCLK | VE_3_3V | STRENGTH(S8MA),
-	LCD_D0 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D1 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D2 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D3 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D4 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D5 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D6 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D7 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D8 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D9 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D10 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D11 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D12 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D13 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D14 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D15 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D16 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D17 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D18 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D19 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D20 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D21 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D22 | VE_3_3V | STRENGTH(S8MA),
-	LCD_D23 | VE_3_3V | STRENGTH(S8MA),
-	LCD_RESET_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(0),
-	/* backlight  */
-	PWM2_GPIO | VE_3_3V | STRENGTH(S4MA) | SE | VE,
-
-	/* GPMI-NAND (blocks mmc1 for now) */
-	GPMI_D0 | VE_3_3V,
-	GPMI_D1 | VE_3_3V,
-	GPMI_D2 | VE_3_3V,
-	GPMI_D3 | VE_3_3V,
-	GPMI_D4 | VE_3_3V,
-	GPMI_D5 | VE_3_3V,
-	GPMI_D6 | VE_3_3V,
-	GPMI_D7 | VE_3_3V,
-	GPMI_READY0 | VE_3_3V,	/* external PU */
-	GPMI_CE0N | VE_3_3V, 	/* external PU */
-	GPMI_RDN | VE_3_3V,
-	GPMI_WRN | VE_3_3V,
-	GPMI_ALE | VE_3_3V,
-	GPMI_CLE | VE_3_3V,
-	GPMI_RESETN,		/* act as WP, external PU */
-
-	/* SSP */
-	SSP2_D0 | VE_3_3V | PULLUP(1) | STRENGTH(S8MA), /* MISO DO */
-	SSP2_D3 | VE_3_3V | PULLUP(1) | STRENGTH(S8MA), /* SS0 !CS */
-	SSP2_CMD | VE_3_3V | PULLUP(1) | STRENGTH(S8MA), /* MOSI DIO */
-	SSP2_SCK | VE_3_3V | PULLUP(1) | STRENGTH(S8MA), /* CLK */
-
-	/* USB VBUS1 ENABLE - default to ON */
-	AUART2_RX_GPIO | VE_3_3V | PULLUP(0) | GPIO_OUT | GPIO_VALUE(1),
-	/* USB VBUS0 ENABLE - default to OFF */
-	AUART2_TX_GPIO | VE_3_3V | PULLUP(0) | GPIO_OUT | GPIO_VALUE(0),
-};
-
-static struct mxs_mci_platform_data mci_pdata = {
-	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA,
-	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
-	.f_min = 400 * 1000,
-	.f_max = 25000000,
-};
-
-/* fec */
-static void mx28_evk_get_ethaddr(void)
-{
-	u8 mac_ocotp[3], mac[6];
-	int ret;
-
-	ret = mxs_ocotp_read(mac_ocotp, 3, 0);
-	if (ret != 3) {
-		pr_err("Reading MAC from OCOTP failed!\n");
-		return;
-	}
-
-	mac[0] = 0x00;
-	mac[1] = 0x04;
-	mac[2] = 0x9f;
-	mac[3] = mac_ocotp[2];
-	mac[4] = mac_ocotp[1];
-	mac[5] = mac_ocotp[0];
-
-	eth_register_ethaddr(0, mac);
-}
-
-static void __init mx28_evk_fec_reset(void)
-{
-	mdelay(1);
-	gpio_set_value(MX28EVK_FEC_PHY_RESET_GPIO, 1);
-}
-
-/* PhyAD[0..2]=0, RMIISEL=1 */
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_RMII,
-	.phy_addr = 0,
-};
-
-/* LCD */
-static struct fb_videomode mx28_evk_vmodes[] = {
-	{
-		.name = "43WVF1G-0",
-		.refresh = 60,
-		.xres = 800,
-		.yres = 480,
-		.pixclock = 29851 /* (33,5 MHz) */,
-		.left_margin = 89,
-		.hsync_len = 10,
-		.right_margin = 164,
-		.upper_margin = 23,
-		.vsync_len = 10,
-		.lower_margin = 10,
-		.sync = FB_SYNC_DE_HIGH_ACT | FB_SYNC_CLK_INVERT,
-		.vmode = FB_VMODE_NONINTERLACED,
-	}
-};
-
-#define MAX_FB_SIZE SZ_2M
-
-#define GPIO_LCD_RESET	126 /* Reset  */
-#define GPIO_BACKLIGHT	114 /* Backlight active */
-
-static void mx28_evk_fb_enable(int enable)
-{
-	gpio_direction_output(GPIO_LCD_RESET, enable);
-
-	/* Give the display a chance to sync before we enable
-	 * the backlight to avoid flickering
-	 */
-	if (enable)
-		mdelay(200);
-
-	gpio_direction_output(GPIO_BACKLIGHT, enable);
-}
-
-static struct imx_fb_platformdata mx28_evk_fb_pdata = {
-	.mode_list = mx28_evk_vmodes,
-	.mode_cnt = ARRAY_SIZE(mx28_evk_vmodes),
-	.dotclk_delay = 0,			/* no adaption required */
-	.ld_intf_width = 24,
-	.bits_per_pixel = 32,
-	.fixed_screen = NULL,
-	.enable = mx28_evk_fb_enable,
-};
-
-static const struct spi_board_info mx28evk_spi_board_info[] = {
-	{
-		.name = "m25p80",
-		/*
-		 * we leave this with the lower frequency
-		 * as the ssp unit otherwise locks up
-		 */
-		.max_speed_hz = 32000000,
-		.bus_num = 2,
-		.chip_select = 0,
-	}
-};
-
-#ifdef CONFIG_USB_GADGET_DRIVER_ARC
-static struct fsl_usb2_platform_data usb_pdata = {
-	.operating_mode	= FSL_USB2_DR_DEVICE,
-	.phy_mode	= FSL_USB2_PHY_UTMI,
-};
-#endif
-static int mx28_evk_devices_init(void)
-{
-	int i;
-
-	/* initizalize muxing */
-	for (i = 0; i < ARRAY_SIZE(mx28evk_pads); i++)
-		imx_gpio_mode(mx28evk_pads[i]);
-
-	armlinux_set_architecture(MACH_TYPE_MX28EVK);
-
-	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0x2000,
-			   IORESOURCE_MEM, &mci_pdata);
-
-	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 0x2000,
-			   IORESOURCE_MEM, &mx28_evk_fb_pdata);
-
-	mx28_evk_get_ethaddr(); /* must be after registering ocotp */
-
-	mx28_evk_fec_reset();
-	add_generic_device("imx28-fec", 0, NULL, IMX_FEC0_BASE, 0x4000,
-			   IORESOURCE_MEM, &fec_info);
-
-	imx28_add_nand();
-
-	spi_register_board_info(mx28evk_spi_board_info,
-			ARRAY_SIZE(mx28evk_spi_board_info));
-
-	add_generic_device("mxs_spi", 2, NULL, IMX_SSP2_BASE, 0x2000,
-			   IORESOURCE_MEM, NULL);
-
-#ifdef CONFIG_USB_GADGET_DRIVER_ARC
-	imx28_usb_phy0_enable();
-	imx28_usb_phy1_enable();
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_USB1_BASE, NULL);
-	add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL, IMX_USB0_BASE,
-			   0x200, IORESOURCE_MEM, &usb_pdata);
-#endif
-
-	return 0;
-}
-device_initcall(mx28_evk_devices_init);
-
-static int mx28_evk_console_init(void)
-{
-	barebox_set_model("Freescale i.MX28 EVK");
-	barebox_set_hostname("mx28evk");
-
-	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 0x2000,
-			   IORESOURCE_MEM, NULL);
-
-	return 0;
-}
-console_initcall(mx28_evk_console_init);
diff --git a/arch/arm/configs/freescale-mx28-evk_defconfig b/arch/arm/configs/freescale-mx28-evk_defconfig
index 6c0bb02891..98ed5720cb 100644
--- a/arch/arm/configs/freescale-mx28-evk_defconfig
+++ b/arch/arm/configs/freescale-mx28-evk_defconfig
@@ -1,11 +1,11 @@
 CONFIG_ARCH_MXS=y
 CONFIG_ARCH_IMX28=y
+CONFIG_IMX28_MULTI_BOARDS=y
 CONFIG_MACH_MX28EVK=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x0
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
@@ -20,11 +20,11 @@ CONFIG_BOOTM_INITRD=y
 CONFIG_BLSPEC=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_INFO=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_REGULATOR=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
@@ -45,7 +45,6 @@ CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_READF=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
-CONFIG_CMD_HOST=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
@@ -68,10 +67,14 @@ CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_AUART=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_DRIVER_SPI_MXS=y
 CONFIG_MTD=y
+CONFIG_MTD_M25P80=y
+CONFIG_MTD_SST25L=y
 CONFIG_NAND=y
 CONFIG_NAND_MXS=y
 CONFIG_VIDEO=y
@@ -80,6 +83,8 @@ CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MXS=y
 CONFIG_MXS_APBH_DMA=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 561653930b..42fe5154fd 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -37,6 +37,7 @@ pbl-dtb-$(CONFIG_MACH_KONTRON_SAMX6I) += imx6q-samx6i.dtb.o \
 					imx6dl-samx6i.dtb.o
 pbl-dtb-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o armada-xp-db-bb.dtb.o
+pbl-dtb-$(CONFIG_MACH_MX28EVK) += imx28-evk.dtb.o
 pbl-dtb-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_NETGEAR_RN2120) += armada-xp-rn2120-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_NITROGEN6) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
diff --git a/arch/arm/dts/imx28-evk.dts b/arch/arm/dts/imx28-evk.dts
new file mode 100644
index 0000000000..c82dfa4d8c
--- /dev/null
+++ b/arch/arm/dts/imx28-evk.dts
@@ -0,0 +1,32 @@
+#include <arm/imx28-evk.dts>
+
+/ {
+	chosen {
+		stdout-path = &duart;
+
+		environment {
+			compatible = "barebox,environment";
+			device-path = &gpmi, "partname:environment";
+		};
+	};
+};
+
+&ocotp {
+	status = "okay";
+};
+
+&gpmi {
+	partition@0 {
+		label = "boot";
+		reg = <0x0 0x80000>;
+	};
+
+	partition@80000 {
+		label = "environment";
+		reg = <0x80000 0x80000>;
+	};
+};
+
+&mac1 {
+	status = "disabled";
+};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

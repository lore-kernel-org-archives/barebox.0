Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwGlY-0002pL-Vd
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 18:01:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 20:01:49 +0200
Message-Id: <1343757710-12659-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343757710-12659-1-git-send-email-s.hauer@pengutronix.de>
References: <1343757710-12659-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM i.MX: Add support for the Freescale i.MX6 sabrelite
 board
To: barebox@lists.infradead.org

This adds support for the Freescale i.MX6 sabrelite board with:

- FEC
- SD2/3
- SPI flash

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/freescale-mx6-sabrelite/Makefile   |    1 +
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |  265 ++++++++++++++++++++
 arch/arm/boards/freescale-mx6-sabrelite/config.h   |    4 +
 .../freescale-mx6-sabrelite/env/init/bootargs-base |    8 +
 .../freescale-mx6-sabrelite/env/init/hostname      |    8 +
 .../boards/freescale-mx6-sabrelite/flash_header.c  |  178 +++++++++++++
 arch/arm/mach-imx/Kconfig                          |    5 +
 8 files changed, 470 insertions(+)
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/Makefile
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/board.c
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/config.h
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/init/bootargs-base
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/init/hostname
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/flash_header.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 1225df7..a02bc51 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -137,6 +137,7 @@ board-$(CONFIG_MACH_TX51)			:= karo-tx51
 board-$(CONFIG_MACH_MX6Q_ARM2)			:= freescale-mx6-arm2
 board-$(CONFIG_MACH_TOSHIBA_AC100)		:= toshiba-ac100
 board-$(CONFIG_MACH_CCMX51)			:= ccxmx51
+board-$(CONFIG_MACH_SABRELITE)			:= freescale-mx6-sabrelite
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/Makefile b/arch/arm/boards/freescale-mx6-sabrelite/Makefile
new file mode 100644
index 0000000..ad2e1be
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabrelite/Makefile
@@ -0,0 +1 @@
+obj-y += board.o flash_header.o
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
new file mode 100644
index 0000000..13279bc
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -0,0 +1,265 @@
+/*
+ * Copyright (C) 2012 Steffen Trumtrar, Pengutronix
+ *
+ * based on arch/arm/boards/freescale-mx6-arm2/board.c
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <environment.h>
+#include <mach/imx-regs.h>
+#include <fec.h>
+#include <mach/gpio.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <miidev.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <mach/generic.h>
+#include <sizes.h>
+#include <net.h>
+#include <mach/imx6.h>
+#include <mach/devices-imx6.h>
+#include <mach/iomux-mx6.h>
+#include <mach/gpio.h>
+#include <spi/spi.h>
+#include <mach/spi.h>
+
+#define SABRELITE_SD3_WP	IMX_GPIO_NR(7, 1)
+#define SABRELITE_SD3_CD	IMX_GPIO_NR(7, 0)
+
+#define SABRELITE_SD4_CD	IMX_GPIO_NR(2, 6)
+
+static iomux_v3_cfg_t sabrelite_pads[] = {
+	/* UART1 */
+	MX6Q_PAD_SD3_DAT6__UART1_RXD,
+	MX6Q_PAD_SD3_DAT7__UART1_TXD,
+	MX6Q_PAD_EIM_D26__UART2_TXD,
+	MX6Q_PAD_EIM_D27__UART2_RXD,
+
+	/* SD3 (bottom) */
+	MX6Q_PAD_SD3_CMD__USDHC3_CMD,
+	MX6Q_PAD_SD3_CLK__USDHC3_CLK,
+	MX6Q_PAD_SD3_DAT0__USDHC3_DAT0,
+	MX6Q_PAD_SD3_DAT1__USDHC3_DAT1,
+	MX6Q_PAD_SD3_DAT2__USDHC3_DAT2,
+	MX6Q_PAD_SD3_DAT3__USDHC3_DAT3,
+	MX6Q_PAD_SD3_DAT4__GPIO_7_1, /* WP */
+	MX6Q_PAD_SD3_DAT5__GPIO_7_0, /* CD */
+
+	/* SD4 (top) */
+	MX6Q_PAD_SD4_CLK__USDHC4_CLK,
+	MX6Q_PAD_SD4_CMD__USDHC4_CMD,
+	MX6Q_PAD_SD4_DAT0__USDHC4_DAT0,
+	MX6Q_PAD_SD4_DAT1__USDHC4_DAT1,
+	MX6Q_PAD_SD4_DAT2__USDHC4_DAT2,
+	MX6Q_PAD_SD4_DAT3__USDHC4_DAT3,
+	MX6Q_PAD_NANDF_D6__GPIO_2_6, /* CD */
+
+	/* ECSPI */
+	MX6Q_PAD_EIM_D16__ECSPI1_SCLK,
+	MX6Q_PAD_EIM_D17__ECSPI1_MISO,
+	MX6Q_PAD_EIM_D18__ECSPI1_MOSI,
+	MX6Q_PAD_EIM_D19__GPIO_3_19,	/* CS1 */
+};
+
+static iomux_v3_cfg_t sabrelite_enet_pads[] = {
+	/* Ethernet */
+	MX6Q_PAD_ENET_MDC__ENET_MDC,
+	MX6Q_PAD_ENET_MDIO__ENET_MDIO,
+	MX6Q_PAD_ENET_REF_CLK__GPIO_1_23,	// LED mode
+	MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK,
+	MX6Q_PAD_RGMII_TXC__ENET_RGMII_TXC,
+	MX6Q_PAD_RGMII_TD0__ENET_RGMII_TD0,
+	MX6Q_PAD_RGMII_TD1__ENET_RGMII_TD1,
+	MX6Q_PAD_RGMII_TD2__ENET_RGMII_TD2,
+	MX6Q_PAD_RGMII_TD3__ENET_RGMII_TD3,
+	MX6Q_PAD_RGMII_TX_CTL__ENET_RGMII_TX_CTL,
+	MX6Q_PAD_EIM_D23__GPIO_3_23,		/* RGMII_nRST */
+	MX6Q_PAD_RGMII_RXC__GPIO_6_30,		/* PHYAD */
+	MX6Q_PAD_RGMII_RD0__GPIO_6_25,		/* MODE0 */
+	MX6Q_PAD_RGMII_RD1__GPIO_6_27,		/* MODE1 */
+	MX6Q_PAD_RGMII_RD2__GPIO_6_28,		/* MODE2 */
+	MX6Q_PAD_RGMII_RD3__GPIO_6_29,		/* MODE3 */
+	MX6Q_PAD_RGMII_RX_CTL__GPIO_6_24,
+};
+
+static iomux_v3_cfg_t sabrelite_enet2_pads[] = {
+	MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK,
+	MX6Q_PAD_RGMII_RXC__ENET_RGMII_RXC,
+	MX6Q_PAD_RGMII_RD0__ENET_RGMII_RD0,
+	MX6Q_PAD_RGMII_RD1__ENET_RGMII_RD1,
+	MX6Q_PAD_RGMII_RD2__ENET_RGMII_RD2,
+	MX6Q_PAD_RGMII_RD3__ENET_RGMII_RD3,
+	MX6Q_PAD_RGMII_RX_CTL__ENET_RGMII_RX_CTL,
+};
+
+static int sabrelite_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x10000000, SZ_1G);
+
+	return 0;
+}
+mem_initcall(sabrelite_mem_init);
+
+static struct fec_platform_data fec_info = {
+	.xcv_type = RGMII,
+	.phy_addr = 6,
+};
+
+int mx6_rgmii_rework(void)
+{
+	struct mii_device *mdev;
+
+	mdev = mii_open("phy0");
+	if (!mdev) {
+		printf("unable to open phy0\n");
+		return -ENODEV;
+	}
+
+	mii_write(mdev, mdev->address, 0x09, 0x0f00);
+
+	/* do same as linux kernel */
+	/* min rx data delay */
+	mii_write(mdev, mdev->address, 0x0b, 0x8105);
+	mii_write(mdev, mdev->address, 0x0c, 0x0000);
+
+	/* max rx/tx clock delay, min rx/tx control delay */
+	mii_write(mdev, mdev->address, 0x0b, 0x8104);
+	mii_write(mdev, mdev->address, 0x0c, 0xf0f0);
+	mii_write(mdev, mdev->address, 0x0b, 0x104);
+
+	mii_close(mdev);
+
+	return 0;
+}
+
+static int sabrelite_ksz9021rn_setup(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(sabrelite_enet_pads, ARRAY_SIZE(sabrelite_enet_pads));
+
+	gpio_direction_output(87, 0);  /* GPIO 3-23 */
+
+	gpio_direction_output(190, 1); /* GPIO 6-30: PHYAD2 */
+
+	/* LED-Mode: Tri-Color Dual LED Mode */
+	gpio_direction_output(23 , 0); /* GPIO 1-23 */
+
+	/* MODE strap-in pins: advertise all capabilities */
+	gpio_direction_output(185, 1); /* GPIO 6-25 */
+	gpio_direction_output(187, 1); /* GPIO 6-27 */
+	gpio_direction_output(188, 1); /* GPIO 6-28*/
+	gpio_direction_output(189, 1); /* GPIO 6-29 */
+
+	/* Enable 125 MHz clock output */
+        gpio_direction_output(184, 1); /* GPIO 6-24 */
+
+	mdelay(10);
+	gpio_set_value(87, 1);
+
+	mxc_iomux_v3_setup_multiple_pads(sabrelite_enet2_pads, ARRAY_SIZE(sabrelite_enet2_pads));
+
+	return 0;
+}
+
+static inline int imx6_iim_register_fec_ethaddr(void)
+{
+	u32 value;
+	u8 buf[6];
+
+	value = readl(MX6_OCOTP_BASE_ADDR + 0x630);
+	buf[0] = (value >> 8);
+	buf[1] = value;
+
+	value = readl(MX6_OCOTP_BASE_ADDR + 0x620);
+	buf[2] = value >> 24;
+	buf[3] = value >> 16;
+	buf[4] = value >> 8;
+	buf[5] = value;
+
+	eth_register_ethaddr(0, buf);
+
+	return 0;
+}
+
+static int sabrelite_spi_cs[] = {GPIO_PORTC + 19};
+
+static struct spi_imx_master sabrelite_spi_0_data = {
+	.chipselect = sabrelite_spi_cs,
+	.num_chipselect = ARRAY_SIZE(sabrelite_spi_cs),
+};
+
+static const struct spi_board_info sabrelite_spi_board_info[] = {
+	{
+		.name = "m25p",
+		.max_speed_hz = 40000000,
+		.bus_num = 0,
+		.chip_select = 0,
+	}
+};
+
+static struct esdhc_platform_data sabrelite_sd3_data = {
+	.cd_gpio = SABRELITE_SD3_CD,
+	.cd_type = ESDHC_CD_GPIO,
+	.wp_gpio = SABRELITE_SD3_WP,
+	.wp_type = ESDHC_WP_GPIO,
+};
+
+static struct esdhc_platform_data sabrelite_sd4_data = {
+	.cd_gpio = SABRELITE_SD4_CD,
+	.cd_type = ESDHC_CD_GPIO,
+	.wp_type = ESDHC_WP_NONE,
+};
+
+static int sabrelite_devices_init(void)
+{
+	imx6_add_mmc2(&sabrelite_sd3_data);
+	imx6_add_mmc3(&sabrelite_sd4_data);
+
+	sabrelite_ksz9021rn_setup();
+	imx6_iim_register_fec_ethaddr();
+	imx6_add_fec(&fec_info);
+	mx6_rgmii_rework();
+
+	spi_register_board_info(sabrelite_spi_board_info,
+			ARRAY_SIZE(sabrelite_spi_board_info));
+	imx6_add_spi0(&sabrelite_spi_0_data);
+
+	armlinux_set_bootparams((void *)0x10000100);
+	armlinux_set_architecture(3769);
+
+	devfs_add_partition("m25p0", 0, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("m25p0", SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, "env0");
+
+	return 0;
+}
+
+device_initcall(sabrelite_devices_init);
+
+static int sabrelite_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(sabrelite_pads, ARRAY_SIZE(sabrelite_pads));
+
+	imx6_init_lowlevel();
+
+	imx6_add_uart1();
+
+	return 0;
+}
+console_initcall(sabrelite_console_init);
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/config.h b/arch/arm/boards/freescale-mx6-sabrelite/config.h
new file mode 100644
index 0000000..ca15136
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabrelite/config.h
@@ -0,0 +1,4 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/env/init/bootargs-base b/arch/arm/boards/freescale-mx6-sabrelite/env/init/bootargs-base
new file mode 100644
index 0000000..2c51feb
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabrelite/env/init/bootargs-base
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Base bootargs"
+	exit
+fi
+
+global.linux.bootargs.base="console=ttymxc1,115200"
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/env/init/hostname b/arch/arm/boards/freescale-mx6-sabrelite/env/init/hostname
new file mode 100644
index 0000000..db5b2b2
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabrelite/env/init/hostname
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "hostname"
+	exit
+fi
+
+global.hostname=SabreLite
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/flash_header.c b/arch/arm/boards/freescale-mx6-sabrelite/flash_header.c
new file mode 100644
index 0000000..61d482b
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabrelite/flash_header.c
@@ -0,0 +1,178 @@
+/*
+ * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <asm/byteorder.h>
+#include <mach/imx-flash-header.h>
+#include <mach/imx6-regs.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked __flash_header_start go(void)
+{
+	barebox_arm_head();
+}
+
+#define DCD(a, v) { .addr = cpu_to_be32(a), .val = cpu_to_be32(v), }
+
+struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5a8, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5b0, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x524, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x51c, 0x00000030),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x518, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x50c, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5b8, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5c0, 0x00000030),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5ac, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5b4, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x528, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x520, 0x00020030),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x514, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x510, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5bc, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5c4, 0x00020030),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x56c, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x578, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x588, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x594, 0x00020030),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x57c, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x590, 0x00003000),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x598, 0x00003000),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x58c, 0x00000000),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x59c, 0x00003030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5a0, 0x00003030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x784, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x788, 0x00000030),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x794, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x79c, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x7a0, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x7a4, 0x00000030),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x7a8, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x748, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x74c, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x750, 0x00020000),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x758, 0x00000000),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x774, 0x00020000),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x78c, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x798, 0x000C0000),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x81c, 0x33333333),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x820, 0x33333333),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x824, 0x33333333),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x828, 0x33333333),
+
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x81c, 0x33333333),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x820, 0x33333333),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x824, 0x33333333),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x828, 0x33333333),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x018, 0x00081740),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00008000),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x00c, 0x555A7975),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x010, 0xFF538E64),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x014, 0x01FF00DB),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x02c, 0x000026D2),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x030, 0x005B0E21),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x008, 0x09444040),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x004, 0x00025576),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x040, 0x00000027),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x000, 0x831A0000),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x04088032),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x0408803A),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00008033),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x0000803B),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00428031),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00428039),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x09408030),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x09408038),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x04008040),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x04008048),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x800, 0xA1380003),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x800, 0xA1380003),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x020, 0x00005800),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x818, 0x00022227),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x818, 0x00022227),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x83c, 0x434B0350),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x840, 0x034C0359),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x83c, 0x434B0350),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x840, 0x03650348),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x848, 0x4436383B),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x848, 0x39393341),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x850, 0x35373933),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x850, 0x48254A36),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x80c, 0x001F001F),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x810, 0x001F001F),
+
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x80c, 0x00440044),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x810, 0x00440044),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x8b8, 0x00000800),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x8b8, 0x00000800),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00000000),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x404, 0x00011006),
+
+	DCD(MX6_CCM_BASE_ADDR + 0x068, 0x00c03f3f),
+	DCD(MX6_CCM_BASE_ADDR + 0x06c, 0x0030fc03),
+	DCD(MX6_CCM_BASE_ADDR + 0x070, 0x0fffc000),
+	DCD(MX6_CCM_BASE_ADDR + 0x074, 0x3ff00000),
+	DCD(MX6_CCM_BASE_ADDR + 0x078, 0x00fff300),
+	DCD(MX6_CCM_BASE_ADDR + 0x07c, 0x0f0000c3),
+	DCD(MX6_CCM_BASE_ADDR + 0x080, 0x000003ff),
+
+	/* enable AXI cache for VDOA/VPU/IPU */
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x010, 0xf00000cf),
+	/* set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7 */
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x018, 0x007f007f),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x01c, 0x007f007f),
+};
+
+#define APP_DEST	CONFIG_TEXT_BASE
+
+struct imx_flash_header_v2 __flash_header_section flash_header = {
+	.header.tag		= IVT_HEADER_TAG,
+	.header.length		= cpu_to_be16(32),
+	.header.version		= IVT_VERSION,
+	.entry			= (u32)_stext,
+	.dcd_ptr		= APP_DEST + FLASH_HEADER_OFFSET + offsetof(struct imx_flash_header_v2, dcd),
+	.boot_data_ptr		= APP_DEST + FLASH_HEADER_OFFSET + offsetof(struct imx_flash_header_v2, boot_data),
+	.self			= APP_DEST + FLASH_HEADER_OFFSET,
+
+	.boot_data.start	= APP_DEST,
+	.boot_data.size		= barebox_image_size,
+
+	.dcd.header.tag		= DCD_HEADER_TAG,
+	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
+	.dcd.header.version	= DCD_VERSION,
+
+	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
+	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
+	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index e54d498..490609f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -27,6 +27,7 @@ config ARCH_TEXT_BASE
 	default 0x97f00000 if MACH_TX51
 	default 0x4fc00000 if MACH_MX6Q_ARM2
 	default 0x97f00000 if MACH_CCMX51
+	default 0x4fc00000 if MACH_SABRELITE
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -52,6 +53,7 @@ config BOARDINFO
 	default "Ka-Ro tx51" if MACH_TX51
 	default "Freescale i.MX6q armadillo2" if MACH_MX6Q_ARM2
 	default "ConnectCore i.MX51" if MACH_CCMX51
+	default "Sabre Lite" if MACH_SABRELITE
 
 choice
 	prompt "Select boot mode"
@@ -475,6 +477,9 @@ choice
 config MACH_MX6Q_ARM2
 	bool "Freescale i.MX6q Armadillo2"
 
+config MACH_SABRELITE
+	bool "Freescale i.MX6 Sabre Lite"
+
 endchoice
 
 endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RwtKy-0008Rl-DY
 for barebox@lists.infradead.org; Mon, 13 Feb 2012 10:40:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Feb 2012 11:40:36 +0100
Message-Id: <1329129636-22269-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329129636-22269-1-git-send-email-s.hauer@pengutronix.de>
References: <1329129636-22269-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] initial tqm53 support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                     |    1 +
 arch/arm/boards/tqma53/Makefile       |    2 +
 arch/arm/boards/tqma53/board.c        |  272 +++++++++++++++++++++++++++++++++
 arch/arm/boards/tqma53/config.h       |    4 +
 arch/arm/boards/tqma53/env/config     |   43 +++++
 arch/arm/boards/tqma53/flash_header.c |  109 +++++++++++++
 arch/arm/configs/tqma53_defconfig     |   64 ++++++++
 arch/arm/mach-imx/Kconfig             |   11 ++
 8 files changed, 506 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/tqma53/Makefile
 create mode 100644 arch/arm/boards/tqma53/board.c
 create mode 100644 arch/arm/boards/tqma53/config.h
 create mode 100644 arch/arm/boards/tqma53/env/config
 create mode 100644 arch/arm/boards/tqma53/flash_header.c
 create mode 100644 arch/arm/configs/tqma53_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 5d7c344..9926280 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -119,6 +119,7 @@ board-$(CONFIG_MACH_USB_A9263)			:= usb-a926x
 board-$(CONFIG_MACH_USB_A9G20)			:= usb-a926x
 board-$(CONFIG_MACH_VERSATILEPB)		:= versatile
 board-$(CONFIG_MACH_TX25)			:= karo-tx25
+board-$(CONFIG_MACH_TQMA53)			:= tqma53
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/tqma53/Makefile b/arch/arm/boards/tqma53/Makefile
new file mode 100644
index 0000000..b56ce7f
--- /dev/null
+++ b/arch/arm/boards/tqma53/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+obj-y += flash_header.o
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
new file mode 100644
index 0000000..020eb68
--- /dev/null
+++ b/arch/arm/boards/tqma53/board.c
@@ -0,0 +1,272 @@
+/*
+ * Copyright (C) 2011 Sascha Hauer, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <environment.h>
+#include <fcntl.h>
+#include <fec.h>
+#include <fs.h>
+#include <init.h>
+#include <nand.h>
+#include <net.h>
+#include <partition.h>
+#include <sizes.h>
+#include <mci.h>
+#include <io.h>
+
+#include <asm/armlinux.h>
+#include <asm/mmu.h>
+#include <generated/mach-types.h>
+
+#include <mach/imx-regs.h>
+#include <mach/iomux-mx53.h>
+#include <mach/devices-imx53.h>
+#include <mach/generic.h>
+#include <mach/gpio.h>
+#include <mach/imx-nand.h>
+#include <mach/iim.h>
+#include <mach/imx5.h>
+
+static struct fec_platform_data fec_info = {
+	.xcv_type = RMII,
+};
+
+static struct pad_desc tqma53_pads[] = {
+	MX53_PAD_KEY_ROW1__AUDMUX_AUD5_RXD,
+	MX53_PAD_KEY_COL0__AUDMUX_AUD5_TXC,
+	MX53_PAD_KEY_ROW0__AUDMUX_AUD5_TXD,
+	MX53_PAD_KEY_COL1__AUDMUX_AUD5_TXFS,
+	MX53_PAD_KEY_ROW2__CAN1_RXCAN,
+	MX53_PAD_KEY_COL2__CAN1_TXCAN,
+	MX53_PAD_KEY_ROW4__CAN2_RXCAN,
+	MX53_PAD_KEY_COL4__CAN2_TXCAN,
+	MX53_PAD_GPIO_19__CCM_CLKO,
+	MX53_PAD_NANDF_CS2__CCM_CSI0_MCLK,
+	MX53_PAD_SD1_DATA0__CSPI_MISO,
+	MX53_PAD_SD1_CMD__CSPI_MOSI,
+	MX53_PAD_SD1_CLK__CSPI_SCLK,
+	MX53_PAD_SD1_DATA1__CSPI_SS0,
+	MX53_PAD_SD1_DATA2__CSPI_SS1,
+	MX53_PAD_SD1_DATA3__CSPI_SS2,
+	MX53_PAD_EIM_D17__ECSPI1_MISO,
+	MX53_PAD_EIM_D18__ECSPI1_MOSI,
+	MX53_PAD_EIM_D16__ECSPI1_SCLK,
+	MX53_PAD_EIM_EB2__ECSPI1_SS0,
+	MX53_PAD_EIM_D19__ECSPI1_SS1,
+	MX53_PAD_EIM_D24__ECSPI1_SS2,
+	MX53_PAD_EIM_D25__ECSPI1_SS3,
+	MX53_PAD_GPIO_4__ESDHC2_CD,
+	MX53_PAD_SD2_CLK__ESDHC2_CLK,
+	MX53_PAD_SD2_CMD__ESDHC2_CMD,
+	MX53_PAD_SD2_DATA0__ESDHC2_DAT0,
+	MX53_PAD_SD2_DATA1__ESDHC2_DAT1,
+	MX53_PAD_SD2_DATA2__ESDHC2_DAT2,
+	MX53_PAD_SD2_DATA3__ESDHC2_DAT3,
+	MX53_PAD_GPIO_2__ESDHC2_WP,
+	MX53_PAD_PATA_IORDY__ESDHC3_CLK,
+	MX53_PAD_PATA_RESET_B__ESDHC3_CMD,
+	MX53_PAD_PATA_DATA8__ESDHC3_DAT0,
+	MX53_PAD_PATA_DATA9__ESDHC3_DAT1,
+	MX53_PAD_PATA_DATA10__ESDHC3_DAT2,
+	MX53_PAD_PATA_DATA11__ESDHC3_DAT3,
+	MX53_PAD_PATA_DATA0__ESDHC3_DAT4,
+	MX53_PAD_PATA_DATA1__ESDHC3_DAT5,
+	MX53_PAD_PATA_DATA2__ESDHC3_DAT6,
+	MX53_PAD_PATA_DATA3__ESDHC3_DAT7,
+	MX53_PAD_FEC_MDC__FEC_MDC,
+	MX53_PAD_FEC_MDIO__FEC_MDIO,
+	MX53_PAD_FEC_RXD0__FEC_RDATA_0,
+	MX53_PAD_FEC_RXD1__FEC_RDATA_1,
+	MX53_PAD_FEC_CRS_DV__FEC_RX_DV,
+	MX53_PAD_FEC_RX_ER__FEC_RX_ER,
+	MX53_PAD_FEC_TXD0__FEC_TDATA_0,
+	MX53_PAD_FEC_TXD1__FEC_TDATA_1,
+	MX53_PAD_FEC_REF_CLK__FEC_TX_CLK,
+	MX53_PAD_FEC_TX_EN__FEC_TX_EN,
+	MX53_PAD_GPIO_7__FIRI_RXD,
+	MX53_PAD_GPIO_8__FIRI_TXD,
+	MX53_PAD_GPIO_0__GPIO1_0,
+	MX53_PAD_GPIO_3__GPIO1_3,
+	MX53_PAD_PATA_DATA14__GPIO2_14,
+	MX53_PAD_PATA_DATA15__GPIO2_15,
+	MX53_PAD_EIM_CS0__GPIO2_23,
+	MX53_PAD_EIM_OE__GPIO2_25,
+	MX53_PAD_EIM_RW__GPIO2_26,
+	MX53_PAD_EIM_LBA__GPIO2_27,
+	MX53_PAD_PATA_DATA5__GPIO2_5,
+	MX53_PAD_PATA_DATA6__GPIO2_6,
+	MX53_PAD_PATA_DATA7__GPIO2_7,
+	MX53_PAD_EIM_DA11__GPIO3_11,
+	MX53_PAD_EIM_DA12__GPIO3_12,
+	MX53_PAD_EIM_DA13__GPIO3_13,
+	MX53_PAD_EIM_DA14__GPIO3_14,
+	MX53_PAD_EIM_D20__GPIO3_20,
+	MX53_PAD_EIM_D21__GPIO3_21,
+	MX53_PAD_EIM_D22__GPIO3_22,
+	MX53_PAD_EIM_D28__GPIO3_28,
+	MX53_PAD_EIM_D29__GPIO3_29,
+	MX53_PAD_EIM_WAIT__GPIO5_0,
+	MX53_PAD_PATA_DA_1__GPIO7_7,
+	MX53_PAD_PATA_DA_2__GPIO7_8,
+	MX53_PAD_KEY_COL3__I2C2_SCL,
+	MX53_PAD_KEY_ROW3__I2C2_SDA,
+	MX53_PAD_GPIO_5__I2C3_SCL,
+	MX53_PAD_GPIO_6__I2C3_SDA,
+	MX53_PAD_CSI0_DAT10__IPU_CSI0_D_10,
+	MX53_PAD_CSI0_DAT11__IPU_CSI0_D_11,
+	MX53_PAD_CSI0_DAT12__IPU_CSI0_D_12,
+	MX53_PAD_CSI0_DAT13__IPU_CSI0_D_13,
+	MX53_PAD_CSI0_DAT14__IPU_CSI0_D_14,
+	MX53_PAD_CSI0_DAT15__IPU_CSI0_D_15,
+	MX53_PAD_CSI0_DAT16__IPU_CSI0_D_16,
+	MX53_PAD_CSI0_DAT17__IPU_CSI0_D_17,
+	MX53_PAD_CSI0_DAT18__IPU_CSI0_D_18,
+	MX53_PAD_CSI0_DAT19__IPU_CSI0_D_19,
+	MX53_PAD_CSI0_DAT4__IPU_CSI0_D_4,
+	MX53_PAD_CSI0_DAT5__IPU_CSI0_D_5,
+	MX53_PAD_CSI0_DAT6__IPU_CSI0_D_6,
+	MX53_PAD_CSI0_DAT7__IPU_CSI0_D_7,
+	MX53_PAD_CSI0_DAT8__IPU_CSI0_D_8,
+	MX53_PAD_CSI0_DAT9__IPU_CSI0_D_9,
+	MX53_PAD_CSI0_DATA_EN__IPU_CSI0_DATA_EN,
+	MX53_PAD_CSI0_MCLK__IPU_CSI0_HSYNC,
+	MX53_PAD_CSI0_PIXCLK__IPU_CSI0_PIXCLK,
+	MX53_PAD_CSI0_VSYNC__IPU_CSI0_VSYNC,
+	MX53_PAD_EIM_A16__IPU_DI1_DISP_CLK,
+	MX53_PAD_EIM_DA10__IPU_DI1_PIN15,
+	MX53_PAD_EIM_D23__IPU_DI1_PIN2,
+	MX53_PAD_EIM_EB3__IPU_DI1_PIN3,
+	MX53_PAD_EIM_DA15__IPU_DI1_PIN4,
+	MX53_PAD_EIM_CS1__IPU_DI1_PIN6,
+	MX53_PAD_EIM_DA9__IPU_DISP1_DAT_0,
+	MX53_PAD_EIM_DA8__IPU_DISP1_DAT_1,
+	MX53_PAD_EIM_EB1__IPU_DISP1_DAT_10,
+	MX53_PAD_EIM_EB0__IPU_DISP1_DAT_11,
+	MX53_PAD_EIM_A17__IPU_DISP1_DAT_12,
+	MX53_PAD_EIM_A18__IPU_DISP1_DAT_13,
+	MX53_PAD_EIM_A19__IPU_DISP1_DAT_14,
+	MX53_PAD_EIM_A20__IPU_DISP1_DAT_15,
+	MX53_PAD_EIM_A21__IPU_DISP1_DAT_16,
+	MX53_PAD_EIM_A22__IPU_DISP1_DAT_17,
+	MX53_PAD_EIM_A23__IPU_DISP1_DAT_18,
+	MX53_PAD_EIM_A24__IPU_DISP1_DAT_19,
+	MX53_PAD_EIM_DA7__IPU_DISP1_DAT_2,
+	MX53_PAD_EIM_D31__IPU_DISP1_DAT_20,
+	MX53_PAD_EIM_D30__IPU_DISP1_DAT_21,
+	MX53_PAD_EIM_D26__IPU_DISP1_DAT_22,
+	MX53_PAD_EIM_D27__IPU_DISP1_DAT_23,
+	MX53_PAD_EIM_DA6__IPU_DISP1_DAT_3,
+	MX53_PAD_EIM_DA5__IPU_DISP1_DAT_4,
+	MX53_PAD_EIM_DA4__IPU_DISP1_DAT_5,
+	MX53_PAD_EIM_DA3__IPU_DISP1_DAT_6,
+	MX53_PAD_EIM_DA2__IPU_DISP1_DAT_7,
+	MX53_PAD_EIM_DA1__IPU_DISP1_DAT_8,
+	MX53_PAD_EIM_DA0__IPU_DISP1_DAT_9,
+	MX53_PAD_LVDS0_CLK_P__LDB_LVDS0_CLK,
+	MX53_PAD_LVDS0_TX0_P__LDB_LVDS0_TX0,
+	MX53_PAD_LVDS0_TX1_P__LDB_LVDS0_TX1,
+	MX53_PAD_LVDS0_TX2_P__LDB_LVDS0_TX2,
+	MX53_PAD_LVDS0_TX3_P__LDB_LVDS0_TX3,
+	MX53_PAD_LVDS1_CLK_P__LDB_LVDS1_CLK,
+	MX53_PAD_LVDS1_TX0_P__LDB_LVDS1_TX0,
+	MX53_PAD_LVDS1_TX1_P__LDB_LVDS1_TX1,
+	MX53_PAD_LVDS1_TX2_P__LDB_LVDS1_TX2,
+	MX53_PAD_LVDS1_TX3_P__LDB_LVDS1_TX3,
+	MX53_PAD_GPIO_18__OWIRE_LINE,
+	MX53_PAD_GPIO_1__PWM2_PWMO,
+	MX53_PAD_GPIO_16__SPDIF_IN1,
+	MX53_PAD_GPIO_17__SPDIF_OUT1,
+	MX53_PAD_PATA_DMACK__UART1_RXD_MUX,
+	MX53_PAD_PATA_DIOW__UART1_TXD_MUX,
+	MX53_PAD_PATA_INTRQ__UART2_CTS,
+	MX53_PAD_PATA_DIOR__UART2_RTS,
+	MX53_PAD_PATA_BUFFER_EN__UART2_RXD_MUX,
+	MX53_PAD_PATA_DMARQ__UART2_TXD_MUX,
+	MX53_PAD_PATA_CS_1__UART3_RXD_MUX,
+	MX53_PAD_PATA_CS_0__UART3_TXD_MUX,
+
+	/* SD2 card detect */
+	MX53_PAD_GPIO_4__GPIO1_4,
+	/* SD2 write protect */
+	MX53_PAD_GPIO_2__GPIO1_2,
+	/* phy reset */
+	MX53_PAD_PATA_DA_0__GPIO7_6,
+};
+
+#define GPIO_FEC_NRESET	IMX_GPIO_NR(7, 6)
+
+static int tqma53_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x70000000, SZ_512M);
+#ifdef CONFIG_MACH_TQMA53_1GB_RAM
+	arm_add_mem_device("ram1", 0xb0000000, SZ_512M);
+#endif
+
+	return 0;
+}
+mem_initcall(tqma53_mem_init);
+
+#define GPIO_SD2_CD			IMX_GPIO_NR(1, 4)
+#define GPIO_SD2_WP			IMX_GPIO_NR(1, 2)
+
+static struct esdhc_platform_data tqma53_sd2_data = {
+	.cd_gpio = GPIO_SD2_CD,
+	.wp_gpio = GPIO_SD2_WP,
+	.cd_type = ESDHC_CD_GPIO,
+	.wp_type = ESDHC_WP_GPIO,
+};
+
+static struct esdhc_platform_data tqma53_sd3_data = {
+	.cd_type = ESDHC_CD_PERMANENT,
+	.wp_type = ESDHC_WP_NONE,
+	.caps = MMC_MODE_8BIT | MMC_MODE_4BIT,
+};
+
+static int tqma53_devices_init(void)
+{
+	gpio_direction_output(GPIO_FEC_NRESET, 0);
+	mdelay(1);
+	gpio_set_value(GPIO_FEC_NRESET, 1);
+
+	imx51_iim_register_fec_ethaddr();
+	imx53_add_fec(&fec_info);
+	imx53_add_mmc1(&tqma53_sd2_data);
+	imx53_add_mmc2(&tqma53_sd3_data);
+
+	armlinux_set_bootparams((void *)0x70000100);
+	armlinux_set_architecture(MACH_TYPE_TQMA53);
+
+	return 0;
+}
+device_initcall(tqma53_devices_init);
+
+static int tqma53_part_init(void)
+{
+	devfs_add_partition("disk0", 0x00000, SZ_1M, PARTITION_FIXED, "self0");
+	devfs_add_partition("disk0", SZ_1M, SZ_1M, PARTITION_FIXED, "env0");
+
+	return 0;
+}
+late_initcall(tqma53_part_init);
+
+static int tqma53_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(tqma53_pads, ARRAY_SIZE(tqma53_pads));
+	imx53_init_lowlevel(800);
+	imx53_add_uart0();
+
+	return 0;
+}
+console_initcall(tqma53_console_init);
diff --git a/arch/arm/boards/tqma53/config.h b/arch/arm/boards/tqma53/config.h
new file mode 100644
index 0000000..ca15136
--- /dev/null
+++ b/arch/arm/boards/tqma53/config.h
@@ -0,0 +1,4 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/tqma53/env/config b/arch/arm/boards/tqma53/env/config
new file mode 100644
index 0000000..97b009c
--- /dev/null
+++ b/arch/arm/boards/tqma53/env/config
@@ -0,0 +1,43 @@
+#!/bin/sh
+
+machine=tqma53
+serverip=
+user=
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-$machine.$rootfs_type
+
+kernelimage=zImage-$machine
+
+if [ -n $user ]; then
+	kernelimage="$user"-"$kernelimage"
+	nfsroot="$serverip:/home/$user/nfsroot/$machine"
+	rootfsimage="$user"-"$rootfsimage"
+else
+	nfsroot="$serverip:/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+bootargs="console=ttymxc0,115200"
+
+disk_parts="1M(barebox)ro,1M(bareboxenv),4M(kernel),-(root)"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/tqma53/flash_header.c b/arch/arm/boards/tqma53/flash_header.c
new file mode 100644
index 0000000..73ea0c3
--- /dev/null
+++ b/arch/arm/boards/tqma53/flash_header.c
@@ -0,0 +1,109 @@
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
+
+void __naked __flash_header_start go(void)
+{
+	__asm__ __volatile__("b exception_vectors\n");
+}
+
+struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
+	/* IOMUX */
+	{ .addr = cpu_to_be32(0x53fa8554), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8558), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8560), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8564), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8568), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8570), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8574), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8578), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa857c), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8580), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8584), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8588), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8590), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8594), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa86f0), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa86f4), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa86fc), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8714), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8718), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa871c), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8720), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8724), .val = cpu_to_be32(0x04000000), },
+	{ .addr = cpu_to_be32(0x53fa8728), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa872c), .val = cpu_to_be32(0x00300000), },
+	/* ESDCTL */
+	{ .addr = cpu_to_be32(0x63fd9088), .val = cpu_to_be32(0x35343535), },
+	{ .addr = cpu_to_be32(0x63fd9090), .val = cpu_to_be32(0x4d444c44), },
+	{ .addr = cpu_to_be32(0x63fd907c), .val = cpu_to_be32(0x01370138), },
+	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x013b013c), },
+	{ .addr = cpu_to_be32(0x63fd90f8), .val = cpu_to_be32(0x00000800), },
+#ifdef CONFIG_MACH_TQMA53_1GB_RAM
+	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00001740), },
+	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0xc3190000), },
+#else
+	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00101740), },
+	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0x83190000), },
+#endif
+	{ .addr = cpu_to_be32(0x63fd900c), .val = cpu_to_be32(0x9f5152e3), },
+	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb68e8a63), },
+	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x01ff00db), },
+	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
+	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f0e21), },
+	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12273030), },
+	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x0002002d), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008033), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028031), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x052080b0), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008040), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803a), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803b), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028039), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x05208138), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008048), },
+	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
+	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
+	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00022227), },
+	{ .addr = cpu_to_be32(0x63fd901C), .val = cpu_to_be32(0x00000000), },
+};
+
+#define APP_DEST	CONFIG_TEXT_BASE
+
+struct imx_flash_header_v2 __flash_header_section flash_header = {
+	.header.tag		= IVT_HEADER_TAG,
+	.header.length		= cpu_to_be16(32),
+	.header.version		= IVT_VERSION,
+
+	.entry			= APP_DEST + 0x1000,
+	.dcd_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, dcd),
+	.boot_data_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, boot_data),
+	.self			= APP_DEST + 0x400,
+
+	.boot_data.start	= APP_DEST,
+	.boot_data.size		= 0x40000,
+
+	.dcd.header.tag		= DCD_HEADER_TAG,
+	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
+	.dcd.header.version	= DCD_VERSION,
+
+	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
+	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
+	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
+};
diff --git a/arch/arm/configs/tqma53_defconfig b/arch/arm/configs/tqma53_defconfig
new file mode 100644
index 0000000..2540271
--- /dev/null
+++ b/arch/arm/configs/tqma53_defconfig
@@ -0,0 +1,64 @@
+CONFIG_ARCH_IMX=y
+CONFIG_ARCH_IMX53=y
+CONFIG_MACH_TQMA53=y
+CONFIG_IMX_IIM=y
+CONFIG_IMX_IIM_FUSE_BLOW=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/freescale-mx53-loco/env/"
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+# CONFIG_SPI is not set
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_ZLIB=y
+CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index a4b603b..853757b 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -23,6 +23,7 @@ config ARCH_TEXT_BASE
 	default 0x7ff00000 if MACH_MX53_SMD
 	default 0x87f00000 if MACH_GUF_CUPID
 	default 0x93d00000 if MACH_TX25
+	default 0x7ff00000 if MACH_TQMA53
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -44,6 +45,7 @@ config BOARDINFO
 	default "Freescale i.MX53 SMD" if MACH_FREESCALE_MX53_SMD
 	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
 	default "Ka-Ro tx25" if MACH_TX25
+	default "TQ tqma53" if MACH_TQMA53
 
 choice
 	prompt "Select boot mode"
@@ -397,6 +399,15 @@ config MACH_FREESCALE_MX53_LOCO
 config MACH_FREESCALE_MX53_SMD
 	bool "Freescale i.MX53 SMD"
 
+config MACH_TQMA53
+	bool "TQ i.MX53 TQMA53"
+
+config MACH_TQMA53_1GB_RAM
+	bool "Use 1GiB of SDRAM"
+	depends on MACH_TQMA53
+	help
+	  use 1GiB of SDRAM (512MiB otherwise)
+
 endchoice
 
 endif
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

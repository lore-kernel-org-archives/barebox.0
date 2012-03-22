Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.186])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SAg6y-0003C0-Am
 for barebox@lists.infradead.org; Thu, 22 Mar 2012 11:23:22 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Thu, 22 Mar 2012 12:23:13 +0100
Message-Id: <1332415393-18394-3-git-send-email-christian.kapeller@cmotion.eu>
In-Reply-To: <1332415393-18394-1-git-send-email-christian.kapeller@cmotion.eu>
References: <1332415393-18394-1-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: [PATCH V2 2/2] Add board support for Karo TX51 i.mx51 SODIMM module.
To: barebox@lists.infradead.org

Supported devices:
 - nand
 - ethernet
 - mmc0, mmc1 (on stk5v3 development board)
 - led (on stk5v3 development board)
---
 arch/arm/Makefile                        |    1 +
 arch/arm/boards/karo-tx51/Makefile       |    2 +
 arch/arm/boards/karo-tx51/config.h       |   21 +++
 arch/arm/boards/karo-tx51/env/config     |   43 +++++
 arch/arm/boards/karo-tx51/flash_header.c |   58 ++++++
 arch/arm/boards/karo-tx51/tx51.c         |  290 ++++++++++++++++++++++++++++++
 arch/arm/boards/karo-tx51/tx51.dox       |   50 +++++
 arch/arm/configs/tx51stk5_defconfig      |  148 +++++++++++++++
 arch/arm/mach-imx/Kconfig                |    8 +
 9 files changed, 621 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx51/Makefile
 create mode 100644 arch/arm/boards/karo-tx51/config.h
 create mode 100644 arch/arm/boards/karo-tx51/env/config
 create mode 100644 arch/arm/boards/karo-tx51/flash_header.c
 create mode 100644 arch/arm/boards/karo-tx51/tx51.c
 create mode 100644 arch/arm/boards/karo-tx51/tx51.dox
 create mode 100644 arch/arm/configs/tx51stk5_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 5d7c344..cb18a2b 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -119,6 +119,7 @@ board-$(CONFIG_MACH_USB_A9263)			:= usb-a926x
 board-$(CONFIG_MACH_USB_A9G20)			:= usb-a926x
 board-$(CONFIG_MACH_VERSATILEPB)		:= versatile
 board-$(CONFIG_MACH_TX25)			:= karo-tx25
+board-$(CONFIG_MACH_TX51)			:= karo-tx51
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/karo-tx51/Makefile b/arch/arm/boards/karo-tx51/Makefile
new file mode 100644
index 0000000..e8f710e
--- /dev/null
+++ b/arch/arm/boards/karo-tx51/Makefile
@@ -0,0 +1,2 @@
+obj-y += tx51.o
+obj-y += flash_header.o
diff --git a/arch/arm/boards/karo-tx51/config.h b/arch/arm/boards/karo-tx51/config.h
new file mode 100644
index 0000000..b908fc0
--- /dev/null
+++ b/arch/arm/boards/karo-tx51/config.h
@@ -0,0 +1,21 @@
+/**
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/karo-tx51/env/config b/arch/arm/boards/karo-tx51/env/config
new file mode 100644
index 0000000..6fddb02
--- /dev/null
+++ b/arch/arm/boards/karo-tx51/env/config
@@ -0,0 +1,43 @@
+#!/bin/sh
+
+machine=tx51
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.ethaddr=de:ad:be:ef:00:00
+#eth0.netmask=a.b.c.d
+#eth0.serverip=a.b.c.d
+#eth0.gateway=a.b.c.d
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
+kernelimage=zImage_$machine
+#kernelimage_type=uimage-$machine
+#kernelimage=uImage-$machine
+#kernelimage=Image-$machine
+#kernelimage=Image-$machine.lzo
+kernel_part=nand0.kernel
+
+#nfsroot="$serverip:/srv/root"
+
+autoboot_timeout=3
+
+bootargs="console=ttymxc0,115200"
+
+nand_device=mxc_nand
+nand_parts="256k(barebox)ro,256k(bareboxenv),4M@0xc00000(kernel),64M(rootfs),-(rootfs_data)"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31mtx51:\w\e[0m "
diff --git a/arch/arm/boards/karo-tx51/flash_header.c b/arch/arm/boards/karo-tx51/flash_header.c
new file mode 100644
index 0000000..2db90d0
--- /dev/null
+++ b/arch/arm/boards/karo-tx51/flash_header.c
@@ -0,0 +1,58 @@
+/**
+ * Copyright (C) 2012 Christian Kapeller, <christian.kapeller@cmotion.eu> 
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <mach/imx-flash-header.h>
+
+extern unsigned long _stext;
+
+void __naked __flash_header_start go(void)
+{
+	__asm__ __volatile__("b exception_vectors\n");
+}
+
+struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
+    { .ptr_type = 4, .addr = 0x83fd9000, .val = 0x80000000, },
+    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x04008008, },
+    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
+    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
+    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00338018, },
+    { .ptr_type = 4, .addr = 0x83fd9000, .val = 0xb2220000, },
+    { .ptr_type = 4, .addr = 0x83fd9004, .val = 0xb08564a9, },
+    { .ptr_type = 4, .addr = 0x83fd9034, .val = 0x20020000, },
+    { .ptr_type = 4, .addr = 0x83fd9010, .val = 0x000a0080, },
+    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00000000, },
+};
+
+#define APP_DEST	CONFIG_ARCH_TEXT_BASE
+
+struct imx_flash_header __flash_header_section flash_header = {
+	.app_code_jump_vector	= APP_DEST + 0x1000,
+	.app_code_barker	= APP_CODE_BARKER,
+	.app_code_csf		= 0,
+	.dcd_ptr_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd),
+	.super_root_key		= 0,
+	.dcd			= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd_barker),
+	.app_dest		= APP_DEST,
+	.dcd_barker		= DCD_BARKER,
+	.dcd_block_len		= sizeof (dcd_entry),
+};
+
+unsigned long __image_len_section barebox_len = 0x40000;
+
diff --git a/arch/arm/boards/karo-tx51/tx51.c b/arch/arm/boards/karo-tx51/tx51.c
new file mode 100644
index 0000000..0bf6b53
--- /dev/null
+++ b/arch/arm/boards/karo-tx51/tx51.c
@@ -0,0 +1,290 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ * Copyright (C) 2012 Christian Kapeller, <christian.kapeller@cmotion.eu>
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
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
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
+#include <fs.h>
+#include <fcntl.h>
+#include <nand.h>
+#include <spi/spi.h>
+#include <mfd/mc13892.h>
+#include <io.h>
+#include <asm/mmu.h>
+#include <mach/imx5.h>
+#include <mach/imx-nand.h>
+#include <mach/spi.h>
+#include <mach/generic.h>
+#include <mach/iomux-mx51.h>
+#include <mach/devices-imx51.h>
+#include <mach/iim.h>
+
+
+#define STK5_MX51_PAD_DISPB2_SER_RS__GPIO3_8 \
+    IOMUX_PAD(0x6C8, 0x2C8, 4, 0x994, 1, PAD_CTL_PKE | PAD_CTL_PUE)
+
+#define STK5_MX51_PAD_DISPB2_SER_DIO__GPIO3_6 \
+    IOMUX_PAD(0x6c0, 0x2c0, 4, 0x098c, 1, 0)
+
+static struct fec_platform_data fec_info = {
+	.xcv_type = MII100,
+};
+
+struct imx_nand_platform_data nand_info = {
+	.width	= 1,
+	.hw_ecc	= 1,
+	.flash_bbt = 1,
+};
+
+struct gpio_led tx51_leds[] = {
+	{
+		.led = { .name = "GPIO-LED", },
+		.gpio = IMX_GPIO_NR(4,10),
+		.active_low = 0,
+	},
+};
+
+static struct pad_desc tx51_pads[] = {
+	/*UART1*/
+	MX51_PAD_UART1_RXD__UART1_RXD,
+	MX51_PAD_UART1_TXD__UART1_TXD,
+	MX51_PAD_UART1_CTS__UART1_CTS,
+	MX51_PAD_UART1_RTS__UART1_RTS,
+
+	/* (e)CSPI */
+	MX51_PAD_CSPI1_MOSI__CSPI1_MOSI,
+	MX51_PAD_CSPI1_MISO__CSPI1_MISO,
+	MX51_PAD_CSPI1_SCLK__CSPI1_SCLK,
+	MX51_PAD_CSPI1_RDY__CSPI1_RDY,
+
+	/* (e)CSPI chip select lines */
+	MX51_PAD_CSPI1_SS0__GPIO4_24,
+	MX51_PAD_CSPI1_SS1__GPIO4_25,
+
+#ifdef CONFIG_MCI_IMX_ESDHC
+	/* eSDHC 1 */
+	MX51_PAD_SD1_CMD__SD1_CMD,
+	MX51_PAD_SD1_CLK__SD1_CLK,
+	MX51_PAD_SD1_DATA0__SD1_DATA0,
+	MX51_PAD_SD1_DATA1__SD1_DATA1,
+	MX51_PAD_SD1_DATA2__SD1_DATA2,
+	MX51_PAD_SD1_DATA3__SD1_DATA3,
+
+	/* SD1 card detect */
+	STK5_MX51_PAD_DISPB2_SER_RS__GPIO3_8,
+
+	/* eSDHC 2 */
+	MX51_PAD_SD2_CMD__SD2_CMD,
+	MX51_PAD_SD2_CLK__SD2_CLK,
+	MX51_PAD_SD2_DATA0__SD2_DATA0,
+	MX51_PAD_SD2_DATA1__SD2_DATA1,
+	MX51_PAD_SD2_DATA2__SD2_DATA2,
+	MX51_PAD_SD2_DATA3__SD2_DATA3,
+
+	/* SD2 card detect */
+	STK5_MX51_PAD_DISPB2_SER_DIO__GPIO3_6,
+#endif
+
+	/* SW controlled LED on STK5 baseboard */
+	MX51_PAD_CSI2_D13__GPIO4_10,
+
+	/* unuseable pads configured as GPIO */
+	MX51_PAD_GPIO1_1__GPIO1_1,
+	MX51_PAD_GPIO1_0__GPIO1_0,
+};
+
+static int tx51_mem_init(void)
+{
+	arm_add_mem_device("ram0", MX51_CSD0_BASE_ADDR, 128 * 1024 * 1024);
+	return 0;
+}
+mem_initcall(tx51_mem_init);
+
+static int spi_0_cs[] = {
+	IMX_GPIO_NR(4,24),
+	IMX_GPIO_NR(4,25),
+};
+
+static struct spi_imx_master tx51_spi_0_data = {
+	.chipselect = spi_0_cs,
+	.num_chipselect = ARRAY_SIZE(spi_0_cs),
+};
+
+static const struct spi_board_info mx51_tx51_spi_board_info[] = {};
+
+static struct tx51_fec_gpio_setup {
+	struct pad_desc pad;
+	unsigned group:4,
+		shift:5,
+		level:1;
+} tx51_fec_gpios[] = {
+	{ MX51_PAD_EIM_A20__GPIO2_14,	2, 14, 0 }, /* PHY reset */
+	{ MX51_PAD_GPIO1_3__GPIO1_3,	1, 3, 0 }, /* PHY power enable */
+	{ MX51_PAD_NANDF_CS3__GPIO3_19,	3, 19, 0 }, /* MDC */
+	{ MX51_PAD_EIM_EB2__GPIO2_22,	2, 22, 0 }, /* MDIO */
+	{ MX51_PAD_NANDF_RB3__GPIO3_11,	3, 11, 0 }, /* RX_CLK */
+	{ MX51_PAD_NANDF_D11__GPIO3_29,	3, 29, 0 }, /* RX_DV */
+	{ MX51_PAD_NANDF_D9__GPIO3_31,	3, 31, 1 }, /* RXD0/Mode0 */
+	{ MX51_PAD_EIM_EB3__GPIO2_23,	2, 23, 1 }, /* RXD1/Mode1 */
+	{ MX51_PAD_EIM_CS2__GPIO2_27,	2, 27, 1 }, /* RXD2/Mode2 */
+	{ MX51_PAD_EIM_CS3__GPIO2_28,	2, 28, 1 }, /* RXD3/nINTSEL */
+	{ MX51_PAD_EIM_CS4__GPIO2_29,	2, 29, 0 }, /* RX_ER/RXD4 */
+	{ MX51_PAD_NANDF_RDY_INT__GPIO3_24,	3, 24, 0 }, /* TX_CLK */
+	{ MX51_PAD_NANDF_CS7__GPIO3_23,	3, 23, 0 }, /* TX_EN */
+	{ MX51_PAD_NANDF_D8__GPIO4_0,	4, 0, 0 }, /* TXD0 */
+	{ MX51_PAD_NANDF_CS4__GPIO3_20,	3, 20, 0 }, /* TXD1 */
+	{ MX51_PAD_NANDF_CS5__GPIO3_21,	3, 21, 0 }, /* TXD2 */
+	{ MX51_PAD_NANDF_CS6__GPIO3_22,	3, 22, 0 }, /* TXD3 */
+	{ MX51_PAD_NANDF_RB2__GPIO3_10,	3, 10, 0 }, /* COL/RMII/CRSDV */
+	{ MX51_PAD_EIM_CS5__GPIO2_30,	2, 30, 0 }, /* CRS */
+	{ MX51_PAD_NANDF_CS2__GPIO3_18,	3, 18, 0 }, /* nINT/TX_ER/TXD4 */
+};
+
+static struct pad_desc tx51_fec_pads[] = {
+	MX51_PAD_NANDF_CS2__FEC_TX_ER,
+	MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK,
+	MX51_PAD_NANDF_CS3__FEC_MDC,
+	MX51_PAD_NANDF_CS4__FEC_TDATA1,
+	MX51_PAD_NANDF_CS5__FEC_TDATA2,
+	MX51_PAD_NANDF_CS6__FEC_TDATA3,
+	MX51_PAD_NANDF_CS7__FEC_TX_EN,
+	MX51_PAD_NANDF_RB2__FEC_COL,
+	MX51_PAD_NANDF_RB3__FEC_RX_CLK,
+	MX51_PAD_NANDF_D8__FEC_TDATA0,
+	MX51_PAD_NANDF_D9__FEC_RDATA0,
+	MX51_PAD_NANDF_D11__FEC_RX_DV,
+	MX51_PAD_EIM_EB2__FEC_MDIO,
+	MX51_PAD_EIM_EB3__FEC_RDATA1,
+	MX51_PAD_EIM_CS2__FEC_RDATA2,
+	MX51_PAD_EIM_CS3__FEC_RDATA3,
+	MX51_PAD_EIM_CS4__FEC_RX_ER,
+	MX51_PAD_EIM_CS5__FEC_CRS,
+};
+
+#define TX51_FEC_PHY_RST	IMX_GPIO_NR(2, 14)
+#define TX51_FEC_PHY_PWR	IMX_GPIO_NR(1, 3)
+#define TX51_FEC_PHY_INT	IMX_GPIO_NR(3, 18)
+
+static inline void tx51_fec_init(void)
+{
+	int i;
+
+	/* Configure LAN8700 pads as GPIO and set up
+	 * necessary strap options for PHY
+	 */
+	for (i = 0; i < ARRAY_SIZE(tx51_fec_gpios); i++) {
+		struct tx51_fec_gpio_setup *gs = &tx51_fec_gpios[i];
+
+		gpio_direction_output(IMX_GPIO_NR(gs->group, gs->shift ), gs->level);
+		mxc_iomux_v3_setup_pad(&(gs->pad));
+	}
+
+	/*
+	 *Turn on phy power, leave in reset state
+	 */
+	gpio_set_value(TX51_FEC_PHY_PWR, 1);
+
+	/*
+	 * Wait some time to let the phy activate the internal regulator 
+	 */
+	mdelay(10);
+
+	/*
+	 * Deassert reset, phy latches the rest of bootstrap pins
+	 */
+	gpio_set_value(TX51_FEC_PHY_RST, 1);
+
+	/* LAN7800 has an internal Power On Reset (POR) signal (OR'ed with
+	 * the external RESET signal) which is deactivated 21ms after
+	 * power on and latches the strap options.
+	 * Delay for 22ms to ensure, that the internal POR is inactive
+	 * before reconfiguring the strap pins.
+	 */
+	mdelay(22);
+
+	/*
+	 * The phy is ready, now configure imx51 pads for fec operation
+	 */
+	mxc_iomux_v3_setup_multiple_pads(tx51_fec_pads,
+	    ARRAY_SIZE(tx51_fec_pads));
+
+}
+
+static void tx51_leds_init(void)
+{
+	int i;
+
+	for(i=0 ; i < ARRAY_SIZE(tx51_leds) ; i++)
+		led_gpio_register(&tx51_leds[i]);
+}
+
+static int tx51_devices_init(void)
+{
+#ifdef CONFIG_MCI_IMX_ESDHC
+	imx51_add_mmc0(NULL);
+	imx51_add_mmc1(NULL);
+#endif
+
+	imx51_add_nand(&nand_info);
+
+	spi_register_board_info(mx51_tx51_spi_board_info,
+		ARRAY_SIZE(mx51_tx51_spi_board_info));
+	imx51_add_spi0(&tx51_spi_0_data);
+
+	imx51_iim_register_fec_ethaddr();
+	tx51_fec_init();
+	imx51_add_fec(&fec_info);
+
+	tx51_leds_init();
+
+	//Linux Parameters
+	armlinux_set_bootparams((void *)MX51_CSD0_BASE_ADDR + 0x100);
+	armlinux_set_architecture(MACH_TYPE_TX51);
+
+	return 0;
+}
+device_initcall(tx51_devices_init);
+
+static int tx51_part_init(void)
+{
+	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+	return 0;
+}
+late_initcall(tx51_part_init);
+
+static int tx51_console_init(void)
+{
+	imx51_init_lowlevel();
+	mxc_iomux_v3_setup_multiple_pads(tx51_pads, ARRAY_SIZE(tx51_pads));
+	imx51_add_uart0();
+
+	return 0;
+}
+console_initcall(tx51_console_init);
diff --git a/arch/arm/boards/karo-tx51/tx51.dox b/arch/arm/boards/karo-tx51/tx51.dox
new file mode 100644
index 0000000..08268e0
--- /dev/null
+++ b/arch/arm/boards/karo-tx51/tx51.dox
@@ -0,0 +1,50 @@
+/**
+@page tx51 KARO's TX51 CPU module
+
+@section tx51_cpu_card The CPU module
+
+http://www.karo-electronics.de/
+
+This CPU card is based on a Freescale i.MX51 CPU. The card is shipped with:
+
+- 128 MiB synchronous dynamic RAM (DDR2 type), 200 MHz support
+- 128 MiB NAND K9F1G08U0A (3.3V type)
+- DS1339 RTC
+- LAN8700 Phy
+
+@section tx51_baseboards Supported baseboards
+
+Supported baseboards are:
+- KARO's Starterkit 5 (currently only SD1, FEC implemented but non-working)
+
+@section tx28_stk5_howto How to get barebox for 'KARO's Starterkit 5'
+
+Using the default configuration:
+
+@verbatim
+make ARCH=arm tx51tk5_defconfig
+@endverbatim
+
+Build the binary image:
+
+@verbatim
+make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi-
+@endverbatim
+
+@note replace the arm-linux-gnueabi with your ARM v7 cross compiler.
+
+@note To use the result, you also need the following resources from Freescale:
+- the 'bootlets' archive
+- the 'elftosb2' encryption tool
+- in the case you want to start @b barebox from an attached SD card the
+  'sdimage' tool from Freescale's 'uuc' archive.
+
+@section tx28_mlayout Memory layout when barebox is running:
+
+- 0x90000000 start of SDRAM
+- 0x90000100 start of kernel's boot parameters
+  - below malloc area: stack area
+  - below barebox: malloc area
+- 0x97f00000 start of @b barebox
+
+*/
diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
new file mode 100644
index 0000000..7fff0f0
--- /dev/null
+++ b/arch/arm/configs/tx51stk5_defconfig
@@ -0,0 +1,148 @@
+CONFIG_GENERIC_LINKER_SCRIPT=y
+CONFIG_ARM=y
+CONFIG_ARM_LINUX=y
+CONFIG_ARCH_IMX=y
+CONFIG_CPU_32=y
+CONFIG_CPU_V7=y
+CONFIG_CPU_32v7=y
+CONFIG_ARCH_IMX_INTERNAL_BOOT=y
+CONFIG_ARCH_IMX_INTERNAL_BOOT_NAND=y
+CONFIG_ARCH_IMX51=y
+CONFIG_MACH_TX51=y
+CONFIG_IMX_IIM=y
+CONFIG_AEABI=y
+CONFIG_CMD_ARM_CPUINFO=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_EXCEPTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_GREGORIAN_CALENDER=y
+CONFIG_HAS_KALLSYMS=y
+CONFIG_HAS_MODULES=y
+CONFIG_CMD_MEMORY=y
+CONFIG_ENV_HANDLING=y
+CONFIG_GENERIC_GPIO=y
+CONFIG_BLOCK=y
+CONFIG_BLOCK_WRITE=y
+CONFIG_FILETYPE=y
+CONFIG_LOCALVERSION_AUTO=y
+CONFIG_BANNER=y
+CONFIG_ENVIRONMENT_VARIABLES=y
+CONFIG_MMU=y
+CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+CONFIG_MEMORY_LAYOUT_DEFAULT=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_LONGHELP=y
+CONFIG_SHELL_HUSH=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_DYNAMIC_CRC_TABLE=y
+CONFIG_ERRNO_MESSAGES=y
+CONFIG_TIMESTAMP=y
+CONFIG_CONSOLE_FULL=y
+CONFIG_CONSOLE_ACTIVATE_FIRST=y
+CONFIG_PARTITION=y
+CONFIG_PARTITION_DISK=y
+CONFIG_PARTITION_DISK_DOS=y
+CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED=y
+CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_GZIP=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_COMMAND_SUPPORT=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TRUE=y
+CONFIG_CMD_FALSE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_LS=y
+CONFIG_CMD_RM=y
+CONFIG_CMD_CAT=y
+CONFIG_CMD_MKDIR=y
+CONFIG_CMD_RMDIR=y
+CONFIG_CMD_CP=y
+CONFIG_CMD_PWD=y
+CONFIG_CMD_CD=y
+CONFIG_CMD_MOUNT=y
+CONFIG_CMD_UMOUNT=y
+CONFIG_CMD_NAND=y
+CONFIG_CMD_CLEAR=y
+CONFIG_CMD_ECHO=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_UBI=y
+CONFIG_CMD_BOOTM=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_TEST=y
+CONFIG_CMD_VERSION=y
+CONFIG_CMD_HELP=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_DEVINFO=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LED=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_DRIVER_SERIAL_IMX=y
+CONFIG_ARCH_HAS_FEC_IMX=y
+CONFIG_MIIDEV=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_DRIVER_SPI_IMX_2_3=y
+CONFIG_MTD=y
+CONFIG_MTD_WRITE=y
+CONFIG_MTD_OOB_DEVICE=y
+CONFIG_NAND=y
+CONFIG_NAND_ECC_SOFT=y
+CONFIG_NAND_ECC_HW=y
+CONFIG_NAND_ECC_HW_SYNDROME=y
+CONFIG_NAND_ECC_HW_NONE=y
+CONFIG_NAND_INFO=y
+CONFIG_NAND_READ_OOB=y
+CONFIG_NAND_BBT=y
+CONFIG_NAND_IMX=y
+CONFIG_MTD_NAND_IDS=y
+CONFIG_UBI=y
+CONFIG_DISK=y
+CONFIG_DISK_WRITE=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_INFO=y
+CONFIG_MCI_WRITE=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
+CONFIG_FS_FAT=y
+CONFIG_PARTITION_NEED_MTD=y
+CONFIG_PARAMETER=y
+CONFIG_UNCOMPRESS=y
+CONFIG_ZLIB=y
+CONFIG_PROCESS_ESCAPE_SEQUENCE=y
+CONFIG_LZO_DECOMPRESS=y
+CONFIG_CRC32=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index a4b603b..87dd25b 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -23,6 +23,7 @@ config ARCH_TEXT_BASE
 	default 0x7ff00000 if MACH_MX53_SMD
 	default 0x87f00000 if MACH_GUF_CUPID
 	default 0x93d00000 if MACH_TX25
+	default 0x97f00000 if MACH_TX51
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -44,6 +45,7 @@ config BOARDINFO
 	default "Freescale i.MX53 SMD" if MACH_FREESCALE_MX53_SMD
 	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
 	default "Ka-Ro tx25" if MACH_TX25
+	default "Ka-Ro tx51" if MACH_TX51
 
 choice
 	prompt "Select boot mode"
@@ -379,6 +381,12 @@ config MACH_EUKREA_CPUIMX51SD
 	  Say Y here if you are using Eukrea's CPUIMX51 equipped
 	  with a Freescale i.MX51 Processor
 
+config MACH_TX51
+	bool "Ka-Ro TX51"
+	help
+	  Say Y here if you are using the Ka-Ro tx51 board
+
+
 endchoice
 
 endif
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

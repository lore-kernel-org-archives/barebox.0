Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkZbJ-0002Y4-Sj
 for barebox@lists.infradead.org; Fri, 29 Jun 2012 11:43:06 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Fri, 29 Jun 2012 13:42:53 +0200
Message-Id: <1340970174-6760-1-git-send-email-jlu@pengutronix.de>
In-Reply-To: <CAGm1_ktTob+vAgWYphu8Rt-Fn4Rk6jcCZMnot9jm5-vqHyPHmw@mail.gmail.com>
References: <CAGm1_ktTob+vAgWYphu8Rt-Fn4Rk6jcCZMnot9jm5-vqHyPHmw@mail.gmail.com>
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
Subject: [PATCH] Initial BeagleBone support for second stage
To: barebox@lists.infradead.org
Cc: Jan Luebbe <jluebbe@debian.org>

This is obviously rather rough, but it was enough to load a kernel
when started from TI's u-boot SPL.

Build barebox.img, put it on the SD card instead of u-boot.img. Note
that the machine id may need changing depending on the kernel.

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 Makefile                              |    5 +
 arch/arm/Makefile                     |    1 +
 arch/arm/boards/beaglebone/Makefile   |    1 +
 arch/arm/boards/beaglebone/board.c    |  317 +++++++++++++++++++++++++++++++++
 arch/arm/boards/beaglebone/config.h   |   21 +++
 arch/arm/boards/beaglebone/env/config |   63 +++++++
 arch/arm/mach-omap/Kconfig            |   11 +-
 arch/arm/mach-omap/s32k_clksource.c   |    5 +-
 8 files changed, 422 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/beaglebone/Makefile
 create mode 100644 arch/arm/boards/beaglebone/board.c
 create mode 100644 arch/arm/boards/beaglebone/config.h
 create mode 100644 arch/arm/boards/beaglebone/env/config

diff --git a/Makefile b/Makefile
index 9294049..ff6a645 100644
--- a/Makefile
+++ b/Makefile
@@ -672,6 +672,11 @@ barebox.bin: barebox FORCE
 	$(call if_changed,objcopy)
 	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 
+barebox.img: barebox.bin
+	$(srctree)/scripts/mkimage -A $(ARCH) -T firmware -C none \
+	-O barebox -a $(CONFIG_TEXT_BASE) -e $(CONFIG_TEXT_BASE) \
+	-n "barebox $(KERNELRELEASE)" -d $< $@
+
 ifdef CONFIG_X86
 barebox.S: barebox
 ifdef CONFIG_X86_HDBOOT
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index bd684dc..0644fe7 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -99,6 +99,7 @@ board-$(CONFIG_MACH_NOMADIK_8815NHK)		:= nhk8815
 board-$(CONFIG_MACH_NXDB500)			:= netx
 board-$(CONFIG_MACH_OMAP343xSDP)		:= omap343xdsp
 board-$(CONFIG_MACH_BEAGLE)			:= beagle
+board-$(CONFIG_MACH_BEAGLEBONE)			:= beaglebone
 board-$(CONFIG_MACH_OMAP3EVM)			:= omap3evm
 board-$(CONFIG_MACH_PANDA)			:= panda
 board-$(CONFIG_MACH_PCM049)			:= pcm049
diff --git a/arch/arm/boards/beaglebone/Makefile b/arch/arm/boards/beaglebone/Makefile
new file mode 100644
index 0000000..dcfc293
--- /dev/null
+++ b/arch/arm/boards/beaglebone/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
new file mode 100644
index 0000000..dadec5a
--- /dev/null
+++ b/arch/arm/boards/beaglebone/board.c
@@ -0,0 +1,317 @@
+/*
+ * (C) Copyright 2008
+ * Texas Instruments, <www.ti.com>
+ * Raghavendra KH <r-khandenahally@ti.com>
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
+ */
+
+/**
+ * @file
+ * @brief Beagle Specific Board Initialization routines
+ */
+
+/**
+ * @page ti_beagle Texas Instruments Beagle Board
+ *
+ * FileName: arch/arm/boards/omap/board-beagle.c
+ *
+ * Beagle Board from Texas Instruments as described here:
+ * http://www.beagleboard.org
+ *
+ * This board is based on OMAP3530.
+ * More on OMAP3530 (including documentation can be found here):
+ * http://focus.ti.com/docs/prod/folders/print/omap3530.html
+ *
+ * This file provides initialization in two stages:
+ * @li boot time initialization - do basics required to get SDRAM working.
+ * This is run from SRAM - so no case constructs and global vars can be used.
+ * @li run time initialization - this is for the rest of the initializations
+ * such as flash, uart etc.
+ *
+ * Boot time initialization includes:
+ * @li SDRAM initialization.
+ * @li Pin Muxing relevant for Beagle.
+ *
+ * Run time initialization includes
+ * @li serial @ref serial_ns16550.c driver device definition
+ *
+ * Originally from arch/arm/boards/omap/board-sdp343x.c
+ */
+
+#include <common.h>
+#include <console.h>
+#include <init.h>
+#include <driver.h>
+#include <sizes.h>
+#include <io.h>
+#include <ns16550.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <mach/silicon.h>
+#include <mach/sdrc.h>
+#include <mach/sys_info.h>
+#include <mach/syslib.h>
+#include <mach/control.h>
+#include <mach/omap3-mux.h>
+#include <mach/gpmc.h>
+#include <mach/ehci.h>
+#include <i2c/i2c.h>
+#include <linux/err.h>
+#include <usb/ehci.h>
+#include <mach/xload.h>
+
+/******************** Board Boot Time *******************/
+
+/**
+ * @brief Do the SDRC initialization for 128Meg Micron DDR for CS0
+ *
+ * @return void
+ */
+static void sdrc_init(void)
+{
+	/* SDRAM software reset */
+	/* No idle ack and RESET enable */
+	writel(0x1A, SDRC_REG(SYSCONFIG));
+	sdelay(100);
+	/* No idle ack and RESET disable */
+	writel(0x18, SDRC_REG(SYSCONFIG));
+
+	/* SDRC Sharing register */
+	/* 32-bit SDRAM on data lane [31:0] - CS0 */
+	/* pin tri-stated = 1 */
+	writel(0x00000100, SDRC_REG(SHARING));
+
+	/* ----- SDRC Registers Configuration --------- */
+	/* SDRC_MCFG0 register */
+	writel(0x02584099, SDRC_REG(MCFG_0));
+
+	/* SDRC_RFR_CTRL0 register */
+	writel(0x54601, SDRC_REG(RFR_CTRL_0));
+
+	/* SDRC_ACTIM_CTRLA0 register */
+	writel(0xA29DB4C6, SDRC_REG(ACTIM_CTRLA_0));
+
+	/* SDRC_ACTIM_CTRLB0 register */
+	writel(0x12214, SDRC_REG(ACTIM_CTRLB_0));
+
+	/* Disble Power Down of CKE due to 1 CKE on combo part */
+	writel(0x00000081, SDRC_REG(POWER));
+
+	/* SDRC_MANUAL command register */
+	/* NOP command */
+	writel(0x00000000, SDRC_REG(MANUAL_0));
+	/* Precharge command */
+	writel(0x00000001, SDRC_REG(MANUAL_0));
+	/* Auto-refresh command */
+	writel(0x00000002, SDRC_REG(MANUAL_0));
+	/* Auto-refresh command */
+	writel(0x00000002, SDRC_REG(MANUAL_0));
+
+	/* SDRC MR0 register Burst length=4 */
+	writel(0x00000032, SDRC_REG(MR_0));
+
+	/* SDRC DLLA control register */
+	writel(0x0000000A, SDRC_REG(DLLA_CTRL));
+
+	return;
+}
+
+/**
+ * @brief Do the pin muxing required for Board operation.
+ * We enable ONLY the pins we require to set. OMAP provides pins which do not
+ * have alternate modes. Such pins done need to be set.
+ *
+ * See @ref MUX_VAL for description of the muxing mode.
+ *
+ * @return void
+ */
+static void mux_config(void)
+{
+	/* SDRC_D0 - SDRC_D31 default mux mode is mode0 */
+
+	/* GPMC */
+	MUX_VAL(CP(GPMC_A1), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A2), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A3), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A4), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A5), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A6), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A7), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A8), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A9), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A10), (IDIS | PTD | DIS | M0));
+
+	/* D0-D7 default mux mode is mode0 */
+	MUX_VAL(CP(GPMC_D8), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_D9), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_D10), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_D11), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_D12), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_D13), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_D14), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_D15), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_CLK), (IDIS | PTD | DIS | M0));
+	/* GPMC_NADV_ALE default mux mode is mode0 */
+	/* GPMC_NOE default mux mode is mode0 */
+	/* GPMC_NWE default mux mode is mode0 */
+	/* GPMC_NBE0_CLE default mux mode is mode0 */
+	MUX_VAL(CP(GPMC_NBE0_CLE), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_NBE1), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_NWP), (IEN | PTD | DIS | M0));
+	/* GPMC_WAIT0 default mux mode is mode0 */
+	MUX_VAL(CP(GPMC_WAIT1), (IEN | PTU | EN | M0));
+
+	/* SERIAL INTERFACE */
+	MUX_VAL(CP(UART3_CTS_RCTX), (IEN | PTD | EN | M0));
+	MUX_VAL(CP(UART3_RTS_SD), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(UART3_RX_IRRX), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(UART3_TX_IRTX), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_CLK), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_STP), (IDIS | PTU | EN | M0));
+	MUX_VAL(CP(HSUSB0_DIR), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_NXT), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA0), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA1), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA2), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA3), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA4), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA5), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA6), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA7), (IEN | PTD | DIS | M0));
+	/* I2C1_SCL default mux mode is mode0 */
+	/* I2C1_SDA default mux mode is mode0 */
+	/* USB EHCI (port 2) */
+	MUX_VAL(CP(MCSPI1_CS3),		(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_CLK),		(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_SIMO),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_SOMI),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_CS0),		(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_CS1),		(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D10_ES2),	(IDIS | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D11_ES2),	(IDIS | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D12_ES2),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D13_ES2),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D14_ES2),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D15_ES2),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(UART2_RX),		(IEN  | PTD | DIS | M4)) /*GPIO_147*/;
+}
+
+/**
+ * @brief The basic entry point for board initialization.
+ *
+ * This is called as part of machine init (after arch init).
+ * This is again called with stack in SRAM, so not too many
+ * constructs possible here.
+ *
+ * @return void
+ */
+static int beagle_board_init(void)
+{
+	int in_sdram = running_in_sdram();
+
+	//omap3_core_init();
+
+	//mux_config();
+	/* Dont reconfigure SDRAM while running in SDRAM! */
+	//if (!in_sdram)
+	//	sdrc_init();
+
+	return 0;
+}
+pure_initcall(beagle_board_init);
+
+/******************** Board Run Time *******************/
+
+#ifdef CONFIG_DRIVER_SERIAL_NS16550
+
+static struct NS16550_plat serial_plat = {
+	.clock = 48000000,      /* 48MHz (APLL96/2) */
+	.shift = 2,
+};
+
+/**
+ * @brief UART serial port initialization - remember to enable COM clocks in
+ * arch
+ *
+ * @return result of device registration
+ */
+static int beagle_console_init(void)
+{
+	/* Register the serial port */
+	add_ns16550_device(-1, 0x44e09000, 1024, IORESOURCE_MEM_8BIT,
+			   &serial_plat);
+
+	return 0;
+}
+console_initcall(beagle_console_init);
+#endif /* CONFIG_DRIVER_SERIAL_NS16550 */
+
+#ifdef CONFIG_USB_EHCI_OMAP
+static struct omap_hcd omap_ehci_pdata = {
+	.port_mode[0] = EHCI_HCD_OMAP_MODE_PHY,
+	.port_mode[1] = EHCI_HCD_OMAP_MODE_PHY,
+	.port_mode[2] = EHCI_HCD_OMAP_MODE_UNKNOWN,
+	.phy_reset  = 1,
+	.reset_gpio_port[0]  = -EINVAL,
+	.reset_gpio_port[1]  = 147,
+	.reset_gpio_port[2]  = -EINVAL
+};
+
+static struct ehci_platform_data ehci_pdata = {
+	.flags = 0,
+};
+#endif /* CONFIG_USB_EHCI_OMAP */
+
+static struct i2c_board_info i2c_devices[] = {
+	{
+		I2C_BOARD_INFO("twl4030", 0x48),
+	},
+};
+
+static int beagle_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x80000000, 256 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(beagle_mem_init);
+
+static int beagle_devices_init(void)
+{
+//	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+//	add_generic_device("i2c-omap", DEVICE_ID_DYNAMIC, NULL, OMAP_I2C1_BASE, SZ_4K,
+//			   IORESOURCE_MEM, NULL);
+
+#ifdef CONFIG_USB_EHCI_OMAP
+//	if (ehci_omap_init(&omap_ehci_pdata) >= 0)
+//		add_usb_ehci_device(DEVICE_ID_DYNAMIC, OMAP_EHCI_BASE,
+//				    OMAP_EHCI_BASE + 0x10, &ehci_pdata);
+#endif /* CONFIG_USB_EHCI_OMAP */
+#ifdef CONFIG_OMAP_GPMC
+	/* WP is made high and WAIT1 active Low */
+	//gpmc_generic_init(0x10);
+#endif
+
+	add_generic_device("omap-hsmmc", DEVICE_ID_DYNAMIC, NULL, 0x48060100, SZ_4K,
+			   IORESOURCE_MEM, NULL);
+
+	armlinux_set_bootparams((void *)0x80000100);
+	armlinux_set_architecture(MACH_TYPE_OMAP_GENERIC);
+
+	return 0;
+}
+device_initcall(beagle_devices_init);
diff --git a/arch/arm/boards/beaglebone/config.h b/arch/arm/boards/beaglebone/config.h
new file mode 100644
index 0000000..b908fc0
--- /dev/null
+++ b/arch/arm/boards/beaglebone/config.h
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
diff --git a/arch/arm/boards/beaglebone/env/config b/arch/arm/boards/beaglebone/env/config
new file mode 100644
index 0000000..3aad658
--- /dev/null
+++ b/arch/arm/boards/beaglebone/env/config
@@ -0,0 +1,63 @@
+#!/bin/sh
+
+hostname=FIXME
+if [ -z "$user" ]; then
+#	user=
+fi
+
+# Enter MAC address here if not retrieved automatically
+#eth0.ethaddr=de:ad:be:ef:00:00
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+dhcp_vendor_id=barebox
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.serverip=a.b.c.d
+#eth0.gateway=a.b.c.d
+
+# can be either 'tftp', 'nfs', 'nand', 'nor' or 'disk'
+kernel_loc=disk
+# can be either 'net', 'nand', 'nor', 'disk' or 'initrd'
+rootfs_loc=disk
+# can be either 'tftp', 'nfs', 'nand', 'nor', 'disk' or none
+oftree_loc=none
+
+# for flash based rootfs: 'jffs2' or 'ubifs'
+# in case of disk any regular filesystem like 'ext2', 'ext3', 'reiserfs'
+rootfs_type=ext4
+# where is the rootfs in case of 'rootfs_loc=disk' (linux name)
+rootfs_part_linux_dev=mmcblk0p2
+rootfsimage=rootfs-${hostname}.$rootfs_type
+
+# where is the kernel image in case of 'kernel_loc=disk'
+kernel_part=disk0.0
+
+#kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+kernelimage=uImage
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
+
+bareboximage=barebox-${hostname}.bin
+bareboxenvimage=barebox-${hostname}.bin
+
+if [ -n $user ]; then
+	bareboximage="$user"-"$bareboximage"
+	bareboxenvimage="$user"-"$bareboxenvimage"
+	kernelimage="$user"-"$kernelimage"
+	rootfsimage="$user"-"$rootfsimage"
+	nfsroot="/home/$user/nfsroot/$hostname"
+else
+	nfsroot="/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+bootargs="console=ttyO0,115200n8"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 386c484..117b1cf 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -98,7 +98,8 @@ config ARCH_TEXT_BASE
 
 config BOARDINFO
 	default "Texas Instrument's SDP343x" if MACH_OMAP343xSDP
-	default "Texas Instrument's Beagle" if MACH_BEAGLE
+	default "Texas Instrument's Beagle Board" if MACH_BEAGLE
+	default "Texas Instrument's Beagle Bone" if MACH_BEAGLEBONE
 	default "Texas Instrument's OMAP3EVM" if MACH_OMAP3EVM
 	default "Texas Instrument's Panda" if MACH_PANDA
 	default "Phytec phyCORE pcm049" if MACH_PCM049
@@ -123,6 +124,14 @@ config MACH_BEAGLE
 	  help
 	  Say Y here if you are using Beagle Board
 
+config MACH_BEAGLEBONE
+	bool "Texas Instrument's Beagle Bone"
+	select OMAP_CLOCK_ALL
+	select HAVE_NOSHELL
+	depends on ARCH_OMAP3
+	  help
+	  Say Y here if you are using Beagle Bone
+
 config MACH_OMAP3EVM
 	bool "Texas Instrument's OMAP3 EVM"
 	select OMAP_CLOCK_ALL
diff --git a/arch/arm/mach-omap/s32k_clksource.c b/arch/arm/mach-omap/s32k_clksource.c
index 3ed9448..2c21fe7 100644
--- a/arch/arm/mach-omap/s32k_clksource.c
+++ b/arch/arm/mach-omap/s32k_clksource.c
@@ -50,7 +50,8 @@
  */
 static uint64_t s32k_clocksource_read(void)
 {
-	return readl(S32K_CR);
+//	return readl(S32K_CR);
+    return readl(0x44e0503c);
 }
 
 /* A bit obvious isn't it? */
@@ -73,6 +74,8 @@ static int s32k_clocksource_init(void)
 {
 	s32k_cs.mult = clocksource_hz2mult(S32K_FREQUENCY, s32k_cs.shift);
 
+    writel(0x00000003, 0x44e05038);
+
 	return init_clock(&s32k_cs);
 }
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

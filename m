Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q88rS-0007Fd-P6
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 10:24:23 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri,  8 Apr 2011 12:24:00 +0200
Message-Id: <1302258240-18284-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1302258240-18284-1-git-send-email-mkl@pengutronix.de>
References: <1302258240-18284-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/2] mxs: add support for mx28-evk
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

This patch adds support for tje mx28-evk board. NAND support is still lacking,
so we use still the bootlets as the first stage boot loader.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/Makefile                              |    1 +
 arch/arm/boards/freescale-mx28-evk/Makefile    |    1 +
 arch/arm/boards/freescale-mx28-evk/config.h    |   16 +
 arch/arm/boards/freescale-mx28-evk/env/config  |   67 ++++
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c  |  378 ++++++++++++++++++++++
 arch/arm/boards/freescale-mx28-evk/tx28-stk5.c |  410 ++++++++++++++++++++++++
 arch/arm/mach-mxs/Kconfig                      |    7 +
 7 files changed, 880 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx28-evk/Makefile
 create mode 100644 arch/arm/boards/freescale-mx28-evk/config.h
 create mode 100644 arch/arm/boards/freescale-mx28-evk/env/config
 create mode 100644 arch/arm/boards/freescale-mx28-evk/mx28-evk.c
 create mode 100644 arch/arm/boards/freescale-mx28-evk/tx28-stk5.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 108bd5e..fe01b21 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -98,6 +98,7 @@ board-$(CONFIG_MACH_NESO)			:= guf-neso
 board-$(CONFIG_MACH_MX23EVK)			:= freescale-mx23-evk
 board-$(CONFIG_MACH_CHUMBY)			:= chumby_falconwing
 board-$(CONFIG_MACH_TX28)			:= karo-tx28
+board-$(CONFIG_MACH_MX28EVK)			:= freescale-mx28-evk
 board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:= freescale-mx51-pdk
 board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 board-$(CONFIG_MACH_MINI2440)			:= mini2440
diff --git a/arch/arm/boards/freescale-mx28-evk/Makefile b/arch/arm/boards/freescale-mx28-evk/Makefile
new file mode 100644
index 0000000..3e1f53b
--- /dev/null
+++ b/arch/arm/boards/freescale-mx28-evk/Makefile
@@ -0,0 +1 @@
+obj-y += mx28-evk.o
diff --git a/arch/arm/boards/freescale-mx28-evk/config.h b/arch/arm/boards/freescale-mx28-evk/config.h
new file mode 100644
index 0000000..8f18fda
--- /dev/null
+++ b/arch/arm/boards/freescale-mx28-evk/config.h
@@ -0,0 +1,16 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef _CONFIG_H_
+# define _CONFIG_H_
+
+#endif /* _CONFIG_H_ */
diff --git a/arch/arm/boards/freescale-mx28-evk/env/config b/arch/arm/boards/freescale-mx28-evk/env/config
new file mode 100644
index 0000000..667641d
--- /dev/null
+++ b/arch/arm/boards/freescale-mx28-evk/env/config
@@ -0,0 +1,67 @@
+#!/bin/sh
+
+machine=mx28-evk
+#user=
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.serverip=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.ethaddr=de:ad:be:ef:00:00
+
+# can be either 'tftp', 'nfs', 'nand', 'nor' or 'disk'
+kernel_loc=tftp
+# can be either 'net', 'nand', 'nor', 'disk' or 'initrd'
+rootfs_loc=net
+
+# for flash based rootfs: 'jffs2' or 'ubifs'
+# in case of disk any regular filesystem like 'ext2', 'ext3', 'reiserfs'
+rootfs_type=ext2
+# where is the rootfs in case of 'rootfs_loc=disk' (linux name)
+rootfs_part_linux_dev=mmcblk0p4
+rootfsimage=rootfs-${machine}.$rootfs_type
+
+# where is the kernel image in case of 'kernel_loc=disk'
+kernel_part=disk0.2
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+kernelimage_type=zimage
+kernelimage=zImage-$machine
+#kernelimage_type=uimage
+#kernelimage=uImage-$machine
+#kernelimage_type=raw
+#kernelimage=Image-$machine
+#kernelimage_type=raw_lzo
+#kernelimage=Image-$machine.lzo
+
+bareboximage=barebox-${machine}.bin
+bareboxenvimage=barebox-${machine}.bin
+
+if [ -n $user ]; then
+	bareboximage="$user"-"$bareboximage"
+	bareboxenvimage="$user"-"$bareboxenvimage"
+	kernelimage="$user"-"$kernelimage"
+	rootfsimage="$user"-"$rootfsimage"
+	nfsroot="/home/$user/nfsroot/$machine"
+else
+	nfsroot="/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+bootargs="console=ttyAMA0,115200"
+
+#nor_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
+#rootfs_mtdblock_nor=3
+
+#nand_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
+#nand_device="FIXME"
+#rootfs_mtdblock_nand=7
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
new file mode 100644
index 0000000..0a8d0f8
--- /dev/null
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -0,0 +1,378 @@
+/*
+ * Copyright (C) 2010 Juergen Beisert, Pengutronix <kernel@pengutronix.de>
+ * Copyright (C) 2011 Marc Kleine-Budde, Pengutronix <mkl@pengutronix.de>
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
+ */
+
+#include <common.h>
+#include <environment.h>
+#include <errno.h>
+#include <fec.h>
+#include <gpio.h>
+#include <init.h>
+#include <mci.h>
+
+#include <mach/clock.h>
+#include <mach/imx-regs.h>
+#include <mach/iomux-mx28.h>
+#include <mach/mci.h>
+
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+
+#include <generated/mach-types.h>
+
+static struct memory_platform_data ram_pdata = {
+	.name = "ram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.id = -1,
+	.name = "mem",
+	.map_base = IMX_MEMORY_BASE,
+	.size = 128 * 1024 * 1024,
+	.platform_data = &ram_pdata,
+};
+
+#define MX28EVK_FEC_PHY_POWER	MXS_GPIO_NR(2, 15)
+#define MX28EVK_FEC_PHY_RESET	MXS_GPIO_NR(4, 13)
+
+/* setup the CPU card internal signals */
+static const iomux_cfg_t mx28evk_pads[] = {
+	/* duart */
+	MX28_PAD_PWM0__DUART_RX | MXS_PAD_CTRL,
+	MX28_PAD_PWM1__DUART_TX | MXS_PAD_CTRL,
+
+	/* auart0 */
+	MX28_PAD_AUART0_RX__AUART0_RX | MXS_PAD_CTRL,
+	MX28_PAD_AUART0_TX__AUART0_TX | MXS_PAD_CTRL,
+	MX28_PAD_AUART0_CTS__AUART0_CTS | MXS_PAD_CTRL,
+	MX28_PAD_AUART0_RTS__AUART0_RTS | MXS_PAD_CTRL,
+	/* auart3 */
+	MX28_PAD_AUART3_RX__AUART3_RX | MXS_PAD_CTRL,
+	MX28_PAD_AUART3_TX__AUART3_TX | MXS_PAD_CTRL,
+	MX28_PAD_AUART3_CTS__AUART3_CTS | MXS_PAD_CTRL,
+	MX28_PAD_AUART3_RTS__AUART3_RTS | MXS_PAD_CTRL,
+
+#define MXS_PAD_FEC	(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP)
+	/* fec0 */
+	MX28_PAD_ENET0_MDC__ENET0_MDC | MXS_PAD_FEC,
+	MX28_PAD_ENET0_MDIO__ENET0_MDIO | MXS_PAD_FEC,
+	MX28_PAD_ENET0_RX_EN__ENET0_RX_EN | MXS_PAD_FEC,
+	MX28_PAD_ENET0_RXD0__ENET0_RXD0 | MXS_PAD_FEC,
+	MX28_PAD_ENET0_RXD1__ENET0_RXD1 | MXS_PAD_FEC,
+	MX28_PAD_ENET0_TX_EN__ENET0_TX_EN | MXS_PAD_FEC,
+	MX28_PAD_ENET0_TXD0__ENET0_TXD0 | MXS_PAD_FEC,
+	MX28_PAD_ENET0_TXD1__ENET0_TXD1 | MXS_PAD_FEC,
+	MX28_PAD_ENET_CLK__CLKCTRL_ENET | MXS_PAD_FEC,
+	/* fec1 */
+	MX28_PAD_ENET0_CRS__ENET1_RX_EN | MXS_PAD_FEC,
+	MX28_PAD_ENET0_RXD2__ENET1_RXD0 | MXS_PAD_FEC,
+	MX28_PAD_ENET0_RXD3__ENET1_RXD1 | MXS_PAD_FEC,
+	MX28_PAD_ENET0_COL__ENET1_TX_EN | MXS_PAD_FEC,
+	MX28_PAD_ENET0_TXD2__ENET1_TXD0 | MXS_PAD_FEC,
+	MX28_PAD_ENET0_TXD3__ENET1_TXD1 | MXS_PAD_FEC,
+	/* phy power line */
+	MX28_PAD_SSP1_DATA3__GPIO_2_15 | MXS_PAD_CTRL,
+	/* phy reset line */
+	MX28_PAD_ENET0_RX_CLK__GPIO_4_13 | MXS_PAD_CTRL,
+
+	/* mxsfb (lcdif) */
+	MX28_PAD_LCD_D00__LCD_D0 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D01__LCD_D1 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D02__LCD_D2 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D03__LCD_D3 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D04__LCD_D4 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D05__LCD_D5 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D06__LCD_D6 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D07__LCD_D7 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D08__LCD_D8 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D09__LCD_D9 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D10__LCD_D10 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D11__LCD_D11 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D12__LCD_D12 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D13__LCD_D13 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D14__LCD_D14 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D15__LCD_D15 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D16__LCD_D16 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D17__LCD_D17 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D18__LCD_D18 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D19__LCD_D19 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D20__LCD_D20 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D21__LCD_D21 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D22__LCD_D22 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_D23__LCD_D23 | MXS_PAD_CTRL,
+	MX28_PAD_LCD_RD_E__LCD_VSYNC | MXS_PAD_CTRL,
+	MX28_PAD_LCD_WR_RWN__LCD_HSYNC | MXS_PAD_CTRL,
+	MX28_PAD_LCD_RS__LCD_DOTCLK | MXS_PAD_CTRL,
+	MX28_PAD_LCD_CS__LCD_ENABLE | MXS_PAD_CTRL,
+	/* LCD panel enable */
+	MX28_PAD_LCD_RESET__GPIO_3_30 | MXS_PAD_CTRL,
+	/* backlight control */
+	MX28_PAD_PWM2__GPIO_3_18 | MXS_PAD_CTRL,
+
+	/* mmc0 */
+	MX28_PAD_SSP0_DATA0__SSP0_D0 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_SSP0_DATA1__SSP0_D1 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_SSP0_DATA2__SSP0_D2 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_SSP0_DATA3__SSP0_D3 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_SSP0_DATA4__SSP0_D4 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_SSP0_DATA5__SSP0_D5 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_SSP0_DATA6__SSP0_D6 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_SSP0_DATA7__SSP0_D7 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_SSP0_CMD__SSP0_CMD |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_SSP0_DETECT__SSP0_CARD_DETECT |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_NOPULL),
+	MX28_PAD_SSP0_SCK__SSP0_SCK |
+		(MXS_PAD_12MA | MXS_PAD_3V3 | MXS_PAD_NOPULL),
+	/* write protect */
+	MX28_PAD_SSP1_SCK__GPIO_2_12 |
+		(MXS_PAD_4MA | MXS_PAD_3V3 | MXS_PAD_NOPULL),
+	/* slot power enable */
+	MX28_PAD_PWM3__GPIO_3_28 |
+		(MXS_PAD_4MA | MXS_PAD_3V3 | MXS_PAD_NOPULL),
+
+	/* mmc1 */
+	MX28_PAD_GPMI_D00__SSP1_D0 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_GPMI_D01__SSP1_D1 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_GPMI_D02__SSP1_D2 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_GPMI_D03__SSP1_D3 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_GPMI_D04__SSP1_D4 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_GPMI_D05__SSP1_D5 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_GPMI_D06__SSP1_D6 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_GPMI_D07__SSP1_D7 |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_GPMI_RDY1__SSP1_CMD |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_PULLUP),
+	MX28_PAD_GPMI_RDY0__SSP1_CARD_DETECT |
+		(MXS_PAD_8MA | MXS_PAD_3V3 | MXS_PAD_NOPULL),
+	MX28_PAD_GPMI_WRN__SSP1_SCK |
+		(MXS_PAD_12MA | MXS_PAD_3V3 | MXS_PAD_NOPULL),
+	/* write protect */
+	MX28_PAD_GPMI_RESETN__GPIO_0_28 |
+		(MXS_PAD_4MA | MXS_PAD_3V3 | MXS_PAD_NOPULL),
+	/* slot power enable */
+	MX28_PAD_PWM4__GPIO_3_29 |
+		(MXS_PAD_4MA | MXS_PAD_3V3 | MXS_PAD_NOPULL),
+};
+
+#ifdef CONFIG_MMU
+static int mx28_evk_mmu_init(void)
+{
+	mmu_init();
+
+	arm_create_section(0x40000000, 0x40000000, 128, PMD_SECT_DEF_CACHED);
+	arm_create_section(0x50000000, 0x40000000, 128, PMD_SECT_DEF_UNCACHED);
+
+	setup_dma_coherent(0x10000000);
+
+	mmu_enable();
+
+	return 0;
+}
+postcore_initcall(mx28_evk_mmu_init);
+#endif
+
+static struct mxs_mci_platform_data mci_pdata = {
+	.caps = MMC_MODE_4BIT,
+	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
+	.f_min = 400 * 1000,
+	.f_max = 25000000,
+};
+
+static struct device_d mci_socket = {
+	.name = "mxs_mci",
+	.map_base = IMX_SSP0_BASE,
+	.platform_data = &mci_pdata,
+};
+
+/**
+ * Try to register an environment storage on the attached MCI card
+ * @return 0 on success
+ *
+ * We rely on the existance of a usable SD card, already attached to
+ * our system, to get a persistent memory for our environment.
+ * If this SD card is also the boot medium, we can use the second partition
+ * for our environment purpose (if present!).
+ */
+static int register_persistent_environment(void)
+{
+	struct cdev *cdev;
+
+	/*
+	 * The TX28 STK5 has only one usable MCI card socket.
+	 * So, we expect its name as "disk0".
+	 */
+	cdev = cdev_by_name("disk0");
+	if (cdev == NULL) {
+		pr_err("No MCI card preset\n");
+		return -ENODEV;
+	}
+
+	/* MCI card is present, also a usable partition on it? */
+	cdev = cdev_by_name("disk0.1");
+	if (cdev == NULL) {
+		pr_err("No second partition available\n");
+		pr_info("Please create at least a second partition with"
+			" 256 kiB...512 kiB in size (your choice)\n");
+		return -ENODEV;
+	}
+
+	/* use the full partition as our persistent environment storage */
+	return devfs_add_partition("disk0.1", 0, cdev->size,
+				   DEVFS_PARTITION_FIXED, "env0");
+}
+
+/* fec */
+static void __init mx28_evk_fec_reset(void)
+{
+	int ret;
+
+	ret = gpio_direction_output(MX28EVK_FEC_PHY_POWER, 0);
+	if (ret) {
+		pr_err("Failed to drive gpio fec-phy-%s: %d\n", "power", ret);
+		return;
+	}
+
+	/* Reset fec phy */
+	gpio_direction_output(MX28EVK_FEC_PHY_RESET, 0);
+	if (ret) {
+		pr_err("Failed to drive gpio fec-phy-%s: %d\n", "reset", ret);
+		return;
+	}
+
+	mdelay(1);
+	gpio_set_value(MX28EVK_FEC_PHY_RESET, 1);
+}
+
+/* PhyAD[0..2]=0, RMIISEL=1 */
+static struct fec_platform_data fec_info = {
+	.xcv_type = RMII,
+	.phy_addr = 0,
+};
+
+static struct device_d fec_dev = {
+	.name = "fec_imx",
+	.map_base = IMX_FEC0_BASE,
+	.platform_data = &fec_info,
+};
+
+static int mx28_evk_devices_init(void)
+{
+	/* initizalize gpios */
+	mxs_iomux_setup_multiple_pads(mx28evk_pads, ARRAY_SIZE(mx28evk_pads));
+
+	/* enable IOCLK0 to run at the PLL frequency */
+	imx_set_ioclk(0, 480000000);
+	/* run the SSP unit clock at 100 MHz */
+	imx_set_sspclk(0, 100000000, 1);
+
+	register_device(&sdram_dev);
+
+	armlinux_add_dram(&sdram_dev);
+	armlinux_set_bootparams((void *)(sdram_dev.map_base + 0x100));
+	armlinux_set_architecture(MACH_TYPE_MX28EVK);
+
+	register_device(&mci_socket);
+	register_persistent_environment();
+
+	imx_enable_enetclk();
+	mx28_evk_fec_reset();
+	register_device(&fec_dev);
+
+	return 0;
+}
+
+device_initcall(mx28_evk_devices_init);
+
+static struct device_d mx28_evk_serial_device = {
+	.name = "stm_serial",
+	.map_base = IMX_DBGUART_BASE,
+	.size = 8192,
+};
+
+static int mx28_evk_console_init(void)
+{
+	return register_device(&mx28_evk_serial_device);
+}
+
+console_initcall(mx28_evk_console_init);
+
+/**
+@page mx28_evk KARO's MX28_EVK CPU module
+
+@section mx28_evk_cpu_card The CPU module
+
+http://www.karo-electronics.de/
+
+This CPU card is based on a Freescale i.MX28 CPU. The card is shipped with:
+
+- 128 MiB synchronous dynamic RAM (DDR2 type), 200 MHz support
+- 128 MiB NAND K9F1G08U0A (3.3V type)
+- PCA9554 GPIO expander
+- DS1339 RTC
+- LAN8710 Phy
+
+@section mx28_evk_basboards Supported baseboards
+
+Supported baseboards are:
+- KARO's Starterkit 5
+
+@section mx28_evk_stk5_howto How to get barebox for 'KARO's Starterkit 5'
+
+Using the default configuration:
+
+@verbatim
+make ARCH=arm mx28_evkstk5_defconfig
+@endverbatim
+
+Build the binary image:
+
+@verbatim
+make ARCH=arm CROSS_COMPILE=armv5compiler
+@endverbatim
+
+@note replace the armv5compiler with your ARM v5 cross compiler.
+
+@note To use the result, you also need the following resources from Freescale:
+- the 'bootlets' archive
+- the 'elftosb2' encryption tool
+- in the case you want to start @b barebox from an attached SD card the
+  'sdimage' tool from Freescale's 'uuc' archive.
+
+@section mx28_evk_mlayout Memory layout when barebox is running:
+
+- 0x40000000 start of SDRAM
+- 0x40000100 start of kernel's boot parameters
+  - below malloc area: stack area
+  - below barebox: malloc area
+- 0x47000000 start of @b barebox
+
+*/
diff --git a/arch/arm/boards/freescale-mx28-evk/tx28-stk5.c b/arch/arm/boards/freescale-mx28-evk/tx28-stk5.c
new file mode 100644
index 0000000..81cb80c
--- /dev/null
+++ b/arch/arm/boards/freescale-mx28-evk/tx28-stk5.c
@@ -0,0 +1,410 @@
+/*
+ * Copyright (C) 2010 Juergen Beisert, Pengutronix <kernel@pengutronix.de>
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
+ */
+
+#include <common.h>
+#include <init.h>
+#include <gpio.h>
+#include <environment.h>
+#include <errno.h>
+#include <mci.h>
+#include <fec.h>
+#include <sizes.h>
+#include <reloc.h>
+#include <asm/io.h>
+#include <asm/sections.h>
+#include <mach/imx-regs.h>
+#include <mach/clock.h>
+#include <mach/mci.h>
+#include <mach/fb.h>
+
+static struct mxs_mci_platform_data mci_pdata = {
+	.caps = MMC_MODE_4BIT,
+	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
+	.f_min = 400 * 1000,
+	.f_max = 25000000,
+};
+
+static struct device_d mci_socket = {
+	.name = "mxs_mci",
+	.map_base = IMX_SSP0_BASE,
+	.platform_data = &mci_pdata,
+};
+
+/* PhyAD[0..2]=0, RMIISEL=1 */
+static struct fec_platform_data fec_info = {
+	.xcv_type = RMII,
+	.phy_addr = 0,
+};
+
+static struct device_d fec_dev = {
+	.name = "fec_imx",
+	.map_base = IMX_FEC0_BASE,
+	.platform_data = &fec_info,
+};
+
+/*
+ * The TX28 EVK comes with a VGA connector. We can support many video modes
+ *
+ * Note: The VGA connector is driven from the LCD lines via an ADV7125. This
+ * DA converter needs an high active DE signal to show a video signal.
+ */
+static struct fb_videomode tx28evk_vmodes[] = {
+	{
+	/*
+	 * Modeline "640x480" x 59.9 (to be used with the VGA connector)
+	 * Clock: 25.18 MHz
+	 * Line: 640 656 752 800 (31.5 kHz)
+	 * Frame: 480 490 492 525
+	 * Syncs: -hsync -vsync
+	 */
+		.name = "VGA",
+		.refresh = 60,
+		.xres = 640,
+		.yres = 480,
+		.pixclock = KHZ2PICOS(25180),
+		.left_margin = 48,
+		.hsync_len = 96,
+		.right_margin = 16,
+		.upper_margin = 33,
+		.vsync_len = 2,
+		.lower_margin = 10,
+		.sync = FB_SYNC_DE_HIGH_ACT,
+		.vmode = FB_VMODE_NONINTERLACED,
+		.flag = 0,
+	}, {
+	/*
+	 * Emerging ETV570 640 x 480 display (directly connected)
+	 * Clock: 25.175 MHz
+	 * Syncs: low active, DE high active
+	 * Display area: 115.2 mm x 86.4 mm
+	 */
+		.name = "ETV570",
+		.refresh = 60,
+		.xres = 640,
+		.yres = 480,
+		.pixclock = KHZ2PICOS(25175),
+		.left_margin = 114,
+		.hsync_len = 30,
+		.right_margin = 16,
+		.upper_margin = 32,
+		.vsync_len = 3,
+		.lower_margin = 10,
+		.sync = FB_SYNC_DE_HIGH_ACT,
+		.vmode = FB_VMODE_NONINTERLACED,
+		.flag = 0,
+		/*
+		 * This display is connected:
+		 *  display side   -> CPU side
+		 * ----------------------------
+		 * RESET# pin  -> GPIO126 (3/30) LCD_RESET -> L = display reset
+		 * PWRCTRL pin -> GPIO63 (1/31) LCD_ENABLE - > H=on, L=off
+		 * LEDCTRL pin -> GPIO112 (2/16) PWM0 -> 2.5 V = LEDs off
+		 *                                    ->   0 V = LEDs on
+		 *
+		 * Note: Backlight is on, only if PWRCTRL=H _and_ LEDCTRL=0
+		 */
+	}, {
+	/*
+	 * Modeline "800x600" x 60.3
+	 * Clock: 40.00 MHz
+	 * Line: 800 840 968 1056 (37.9 kHz)
+	 * Frame: 600 601 605 628
+	 * Syncs: +hsync +vsync
+	 */
+		.name = "SVGA",
+		.refresh = 60,
+		.xres = 800,
+		.yres = 600,
+		.pixclock = KHZ2PICOS(40000),
+		.left_margin = 88,
+		.hsync_len = 128,
+		.right_margin = 40,
+		.upper_margin = 23,
+		.vsync_len = 4,
+		.lower_margin = 1,
+		.sync = FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT |
+				FB_SYNC_DE_HIGH_ACT,
+		.vmode = FB_VMODE_NONINTERLACED,
+		.flag = 0,
+	}, {
+	/*
+	 * Modeline "1024x768" x 60.0
+	 * Clock: 65.00 MHz
+	 * Line: 1024 1048 1184 1344 (48.4 kHz)
+	 * Frame: 768 771 777 806
+	 * Syncs: -hsync -vsync
+	 */
+		.name = "XGA",
+		.refresh = 60,
+		.xres = 1024,
+		.yres = 768,
+		.pixclock = KHZ2PICOS(65000),
+		.left_margin = 160,
+		.hsync_len = 136,
+		.right_margin = 24,
+		.upper_margin = 29,
+		.vsync_len = 6,
+		.lower_margin = 3,
+		.sync = FB_SYNC_DE_HIGH_ACT,
+		.vmode = FB_VMODE_NONINTERLACED,
+		.flag = 0,
+	}, {
+	/*
+	 * Modeline "1280x1024" x 60.0
+	 * Clock: 108.00 MHz
+	 * Line: 1280 1328 1440 1688 (64.0 kHz)
+	 * Frame: 1024 1025 1028 1066
+	 * Syncs: +hsync +vsync
+	 */
+		.name = "SXGA",
+		.refresh = 60,
+		.xres = 1280,
+		.yres = 1024,
+		.pixclock = KHZ2PICOS(108000),
+		.left_margin = 248,
+		.hsync_len = 112,
+		.right_margin = 48,
+		.upper_margin = 38,
+		.vsync_len = 3,
+		.lower_margin = 1,
+		.sync = FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT |
+				FB_SYNC_DE_HIGH_ACT,
+		.vmode = FB_VMODE_NONINTERLACED,
+		.flag = 0,
+	},
+};
+
+#define MAX_FB_SIZE SZ_2M
+
+#define GPIO_LCD_RESET	126 /* 1 -> Reset  */
+#define GPIO_BACKLIGHT	112 /* 0 -> backlight active */
+#define GPIO_LCD_ENABLE	 63 /* 1 -> LCD enabled */
+
+static void tx28_fb_enable(int enable)
+{
+	gpio_direction_output(GPIO_LCD_RESET, enable);
+	gpio_direction_output(GPIO_LCD_ENABLE, enable);
+
+	/* Give the display a chance to sync before we enable
+	 * the backlight to avoid flickering
+	 */
+	if (enable)
+		mdelay(300);
+
+	gpio_direction_output(GPIO_BACKLIGHT, !enable);
+}
+
+static struct imx_fb_platformdata tx28_fb_pdata = {
+	.mode_list = tx28evk_vmodes,
+	.mode_cnt = ARRAY_SIZE(tx28evk_vmodes),
+	.dotclk_delay = 0,	/* no adaption required */
+	.ld_intf_width = STMLCDIF_24BIT,	/* full 24 bit */
+	.fixed_screen = (void *)(0x40000000 + SZ_128M - MAX_FB_SIZE),
+	.fixed_screen_size = MAX_FB_SIZE,
+	.enable = tx28_fb_enable,
+};
+
+static struct device_d ldcif_dev = {
+	.name = "stmfb",
+	.map_base = IMX_FB_BASE,
+	.size = 4096,
+	.platform_data = &tx28_fb_pdata,
+};
+
+static const uint32_t tx28_starterkit_pad_setup[] = {
+	/*
+	 * Part II of phy's initialization
+	 * Setup phy's mode to '111'
+	 */
+
+	/*
+	 * force the mod pins to a specific level
+	 * '111' means: "All capable. Auto-negotiation enabled".
+	 * For other values refer LAN8710's datasheet,
+	 * chapter "Mode Bus - MODE[2:0]"
+	 */
+	ENET0_RXD0_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(1), /* MOD0 */
+	ENET0_RXD1_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(1), /* MOD1 */
+	ENET0_RX_EN_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(1), /* MOD2 */
+
+	/* release the reset ('mod' pins get latched) */
+	ENET0_RX_CLK_GPIO | VE_3_3V | BITKEEPER(0) | GPIO_OUT | GPIO_VALUE(1),
+
+	/* right now the 'mod' pins are in their native mode */
+	ENET0_RXD0 | VE_3_3V | PULLUP(0),
+	ENET0_RXD1 | VE_3_3V | PULLUP(0),
+	ENET0_RX_EN | VE_3_3V | PULLUP(0),
+
+	/* Debug UART, available at card connector UART1 */
+	AUART0_CTS_DUART_RX | VE_3_3V | STRENGTH(S8MA),
+	AUART0_RTS_DUART_TX | VE_3_3V | STRENGTH(S8MA),
+	AUART0_RX_DUART_CTS | VE_3_3V | STRENGTH(S8MA),
+	AUART0_TX_DUART_RTS | VE_3_3V | STRENGTH(S8MA),
+	/* Application UART, available at connector UART2 */
+	AUART1_RX | VE_3_3V | BITKEEPER(0),
+	AUART1_TX | VE_3_3V | BITKEEPER(0),
+	AUART1_CTS | VE_3_3V | PULLUP(1),
+	AUART1_RTS | VE_3_3V | PULLUP(1),
+	/* Application UART, available at connector FIXME */
+	AUART2_RX | VE_3_3V | PULLUP(1),
+	AUART2_TX | VE_3_3V | PULLUP(1),
+	AUART2_CTS | VE_3_3V | BITKEEPER(0),
+	AUART2_RTS | VE_3_3V | BITKEEPER(0),
+
+	/* MCI interface */
+	SSP0_D0 | VE_3_3V | PULLUP(1),
+	SSP0_D1 | VE_3_3V | PULLUP(1),
+	SSP0_D2 | VE_3_3V | PULLUP(1),
+	SSP0_D3 | VE_3_3V | PULLUP(1),
+	SSP0_CMD | VE_3_3V | PULLUP(1),
+	SSP0_CD | VE_3_3V | PULLUP(1),
+	SSP0_SCK | VE_3_3V | BITKEEPER(0),
+
+	/* MCI slot power control 1 = off */
+	PWM3_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(0),
+	/* MCI write protect 1 = not protected */
+	SSP1_SCK_GPIO | VE_3_3V | GPIO_IN,	/* FIXME pull up ? */
+
+	/* LED */
+	ENET0_RXD3_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(1),
+
+	/*
+	 * The backlight is on, if:
+	 * - the PWM0 pin outputs a low level
+	 *   * AND *
+	 * - the LCD_ENABLE is at high level.
+	 * In all other combinations the backlight is off.
+	 *
+	 * Switch it off here to avoid flickering.
+	 */
+	PWM0_GPIO | VE_3_3V | PULLUP(0) | GPIO_OUT | GPIO_VALUE(1),
+
+	/* LCD interface to the VGA connector */
+	/* sync signals */
+	LCD_WR_RWN_LCD_HSYNC | VE_3_3V | BITKEEPER(0),
+	LCD_RD_E_LCD_VSYNC | VE_3_3V | BITKEEPER(0),
+	LCD_CS | VE_3_3V | BITKEEPER(0),
+	LCD_RS_LCD_DOTCLK | VE_3_3V | BITKEEPER(0),
+	/* data signals */
+	LCD_D0 | VE_3_3V | BITKEEPER(0),
+	LCD_D1 | VE_3_3V | BITKEEPER(0),
+	LCD_D2 | VE_3_3V | BITKEEPER(0),
+	LCD_D3 | VE_3_3V | BITKEEPER(0),
+	LCD_D4 | VE_3_3V | BITKEEPER(0),
+	LCD_D5 | VE_3_3V | BITKEEPER(0),
+	LCD_D6 | VE_3_3V | BITKEEPER(0),
+	LCD_D7 | VE_3_3V | BITKEEPER(0),
+	LCD_D8 | VE_3_3V | BITKEEPER(0),
+	LCD_D9 | VE_3_3V | BITKEEPER(0),
+	LCD_D10 | VE_3_3V | BITKEEPER(0),
+	LCD_D11 | VE_3_3V | BITKEEPER(0),
+	LCD_D12 | VE_3_3V | BITKEEPER(0),
+	LCD_D13 | VE_3_3V | BITKEEPER(0),
+	LCD_D14 | VE_3_3V | BITKEEPER(0),
+	LCD_D15 | VE_3_3V | BITKEEPER(0),
+	LCD_D16 | VE_3_3V | BITKEEPER(0),
+	LCD_D17 | VE_3_3V | BITKEEPER(0),
+	LCD_D18 | VE_3_3V | BITKEEPER(0),
+	LCD_D19 | VE_3_3V | BITKEEPER(0),
+	LCD_D20 | VE_3_3V | BITKEEPER(0),
+	LCD_D21 | VE_3_3V | BITKEEPER(0),
+	LCD_D22 | VE_3_3V | BITKEEPER(0),
+	LCD_D23 | VE_3_3V | BITKEEPER(0),
+
+	/* keep display's reset at low */
+	LCD_RESET_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(0),
+	/* keep display's power off */
+	LCD_ENABLE_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(0),
+};
+
+/**
+ * Try to register an environment storage on the attached MCI card
+ * @return 0 on success
+ *
+ * We rely on the existance of a usable SD card, already attached to
+ * our system, to get a persistent memory for our environment.
+ * If this SD card is also the boot medium, we can use the second partition
+ * for our environment purpose (if present!).
+ */
+static int register_persistent_environment(void)
+{
+	struct cdev *cdev;
+
+	/*
+	 * The TX28 STK5 has only one usable MCI card socket.
+	 * So, we expect its name as "disk0".
+	 */
+	cdev = cdev_by_name("disk0");
+	if (cdev == NULL) {
+		pr_err("No MCI card preset\n");
+		return -ENODEV;
+	}
+
+	/* MCI card is present, also a usable partition on it? */
+	cdev = cdev_by_name("disk0.1");
+	if (cdev == NULL) {
+		pr_err("No second partition available\n");
+		pr_info("Please create at least a second partition with"
+			" 256 kiB...512 kiB in size (your choice)\n");
+		return -ENODEV;
+	}
+
+	/* use the full partition as our persistent environment storage */
+	return devfs_add_partition("disk0.1", 0, cdev->size,
+					DEVFS_PARTITION_FIXED, "env0");
+}
+
+void base_board_init(void)
+{
+	int i, ret;
+
+	/* initialize gpios */
+	for (i = 0; i < ARRAY_SIZE(tx28_starterkit_pad_setup); i++)
+		imx_gpio_mode(tx28_starterkit_pad_setup[i]);
+
+	/* enable IOCLK0 to run at the PLL frequency */
+	imx_set_ioclk(0, 480000000);
+	/* run the SSP unit clock at 100 MHz */
+	imx_set_sspclk(0, 100000000, 1);
+
+	register_device(&mci_socket);
+
+	if (tx28_fb_pdata.fixed_screen < (void *)&_end) {
+		printf("Warning: fixed_screen overlaps barebox\n");
+		tx28_fb_pdata.fixed_screen = NULL;
+	}
+
+	register_device(&ldcif_dev);
+
+	imx_enable_enetclk();
+	register_device(&fec_dev);
+
+	ret = register_persistent_environment();
+	if (ret != 0)
+		printf("Cannot create the 'env0' persistent environment "
+				"storage (%d)\n", ret);
+}
+
+static struct device_d tx28kit_serial_device = {
+	.name     = "stm_serial",
+	.map_base = IMX_DBGUART_BASE,
+	.size     = 8192,
+};
+
+static int tx28kit_console_init(void)
+{
+	return register_device(&tx28kit_serial_device);
+}
+
+console_initcall(tx28kit_console_init);
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index f9cefaf..61110ee 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -5,11 +5,13 @@ config ARCH_TEXT_BASE
 	default 0x41000000 if MACH_MX23EVK
 	default 0x42000000 if MACH_CHUMBY
 	default 0x47000000 if MACH_TX28
+	default 0x47000000 if MACH_MX28EVK
 
 config BOARDINFO
 	default "Freescale i.MX23-EVK" if MACH_MX23EVK
 	default "Chumby Falconwing" if MACH_CHUMBY
 	default "Karo TX28" if MACH_TX28
+	default "Freescale i.MX28-EVK" if MACH_MX28EVK
 
 comment "Freescale i.MX System-on-Chip"
 
@@ -59,6 +61,11 @@ config MACH_TX28
 	help
 	  Say Y here if you are using the KARO TX28 CPU module.
 
+config MACH_MX28EVK
+	bool "mx28-evk"
+	help
+	  Say Y here if you are using the Freescale i.MX28-EVK board
+
 endchoice
 
 endif
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

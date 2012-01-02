Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rhfpm-0005d0-L6
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 11:13:43 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon,  2 Jan 2012 12:13:30 +0100
Message-Id: <1325502810-22233-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH V2] mxs: add support for mx28-evk
To: barebox@lists.infradead.org

This patch adds basic support for the mx28-evk board. Debug UART, MMC and FEC
have been successfully used.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---

Changes since V1: - removed kernel_imagetype and flash setup from env/config

 arch/arm/Makefile                             |    1 +
 arch/arm/boards/freescale-mx28-evk/Makefile   |    1 +
 arch/arm/boards/freescale-mx28-evk/config.h   |   16 +++
 arch/arm/boards/freescale-mx28-evk/env/config |   51 +++++++++
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c |  141 +++++++++++++++++++++++++
 arch/arm/configs/imx28evk_defconfig           |   48 +++++++++
 arch/arm/mach-mxs/Kconfig                     |    7 ++
 arch/arm/mach-mxs/include/mach/iomux-imx28.h  |    1 +
 8 files changed, 266 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx28-evk/Makefile
 create mode 100644 arch/arm/boards/freescale-mx28-evk/config.h
 create mode 100644 arch/arm/boards/freescale-mx28-evk/env/config
 create mode 100644 arch/arm/boards/freescale-mx28-evk/mx28-evk.c
 create mode 100644 arch/arm/configs/imx28evk_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 0c42f3d..c981041 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -101,6 +101,7 @@ board-$(CONFIG_MACH_NESO)			:= guf-neso
 board-$(CONFIG_MACH_MX23EVK)			:= freescale-mx23-evk
 board-$(CONFIG_MACH_CHUMBY)			:= chumby_falconwing
 board-$(CONFIG_MACH_TX28)			:= karo-tx28
+board-$(CONFIG_MACH_MX28EVK)			:= freescale-mx28-evk
 board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:= freescale-mx51-pdk
 board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	:= freescale-mx53-loco
 board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
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
index 0000000..5095633
--- /dev/null
+++ b/arch/arm/boards/freescale-mx28-evk/env/config
@@ -0,0 +1,51 @@
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
+kernelimage=zImage-$machine
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
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
new file mode 100644
index 0000000..b80b910
--- /dev/null
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -0,0 +1,141 @@
+/*
+ * Copyright (C) 2010 Juergen Beisert, Pengutronix <kernel@pengutronix.de>
+ * Copyright (C) 2011 Marc Kleine-Budde, Pengutronix <mkl@pengutronix.de>
+ * Copyright (C) 2011 Wolfram Sang, Pengutronix <w.sang@pengutronix.de>
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
+#include <io.h>
+
+#include <mach/clock.h>
+#include <mach/imx-regs.h>
+#include <mach/iomux-imx28.h>
+#include <mach/mci.h>
+
+#include <asm/armlinux.h>
+#include <asm/mmu.h>
+
+#include <generated/mach-types.h>
+
+#define MX28EVK_FEC_PHY_RESET_GPIO	141
+
+/* setup the CPU card internal signals */
+static const uint32_t mx28evk_pads[] = {
+	/* duart */
+	PWM0_DUART_RX | VE_3_3V,
+	PWM1_DUART_TX | VE_3_3V,
+
+	/* fec0 */
+	ENET_CLK | VE_3_3V | BITKEEPER(0),
+	ENET0_MDC | VE_3_3V | PULLUP(1),
+	ENET0_MDIO | VE_3_3V | PULLUP(1),
+	ENET0_TXD0 | VE_3_3V | PULLUP(1),
+	ENET0_TXD1 | VE_3_3V | PULLUP(1),
+	ENET0_TX_EN | VE_3_3V | PULLUP(1),
+	ENET0_TX_CLK | VE_3_3V | BITKEEPER(0),
+	ENET0_RXD0 | VE_3_3V | PULLUP(1),
+	ENET0_RXD1 | VE_3_3V | PULLUP(1),
+	ENET0_RX_EN | VE_3_3V | PULLUP(1),
+	/* send a "good morning" to the ext. phy 0 = reset */
+	ENET0_RX_CLK_GPIO | VE_3_3V | PULLUP(0) | GPIO_OUT | GPIO_VALUE(0),
+	/* phy power control 1 = on */
+	SSP1_D3_GPIO | VE_3_3V | PULLUP(0) | GPIO_OUT | GPIO_VALUE(0),
+
+	/* mmc0 */
+	SSP0_D0 | VE_3_3V | PULLUP(1),
+	SSP0_D1 | VE_3_3V | PULLUP(1),
+	SSP0_D2 | VE_3_3V | PULLUP(1),
+	SSP0_D3 | VE_3_3V | PULLUP(1),
+	SSP0_D4 | VE_3_3V | PULLUP(1),
+	SSP0_D5 | VE_3_3V | PULLUP(1),
+	SSP0_D6 | VE_3_3V | PULLUP(1),
+	SSP0_D7 | VE_3_3V | PULLUP(1),
+	SSP0_CMD | VE_3_3V | PULLUP(1),
+	SSP0_CD | VE_3_3V | PULLUP(1),
+	SSP0_SCK | VE_3_3V | BITKEEPER(0),
+	/* MCI slot power control 1 = off */
+	PWM3_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(0),
+	/* MCI write protect 1 = not protected */
+	SSP1_SCK_GPIO | VE_3_3V | GPIO_IN,
+};
+
+static struct mxs_mci_platform_data mci_pdata = {
+	.caps = MMC_MODE_8BIT,
+	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
+	.f_min = 400 * 1000,
+	.f_max = 25000000,
+};
+
+/* fec */
+static void __init mx28_evk_fec_reset(void)
+{
+	mdelay(1);
+	gpio_set_value(MX28EVK_FEC_PHY_RESET_GPIO, 1);
+}
+
+/* PhyAD[0..2]=0, RMIISEL=1 */
+static struct fec_platform_data fec_info = {
+	.xcv_type = RMII,
+	.phy_addr = 0,
+};
+
+static int mx28_evk_mem_init(void)
+{
+	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(mx28_evk_mem_init);
+
+static int mx28_evk_devices_init(void)
+{
+	int i;
+
+	/* initizalize muxing */
+	for (i = 0; i < ARRAY_SIZE(mx28evk_pads); i++)
+		imx_gpio_mode(mx28evk_pads[i]);
+
+	/* enable IOCLK0 to run at the PLL frequency */
+	imx_set_ioclk(0, 480000000);
+	/* run the SSP unit clock at 100 MHz */
+	imx_set_sspclk(0, 100000000, 1);
+
+	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
+	armlinux_set_architecture(MACH_TYPE_MX28EVK);
+
+	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0,
+			   IORESOURCE_MEM, &mci_pdata);
+
+	imx_enable_enetclk();
+	mx28_evk_fec_reset();
+	add_generic_device("fec_imx", 0, NULL, IMX_FEC0_BASE, 0,
+			   IORESOURCE_MEM, &fec_info);
+
+	return 0;
+}
+device_initcall(mx28_evk_devices_init);
+
+static int mx28_evk_console_init(void)
+{
+	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 8192,
+			   IORESOURCE_MEM, NULL);
+
+	return 0;
+}
+console_initcall(mx28_evk_console_init);
diff --git a/arch/arm/configs/imx28evk_defconfig b/arch/arm/configs/imx28evk_defconfig
new file mode 100644
index 0000000..1860aef
--- /dev/null
+++ b/arch/arm/configs/imx28evk_defconfig
@@ -0,0 +1,48 @@
+CONFIG_ARCH_MXS=y
+CONFIG_ARCH_IMX28=y
+CONFIG_MACH_MX28EVK=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x43000000
+CONFIG_MALLOC_SIZE=0x800000
+CONFIG_BROKEN=y
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx28-evk/env"
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+# CONFIG_SPI is not set
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_MXS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index caef7e0..15f7c74 100644
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
 
@@ -57,6 +59,11 @@ config MACH_TX28
 	help
 	  Say Y here if you are using the KARO TX28 CPU module.
 
+config MACH_MX28EVK
+	bool "mx28-evk"
+	help
+	  Say Y here if you are using the Freescale i.MX28-EVK board
+
 endchoice
 
 endif
diff --git a/arch/arm/mach-mxs/include/mach/iomux-imx28.h b/arch/arm/mach-mxs/include/mach/iomux-imx28.h
index 1e6d421..1557126 100644
--- a/arch/arm/mach-mxs/include/mach/iomux-imx28.h
+++ b/arch/arm/mach-mxs/include/mach/iomux-imx28.h
@@ -302,6 +302,7 @@
 #define PWM2			(FUNC(0) | PORTF(3, 18))
 
 #define PWM1			(FUNC(0) | PORTF(3, 17))
+#define PWM1_DUART_TX		(FUNC(2) | PORTF(3, 17))
 
 #define PWM0			(FUNC(0) | PORTF(3, 16))
 #define PWM0_I2C1_SCL		(FUNC(1) | PORTF(3, 16))
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

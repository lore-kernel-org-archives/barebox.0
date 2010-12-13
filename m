Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS62I-00020E-US
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 10:53:55 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PS62G-0008R3-3O
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:40 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0002Iy-V2
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 13 Dec 2010 11:53:37 +0100
Message-Id: <1292237617-7064-15-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
References: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 14/14] STM378x: Add the TX28 Starterkit-5 baseboard
To: barebox@lists.infradead.org

This file is to be used in conjunction with the TX28 CPU module.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/karo-tx28/Makefile    |    1 +
 arch/arm/boards/karo-tx28/env/config  |   47 +++++++
 arch/arm/boards/karo-tx28/tx28-stk5.c |  229 +++++++++++++++++++++++++++++++++
 arch/arm/boards/karo-tx28/tx28.c      |   37 ++++++
 arch/arm/configs/tx28stk5_defconfig   |   38 ++++++
 arch/arm/mach-stm/Kconfig             |   15 ++
 6 files changed, 367 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx28/env/config
 create mode 100644 arch/arm/boards/karo-tx28/tx28-stk5.c
 create mode 100644 arch/arm/configs/tx28stk5_defconfig

diff --git a/arch/arm/boards/karo-tx28/Makefile b/arch/arm/boards/karo-tx28/Makefile
index 6f7e865..d80ba17 100644
--- a/arch/arm/boards/karo-tx28/Makefile
+++ b/arch/arm/boards/karo-tx28/Makefile
@@ -1 +1,2 @@
 obj-y += tx28.o
+obj-$(CONFIG_MACH_TX28STK5) += tx28-stk5.o
diff --git a/arch/arm/boards/karo-tx28/env/config b/arch/arm/boards/karo-tx28/env/config
new file mode 100644
index 0000000..9b302b8
--- /dev/null
+++ b/arch/arm/boards/karo-tx28/env/config
@@ -0,0 +1,47 @@
+#
+#
+
+machine=tx28
+baseboard=tx28stk5
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.ethaddr=de:ad:be:ef:00:00
+#eth0.netmask=a.b.c.d
+#eth0.serverip=a.b.c.d
+#eth0.gateway=a.b.c.d
+
+# can be either 'net'
+kernel_loc=net
+# can be either 'net' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-$machine.$rootfs_type
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
+if [ -n $user ]; then
+	kernelimage="$user"-"$kernelimage"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	rootfsimage="$user"-"$rootfsimage"
+else
+	nfsroot="$eth0.serverip:/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+bootargs="console=ttyAM0,115200 tx28_base=$baseboard"
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
new file mode 100644
index 0000000..a032e6a
--- /dev/null
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -0,0 +1,229 @@
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
+#include <asm/io.h>
+#include <mach/imx-regs.h>
+#include <mach/clock.h>
+#include <mach/mci.h>
+
+static struct stm_mci_platform_data mci_pdata = {
+	.caps = MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz,
+	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
+	.f_min = 400 * 1000,
+};
+
+static struct device_d mci_socket = {
+	.name = "stm_mci",
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
+	LCD_CS_LCD_ENABLE | VE_3_3V | BITKEEPER(0),
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
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index d5edf5d..6f4ef4e 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -106,6 +106,8 @@ device_initcall(tx28_devices_init);
 /**
 @page tx28 KARO's TX28 CPU module
 
+@section tx28_cpu_card The CPU module
+
 http://www.karo-electronics.de/
 
 This CPU card is based on a Freescale i.MX28 CPU. The card is shipped with:
@@ -116,4 +118,39 @@ This CPU card is based on a Freescale i.MX28 CPU. The card is shipped with:
 - DS1339 RTC
 - LAN8710 Phy
 
+@section tx28_basboards Supported baseboards
+
+Supported baseboards are:
+- KARO's Starterkit 5
+
+@section tx28_stk5_howto How to get barebox for 'KARO's Starterkit 5'
+
+Using the default configuration:
+
+@verbatim
+make ARCH=arm tx28stk5_defconfig
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
+@section tx28_mlayout Memory layout when barebox is running:
+
+- 0x40000000 start of SDRAM
+- 0x40000100 start of kernel's boot parameters
+  - below malloc area: stack area
+  - below barebox: malloc area
+- 0x47000000 start of @b barebox
+
 */
diff --git a/arch/arm/configs/tx28stk5_defconfig b/arch/arm/configs/tx28stk5_defconfig
new file mode 100644
index 0000000..17534f5
--- /dev/null
+++ b/arch/arm/configs/tx28stk5_defconfig
@@ -0,0 +1,38 @@
+CONFIG_ARCH_STM=y
+CONFIG_ARCH_IMX28=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_BROKEN=y
+CONFIG_LONGHELP=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/karo-tx28/env"
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
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+# CONFIG_SPI is not set
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_STM378X=y
diff --git a/arch/arm/mach-stm/Kconfig b/arch/arm/mach-stm/Kconfig
index 824b2cf..e47d9f1 100644
--- a/arch/arm/mach-stm/Kconfig
+++ b/arch/arm/mach-stm/Kconfig
@@ -64,6 +64,21 @@ endif
 
 menu "Board specific settings       "
 
+if MACH_TX28
+
+choice
+	prompt "TX28 Base Board Type"
+
+config MACH_TX28STK5
+	bool "TX28-stk5"
+	help
+	  Select this entry if you are running the TX28 CPU module on the
+	  KARO TX28 Starterkit5.
+
+endchoice
+
+endif
+
 endmenu
 
 endif
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

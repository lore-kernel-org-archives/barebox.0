Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PG9Ef-0000C8-6G
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 11:53:06 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 10 Nov 2010 12:49:44 +0100
Message-Id: <1289389784-9394-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1289389500-7690-1-git-send-email-plagnioj@jcrosoft.com>
References: <1289389500-7690-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/6] at91: add Ronetix pm9g45 support
To: barebox@lists.infradead.org
Cc: Ilko Iliev <iliev@ronetix.at>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Ilko Iliev <iliev@ronetix.at>
---
 arch/arm/Makefile                 |    1 +
 arch/arm/boards/pm9g45/Makefile   |    1 +
 arch/arm/boards/pm9g45/config.h   |    6 ++
 arch/arm/boards/pm9g45/env/config |   41 ++++++++++++++
 arch/arm/boards/pm9g45/init.c     |  108 +++++++++++++++++++++++++++++++++++++
 arch/arm/configs/pm9g45_defconfig |   55 +++++++++++++++++++
 arch/arm/mach-at91/Kconfig        |    6 ++
 7 files changed, 218 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/pm9g45/Makefile
 create mode 100644 arch/arm/boards/pm9g45/config.h
 create mode 100644 arch/arm/boards/pm9g45/env/config
 create mode 100644 arch/arm/boards/pm9g45/init.c
 create mode 100644 arch/arm/configs/pm9g45_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4f2d48c..21e63b6 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -83,6 +83,7 @@ board-$(CONFIG_MACH_PCM038)			:= pcm038
 board-$(CONFIG_MACH_PCM043)			:= pcm043
 board-$(CONFIG_MACH_PM9261)			:= pm9261
 board-$(CONFIG_MACH_PM9263)			:= pm9263
+board-$(CONFIG_MACH_PM9G45)			:= pm9g45
 board-$(CONFIG_MACH_SCB9328)			:= scb9328
 board-$(CONFIG_MACH_NESO)			:= guf-neso
 board-$(CONFIG_MACH_MX23EVK)			:= freescale-mx23-evk
diff --git a/arch/arm/boards/pm9g45/Makefile b/arch/arm/boards/pm9g45/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/pm9g45/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/pm9g45/config.h b/arch/arm/boards/pm9g45/config.h
new file mode 100644
index 0000000..ac3114d
--- /dev/null
+++ b/arch/arm/boards/pm9g45/config.h
@@ -0,0 +1,6 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		12000000	/* from 12 MHz crystal */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/pm9g45/env/config b/arch/arm/boards/pm9g45/env/config
new file mode 100644
index 0000000..3b92233
--- /dev/null
+++ b/arch/arm/boards/pm9g45/env/config
@@ -0,0 +1,41 @@
+#!/bin/sh
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
+# can be either 'net' or 'nand'
+kernel_loc=net
+# can be either 'net', 'nand' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root.$rootfs_type
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+#kernelimage_type=zimage
+#kernelimage=zImage
+kernelimage_type=uimage
+kernelimage=uImage
+#kernelimage_type=raw
+#kernelimage=Image
+#kernelimage_type=raw_lzo
+#kernelimage=Image.lzo
+
+nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
+rootfs_mtdblock_nand=3
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
new file mode 100644
index 0000000..8031ce5
--- /dev/null
+++ b/arch/arm/boards/pm9g45/init.c
@@ -0,0 +1,108 @@
+/*
+ * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
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
+#include <net.h>
+#include <init.h>
+#include <environment.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <asm/io.h>
+#include <asm/hardware.h>
+#include <nand.h>
+#include <linux/mtd/nand.h>
+#include <mach/at91_pmc.h>
+#include <mach/board.h>
+#include <mach/gpio.h>
+#include <mach/io.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/sam9_smc.h>
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+/*	.det_pin	= ... not connected */
+	.rdy_pin	= AT91_PIN_PD3,
+	.enable_pin	= AT91_PIN_PC14,
+	.bus_width_16	= 0,
+};
+
+static struct sam9_smc_config pm_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 1,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 1,
+
+	.ncs_read_pulse		= 2,
+	.nrd_pulse		= 3,
+	.ncs_write_pulse	= 3,
+	.nwe_pulse		= 4,
+
+	.read_cycle		= 4,
+	.write_cycle		= 7,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.tdf_cycles		= 3,
+};
+
+static void pm_add_device_nand(void)
+{
+	pm_nand_smc_config.mode |= AT91_SMC_DBW_8;
+
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(3, &pm_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+
+static struct at91_ether_platform_data macb_pdata = {
+	.flags = AT91SAM_ETHER_RMII,
+	.phy_addr = 0,
+};
+
+static int pm9g45_devices_init(void)
+{
+	at91_add_device_sdram(128 * 1024 * 1024);
+	pm_add_device_nand();
+	at91_add_device_eth(&macb_pdata);
+
+	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", 0x40000, 0x40000, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
+	armlinux_set_architecture(MACH_TYPE_PM9G45);
+
+	return 0;
+}
+device_initcall(pm9g45_devices_init);
+
+static int pm9g45_console_init(void)
+{
+	at91_register_uart(0, 0);
+	return 0;
+}
+console_initcall(pm9g45_console_init);
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
new file mode 100644
index 0000000..20bfd71
--- /dev/null
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -0,0 +1,55 @@
+CONFIG_ARCH_AT91SAM9G45=y
+CONFIG_MACH_PM9G45=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PROMPT="pm9g45:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PASSWD_SUM_SHA1=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pm9g45/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNLZO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_NET_MACB=y
+# CONFIG_SPI is not set
+CONFIG_DRIVER_CFI=y
+CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_UBI=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 60b693c..e5bd45e 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -14,6 +14,7 @@ config BOARDINFO
 	default "Bucyrus MMC-CPU" if MACH_MMCCPU
 	default "Ronetix PM9261" if MACH_PM9261
 	default "Ronetix PM9263" if MACH_PM9263
+	default "Ronetix PM9G45" if MACH_PM9G45
 
 config HAVE_NAND_ATMEL_BUSWIDTH_16
 	bool
@@ -176,6 +177,11 @@ config MACH_AT91SAM9M10G45EK
 	  Select this if you are using Atmel's AT91SAM9M10G45-EK Evaluation Kit.
 	  <http://atmel.com/dyn/products/tools_card_v2.asp?tool_id=4735>
 
+config MACH_PM9G45
+	bool "Ronetix PM9G45"
+	help
+	  Say y here if you are using the Ronetix PM9G45 Board
+
 endchoice
 
 endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

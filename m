Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXvkd-0007oU-Gr
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 21:11:38 +0000
Received: by mail-lf0-x241.google.com with SMTP id h137so8462592lfe.8
 for <barebox@lists.infradead.org>; Sat, 06 Jan 2018 13:11:24 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sat,  6 Jan 2018 22:10:57 +0100
Message-Id: <20180106211118.24249-1-sam@ravnborg.org>
In-Reply-To: <20180106210450.GA21127@ravnborg.org>
References: <20180106210450.GA21127@ravnborg.org>
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
Subject: [PATCH v5 01/22] at91: mmccpu: remove board support for mmccpu
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Based on feedback from Sascha:
http://lists.infradead.org/pipermail/barebox/2018-January/031796.html
"
Let's just remove this board
instead of ventilating it any further.
"

Remove mmccpu board - and all references to this board.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/Makefile                     |   1 -
 arch/arm/boards/mmccpu/Makefile              |   3 -
 arch/arm/boards/mmccpu/env/bin/_update       |  36 -------
 arch/arm/boards/mmccpu/env/bin/boot          |  47 ----------
 arch/arm/boards/mmccpu/env/bin/init          |  33 -------
 arch/arm/boards/mmccpu/env/bin/update_kernel |  15 ---
 arch/arm/boards/mmccpu/env/bin/update_root   |  16 ----
 arch/arm/boards/mmccpu/env/config            |  30 ------
 arch/arm/boards/mmccpu/init.c                |  88 -----------------
 arch/arm/boards/mmccpu/lowlevel_init.c       | 135 ---------------------------
 arch/arm/configs/mmccpu_defconfig            |  37 --------
 arch/arm/mach-at91/Kconfig                   |   5 -
 12 files changed, 446 deletions(-)
 delete mode 100644 arch/arm/boards/mmccpu/Makefile
 delete mode 100644 arch/arm/boards/mmccpu/env/bin/_update
 delete mode 100644 arch/arm/boards/mmccpu/env/bin/boot
 delete mode 100644 arch/arm/boards/mmccpu/env/bin/init
 delete mode 100644 arch/arm/boards/mmccpu/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/mmccpu/env/bin/update_root
 delete mode 100644 arch/arm/boards/mmccpu/env/config
 delete mode 100644 arch/arm/boards/mmccpu/init.c
 delete mode 100644 arch/arm/boards/mmccpu/lowlevel_init.c
 delete mode 100644 arch/arm/configs/mmccpu_defconfig

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 456e6fea4..ca187ccb8 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -67,7 +67,6 @@ obj-$(CONFIG_MACH_MAINSTONE)			+= mainstone/
 obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)		+= marvell-armada-xp-gp/
 obj-$(CONFIG_MACH_MB7707)			+= module-mb7707/
 obj-$(CONFIG_MACH_MIOA701)			+= mioa701/
-obj-$(CONFIG_MACH_MMCCPU)			+= mmccpu/
 obj-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk/
 obj-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk/
 obj-$(CONFIG_MACH_MX31MOBOARD)			+= mx31moboard/
diff --git a/arch/arm/boards/mmccpu/Makefile b/arch/arm/boards/mmccpu/Makefile
deleted file mode 100644
index 1398c26a0..000000000
--- a/arch/arm/boards/mmccpu/Makefile
+++ /dev/null
@@ -1,3 +0,0 @@
-obj-y += init.o
-
-lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/boards/mmccpu/env/bin/_update b/arch/arm/boards/mmccpu/env/bin/_update
deleted file mode 100644
index 014bce351..000000000
--- a/arch/arm/boards/mmccpu/env/bin/_update
+++ /dev/null
@@ -1,36 +0,0 @@
-#!/bin/sh
-
-if [ -z "$part" -o -z "$image" ]; then
-	echo "define \$part and \$image"
-	exit 1
-fi
-
-if [ ! -e "$part" ]; then
-	echo "Partition $part does not exist"
-	exit 1
-fi
-
-if [ $# = 1 ]; then
-	image=$1
-fi
-
-if [ x$ip = xdhcp ]; then
-	dhcp
-fi
-
-ping $eth0.serverip
-if [ $? -ne 0 ] ; then
-	echo "update aborted"
-	exit 1
-fi
-
-unprotect $part
-
-echo
-echo "erasing partition $part"
-erase $part
-
-echo
-echo "flashing $image to $part"
-echo
-tftp $image $part
diff --git a/arch/arm/boards/mmccpu/env/bin/boot b/arch/arm/boards/mmccpu/env/bin/boot
deleted file mode 100644
index 533dea761..000000000
--- a/arch/arm/boards/mmccpu/env/bin/boot
+++ /dev/null
@@ -1,47 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-if [ x$1 = xnand ]; then
-	root=nand
-	kernel=nand
-fi
-
-if [ x$1 = xnet ]; then
-	root=net
-	kernel=net
-fi
-
-if [ x$1 = xnor ]; then
-	root=nor
-	kernel=nor
-fi
-
-if [ x$ip = xdhcp ]; then
-	bootargs="$bootargs ip=dhcp"
-else
-	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
-fi
-
-if [ x$root = xnand ]; then
-	bootargs="$bootargs root=$rootpart_nand rootfstype=jffs2"
-elif [ x$root = xnor ]; then
-	bootargs="$bootargs root=$rootpart_nor rootfstype=jffs2"
-else
-	bootargs="$bootargs root=/dev/nfs nfsroot=$eth0.serverip:$nfsroot,v3,tcp"
-fi
-
-bootargs="$bootargs mtdparts=physmap-flash.0:$nor_parts"
-
-if [ $kernel = net ]; then
-	if [ x$ip = xdhcp ]; then
-		dhcp
-	fi
-	tftp $uimage uImage || exit 1
-	bootm uImage
-elif [ $kernel = nor ]; then
-	bootm /dev/nor0.kernel
-else
-	bootm /dev/nand0.kernel.bb
-fi
-
diff --git a/arch/arm/boards/mmccpu/env/bin/init b/arch/arm/boards/mmccpu/env/bin/init
deleted file mode 100644
index ad9b65a76..000000000
--- a/arch/arm/boards/mmccpu/env/bin/init
+++ /dev/null
@@ -1,33 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-if [ -e /dev/nor0 ]; then
-	addpart /dev/nor0 $nor_parts
-fi
-
-if [ -e /dev/nand0 ]; then
-	addpart /dev/nand0 $nand_parts
-fi
-
-if [ -z $eth0.ethaddr ]; then
-	while [ -z $eth0.ethaddr ]; do
-		readline "no MAC address set for eth0. please enter the one found on your board: " eth0.ethaddr
-	done
-	echo -a /env/config "eth0.ethaddr=$eth0.ethaddr"
-fi
-
-echo
-echo -n "Hit any key to stop autoboot: "
-timeout -a $autoboot_timeout
-if [ $? != 0 ]; then
-	echo
-	echo "type update_kernel nor [<imagename>] to update kernel into flash"
-	echo "type update_root nor [<imagename>] to update rootfs into flash"
-	echo
-	exit
-fi
-
-boot
diff --git a/arch/arm/boards/mmccpu/env/bin/update_kernel b/arch/arm/boards/mmccpu/env/bin/update_kernel
deleted file mode 100644
index 05c822d86..000000000
--- a/arch/arm/boards/mmccpu/env/bin/update_kernel
+++ /dev/null
@@ -1,15 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$uimage
-if [ x$1 = xnand ]; then
-	part=/dev/nand0.kernel.bb
-elif [ x$1 = xnor ]; then
-	part=/dev/nor0.kernel
-else
-	echo "usage: $0 nor|nand [imagename]"
-	exit 1
-fi
-
-. /env/bin/_update $2
diff --git a/arch/arm/boards/mmccpu/env/bin/update_root b/arch/arm/boards/mmccpu/env/bin/update_root
deleted file mode 100644
index a75137237..000000000
--- a/arch/arm/boards/mmccpu/env/bin/update_root
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$jffs2
-if [ x$1 = xnand ]; then
-	part=/dev/nand0.root.bb
-elif [ x$1 = xnor ]; then
-	part=/dev/nor0.root
-else
-	echo "usage: $0 nor|nand [imagename]"
-	exit 1
-fi
-
-. /env/bin/_update $2
-
diff --git a/arch/arm/boards/mmccpu/env/config b/arch/arm/boards/mmccpu/env/config
deleted file mode 100644
index 5367cd9f5..000000000
--- a/arch/arm/boards/mmccpu/env/config
+++ /dev/null
@@ -1,30 +0,0 @@
-#!/bin/sh
-
-# can be either 'net', 'nor' or 'nand''
-kernel=nor
-root=nor
-
-uimage=uImage-mmccpu
-jffs2=root-mmccpu.jffs2
-
-autoboot_timeout=3
-
-nfsroot="/home/kschwinne/src/pengutronix/OSELAS.BSP-Bucyrus-Grabowski-trunk/platform-Bucyrus-mmccpu/root"
-
-bootargs="console=ttyS0,115200 mmccpu=p299"
-
-#nor_parts="256k(barebox)ro,128k(bareboxenv),1536k(kernel),-(root)"
-nor_parts="256k(barebox)ro,128k(bareboxenv),1536k(kernel),10240k(root),10240k(rootbu),-(data)"
-rootpart_nor="/dev/mtdblock3"
-
-#nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
-#rootpart_nand="/dev/mtdblock7"
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-ip=dhcp
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
deleted file mode 100644
index 747c4b274..000000000
--- a/arch/arm/boards/mmccpu/init.c
+++ /dev/null
@@ -1,88 +0,0 @@
-/*
- * Copyright (C) 2007 Sascha Hauer, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
- *
- *
- */
-
-#include <common.h>
-#include <net.h>
-#include <init.h>
-#include <environment.h>
-#include <gpio.h>
-#include <asm/armlinux.h>
-#include <generated/mach-types.h>
-#include <partition.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <io.h>
-#include <mach/hardware.h>
-#include <nand.h>
-#include <linux/mtd/nand.h>
-#include <mach/at91_pmc.h>
-#include <mach/board.h>
-#include <mach/iomux.h>
-#include <mach/io.h>
-
-static struct macb_platform_data macb_pdata = {
-	.phy_flags	= PHYLIB_FORCE_LINK,
-	.phy_addr	= 4,
-};
-
-static int mmccpu_mem_init(void)
-{
-	at91_add_device_sdram(128 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(mmccpu_mem_init);
-
-static int mmccpu_devices_init(void)
-{
-	/*
-	 * PB27 enables the 50MHz oscillator for Ethernet PHY
-	 * 1 - enable
-	 * 0 - disable
-	 */
-	at91_set_gpio_output(AT91_PIN_PB27, 1);
-	gpio_set_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
-
-	at91_add_device_eth(0, &macb_pdata);
-	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 0, 0);
-
-	devfs_add_partition("nor0", 0x00000, 256 * 1024, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x40000, 128 * 1024, DEVFS_PARTITION_FIXED, "env0");
-
-	armlinux_set_architecture(MACH_TYPE_MMCCPU);
-
-	return 0;
-}
-
-device_initcall(mmccpu_devices_init);
-
-static int mmccpu_console_init(void)
-{
-	barebox_set_model("Bucyrus MMC-CPU");
-	barebox_set_hostname("mmccpu");
-
-	at91_register_uart(0, 0);
-	return 0;
-}
-
-console_initcall(mmccpu_console_init);
-
-static int mmccpu_main_clock(void)
-{
-	at91_set_main_clock(18432000);
-	return 0;
-}
-pure_initcall(mmccpu_main_clock);
diff --git a/arch/arm/boards/mmccpu/lowlevel_init.c b/arch/arm/boards/mmccpu/lowlevel_init.c
deleted file mode 100644
index c193eae58..000000000
--- a/arch/arm/boards/mmccpu/lowlevel_init.c
+++ /dev/null
@@ -1,135 +0,0 @@
-/*
- * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2
- */
-
-#include <common.h>
-#include <init.h>
-#include <mach/hardware.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91_wdt.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91sam9_smc.h>
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9_matrix.h>
-#include <mach/at91_lowlevel_init.h>
-
-#define MASTER_PLL_MUL		54
-#define MASTER_PLL_DIV		4
-
-void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
-{
-	/* Disable Watchdog */
-	cfg->wdt_mr =
-		AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |
-		AT91_WDT_WDV |
-		AT91_WDT_WDDIS |
-		AT91_WDT_WDD;
-
-	/* define PDC[31:16] as DATA[31:16] */
-	cfg->ebi_pio_pdr = 0xFFFF0000;
-	/* no pull-up for D[31:16] */
-	cfg->ebi_pio_ppudr = 0xFFFF0000;
-	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
-	cfg->ebi_csa =
-		AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_1_8V |
-		AT91_MATRIX_EBI0_CS1A_SDRAMC |
-		AT91_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA;
-
-	cfg->smc_cs = 0;
-#if 1
-	cfg->smc_mode =
-		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
-		AT91_SMC_DBW_16 |
-		AT91_SMC_TDFMODE |
-		AT91_SMC_TDF_(6);
-	cfg->smc_cycle =
-		AT91_SMC_NWECYCLE_(16) | AT91_SMC_NRDCYCLE_(16);
-	cfg->smc_pulse =
-		AT91_SMC_NWEPULSE_(5) | AT91_SMC_NCS_WRPULSE_(7) |
-		AT91_SMC_NRDPULSE_(5) | AT91_SMC_NCS_RDPULSE_(13);
-	cfg->smc_setup =
-		AT91_SMC_NWESETUP_(3) | AT91_SMC_NCS_WRSETUP_(2) |
-		AT91_SMC_NRDSETUP_(8) | AT91_SMC_NCS_RDSETUP_(0);
-#elif 0	/* slow setup */
-	cfg->smc_mode =
-		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
-		AT91_SMC_DBW_16 |
-		AT91_SMC_TDFMODE |
-		AT91_SMC_TDF_(1);
-	cfg->smc_cycle =
-		AT91_SMC_NWECYCLE_(0xd00) | AT91_SMC_NRDCYCLE_(0xd00);
-	cfg->smc_pulse =
-		AT91_SMC_NWEPULSE_(5) | AT91_SMC_NCS_WRPULSE_(7) |
-		AT91_SMC_NRDPULSE_(5) | AT91_SMC_NCS_RDPULSE_(13);
-	cfg->smc_setup =
-		AT91_SMC_NWESETUP_(3) | AT91_SMC_NCS_WRSETUP_(2) |
-		AT91_SMC_NRDSETUP_(8) | AT91_SMC_NCS_RDSETUP_(0);
-#else	/* RONETIX' original values */
-	cfg->smc_mode =
-		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
-		AT91_SMC_DBW_16 |
-		AT91_SMC_TDFMODE |
-		AT91_SMC_TDF_(6);
-	cfg->smc_cycle =
-		AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22);
-	cfg->smc_pulse =
-		AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |
-		AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11);
-	cfg->smc_setup =
-		AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |
-		AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10);
-#endif
-
-	cfg->pmc_mor =
-		AT91_PMC_MOSCEN |
-		(255 << 8);		/* Main Oscillator Start-up Time */
-	cfg->pmc_pllar =
-		AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */
-		AT91_PMC_OUT |
-		AT91_PMC_PLLCOUNT |	/* PLL Counter */
-		(2 << 28) |		/* PLL Clock Frequency Range */
-		((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV);
-	/* PCK/2 = MCK Master Clock from PLLA */
-	cfg->pmc_mckr1 =
-		AT91_PMC_CSS_SLOW |
-		AT91_PMC_PRES_1 |
-		AT91SAM9_PMC_MDIV_2 |
-		AT91_PMC_PDIV_1;
-	/* PCK/2 = MCK Master Clock from PLLA */
-	cfg->pmc_mckr2 =
-		AT91_PMC_CSS_PLLA |
-		AT91_PMC_PRES_1 |
-		AT91SAM9_PMC_MDIV_2 |
-		AT91_PMC_PDIV_1;
-
-	/* SDRAM */
-	/* SDRAMC_TR - Refresh Timer register */
-	cfg->sdrc_tr1 = 0x13C;
-	/* SDRAMC_CR - Configuration register*/
-	cfg->sdrc_cr =
-		AT91_SDRAMC_NC_9 |
-		AT91_SDRAMC_NR_13 |
-		AT91_SDRAMC_NB_4 |
-		AT91_SDRAMC_CAS_3 |
-		AT91_SDRAMC_DBW_32 |
-		(2 <<  8) |	/* tWR -  Write Recovery Delay */
-		(8 << 12) |	/* tRC -  Row Cycle Delay */
-		(2 << 16) |	/* tRP -  Row Precharge Delay */
-		(2 << 20) |	/* tRCD - Row to Column Delay */
-		(5 << 24) |	/* tRAS - Active to Precharge Delay */
-		(12 << 28);	/* tXSR - Exit Self Refresh to Active Delay */
-
-	/* Memory Device Register -> SDRAM */
-	cfg->sdrc_mdr = AT91_SDRAMC_MD_SDRAM;
-	/* SDRAM_TR */
-	cfg->sdrc_tr2 = 780;
-
-	/* user reset enable */
-	cfg->rstc_rmr =
-		AT91_RSTC_KEY |
-		AT91_RSTC_PROCRST |
-		AT91_RSTC_RSTTYP_WAKEUP |
-		AT91_RSTC_RSTTYP_WATCHDOG;
-}
diff --git a/arch/arm/configs/mmccpu_defconfig b/arch/arm/configs/mmccpu_defconfig
deleted file mode 100644
index 8143b9862..000000000
--- a/arch/arm/configs/mmccpu_defconfig
+++ /dev/null
@@ -1,37 +0,0 @@
-CONFIG_ARCH_AT91SAM9263=y
-CONFIG_MACH_MMCCPU=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="y"
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mmccpu/env"
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_NET=y
-CONFIG_DRIVER_NET_MACB=y
-# CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_FS_TFTP=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 3b572ebdf..ee28c168b 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -405,11 +405,6 @@ config MACH_AT91SAM9263EK
 	help
 	  Say y here if you are using Atmel's AT91SAM9263-EK Evaluation board
 
-config MACH_MMCCPU
-	bool "Bucyrus MMC-CPU"
-	help
-	  Say y here if you are using the Bucyrus MMC-CPU
-
 config MACH_PM9263
 	bool "Ronetix PM9263"
 	select HAVE_AT91_LOWLEVEL_INIT
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OlvGE-0004lz-Fn
	for barebox@lists.infradead.org; Thu, 19 Aug 2010 02:53:48 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Aug 2010 04:48:27 +0200
Message-Id: <1282186110-32738-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100819024811.GG454@game.jcrosoft.org>
References: <20100819024811.GG454@game.jcrosoft.org>
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
Subject: [PATCH 3/6] at91: add Ronetix pm9261 board support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/pm9261/Makefile                    |    1 +
 arch/arm/boards/pm9261/config.h                    |  110 +++++++++
 arch/arm/boards/pm9261/env/bin/_update             |   36 +++
 arch/arm/boards/pm9261/env/bin/boot                |   47 ++++
 arch/arm/boards/pm9261/env/bin/hush_hack           |    1 +
 arch/arm/boards/pm9261/env/bin/init                |   38 +++
 .../boards/pm9261/env/bin/update_barebox_xmodem    |   26 ++
 arch/arm/boards/pm9261/env/bin/update_kernel       |   15 ++
 arch/arm/boards/pm9261/env/bin/update_root         |   16 ++
 arch/arm/boards/pm9261/env/config                  |   28 +++
 arch/arm/boards/pm9261/init.c                      |  169 +++++++++++++
 arch/arm/configs/pm9261_defconfig                  |  250 ++++++++++++++++++++
 arch/arm/mach-at91/Kconfig                         |    8 +
 14 files changed, 746 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/pm9261/Makefile
 create mode 100644 arch/arm/boards/pm9261/config.h
 create mode 100644 arch/arm/boards/pm9261/env/bin/_update
 create mode 100644 arch/arm/boards/pm9261/env/bin/boot
 create mode 100644 arch/arm/boards/pm9261/env/bin/hush_hack
 create mode 100644 arch/arm/boards/pm9261/env/bin/init
 create mode 100644 arch/arm/boards/pm9261/env/bin/update_barebox_xmodem
 create mode 100644 arch/arm/boards/pm9261/env/bin/update_kernel
 create mode 100644 arch/arm/boards/pm9261/env/bin/update_root
 create mode 100644 arch/arm/boards/pm9261/env/config
 create mode 100644 arch/arm/boards/pm9261/init.c
 create mode 100644 arch/arm/configs/pm9261_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 7d2a118..c1e488c 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -78,6 +78,7 @@ board-$(CONFIG_MACH_PCA100)			:= phycard-i.MX27
 board-$(CONFIG_MACH_PCM037)			:= pcm037
 board-$(CONFIG_MACH_PCM038)			:= pcm038
 board-$(CONFIG_MACH_PCM043)			:= pcm043
+board-$(CONFIG_MACH_PM9261)			:= pm9261
 board-$(CONFIG_MACH_PM9263)			:= pm9263
 board-$(CONFIG_MACH_SCB9328)			:= scb9328
 board-$(CONFIG_MACH_NESO)			:= guf-neso
diff --git a/arch/arm/boards/pm9261/Makefile b/arch/arm/boards/pm9261/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/pm9261/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/pm9261/config.h b/arch/arm/boards/pm9261/config.h
new file mode 100644
index 0000000..1c57448
--- /dev/null
+++ b/arch/arm/boards/pm9261/config.h
@@ -0,0 +1,110 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		18432000	/* 16.367 MHz crystal */
+
+#define MASTER_PLL_DIV		15
+#define MASTER_PLL_MUL		162
+#define MAIN_PLL_DIV		2
+
+/* clocks */
+#define CONFIG_SYS_MOR_VAL						\
+		(AT91_PMC_MOSCEN |					\
+		 (255 << 8))		/* Main Oscillator Start-up Time */
+#define CONFIG_SYS_PLLAR_VAL						\
+		(AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */ \
+		 AT91_PMC_OUT |						\
+		 ((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV))
+
+/* PCK/2 = MCK Master Clock from PLLA */
+#define	CONFIG_SYS_MCKR1_VAL		\
+		(AT91_PMC_CSS_SLOW |	\
+		 AT91_PMC_PRES_1 |	\
+		 AT91SAM9_PMC_MDIV_2 |	\
+		 AT91_PMC_PDIV_1)
+
+/* PCK/2 = MCK Master Clock from PLLA */
+#define	CONFIG_SYS_MCKR2_VAL		\
+		(AT91_PMC_CSS_PLLA |	\
+		 AT91_PMC_PRES_1 |	\
+		 AT91SAM9_PMC_MDIV_2 |	\
+		 AT91_PMC_PDIV_1)
+
+/* define PDC[31:16] as DATA[31:16] */
+#define CONFIG_SYS_PIOC_PDR_VAL1	0xFFFF0000
+/* no pull-up for D[31:16] */
+#define CONFIG_SYS_PIOC_PPUDR_VAL	0xFFFF0000
+
+/* EBI_CSA, no pull-ups for D[15:0], CS1 SDRAM, CS3 NAND Flash */
+#define CONFIG_SYS_MATRIX_EBICSA_VAL		\
+       (AT91_MATRIX_DBPUC | AT91_MATRIX_CS1A_SDRAMC)
+
+/* SDRAM */
+/* SDRAMC_MR Mode register */
+#define CONFIG_SYS_SDRC_MR_VAL1		AT91_SDRAMC_MODE_NORMAL
+/* SDRAMC_TR - Refresh Timer register */
+#define CONFIG_SYS_SDRC_TR_VAL1		0x13C
+/* SDRAMC_CR - Configuration register*/
+#define CONFIG_SYS_SDRC_CR_VAL							\
+		(AT91_SDRAMC_NC_9 |						\
+		 AT91_SDRAMC_NR_13 |						\
+		 AT91_SDRAMC_NB_4 |						\
+		 AT91_SDRAMC_CAS_3 |						\
+		 AT91_SDRAMC_DBW_32 |						\
+		 (1 <<  8) |		/* Write Recovery Delay */		\
+		 (7 << 12) |		/* Row Cycle Delay */			\
+		 (3 << 16) |		/* Row Precharge Delay */		\
+		 (2 << 20) |		/* Row to Column Delay */		\
+		 (5 << 24) |		/* Active to Precharge Delay */		\
+		 (1 << 28))		/* Exit Self Refresh to Active Delay */
+
+/* Memory Device Register -> SDRAM */
+#define CONFIG_SYS_SDRC_MDR_VAL		AT91_SDRAMC_MD_SDRAM
+#define CONFIG_SYS_SDRC_MR_VAL2		AT91_SDRAMC_MODE_PRECHARGE
+#define CONFIG_SYS_SDRAM_VAL1		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRC_MR_VAL3		AT91_SDRAMC_MODE_REFRESH
+#define CONFIG_SYS_SDRAM_VAL2		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRAM_VAL3		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRAM_VAL4		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRAM_VAL5		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRAM_VAL6		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRAM_VAL7		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRAM_VAL8		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRAM_VAL9		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRC_MR_VAL4		AT91_SDRAMC_MODE_LMR
+#define CONFIG_SYS_SDRAM_VAL10		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRC_MR_VAL5		AT91_SDRAMC_MODE_NORMAL
+#define CONFIG_SYS_SDRAM_VAL11		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRC_TR_VAL2		1200		/* SDRAM_TR */
+#define CONFIG_SYS_SDRAM_VAL12		0		/* SDRAM_BASE */
+
+/* setup SMC0, CS0 (NOR Flash) - 16-bit, 15 WS */
+#define CONFIG_SYS_SMC0_SETUP0_VAL					\
+		(AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |	\
+		 AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10))
+#define CONFIG_SYS_SMC0_PULSE0_VAL					\
+		(AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |	\
+		 AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11))
+#define CONFIG_SYS_SMC0_CYCLE0_VAL	\
+		(AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22))
+#define CONFIG_SYS_SMC0_MODE0_VAL				\
+		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
+		 AT91_SMC_DBW_16 |				\
+		 AT91_SMC_TDFMODE |				\
+		 AT91_SMC_TDF_(6))
+
+/* user reset enable */
+#define CONFIG_SYS_RSTC_RMR_VAL			\
+		(AT91_RSTC_KEY |		\
+		AT91_RSTC_PROCRST |		\
+		AT91_RSTC_RSTTYP_WAKEUP |	\
+		AT91_RSTC_RSTTYP_WATCHDOG)
+
+/* Disable Watchdog */
+#define CONFIG_SYS_WDTC_WDMR_VAL				\
+		(AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |	\
+		 AT91_WDT_WDV |					\
+		 AT91_WDT_WDDIS |				\
+		 AT91_WDT_WDD)
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/pm9261/env/bin/_update b/arch/arm/boards/pm9261/env/bin/_update
new file mode 100644
index 0000000..014bce3
--- /dev/null
+++ b/arch/arm/boards/pm9261/env/bin/_update
@@ -0,0 +1,36 @@
+#!/bin/sh
+
+if [ -z "$part" -o -z "$image" ]; then
+	echo "define \$part and \$image"
+	exit 1
+fi
+
+if [ ! -e "$part" ]; then
+	echo "Partition $part does not exist"
+	exit 1
+fi
+
+if [ $# = 1 ]; then
+	image=$1
+fi
+
+if [ x$ip = xdhcp ]; then
+	dhcp
+fi
+
+ping $eth0.serverip
+if [ $? -ne 0 ] ; then
+	echo "update aborted"
+	exit 1
+fi
+
+unprotect $part
+
+echo
+echo "erasing partition $part"
+erase $part
+
+echo
+echo "flashing $image to $part"
+echo
+tftp $image $part
diff --git a/arch/arm/boards/pm9261/env/bin/boot b/arch/arm/boards/pm9261/env/bin/boot
new file mode 100644
index 0000000..533dea7
--- /dev/null
+++ b/arch/arm/boards/pm9261/env/bin/boot
@@ -0,0 +1,47 @@
+#!/bin/sh
+
+. /env/config
+
+if [ x$1 = xnand ]; then
+	root=nand
+	kernel=nand
+fi
+
+if [ x$1 = xnet ]; then
+	root=net
+	kernel=net
+fi
+
+if [ x$1 = xnor ]; then
+	root=nor
+	kernel=nor
+fi
+
+if [ x$ip = xdhcp ]; then
+	bootargs="$bootargs ip=dhcp"
+else
+	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
+fi
+
+if [ x$root = xnand ]; then
+	bootargs="$bootargs root=$rootpart_nand rootfstype=jffs2"
+elif [ x$root = xnor ]; then
+	bootargs="$bootargs root=$rootpart_nor rootfstype=jffs2"
+else
+	bootargs="$bootargs root=/dev/nfs nfsroot=$eth0.serverip:$nfsroot,v3,tcp"
+fi
+
+bootargs="$bootargs mtdparts=physmap-flash.0:$nor_parts"
+
+if [ $kernel = net ]; then
+	if [ x$ip = xdhcp ]; then
+		dhcp
+	fi
+	tftp $uimage uImage || exit 1
+	bootm uImage
+elif [ $kernel = nor ]; then
+	bootm /dev/nor0.kernel
+else
+	bootm /dev/nand0.kernel.bb
+fi
+
diff --git a/arch/arm/boards/pm9261/env/bin/hush_hack b/arch/arm/boards/pm9261/env/bin/hush_hack
new file mode 100644
index 0000000..5fffa92
--- /dev/null
+++ b/arch/arm/boards/pm9261/env/bin/hush_hack
@@ -0,0 +1 @@
+nand -a /dev/nand0.*
diff --git a/arch/arm/boards/pm9261/env/bin/init b/arch/arm/boards/pm9261/env/bin/init
new file mode 100644
index 0000000..eaa298d
--- /dev/null
+++ b/arch/arm/boards/pm9261/env/bin/init
@@ -0,0 +1,38 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+if [ -e /dev/nor0 ]; then
+	addpart /dev/nor0 $nor_parts
+fi
+
+if [ -e /dev/nand0 ]; then
+	addpart /dev/nand0 $nand_parts
+
+	# Uh, oh, hush first expands wildcards and then starts executing
+	# commands. What a bug!
+	source /env/bin/hush_hack 
+fi
+
+if [ -z $eth0.ethaddr ]; then
+	while [ -z $eth0.ethaddr ]; do
+		readline "no MAC address set for eth0. please enter the one found on your board: " eth0.ethaddr
+	done
+	echo -a /env/config "eth0.ethaddr=$eth0.ethaddr"
+fi
+
+echo
+echo -n "Hit any key to stop autoboot: "
+timeout -a $autoboot_timeout
+if [ $? != 0 ]; then
+	echo
+	echo "type update_kernel nor [<imagename>] to update kernel into flash"
+	echo "type update_root nor [<imagename>] to update rootfs into flash"
+	echo "type update_barebox_xmodem nor to update barebox into flash"
+	echo
+	exit
+fi
+
+boot
diff --git a/arch/arm/boards/pm9261/env/bin/update_barebox_xmodem b/arch/arm/boards/pm9261/env/bin/update_barebox_xmodem
new file mode 100644
index 0000000..39818b5
--- /dev/null
+++ b/arch/arm/boards/pm9261/env/bin/update_barebox_xmodem
@@ -0,0 +1,26 @@
+#!/bin/sh
+
+. /env/config
+
+if [ x$1 = xnand ]; then
+	part=/dev/nand0.barebox
+elif [ x$1 = xnor ]; then
+	part=/dev/nor0.barebox
+else
+	echo "usage: $0 nor|nand"
+	exit 1
+fi
+
+loadb -f barebox.bin -c
+
+unprotect $part
+echo
+echo "erasing partition $part"
+erase $part
+
+echo
+echo "flashing barebox.bin to $part"
+echo
+cp barebox.bin $part
+crc32 -f barebox.bin
+crc32 -f $part
diff --git a/arch/arm/boards/pm9261/env/bin/update_kernel b/arch/arm/boards/pm9261/env/bin/update_kernel
new file mode 100644
index 0000000..05c822d
--- /dev/null
+++ b/arch/arm/boards/pm9261/env/bin/update_kernel
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+. /env/config
+
+image=$uimage
+if [ x$1 = xnand ]; then
+	part=/dev/nand0.kernel.bb
+elif [ x$1 = xnor ]; then
+	part=/dev/nor0.kernel
+else
+	echo "usage: $0 nor|nand [imagename]"
+	exit 1
+fi
+
+. /env/bin/_update $2
diff --git a/arch/arm/boards/pm9261/env/bin/update_root b/arch/arm/boards/pm9261/env/bin/update_root
new file mode 100644
index 0000000..a751372
--- /dev/null
+++ b/arch/arm/boards/pm9261/env/bin/update_root
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+. /env/config
+
+image=$jffs2
+if [ x$1 = xnand ]; then
+	part=/dev/nand0.root.bb
+elif [ x$1 = xnor ]; then
+	part=/dev/nor0.root
+else
+	echo "usage: $0 nor|nand [imagename]"
+	exit 1
+fi
+
+. /env/bin/_update $2
+
diff --git a/arch/arm/boards/pm9261/env/config b/arch/arm/boards/pm9261/env/config
new file mode 100644
index 0000000..4b322ad
--- /dev/null
+++ b/arch/arm/boards/pm9261/env/config
@@ -0,0 +1,28 @@
+#!/bin/sh
+
+# can be either 'net', 'nor' or 'nand''
+kernel=net
+root=net
+
+uimage=uImage
+jffs2=root.jffs2
+
+autoboot_timeout=3
+
+nfsroot=""
+bootargs="console=ttyS0,115200"
+
+nor_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
+rootpart_nor="/dev/mtdblock3"
+
+#nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
+#rootpart_nand="/dev/mtdblock7"
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=192.168.23.1
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
new file mode 100644
index 0000000..4b0813b
--- /dev/null
+++ b/arch/arm/boards/pm9261/init.c
@@ -0,0 +1,169 @@
+/*
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
+#include <asm/mach-types.h>
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
+#include <dm9000.h>
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 22,
+	.cle		= 21,
+/*	.det_pin	= ... not connected */
+	.rdy_pin	= AT91_PIN_PA16,
+	.enable_pin	= AT91_PIN_PC14,
+#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
+	.bus_width_16	= 1,
+#else
+	.bus_width_16	= 0,
+#endif
+};
+
+static struct sam9_smc_config pm_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 1,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 1,
+
+	.ncs_read_pulse		= 3,
+	.nrd_pulse		= 3,
+	.ncs_write_pulse	= 3,
+	.nwe_pulse		= 3,
+
+	.read_cycle		= 5,
+	.write_cycle		= 5,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.tdf_cycles		= 2,
+};
+
+static void pm_add_device_nand(void)
+{
+	/* setup bus-width (8 or 16) */
+	if (nand_pdata.bus_width_16)
+		pm_nand_smc_config.mode |= AT91_SMC_DBW_16;
+	else
+		pm_nand_smc_config.mode |= AT91_SMC_DBW_8;
+
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(3, &pm_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+
+/*
+ * DM9000 ethernet device
+ */
+#if defined(CONFIG_DRIVER_NET_DM9000)
+static struct dm9000_platform_data dm9000_data = {
+	.iobase		= AT91_CHIPSELECT_2,
+	.iodata		= AT91_CHIPSELECT_2 + 4,
+	.buswidth	= DM9000_WIDTH_16,
+	.srom		= 1,
+};
+
+static struct device_d dm9000_dev = {
+	.name		= "dm9000",
+	.map_base	= AT91_CHIPSELECT_2,
+	.size		= 8,
+	.platform_data	= &dm9000_data,
+};
+
+/*
+ * SMC timings for the DM9000.
+ * Note: These timings were calculated for MASTER_CLOCK = 100000000 according to the DM9000 timings.
+ */
+static struct sam9_smc_config __initdata dm9000_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 2,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 2,
+
+	.ncs_read_pulse		= 8,
+	.nrd_pulse		= 4,
+	.ncs_write_pulse	= 8,
+	.nwe_pulse		= 4,
+
+	.read_cycle		= 16,
+	.write_cycle		= 16,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_BAT_WRITE | AT91_SMC_DBW_16,
+	.tdf_cycles		= 1,
+};
+
+static void __init pm_add_device_dm9000(void)
+{
+	/* Configure chip-select 2 (DM9000) */
+	sam9_smc_configure(2, &dm9000_smc_config);
+
+	register_device(&dm9000_dev);
+}
+#else
+static void __init ek_add_device_dm9000(void) {}
+#endif /* CONFIG_DRIVER_NET_DM9000 */
+
+static struct device_d cfi_dev = {
+	.name     = "cfi_flash",
+	.map_base = AT91_CHIPSELECT_0,
+	.size     = 4 * 1024 * 1024,
+};
+
+static int pm9261_devices_init(void)
+{
+
+	at91_add_device_sdram(64 * 1024 * 1024);
+	pm_add_device_nand();
+	register_device(&cfi_dev);
+	pm_add_device_dm9000();
+
+	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
+	devfs_add_partition("nor0", 0x40000, 0x10000, PARTITION_FIXED, "env0");
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+	armlinux_set_architecture(MACH_TYPE_PM9261);
+
+	return 0;
+}
+
+device_initcall(pm9261_devices_init);
+
+static int pm9261_console_init(void)
+{
+	at91_register_uart(0, 0);
+	return 0;
+}
+
+console_initcall(pm9261_console_init);
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
new file mode 100644
index 0000000..a135ef7
--- /dev/null
+++ b/arch/arm/configs/pm9261_defconfig
@@ -0,0 +1,250 @@
+#
+# Automatically generated make config: don't edit
+# U-Boot version: 2.0.0-rc10
+# Wed Oct 21 16:44:38 2009
+#
+# CONFIG_BOARD_LINKER_SCRIPT is not set
+CONFIG_GENERIC_LINKER_SCRIPT=y
+CONFIG_ARM=y
+
+#
+# System Type
+#
+CONFIG_ARCH_AT91=y
+# CONFIG_ARCH_AT91RM9200 is not set
+# CONFIG_ARCH_EP93XX is not set
+# CONFIG_ARCH_IMX is not set
+# CONFIG_ARCH_NETX is not set
+# CONFIG_ARCH_NOMADIK is not set
+# CONFIG_ARCH_OMAP is not set
+# CONFIG_ARCH_S3C24xx is not set
+
+#
+# Processor Type
+#
+CONFIG_CPU_32=y
+CONFIG_CPU_ARM926T=y
+CONFIG_CPU_32v5=y
+
+#
+# processor features
+#
+CONFIG_ARCH_TEXT_BASE=0x23f00000
+CONFIG_BOARDINFO="Ronetix PM9261"
+
+#
+# Atmel AT91 System-on-Chip
+#
+# CONFIG_ARCH_AT91SAM9260 is not set
+CONFIG_ARCH_AT91SAM9261=y
+# CONFIG_ARCH_AT91SAM9263 is not set
+# CONFIG_MACH_AT91SAM9261EK is not set
+CONFIG_MACH_PM9261=y
+# CONFIG_AEABI is not set
+
+#
+# Arm specific settings         
+#
+CONFIG_CMD_ARM_CPUINFO=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_GREGORIAN_CALENDER=y
+CONFIG_HAS_KALLSYMS=y
+CONFIG_HAS_MODULES=y
+CONFIG_CMD_MEMORY=y
+CONFIG_ENV_HANDLING=y
+CONFIG_GENERIC_GPIO=y
+
+#
+# General Settings              
+#
+CONFIG_LOCALVERSION_AUTO=y
+
+#
+# memory layout                 
+#
+CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
+CONFIG_TEXT_BASE=0x23f00000
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+CONFIG_MEMORY_LAYOUT_DEFAULT=y
+# CONFIG_MEMORY_LAYOUT_FIXED is not set
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_SIZE=0x400000
+# CONFIG_BROKEN is not set
+# CONFIG_EXPERIMENTAL is not set
+CONFIG_MACH_HAS_LOWLEVEL_INIT=y
+CONFIG_MACH_DO_LOWLEVEL_INIT=y
+CONFIG_PROMPT="PM9261:"
+CONFIG_BAUDRATE=115200
+CONFIG_LONGHELP=y
+CONFIG_CBSIZE=1024
+CONFIG_MAXARGS=16
+CONFIG_SHELL_HUSH=y
+# CONFIG_SHELL_SIMPLE is not set
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="> "
+# CONFIG_HUSH_FANCY_PROMPT is not set
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_DYNAMIC_CRC_TABLE=y
+CONFIG_ERRNO_MESSAGES=y
+CONFIG_TIMESTAMP=y
+CONFIG_CONSOLE_FULL=y
+CONFIG_CONSOLE_ACTIVATE_FIRST=y
+# CONFIG_OF_FLAT_TREE is not set
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pm9261/env/"
+
+#
+# Debugging                     
+#
+# CONFIG_DEBUG_INFO is not set
+# CONFIG_ENABLE_FLASH_NOISE is not set
+# CONFIG_ENABLE_PARTITION_NOISE is not set
+# CONFIG_ENABLE_DEVICE_NOISE is not set
+
+#
+# Commands                      
+#
+
+#
+# scripting                     
+#
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TRUE=y
+CONFIG_CMD_FALSE=y
+
+#
+# file commands                 
+#
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
+
+#
+# console                       
+#
+CONFIG_CMD_CLEAR=y
+CONFIG_CMD_ECHO=y
+# CONFIG_CMD_ECHO_E is not set
+
+#
+# memory                        
+#
+# CONFIG_CMD_LOADB is not set
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_MTEST=y
+# CONFIG_CMD_MTEST_ALTERNATIVE is not set
+
+#
+# flash                         
+#
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_UBI=y
+
+#
+# booting                       
+#
+CONFIG_CMD_BOOTM=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_BOOTU=y
+# CONFIG_CMD_LINUX16 is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_TEST=y
+CONFIG_CMD_VERSION=y
+CONFIG_CMD_HELP=y
+CONFIG_CMD_DEVINFO=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNLZO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+# CONFIG_NET_TFTP_PUSH is not set
+# CONFIG_NET_NETCONSOLE is not set
+# CONFIG_NET_RESOLV is not set
+
+#
+# Drivers                       
+#
+
+#
+# serial drivers                
+#
+# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
+# CONFIG_DRIVER_SERIAL_NS16550 is not set
+CONFIG_DRIVER_SERIAL_ATMEL=y
+CONFIG_HAS_DM9000=y
+CONFIG_MIIPHY=y
+
+#
+# Network drivers               
+#
+# CONFIG_DRIVER_NET_SMC911X is not set
+# CONFIG_DRIVER_NET_SMC91111 is not set
+CONFIG_DRIVER_NET_DM9000=y
+# CONFIG_DRIVER_NET_MACB is not set
+
+#
+# SPI drivers                   
+#
+# CONFIG_SPI is not set
+# CONFIG_I2C is not set
+
+#
+# flash drivers                 
+#
+CONFIG_DRIVER_CFI=y
+CONFIG_DRIVER_CFI_INTEL=y
+CONFIG_DRIVER_CFI_AMD=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_1=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_4=y
+# CONFIG_DRIVER_CFI_BANK_WIDTH_8 is not set
+CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_ATMEL=y
+# CONFIG_MTD_NAND_VERIFY_WRITE is not set
+# CONFIG_MTD_NAND_ECC_SMC is not set
+CONFIG_MTD_NAND_IDS=y
+CONFIG_UBI=y
+# CONFIG_ATA is not set
+# CONFIG_USB is not set
+# CONFIG_USB_GADGET is not set
+# CONFIG_VIDEO is not set
+
+#
+# Filesystem support            
+#
+# CONFIG_FS_CRAMFS is not set
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
+CONFIG_PARTITION_NEED_MTD=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
+CONFIG_CRC32=y
+# CONFIG_GENERIC_FIND_NEXT_BIT is not set
+# CONFIG_PROCESS_ESCAPE_SEQUENCE is not set
+CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index debc7dc..bea238b 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -9,6 +9,7 @@ config BOARDINFO
 	default "Atmel at91sam9261-ek" if MACH_AT91SAM9261EK
 	default "Atmel at91sam9263-ek" if MACH_AT91SAM9263EK
 	default "Bucyrus MMC-CPU" if MACH_MMCCPU
+	default "Ronetix PM9261" if MACH_PM9261
 	default "Ronetix PM9263" if MACH_PM9263
 
 comment "Atmel AT91 System-on-Chip"
@@ -23,6 +24,7 @@ config ARCH_AT91SAM9260
 config ARCH_AT91SAM9261
 	bool "AT91SAM9261"
 	select CPU_ARM926T
+	select MACH_HAS_LOWLEVEL_INIT
 
 config ARCH_AT91SAM9263
 	bool "AT91SAM9263"
@@ -62,6 +64,12 @@ config MACH_AT91SAM9261EK
 	  Select this if you are using Atmel's AT91SAM9261-EK Evaluation Kit.
 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3820>
 
+config MACH_PM9261
+	bool "Ronetix PM9261"
+	select HAS_DM9000
+	help
+	  Say y here if you are using the Ronetix PM9261 Board
+
 endchoice
 
 endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

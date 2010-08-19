Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OlvGF-0004mG-Du
	for barebox@lists.infradead.org; Thu, 19 Aug 2010 02:53:53 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Aug 2010 04:48:26 +0200
Message-Id: <1282186110-32738-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/6] at91: Introduction of at91sam9261 SOC.
To: barebox@lists.infradead.org

AT91sam9261 series is an ARM 926ej-s SOC family clocked at 190/100MHz.

The first board that embeds at91sam9261 chip is the AT91SAM9261-EK.
http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3820

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/at91sam9261ek/Makefile             |    1 +
 arch/arm/boards/at91sam9261ek/config.h             |  110 +++++++++
 arch/arm/boards/at91sam9261ek/env/bin/_update      |   36 +++
 arch/arm/boards/at91sam9261ek/env/bin/boot         |   47 ++++
 arch/arm/boards/at91sam9261ek/env/bin/hush_hack    |    1 +
 arch/arm/boards/at91sam9261ek/env/bin/init         |   38 +++
 .../at91sam9261ek/env/bin/update_barebox_xmodem    |   26 ++
 .../arm/boards/at91sam9261ek/env/bin/update_kernel |   15 ++
 arch/arm/boards/at91sam9261ek/env/bin/update_root  |   16 ++
 arch/arm/boards/at91sam9261ek/env/config           |   28 +++
 arch/arm/boards/at91sam9261ek/init.c               |  170 ++++++++++++++
 arch/arm/configs/at91sam9261ek_defconfig           |  242 ++++++++++++++++++++
 arch/arm/mach-at91/Kconfig                         |   23 ++
 arch/arm/mach-at91/Makefile                        |    1 +
 arch/arm/mach-at91/at91sam9261.c                   |  230 +++++++++++++++++++
 arch/arm/mach-at91/at91sam9261_devices.c           |  169 ++++++++++++++
 arch/arm/mach-at91/include/mach/at91sam9261.h      |  109 +++++++++
 .../mach-at91/include/mach/at91sam9261_matrix.h    |   64 +++++
 19 files changed, 1327 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9261ek/Makefile
 create mode 100644 arch/arm/boards/at91sam9261ek/config.h
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/_update
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/boot
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/hush_hack
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/init
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/update_barebox_xmodem
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/update_kernel
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/update_root
 create mode 100644 arch/arm/boards/at91sam9261ek/env/config
 create mode 100644 arch/arm/boards/at91sam9261ek/init.c
 create mode 100644 arch/arm/configs/at91sam9261ek_defconfig
 create mode 100644 arch/arm/mach-at91/at91sam9261.c
 create mode 100644 arch/arm/mach-at91/at91sam9261_devices.c
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9261.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9261_matrix.h

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4827fe9..7d2a118 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -52,6 +52,7 @@ machine-$(CONFIG_ARCH_S3C24xx)		:= s3c24xx
 board-$(CONFIG_MACH_A9M2410)			:= a9m2410
 board-$(CONFIG_MACH_A9M2440)			:= a9m2440
 board-$(CONFIG_MACH_AT91SAM9260EK)		:= at91sam9260ek
+board-$(CONFIG_MACH_AT91SAM9261EK)		:= at91sam9261ek
 board-$(CONFIG_MACH_AT91SAM9263EK)		:= at91sam9263ek
 board-$(CONFIG_MACH_EDB9301)			:= edb93xx
 board-$(CONFIG_MACH_EDB9302)			:= edb93xx
diff --git a/arch/arm/boards/at91sam9261ek/Makefile b/arch/arm/boards/at91sam9261ek/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/at91sam9261ek/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/at91sam9261ek/config.h b/arch/arm/boards/at91sam9261ek/config.h
new file mode 100644
index 0000000..bc33227
--- /dev/null
+++ b/arch/arm/boards/at91sam9261ek/config.h
@@ -0,0 +1,110 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		16367660	/* 16.367 MHz crystal */
+
+#define MASTER_PLL_MUL		171
+#define MASTER_PLL_DIV		14
+
+/* clocks */
+#define CONFIG_SYS_MOR_VAL						\
+		(AT91_PMC_MOSCEN |					\
+		 (255 << 8))		/* Main Oscillator Start-up Time */
+#define CONFIG_SYS_PLLAR_VAL						\
+		(AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */ \
+		 AT91_PMC_OUT |						\
+		 AT91_PMC_PLLCOUNT |	/* PLL Counter */		\
+		 (2 << 28) |		/* PLL Clock Frequency Range */	\
+		 ((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV))
+
+/* PCK/2 = MCK Master Clock from PLLA */
+#define	CONFIG_SYS_MCKR1_VAL		\
+		(AT91_PMC_CSS_SLOW |	\
+		 AT91_PMC_PRES_1 |	\
+		 AT91SAM9_PMC_MDIV_2 |	\
+		 AT91_PMC_PDIV_1)
+/* PCK/2 = MCK Master Clock from PLLA */
+#define	CONFIG_SYS_MCKR2_VAL		\
+		(AT91_PMC_CSS_PLLA |	\
+		 AT91_PMC_PRES_1 |	\
+		 AT91SAM9_PMC_MDIV_2 |	\
+		 AT91_PMC_PDIV_1)
+
+/* define PDC[31:16] as DATA[31:16] */
+#define CONFIG_SYS_PIOD_PDR_VAL1	0xFFFF0000
+/* no pull-up for D[31:16] */
+#define CONFIG_SYS_PIOD_PPUDR_VAL	0xFFFF0000
+/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
+#define CONFIG_SYS_MATRIX_EBI0CSA_VAL					\
+	(AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_3_3V |	\
+	 AT91_MATRIX_EBI0_CS1A_SDRAMC)
+
+/* SDRAM */
+/* SDRAMC_MR Mode register */
+#define CONFIG_SYS_SDRC_MR_VAL1		0
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
+		 (2 << 16) |		/* Row Precharge Delay */		\
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
diff --git a/arch/arm/boards/at91sam9261ek/env/bin/_update b/arch/arm/boards/at91sam9261ek/env/bin/_update
new file mode 100644
index 0000000..014bce3
--- /dev/null
+++ b/arch/arm/boards/at91sam9261ek/env/bin/_update
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
diff --git a/arch/arm/boards/at91sam9261ek/env/bin/boot b/arch/arm/boards/at91sam9261ek/env/bin/boot
new file mode 100644
index 0000000..533dea7
--- /dev/null
+++ b/arch/arm/boards/at91sam9261ek/env/bin/boot
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
diff --git a/arch/arm/boards/at91sam9261ek/env/bin/hush_hack b/arch/arm/boards/at91sam9261ek/env/bin/hush_hack
new file mode 100644
index 0000000..5fffa92
--- /dev/null
+++ b/arch/arm/boards/at91sam9261ek/env/bin/hush_hack
@@ -0,0 +1 @@
+nand -a /dev/nand0.*
diff --git a/arch/arm/boards/at91sam9261ek/env/bin/init b/arch/arm/boards/at91sam9261ek/env/bin/init
new file mode 100644
index 0000000..eaa298d
--- /dev/null
+++ b/arch/arm/boards/at91sam9261ek/env/bin/init
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
diff --git a/arch/arm/boards/at91sam9261ek/env/bin/update_barebox_xmodem b/arch/arm/boards/at91sam9261ek/env/bin/update_barebox_xmodem
new file mode 100644
index 0000000..39818b5
--- /dev/null
+++ b/arch/arm/boards/at91sam9261ek/env/bin/update_barebox_xmodem
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
diff --git a/arch/arm/boards/at91sam9261ek/env/bin/update_kernel b/arch/arm/boards/at91sam9261ek/env/bin/update_kernel
new file mode 100644
index 0000000..05c822d
--- /dev/null
+++ b/arch/arm/boards/at91sam9261ek/env/bin/update_kernel
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
diff --git a/arch/arm/boards/at91sam9261ek/env/bin/update_root b/arch/arm/boards/at91sam9261ek/env/bin/update_root
new file mode 100644
index 0000000..a751372
--- /dev/null
+++ b/arch/arm/boards/at91sam9261ek/env/bin/update_root
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
diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9261ek/env/config
new file mode 100644
index 0000000..4b322ad
--- /dev/null
+++ b/arch/arm/boards/at91sam9261ek/env/config
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
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
new file mode 100644
index 0000000..e3c5494
--- /dev/null
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -0,0 +1,170 @@
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
+	.rdy_pin	= AT91_PIN_PC15,
+	.enable_pin	= AT91_PIN_PC14,
+#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
+	.bus_width_16	= 1,
+#else
+	.bus_width_16	= 0,
+#endif
+};
+
+static struct sam9_smc_config ek_nand_smc_config = {
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
+static void ek_add_device_nand(void)
+{
+	/* setup bus-width (8 or 16) */
+	if (nand_pdata.bus_width_16)
+		ek_nand_smc_config.mode |= AT91_SMC_DBW_16;
+	else
+		ek_nand_smc_config.mode |= AT91_SMC_DBW_8;
+
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(3, &ek_nand_smc_config);
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
+	.srom		= 0,
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
+static void __init ek_add_device_dm9000(void)
+{
+	/* Configure chip-select 2 (DM9000) */
+	sam9_smc_configure(2, &dm9000_smc_config);
+
+	/* Configure Reset signal as output */
+	at91_set_gpio_output(AT91_PIN_PC10, 0);
+
+	/* Configure Interrupt pin as input, no pull-up */
+	at91_set_gpio_input(AT91_PIN_PC11, 0);
+
+	register_device(&dm9000_dev);
+}
+#else
+static void __init ek_add_device_dm9000(void) {}
+#endif /* CONFIG_DRIVER_NET_DM9000 */
+
+static int at91sam9261ek_devices_init(void)
+{
+
+	at91_add_device_sdram(64 * 1024 * 1024);
+	ek_add_device_nand();
+	ek_add_device_dm9000();
+
+	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", 0x40000, 0x40000, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+	armlinux_set_architecture(MACH_TYPE_AT91SAM9261EK);
+
+	return 0;
+}
+
+device_initcall(at91sam9261ek_devices_init);
+
+static int at91sam9261ek_console_init(void)
+{
+	at91_register_uart(0, 0);
+	return 0;
+}
+
+console_initcall(at91sam9261ek_console_init);
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
new file mode 100644
index 0000000..cb9ea75
--- /dev/null
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -0,0 +1,242 @@
+#
+# Automatically generated make config: don't edit
+# U-Boot version: 2.0.0-rc10
+# Wed Oct 21 16:33:44 2009
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
+CONFIG_BOARDINFO="Atmel at91sam9261-ek"
+
+#
+# Atmel AT91 System-on-Chip
+#
+# CONFIG_ARCH_AT91SAM9260 is not set
+CONFIG_ARCH_AT91SAM9261=y
+# CONFIG_ARCH_AT91SAM9263 is not set
+CONFIG_MACH_AT91SAM9261EK=y
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
+CONFIG_PROMPT="9261-EK:"
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
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9261ek/env"
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
+# CONFIG_DRIVER_CFI is not set
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
index 923ce0b..debc7dc 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -6,6 +6,7 @@ config ARCH_TEXT_BASE
 
 config BOARDINFO
 	default "Atmel 91SAM9260-EK" if MACH_AT91SAM9260EK
+	default "Atmel at91sam9261-ek" if MACH_AT91SAM9261EK
 	default "Atmel at91sam9263-ek" if MACH_AT91SAM9263EK
 	default "Bucyrus MMC-CPU" if MACH_MMCCPU
 	default "Ronetix PM9263" if MACH_PM9263
@@ -19,6 +20,10 @@ config ARCH_AT91SAM9260
 	bool "AT91SAM9260"
 	select CPU_ARM926T
 
+config ARCH_AT91SAM9261
+	bool "AT91SAM9261"
+	select CPU_ARM926T
+
 config ARCH_AT91SAM9263
 	bool "AT91SAM9263"
 	select CPU_ARM926T
@@ -45,6 +50,24 @@ endif
 
 # ----------------------------------------------------------
 
+if ARCH_AT91SAM9261
+
+choice
+	prompt "AT91SAM9261 Board Type"
+
+config MACH_AT91SAM9261EK
+	bool "Atmel AT91SAM9261-EK Evaluation Kit"
+	select HAS_DM9000
+	help
+	  Select this if you are using Atmel's AT91SAM9261-EK Evaluation Kit.
+	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3820>
+
+endchoice
+
+endif
+
+# ----------------------------------------------------------
+
 if ARCH_AT91SAM9263
 
 choice
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 0f55883..65a2657 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -4,4 +4,5 @@ obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
 
 # CPU-specific support
 obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam9260_devices.o sam9_smc.o
+obj-$(CONFIG_ARCH_AT91SAM9261) += at91sam9261.o at91sam9261_devices.o sam9_smc.o
 obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o sam9_smc.o
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
new file mode 100644
index 0000000..3d503aa
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -0,0 +1,230 @@
+#include <common.h>
+#include <gpio.h>
+#include <init.h>
+#include <asm/hardware.h>
+#include <mach/at91_pmc.h>
+
+#include "generic.h"
+#include "clock.h"
+
+/* --------------------------------------------------------------------
+ *  Clocks
+ * -------------------------------------------------------------------- */
+
+/*
+ * The peripheral clocks.
+ */
+static struct clk pioA_clk = {
+	.name		= "pioA_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_PIOA,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioB_clk = {
+	.name		= "pioB_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_PIOB,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioC_clk = {
+	.name		= "pioC_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_PIOC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart0_clk = {
+	.name		= "usart0_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_US0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart1_clk = {
+	.name		= "usart1_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_US1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart2_clk = {
+	.name		= "usart2_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_US2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc_clk = {
+	.name		= "mci_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_MCI,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk udc_clk = {
+	.name		= "udc_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_UDP,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twi_clk = {
+	.name		= "twi_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_TWI,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi0_clk = {
+	.name		= "spi0_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_SPI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi1_clk = {
+	.name		= "spi1_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_SPI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc0_clk = {
+	.name		= "ssc0_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_SSC0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc1_clk = {
+	.name		= "ssc1_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_SSC1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc2_clk = {
+	.name		= "ssc2_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_SSC2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc0_clk = {
+	.name		= "tc0_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_TC0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc1_clk = {
+	.name		= "tc1_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_TC1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc2_clk = {
+	.name		= "tc2_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_TC2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ohci_clk = {
+	.name		= "ohci_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_UHP,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk lcdc_clk = {
+	.name		= "lcdc_clk",
+	.pmc_mask	= 1 << AT91SAM9261_ID_LCDC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+
+static struct clk *periph_clocks[] = {
+	&pioA_clk,
+	&pioB_clk,
+	&pioC_clk,
+	&usart0_clk,
+	&usart1_clk,
+	&usart2_clk,
+	&mmc_clk,
+	&udc_clk,
+	&twi_clk,
+	&spi0_clk,
+	&spi1_clk,
+	&ssc0_clk,
+	&ssc1_clk,
+	&ssc2_clk,
+	&tc0_clk,
+	&tc1_clk,
+	&tc2_clk,
+	&ohci_clk,
+	&lcdc_clk,
+	// irq0 .. irq2
+};
+
+/*
+ * The four programmable clocks.
+ * You must configure pin multiplexing to bring these signals out.
+ */
+static struct clk pck0 = {
+	.name		= "pck0",
+	.pmc_mask	= AT91_PMC_PCK0,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 0,
+};
+static struct clk pck1 = {
+	.name		= "pck1",
+	.pmc_mask	= AT91_PMC_PCK1,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 1,
+};
+static struct clk pck2 = {
+	.name		= "pck2",
+	.pmc_mask	= AT91_PMC_PCK2,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 2,
+};
+static struct clk pck3 = {
+	.name		= "pck3",
+	.pmc_mask	= AT91_PMC_PCK3,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 3,
+};
+
+/* HClocks */
+static struct clk hck0 = {
+	.name		= "hck0",
+	.pmc_mask	= AT91_PMC_HCK0,
+	.type		= CLK_TYPE_SYSTEM,
+	.id		= 0,
+};
+static struct clk hck1 = {
+	.name		= "hck1",
+	.pmc_mask	= AT91_PMC_HCK1,
+	.type		= CLK_TYPE_SYSTEM,
+	.id		= 1,
+};
+
+static void at91sam9261_register_clocks(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
+		clk_register(periph_clocks[i]);
+
+	clk_register(&pck0);
+	clk_register(&pck1);
+	clk_register(&pck2);
+	clk_register(&pck3);
+
+	clk_register(&hck0);
+	clk_register(&hck1);
+}
+
+
+/* --------------------------------------------------------------------
+ *  GPIO
+ * -------------------------------------------------------------------- */
+
+static struct at91_gpio_bank at91sam9261_gpio[] = {
+	{
+		.id		= AT91SAM9261_ID_PIOA,
+		.offset		= AT91_PIOA,
+		.clock		= &pioA_clk,
+	}, {
+		.id		= AT91SAM9261_ID_PIOB,
+		.offset		= AT91_PIOB,
+		.clock		= &pioB_clk,
+	}, {
+		.id		= AT91SAM9261_ID_PIOC,
+		.offset		= AT91_PIOC,
+		.clock		= &pioC_clk,
+	}
+};
+
+
+static int at91sam9261_initialize(void)
+{
+	/* Init clock subsystem */
+	at91_clock_init(AT91_MAIN_CLOCK);
+
+	/* Register the processor-specific clocks */
+	at91sam9261_register_clocks();
+
+	/* Register GPIO subsystem */
+	at91_gpio_init(at91sam9261_gpio, 3);
+	return 0;
+}
+
+core_initcall(at91sam9261_initialize);
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
new file mode 100644
index 0000000..6725e97
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -0,0 +1,169 @@
+/*
+ * arch/arm/mach-at91/at91sam9261_devices.c
+ *
+ *  Copyright (C) 2006 Atmel
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+#include <common.h>
+#include <asm/armlinux.h>
+#include <asm/hardware.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91sam9261_matrix.h>
+#include <mach/board.h>
+#include <mach/gpio.h>
+#include <mach/io.h>
+
+#include "generic.h"
+
+static struct memory_platform_data ram_pdata = {
+	.name = "ram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.name     = "mem",
+	.map_base = AT91_CHIPSELECT_1,
+	.platform_data = &ram_pdata,
+};
+
+void at91_add_device_sdram(u32 size)
+{
+	sdram_dev.size = size;
+	register_device(&sdram_dev);
+	armlinux_add_dram(&sdram_dev);
+}
+
+#if defined(CONFIG_NAND_ATMEL)
+static struct device_d nand_dev = {
+	.name     = "atmel_nand",
+	.map_base = AT91_CHIPSELECT_3,
+	.size     = 0x10,
+};
+
+void at91_add_device_nand(struct atmel_nand_data *data)
+{
+	unsigned long csa;
+
+	if (!data)
+		return;
+
+	csa = at91_sys_read(AT91_MATRIX_EBICSA);
+	at91_sys_write(AT91_MATRIX_EBICSA, csa | AT91_MATRIX_CS3A_SMC_SMARTMEDIA);
+
+	/* enable pin */
+	if (data->enable_pin)
+		at91_set_gpio_output(data->enable_pin, 1);
+
+	/* ready/busy pin */
+	if (data->rdy_pin)
+		at91_set_gpio_input(data->rdy_pin, 1);
+
+	/* card detect pin */
+	if (data->det_pin)
+		at91_set_gpio_input(data->det_pin, 1);
+
+	at91_set_A_periph(AT91_PIN_PC0, 0);		/* NANDOE */
+	at91_set_A_periph(AT91_PIN_PC1, 0);		/* NANDWE */
+
+	nand_dev.platform_data = data;
+	register_device(&nand_dev);
+}
+#else
+void at91_add_device_nand(struct atmel_nand_data *data) {}
+#endif
+
+static struct device_d dbgu_serial_device = {
+	.name     = "atmel_serial",
+	.map_base = (AT91_BASE_SYS + AT91_DBGU),
+	.size     = 4096,
+};
+
+static inline void configure_dbgu_pins(void)
+{
+	at91_set_A_periph(AT91_PIN_PA9, 0);		/* DRXD */
+	at91_set_A_periph(AT91_PIN_PA10, 1);		/* DTXD */
+}
+
+static struct device_d uart0_serial_device = {
+	.name     = "atmel_serial",
+	.map_base = AT91SAM9261_BASE_US0,
+	.size     = 4096,
+};
+
+static inline void configure_usart0_pins(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PC8, 1);		/* TXD0 */
+	at91_set_A_periph(AT91_PIN_PC9, 0);		/* RXD0 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_A_periph(AT91_PIN_PC10, 0);	/* RTS0 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_A_periph(AT91_PIN_PC11, 0);	/* CTS0 */
+}
+
+static struct device_d uart1_serial_device = {
+	.name     = "atmel_serial",
+	.map_base = AT91SAM9261_BASE_US1,
+	.size     = 4096,
+};
+
+static inline void configure_usart1_pins(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PC12, 1);		/* TXD1 */
+	at91_set_A_periph(AT91_PIN_PC13, 0);		/* RXD1 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_B_periph(AT91_PIN_PA12, 0);	/* RTS1 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_B_periph(AT91_PIN_PA13, 0);	/* CTS1 */
+}
+
+static struct device_d uart2_serial_device = {
+	.name     = "atmel_serial",
+	.map_base = AT91SAM9261_BASE_US2,
+	.size     = 4096,
+};
+
+static inline void configure_usart2_pins(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PC15, 0);		/* RXD2 */
+	at91_set_A_periph(AT91_PIN_PC14, 1);		/* TXD2 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_B_periph(AT91_PIN_PA15, 0);	/* RTS2*/
+	if (pins & ATMEL_UART_CTS)
+		at91_set_B_periph(AT91_PIN_PA16, 0);	/* CTS2 */
+}
+
+void at91_register_uart(unsigned id, unsigned pins)
+{
+	switch (id) {
+		case 0:		/* DBGU */
+			configure_dbgu_pins();
+			at91_clock_associate("mck", &dbgu_serial_device, "usart");
+			register_device(&dbgu_serial_device);
+			break;
+		case AT91SAM9261_ID_US0:
+			configure_usart0_pins(pins);
+			at91_clock_associate("usart0_clk", &uart0_serial_device, "usart");
+			register_device(&uart0_serial_device);
+			break;
+		case AT91SAM9261_ID_US1:
+			configure_usart1_pins(pins);
+			at91_clock_associate("usart1_clk", &uart1_serial_device, "usart");
+			register_device(&uart1_serial_device);
+			break;
+		case AT91SAM9261_ID_US2:
+			configure_usart2_pins(pins);
+			at91_clock_associate("usart2_clk", &uart2_serial_device, "usart");
+			register_device(&uart2_serial_device);
+			break;
+		default:
+			return;
+	}
+}
diff --git a/arch/arm/mach-at91/include/mach/at91sam9261.h b/arch/arm/mach-at91/include/mach/at91sam9261.h
new file mode 100644
index 0000000..b303e07
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91sam9261.h
@@ -0,0 +1,109 @@
+/*
+ * [origin: Linux kernel include/asm-arm/arch-at91/at91sam9261.h]
+ *
+ * Copyright (C) SAN People
+ *
+ * Common definitions.
+ * Based on AT91SAM9261 datasheet revision E. (Preliminary)
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91SAM9261_H
+#define AT91SAM9261_H
+
+/*
+ * Peripheral identifiers/interrupts.
+ */
+#define AT91_ID_FIQ		0	/* Advanced Interrupt Controller (FIQ) */
+#define AT91_ID_SYS		1	/* System Peripherals */
+#define AT91SAM9261_ID_PIOA	2	/* Parallel IO Controller A */
+#define AT91SAM9261_ID_PIOB	3	/* Parallel IO Controller B */
+#define AT91SAM9261_ID_PIOC	4	/* Parallel IO Controller C */
+#define AT91SAM9261_ID_US0	6	/* USART 0 */
+#define AT91SAM9261_ID_US1	7	/* USART 1 */
+#define AT91SAM9261_ID_US2	8	/* USART 2 */
+#define AT91SAM9261_ID_MCI	9	/* Multimedia Card Interface */
+#define AT91SAM9261_ID_UDP	10	/* USB Device Port */
+#define AT91SAM9261_ID_TWI	11	/* Two-Wire Interface */
+#define AT91SAM9261_ID_SPI0	12	/* Serial Peripheral Interface 0 */
+#define AT91SAM9261_ID_SPI1	13	/* Serial Peripheral Interface 1 */
+#define AT91SAM9261_ID_SSC0	14	/* Serial Synchronous Controller 0 */
+#define AT91SAM9261_ID_SSC1	15	/* Serial Synchronous Controller 1 */
+#define AT91SAM9261_ID_SSC2	16	/* Serial Synchronous Controller 2 */
+#define AT91SAM9261_ID_TC0	17	/* Timer Counter 0 */
+#define AT91SAM9261_ID_TC1	18	/* Timer Counter 1 */
+#define AT91SAM9261_ID_TC2	19	/* Timer Counter 2 */
+#define AT91SAM9261_ID_UHP	20	/* USB Host port */
+#define AT91SAM9261_ID_LCDC	21	/* LDC Controller */
+#define AT91SAM9261_ID_IRQ0	29	/* Advanced Interrupt Controller (IRQ0) */
+#define AT91SAM9261_ID_IRQ1	30	/* Advanced Interrupt Controller (IRQ1) */
+#define AT91SAM9261_ID_IRQ2	31	/* Advanced Interrupt Controller (IRQ2) */
+
+
+/*
+ * User Peripheral physical base addresses.
+ */
+#define AT91SAM9261_BASE_TCB0		0xfffa0000
+#define AT91SAM9261_BASE_TC0		0xfffa0000
+#define AT91SAM9261_BASE_TC1		0xfffa0040
+#define AT91SAM9261_BASE_TC2		0xfffa0080
+#define AT91SAM9261_BASE_UDP		0xfffa4000
+#define AT91SAM9261_BASE_MCI		0xfffa8000
+#define AT91SAM9261_BASE_TWI		0xfffac000
+#define AT91SAM9261_BASE_US0		0xfffb0000
+#define AT91SAM9261_BASE_US1		0xfffb4000
+#define AT91SAM9261_BASE_US2		0xfffb8000
+#define AT91SAM9261_BASE_SSC0		0xfffbc000
+#define AT91SAM9261_BASE_SSC1		0xfffc0000
+#define AT91SAM9261_BASE_SSC2		0xfffc4000
+#define AT91SAM9261_BASE_SPI0		0xfffc8000
+#define AT91SAM9261_BASE_SPI1		0xfffcc000
+#define AT91_BASE_SYS			0xffffea00
+
+
+/*
+ * System Peripherals (offset from AT91_BASE_SYS)
+ */
+#define AT91_SDRAMC	(0xffffea00 - AT91_BASE_SYS)
+#define AT91_SMC	(0xffffec00 - AT91_BASE_SYS)
+#define AT91_MATRIX	(0xffffee00 - AT91_BASE_SYS)
+#define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
+#define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
+#define AT91_PIOA	(0xfffff400 - AT91_BASE_SYS)
+#define AT91_PIOB	(0xfffff600 - AT91_BASE_SYS)
+#define AT91_PIOC	(0xfffff800 - AT91_BASE_SYS)
+#define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
+#define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
+#define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
+#define AT91_RTT	(0xfffffd20 - AT91_BASE_SYS)
+#define AT91_PIT	(0xfffffd30 - AT91_BASE_SYS)
+#define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
+#define AT91_GPBR	(0xfffffd50 - AT91_BASE_SYS)
+
+#define AT91_USART0	AT91SAM9261_BASE_US0
+#define AT91_USART1	AT91SAM9261_BASE_US1
+#define AT91_USART2	AT91SAM9261_BASE_US2
+
+
+/*
+ * Internal Memory.
+ */
+#define AT91SAM9261_SRAM_BASE	0x00300000	/* Internal SRAM base address */
+#define AT91SAM9261_SRAM_SIZE	0x00028000	/* Internal SRAM size (160Kb) */
+
+#define AT91SAM9261_ROM_BASE	0x00400000	/* Internal ROM base address */
+#define AT91SAM9261_ROM_SIZE	SZ_32K		/* Internal ROM size (32Kb) */
+
+#define AT91SAM9261_UHP_BASE	0x00500000	/* USB Host controller */
+#define AT91SAM9261_LCDC_BASE	0x00600000	/* LDC controller */
+
+/*
+ * Cpu Name
+ */
+#define AT91_CPU_NAME	"AT91SAM9261"
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9261_matrix.h b/arch/arm/mach-at91/include/mach/at91sam9261_matrix.h
new file mode 100644
index 0000000..7de0157
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91sam9261_matrix.h
@@ -0,0 +1,64 @@
+/*
+ * [origin: Linux kernel include/asm-arm/arch-at91/at91sam9261_matrix.h]
+ *
+ *  Copyright (C) 2007 Atmel Corporation.
+ *
+ * Memory Controllers (MATRIX, EBI) - System peripherals registers.
+ * Based on AT91SAM9261 datasheet revision D.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91SAM9261_MATRIX_H
+#define AT91SAM9261_MATRIX_H
+
+#define AT91_MATRIX_MCFG	(AT91_MATRIX + 0x00)	/* Master Configuration Register */
+#define		AT91_MATRIX_RCB0	(1 << 0)		/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
+#define		AT91_MATRIX_RCB1	(1 << 1)		/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
+
+#define AT91_MATRIX_SCFG0	(AT91_MATRIX + 0x04)	/* Slave Configuration Register 0 */
+#define AT91_MATRIX_SCFG1	(AT91_MATRIX + 0x08)	/* Slave Configuration Register 1 */
+#define AT91_MATRIX_SCFG2	(AT91_MATRIX + 0x0C)	/* Slave Configuration Register 2 */
+#define AT91_MATRIX_SCFG3	(AT91_MATRIX + 0x10)	/* Slave Configuration Register 3 */
+#define AT91_MATRIX_SCFG4	(AT91_MATRIX + 0x14)	/* Slave Configuration Register 4 */
+#define		AT91_MATRIX_SLOT_CYCLE		(0xff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
+#define		AT91_MATRIX_DEFMSTR_TYPE	(3    << 16)	/* Default Master Type */
+#define			AT91_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
+#define			AT91_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
+#define			AT91_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
+#define		AT91_MATRIX_FIXED_DEFMSTR	(7    << 18)	/* Fixed Index of Default Master */
+
+#define AT91_MATRIX_TCR		(AT91_MATRIX + 0x24)	/* TCM Configuration Register */
+#define		AT91_MATRIX_ITCM_SIZE		(0xf << 0)	/* Size of ITCM enabled memory block */
+#define			AT91_MATRIX_ITCM_0		(0 << 0)
+#define			AT91_MATRIX_ITCM_16		(5 << 0)
+#define			AT91_MATRIX_ITCM_32		(6 << 0)
+#define			AT91_MATRIX_ITCM_64		(7 << 0)
+#define		AT91_MATRIX_DTCM_SIZE		(0xf << 4)	/* Size of DTCM enabled memory block */
+#define			AT91_MATRIX_DTCM_0		(0 << 4)
+#define			AT91_MATRIX_DTCM_16		(5 << 4)
+#define			AT91_MATRIX_DTCM_32		(6 << 4)
+#define			AT91_MATRIX_DTCM_64		(7 << 4)
+
+#define AT91_MATRIX_EBICSA	(AT91_MATRIX + 0x30)	/* EBI Chip Select Assignment Register */
+#define		AT91_MATRIX_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
+#define			AT91_MATRIX_CS1A_SMC		(0 << 1)
+#define			AT91_MATRIX_CS1A_SDRAMC		(1 << 1)
+#define		AT91_MATRIX_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
+#define			AT91_MATRIX_CS3A_SMC		(0 << 3)
+#define			AT91_MATRIX_CS3A_SMC_SMARTMEDIA	(1 << 3)
+#define		AT91_MATRIX_CS4A		(1 << 4)	/* Chip Select 4 Assignment */
+#define			AT91_MATRIX_CS4A_SMC		(0 << 4)
+#define			AT91_MATRIX_CS4A_SMC_CF1	(1 << 4)
+#define		AT91_MATRIX_CS5A		(1 << 5)	/* Chip Select 5 Assignment */
+#define			AT91_MATRIX_CS5A_SMC		(0 << 5)
+#define			AT91_MATRIX_CS5A_SMC_CF2	(1 << 5)
+#define		AT91_MATRIX_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
+
+#define AT91_MATRIX_USBPUCR	(AT91_MATRIX + 0x34)	/* USB Pad Pull-Up Control Register */
+#define		AT91_MATRIX_USBPUCR_PUON	(1 << 30)	/* USB Device PAD Pull-up Enable */
+
+#endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

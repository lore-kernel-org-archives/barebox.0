Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ofni8-0003ac-8z
	for barebox@lists.infradead.org; Mon, 02 Aug 2010 05:37:20 +0000
Date: Mon, 2 Aug 2010 07:37:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100802053712.GI14113@pengutronix.de>
References: <4C532D05.7020407@dawes.za.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C532D05.7020407@dawes.za.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Porting to Marvell 88F5182?
To: Rogan Dawes <rogan@dawes.za.net>
Cc: barebox@lists.infradead.org

Hi Rogan,

On Fri, Jul 30, 2010 at 09:50:29PM +0200, Rogan Dawes wrote:
> Hi folks,
>
> I am trying to get a decent boot loader running on my DLink DNS323. It  
> was shipped with a severely crippled version of U-Boot, forked from  
> U-Boot 1.1.1, and heavily bastardized by Marvell.
>
> Recently, Albert Aribaud has added support for this chipset in U-Boot  
> master for his LaCie ED MiniV2, which is based on the same SoC, and I am  
> now trying to get my DLink DNS323 to work as well.
>
> I have managed to get just about everything to work, except for the  
> flash part, a Spansion S29GL064M90TFIR4 device. Unfortunately, there  
> seems to be some strange connections going on, and the standard U-Boot  
> CFI code does not recognise it.
>
> I see that there has been a lot of changes to the BareBox CFI code since  
> it was forked from U-Boot 1.2.0, and I was wondering if maybe that code  
> would be more successful.
>
> So, the question then:
>
> Given a working board definition in U-Boot master for an ARM926EJ-S  
> based Soc, how difficult is it to port this to current BareBox master?

The simplest port I can think of is the following patch which adds
minimal support for the pxa270. It supports 2nd stage only, so this
should be a good start for you. For getting this to run it's a good idea
to determine the tx register of your serial port under U-Boot. Just try
to do a 'mw <txreg> <0x55> under U-Boot. When you see a capital 'U' you
got it. You can then add

#include <asm/io.h>

	writel(0x55, txreg);

in the startup code in barebox to see if you get there.

Other what Eric suggested I recommend to just use the barebox.bin file.
You can start it with the 'go' command in U-Boot.

The patch is a bit out of date, so it probably won't apply directly.

Hope that helps

 Sascha


commit aed89d7f0294039b623f7ce68276e5e9ab026b00
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Sat Oct 10 17:45:10 2009 +0200

    pxa minimal port
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 441dfb6..6883f7e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -21,6 +21,7 @@ config ARCH_TEXT_BASE
 	default 0x33fc0000 if MACH_A9M2440
 	default 0x23f00000 if MACH_MMCCPU
 	default 0xa0000000 if MACH_EUKREA_CPUIMX27
+	default 0xa3f00000 if MACH_PCM027
 
 config BOARDINFO
 	default "Synertronixx scb9328" if MACH_SCB9328
@@ -39,6 +40,7 @@ config BOARDINFO
 	default "Phytec phyCard-i.MX27" if MACH_PCA100
 	default "Bucyrus MMC-CPU" if MACH_MMCCPU
 	default "Eukrea CPUIMX27" if MACH_EUKREA_CPUIMX27
+	default "Phytec phyCORE-PXA270" if MACH_PCM027
 
 config BOARD_LINKER_SCRIPT
 	bool
@@ -90,6 +92,9 @@ config ARCH_AT91SAM9263
 	select ARCH_AT91SAM9
 	select MACH_HAS_LOWLEVEL_INIT
 
+config ARCH_PXA
+	bool
+
 choice
 	prompt "Select your board"
 
@@ -257,6 +262,14 @@ config MACH_EUKREA_CPUIMX27
 	  Say Y here if you are using Eukrea's CPUIMX27 equipped
 	  with a Freescale i.MX27 Processor
 
+config MACH_PCM027
+	bool "Phytec phyCORE-PXA270"
+	select HAS_CFI
+	select ARCH_PXA
+	help
+	  Say Y here if you are using a Phytec phyCORE PXA270
+	  board
+
 endchoice
 
 source arch/arm/mach-imx/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 83fe532..ae2de97 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -8,6 +8,7 @@ machine-$(CONFIG_ARCH_AT91RM9200)  := at91rm9200
 machine-$(CONFIG_ARCH_OMAP)        := omap
 machine-$(CONFIG_ARCH_AT91SAM9)    := at91sam9
 machine-$(CONFIG_ARCH_S3C24xx)     := s3c24xx
+machine-$(CONFIG_ARCH_PXA)         := pxa
 board-$(CONFIG_MACH_MX1ADS)	   := mx1ads
 board-$(CONFIG_MACH_ECO920)	   := eco920
 board-$(CONFIG_MACH_SCB9328)	   := scb9328
@@ -27,6 +28,7 @@ board-$(CONFIG_MACH_PCA100)        := phycard-i.MX27
 board-$(CONFIG_MACH_MMCCPU)        := mmccpu
 board-$(CONFIG_MACH_A9M2440)       := a9m2440
 board-$(CONFIG_MACH_EUKREA_CPUIMX27) := eukrea_cpuimx27
+board-$(CONFIG_MACH_PCM027)        := pcm027
 
 # FIXME "cpu-y" never used on ARM!
 cpu-$(CONFIG_ARM920T)              := arm920t
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 3b6a6d7..c7e522e 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_ARM926EJS) += start-arm.o
 obj-$(CONFIG_ARMCORTEXA8) += start-arm.o
 obj-$(CONFIG_ARCH_IMX31) += start-arm.o
 obj-$(CONFIG_ARCH_IMX35) += start-arm.o
+obj-$(CONFIG_ARCH_PXA) += start-arm.o
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_MMU) += mmu.o
 obj-$(CONFIG_MMU) += cache.o
diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
new file mode 100644
index 0000000..9b82b6d
--- /dev/null
+++ b/arch/arm/mach-pxa/Makefile
@@ -0,0 +1 @@
+obj-y	+= common.o clocksource.o
diff --git a/arch/arm/mach-pxa/clocksource.c b/arch/arm/mach-pxa/clocksource.c
new file mode 100644
index 0000000..309f1ab
--- /dev/null
+++ b/arch/arm/mach-pxa/clocksource.c
@@ -0,0 +1,50 @@
+/*
+ * (C) Copyright 2009 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <asm/io.h>
+
+#define OSCR	0x40A00010
+
+uint64_t pxa_clocksource_read(void)
+{
+	return readl(OSCR);
+}
+
+static struct clocksource cs = {
+	.read	= pxa_clocksource_read,
+	.mask	= 0xffffffff,
+	.shift	= 20,
+};
+
+static int clocksource_init (void)
+{
+	cs.mult = clocksource_hz2mult(3250000, cs.shift);
+
+	init_clock(&cs);
+
+	return 0;
+}
+
+core_initcall(clocksource_init);
diff --git a/arch/arm/mach-pxa/common.c b/arch/arm/mach-pxa/common.c
new file mode 100644
index 0000000..3653109
--- /dev/null
+++ b/arch/arm/mach-pxa/common.c
@@ -0,0 +1,20 @@
+#include <common.h>
+#include <asm/io.h>
+
+#define OSMR3	0x40A0000C
+#define OSCR	0x40A00010
+#define OSSR	0x40A00014
+#define OWER	0x40A00018
+
+#define OWER_WME	(1 << 0)	/* Watch-dog Match Enable */
+#define OSSR_M3		(1 << 3)	/* Match status channel 3 */
+
+void reset_cpu(ulong addr)
+{
+	/* Initialize the watchdog and let it fire */
+	writel(OWER_WME, OWER);
+	writel(OSSR_M3, OSSR);
+	writel(readl(OSCR) + 368640, OSMR3);  /* ... in 100 ms */
+
+	while(1);
+}
diff --git a/board/pcm027/Makefile b/board/pcm027/Makefile
new file mode 100644
index 0000000..dcfc293
--- /dev/null
+++ b/board/pcm027/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/board/pcm027/board.c b/board/pcm027/board.c
new file mode 100644
index 0000000..450700d
--- /dev/null
+++ b/board/pcm027/board.c
@@ -0,0 +1,86 @@
+/*
+ * (C) 2009 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+#include <driver.h>
+#include <environment.h>
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <partition.h>
+#include <asm/mach-types.h>
+#include <cfi_flash.h>
+
+static struct device_d network_dev = {
+        .name     = "smc91c111",
+        .map_base = 0x14000300,
+        .size     = 16,
+};
+
+static struct memory_platform_data sdram_pdata = {
+	.name	= "ram0",
+	.flags	= DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.name     = "mem",
+	.map_base = 0xa0000000,
+	.size     = 64 * 1024 * 1024,
+	.platform_data = &sdram_pdata,
+};
+
+static struct device_d cfi_dev = {
+	.name     = "cfi_flash",
+	.map_base = 0x0,
+	.size     = 32 * 1024 * 1024,
+};
+
+static int pcm027_devices_init(void)
+{
+	register_device(&network_dev);
+	register_device(&sdram_dev);
+	register_device(&cfi_dev);
+
+	armlinux_add_dram(&sdram_dev);
+	armlinux_set_bootparams((void *)0xa0000100);
+	armlinux_set_architecture(MACH_TYPE_PCM027);
+
+	return 0;
+}
+
+device_initcall(pcm027_devices_init);
+
+static struct device_d pcm027_serial_device = {
+	.name     = "pxa_serial",
+	.map_base = 0x40100000,
+	.size     = 0x24,
+};
+
+static int pcm027_console_init(void)
+{
+	register_device(&pcm027_serial_device);
+	return 0;
+}
+
+console_initcall(pcm027_console_init);
+
diff --git a/board/pcm027/config.h b/board/pcm027/config.h
new file mode 100644
index 0000000..e69de29
diff --git a/board/pcm027/env/bin/_update b/board/pcm027/env/bin/_update
new file mode 100644
index 0000000..fb7cbe8
--- /dev/null
+++ b/board/pcm027/env/bin/_update
@@ -0,0 +1,36 @@
+#!/bin/sh
+
+if [ -z "$part" -o -z "$image" ]; then
+	echo "define \$part and \$image"
+	exit 1
+fi
+
+if [ \! -e "$part" ]; then
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
diff --git a/board/pcm027/env/bin/boot b/board/pcm027/env/bin/boot
new file mode 100644
index 0000000..6d87838
--- /dev/null
+++ b/board/pcm027/env/bin/boot
@@ -0,0 +1,40 @@
+#!/bin/sh
+
+. /env/config
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
+if [ x$root = xnor ]; then
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
+	echo "please set kernel to either net or nor"
+fi
+
diff --git a/board/pcm027/env/bin/hush_hack b/board/pcm027/env/bin/hush_hack
new file mode 100644
index 0000000..5fffa92
--- /dev/null
+++ b/board/pcm027/env/bin/hush_hack
@@ -0,0 +1 @@
+nand -a /dev/nand0.*
diff --git a/board/pcm027/env/bin/init b/board/pcm027/env/bin/init
new file mode 100644
index 0000000..5a1ded6
--- /dev/null
+++ b/board/pcm027/env/bin/init
@@ -0,0 +1,37 @@
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
+	echo "type update_kernel nand|nor [<imagename>] to update kernel into flash"
+	echo "type update_root nand|nor [<imagename>] to update rootfs into flash"
+	echo
+	exit
+fi
+
+boot
diff --git a/board/pcm027/env/bin/update_kernel b/board/pcm027/env/bin/update_kernel
new file mode 100644
index 0000000..05c822d
--- /dev/null
+++ b/board/pcm027/env/bin/update_kernel
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
diff --git a/board/pcm027/env/bin/update_root b/board/pcm027/env/bin/update_root
new file mode 100644
index 0000000..eaf36eb
--- /dev/null
+++ b/board/pcm027/env/bin/update_root
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+. /env/config
+
+image=$uimage
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
diff --git a/board/pcm027/env/config b/board/pcm027/env/config
new file mode 100644
index 0000000..d5412a1
--- /dev/null
+++ b/board/pcm027/env/config
@@ -0,0 +1,25 @@
+#!/bin/sh
+
+# can be either 'net', 'nor' or 'nand''
+kernel=net
+root=net
+
+uimage=uImage-pcm027
+jffs2=root-pcm037.jffs2
+
+autoboot_timeout=3
+
+nfsroot="/tmp"
+bootargs="console=ttyS0,115200"
+
+nor_parts="256k(uboot)ro,128k(ubootenv),1536k(kernel),-(root)"
+rootpart_nor="/dev/mtdblock3"
+
+# use 'dhcp' to do dhcp in uboot and in kernel
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 6acce19..bac3f23 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -57,4 +57,8 @@ config DRIVER_SERIAL_S3C24X0_AUTOSYNC
 	  Say Y here if you want to use the auto flow feature of this
 	  UART. RTS and CTS will be handled by the hardware when enabled.
 
+config DRIVER_SERIAL_PXA
+	bool "PXA serial driver"
+	depends on ARCH_PXA
+
 endmenu
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 3bc965c..2005254 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -13,3 +13,4 @@ obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)		+= serial_mpc5xxx.o
 obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)		+= serial_blackfin.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
 obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)		+= serial_s3c24x0.o
+obj-$(CONFIG_DRIVER_SERIAL_PXA)			+= serial_pxa.o
diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
new file mode 100644
index 0000000..d37354c
--- /dev/null
+++ b/drivers/serial/serial_pxa.c
@@ -0,0 +1,179 @@
+/*
+ * (c) 2009 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <asm/io.h>
+
+#define RBR		0x00  /* Receive Buffer Register (read only) */
+#define THR		0x00  /* Transmit Holding Register (write only) */
+#define IER		0x04  /* Interrupt Enable Register (read/write) */
+#define IIR		0x08  /* Interrupt ID Register (read only) */
+#define FCR		0x08  /* FIFO Control Register (write only) */
+#define LCR		0x0c  /* Line Control Register (read/write) */
+#define MCR		0x10  /* Modem Control Register (read/write) */
+#define LSR		0x14  /* Line Status Register (read only) */
+#define MSR		0x18  /* Modem Status Register (read only) */
+#define SPR		0x1c  /* Scratch Pad Register (read/write) */
+#define ISR		0x20  /* Infrared Selection Register (read/write) */
+#define DLL		0x00  /* Divisor Latch Low Register (DLAB = 1) (read/write) */
+#define DLH		0x04  /* Divisor Latch High Register (DLAB = 1) (read/write) */
+
+#define IER_DMAE	(1 << 7)	/* DMA Requests Enable */
+#define IER_UUE		(1 << 6)	/* UART Unit Enable */
+#define IER_NRZE	(1 << 5)	/* NRZ coding Enable */
+#define IER_RTIOE	(1 << 4)	/* Receiver Time Out Interrupt Enable */
+#define IER_MIE		(1 << 3)	/* Modem Interrupt Enable */
+#define IER_RLSE	(1 << 2)	/* Receiver Line Status Interrupt Enable */
+#define IER_TIE		(1 << 1)	/* Transmit Data request Interrupt Enable */
+#define IER_RAVIE	(1 << 0)	/* Receiver Data Available Interrupt Enable */
+
+#define IIR_FIFOES1	(1 << 7)	/* FIFO Mode Enable Status */
+#define IIR_FIFOES0	(1 << 6)	/* FIFO Mode Enable Status */
+#define IIR_TOD		(1 << 3)	/* Time Out Detected */
+#define IIR_IID2	(1 << 2)	/* Interrupt Source Encoded */
+#define IIR_IID1	(1 << 1)	/* Interrupt Source Encoded */
+#define IIR_IP		(1 << 0)	/* Interrupt Pending (active low) */
+
+#define FCR_ITL2	(1 << 7)	/* Interrupt Trigger Level */
+#define FCR_ITL1	(1 << 6)	/* Interrupt Trigger Level */
+#define FCR_RESETTF	(1 << 2)	/* Reset Transmitter FIFO */
+#define FCR_RESETRF	(1 << 1)	/* Reset Receiver FIFO */
+#define FCR_TRFIFOE	(1 << 0)	/* Transmit and Receive FIFO Enable */
+#define FCR_ITL_1	(0)
+#define FCR_ITL_8	(FCR_ITL1)
+#define FCR_ITL_16	(FCR_ITL2)
+#define FCR_ITL_32	(FCR_ITL2|FCR_ITL1)
+
+#define LCR_DLAB	(1 << 7)	/* Divisor Latch Access Bit */
+#define LCR_SB		(1 << 6)	/* Set Break */
+#define LCR_STKYP	(1 << 5)	/* Sticky Parity */
+#define LCR_EPS		(1 << 4)	/* Even Parity Select */
+#define LCR_PEN		(1 << 3)	/* Parity Enable */
+#define LCR_STB		(1 << 2)	/* Stop Bit */
+#define LCR_WLS1	(1 << 1)	/* Word Length Select */
+#define LCR_WLS0	(1 << 0)	/* Word Length Select */
+
+#define LSR_FIFOE	(1 << 7)	/* FIFO Error Status */
+#define LSR_TEMT	(1 << 6)	/* Transmitter Empty */
+#define LSR_TDRQ	(1 << 5)	/* Transmit Data Request */
+#define LSR_BI		(1 << 4)	/* Break Interrupt */
+#define LSR_FE		(1 << 3)	/* Framing Error */
+#define LSR_PE		(1 << 2)	/* Parity Error */
+#define LSR_OE		(1 << 1)	/* Overrun Error */
+#define LSR_DR		(1 << 0)	/* Data Ready */
+
+#define MCR_LOOP	(1 << 4)	*/
+#define MCR_OUT2	(1 << 3)	/* force MSR_DCD in loopback mode */
+#define MCR_OUT1	(1 << 2)	/* force MSR_RI in loopback mode */
+#define MCR_RTS		(1 << 1)	/* Request to Send */
+#define MCR_DTR		(1 << 0)	/* Data Terminal Ready */
+
+#define MSR_DCD		(1 << 7)	/* Data Carrier Detect */
+#define MSR_RI		(1 << 6)	/* Ring Indicator */
+#define MSR_DSR		(1 << 5)	/* Data Set Ready */
+#define MSR_CTS		(1 << 4)	/* Clear To Send */
+#define MSR_DDCD	(1 << 3)	/* Delta Data Carrier Detect */
+#define MSR_TERI	(1 << 2)	/* Trailing Edge Ring Indicator */
+#define MSR_DDSR	(1 << 1)	/* Delta Data Set Ready */
+#define MSR_DCTS	(1 << 0)	/* Delta Clear To Send */
+
+struct pxa_serial_priv {
+	struct console_device cdev;
+};
+
+static void pxa_serial_putc(struct console_device *cdev, char c)
+{
+	struct device_d *dev = cdev->dev;
+
+	while (!(readl(dev->map_base + LSR) & LSR_TEMT));
+
+	writel(c, dev->map_base + THR);
+}
+
+static int pxa_serial_tstc(struct console_device *cdev)
+{
+	struct device_d *dev = cdev->dev;
+
+	return readl(dev->map_base + LSR) & LSR_DR;
+}
+
+static int pxa_serial_getc(struct console_device *cdev)
+{
+	struct device_d *dev = cdev->dev;
+	unsigned char ch;
+
+	while (!(readl(dev->map_base + LSR) & LSR_DR));
+
+	ch = readl(dev->map_base + RBR) & 0xff;
+
+	return ch;
+}
+
+static void pxa_serial_flush(struct console_device *cdev)
+{
+}
+
+static int pxa_serial_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	return 0;
+}
+
+static int pxa_serial_probe(struct device_d *dev)
+{
+	struct console_device *cdev;
+	struct pxa_serial_priv *priv;
+
+	priv = malloc(sizeof(*priv));
+	cdev = &priv->cdev;
+
+	dev->type_data = cdev;
+	cdev->dev = dev;
+	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	cdev->tstc = pxa_serial_tstc;
+	cdev->putc = pxa_serial_putc;
+	cdev->getc = pxa_serial_getc;
+	cdev->flush = pxa_serial_flush;
+	cdev->setbrg = pxa_serial_setbaudrate;
+
+	console_register(cdev);
+
+	return 0;
+}
+
+static void pxa_serial_remove(struct device_d *dev)
+{
+	free(dev->type_data);
+}
+
+static struct driver_d pxa_serial_driver = {
+        .name   = "pxa_serial",
+        .probe  = pxa_serial_probe,
+	.remove = pxa_serial_remove,
+};
+
+static int pxa_serial_init(void)
+{
+	register_driver(&pxa_serial_driver);
+	return 0;
+}
+
+console_initcall(pxa_serial_init);

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

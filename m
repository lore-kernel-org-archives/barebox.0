Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNhXR-0006sY-O2
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 09:32:33 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SNhXQ-0000Fu-46
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 11:32:28 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1SNhXQ-0004E8-1N
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 11:32:28 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 27 Apr 2012 11:32:25 +0200
Message-Id: <1335519145-12349-8-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1335519145-12349-1-git-send-email-jbe@pengutronix.de>
References: <1335519145-12349-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 7/7] netX: add the 'th link' platform
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/Makefile                               |    1 +
 arch/arm/boards/netx-th-link/Makefile           |    1 +
 arch/arm/boards/netx-th-link/config.h           |    4 +
 arch/arm/boards/netx-th-link/env/config         |   48 ++++++
 arch/arm/boards/netx-th-link/netx-th-link.c     |  178 +++++++++++++++++++++++
 arch/arm/configs/hilscher_netX_thlink_defconfig |   39 +++++
 arch/arm/mach-netx/Kconfig                      |   13 ++
 arch/arm/tools/mach-types                       |    1 +
 8 files changed, 285 insertions(+)
 create mode 100644 arch/arm/boards/netx-th-link/Makefile
 create mode 100644 arch/arm/boards/netx-th-link/config.h
 create mode 100644 arch/arm/boards/netx-th-link/env/config
 create mode 100644 arch/arm/boards/netx-th-link/netx-th-link.c
 create mode 100644 arch/arm/configs/hilscher_netX_thlink_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d0bfd71..0c0762c 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -96,6 +96,7 @@ board-$(CONFIG_MACH_MMCCPU)			:= mmccpu
 board-$(CONFIG_MACH_MX1ADS)			:= mx1ads
 board-$(CONFIG_MACH_NOMADIK_8815NHK)		:= nhk8815
 board-$(CONFIG_MACH_NXDB500)			:= netx
+board-$(CONFIG_MACH_NETXTHLINK)			:= netx-th-link
 board-$(CONFIG_MACH_OMAP343xSDP)		:= omap343xdsp
 board-$(CONFIG_MACH_BEAGLE)			:= beagle
 board-$(CONFIG_MACH_OMAP3EVM)			:= omap3evm
diff --git a/arch/arm/boards/netx-th-link/Makefile b/arch/arm/boards/netx-th-link/Makefile
new file mode 100644
index 0000000..4aaf64c
--- /dev/null
+++ b/arch/arm/boards/netx-th-link/Makefile
@@ -0,0 +1 @@
+obj-y += netx-th-link.o
diff --git a/arch/arm/boards/netx-th-link/config.h b/arch/arm/boards/netx-th-link/config.h
new file mode 100644
index 0000000..ca15136
--- /dev/null
+++ b/arch/arm/boards/netx-th-link/config.h
@@ -0,0 +1,4 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/netx-th-link/env/config b/arch/arm/boards/netx-th-link/env/config
new file mode 100644
index 0000000..bed10b5
--- /dev/null
+++ b/arch/arm/boards/netx-th-link/env/config
@@ -0,0 +1,48 @@
+#!/bin/sh
+
+machine=th-link
+eth0.serverip=
+user=
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+dhcp_vendor_id=barebox
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'tftp', 'nfs', 'nor'
+kernel_loc=nor
+# can be either 'net', 'nor' or 'initrd'
+rootfs_loc=nor
+
+# for flash based rootfs: 'jffs2' or 'ubifs'
+rootfs_type=jffs2
+rootfsimage=rootfs-${machine}.$rootfs_type
+
+kernelimage=zImage-$machine
+#kernelimage=uImage-$machine
+#kernelimage=Image-$machine
+#kernelimage=Image-$machine.lzo
+
+if [ -n $user ]; then
+	kernelimage="$user"-"$kernelimage"
+	rootfsimage="$user"-"$rootfsimage"
+	nfsroot="/home/$user/nfsroot/$machine"
+else
+	nfsroot="/path/to/your/nfsroot"
+fi
+
+# used in the "netconsole" case
+autoboot_timeout=3
+
+# no way to output anything
+bootargs="quite"
+
+# the NOR is 192 MiB (not! 256 MiB!)
+nor_parts="256k(barebox)ro,256k(bareboxenv),3072k(kernel),193024k(root)"
+rootfs_mtdblock_nor=3
diff --git a/arch/arm/boards/netx-th-link/netx-th-link.c b/arch/arm/boards/netx-th-link/netx-th-link.c
new file mode 100644
index 0000000..dceef83
--- /dev/null
+++ b/arch/arm/boards/netx-th-link/netx-th-link.c
@@ -0,0 +1,178 @@
+/*
+ * (C) Copyright 2012 Juergen Beisert <kernel@pengutronix.de>
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
+ *
+ * Hilscher's TH-Link Eth system
+ * -----------------------------
+ *
+ * This board is based on a Hilscher's netX-100 ARM CPU and contains
+ *  - 256 MiB SDRAM (64 MiB @ 32 bit)
+ *  - 256 MiB Flash (192 MiB @ 32 bit)
+ *
+ * Specific to the CPU is, it does not require any setup code to bring the
+ * SDRAM up and working. This is done in a bootloader contained in ROM.
+ *
+ * Specific for the TH-Link is it has no serial console. Only the JTAG
+ * based 'DCC' console is possible or a 'netconsole'.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <net.h>
+#include <sizes.h>
+#include <io.h>
+#include <partition.h>
+#include <asm/armlinux.h>
+#include <fs.h>
+#include <generated/mach-types.h>
+#include <mach/netx-devices.h>
+#include <mach/netx-eth.h>
+#include <mach/netx-cm.h>
+
+static struct netx_eth_platform_data th_link_eth0_data = {
+	.xcno = 0,
+};
+
+static struct netx_eth_platform_data th_link_eth1_data = {
+	.xcno = 1,
+};
+
+#define GPIO_LOW 0x0
+#define GPIO_HIGH CFG_MODE_INPUT_CAPTURE_CONT_RISING
+
+/*
+ * GPIO usage:
+ * ------------------------
+ * GPIO0 not used, external 10k pullup
+ * GPIO1 not used and not connected anywhere
+ * GPIO2 not used, external 10k pullup
+ * GPIO[3..9] are not used and not connected anywhere
+ * GPIO10 interrupt input for the RTC
+ * GPIO[11..14] are not used and not connected anywhere
+ * GPIO15 is the CD (change detect) input of the SD card slot
+*/
+static void th_link_init_gpio(void)
+{
+	/* switch all not connected pins to output and high level */
+	GPIO_REG(GPIO_CFG(0)) = CFG_IOCFG_GP_UART;
+	GPIO_REG(GPIO_CFG(1)) = CFG_IOCFG_GP_OUTPUT | GPIO_HIGH;
+	GPIO_REG(GPIO_CFG(2)) = CFG_IOCFG_GP_UART;
+	GPIO_REG(GPIO_CFG(3)) = CFG_IOCFG_GP_OUTPUT | GPIO_HIGH;
+	GPIO_REG(GPIO_CFG(4)) = CFG_IOCFG_GP_OUTPUT | GPIO_HIGH;
+	GPIO_REG(GPIO_CFG(5)) = CFG_IOCFG_GP_OUTPUT | GPIO_HIGH;
+	GPIO_REG(GPIO_CFG(6)) = CFG_IOCFG_GP_OUTPUT | GPIO_HIGH;
+	GPIO_REG(GPIO_CFG(7)) = CFG_IOCFG_GP_OUTPUT | GPIO_HIGH;
+	GPIO_REG(GPIO_CFG(8)) = CFG_IOCFG_GP_OUTPUT | GPIO_HIGH;
+	GPIO_REG(GPIO_CFG(9)) = CFG_IOCFG_GP_OUTPUT | GPIO_HIGH;
+	GPIO_REG(GPIO_CFG(10)) = CFG_IOCFG_GP_INPUT | CFG_MODE_INPUT_READ;
+	GPIO_REG(GPIO_CFG(11)) = CFG_IOCFG_GP_OUTPUT | GPIO_HIGH;
+	GPIO_REG(GPIO_CFG(12)) = CFG_IOCFG_GP_OUTPUT | GPIO_HIGH;
+	GPIO_REG(GPIO_CFG(13)) = CFG_IOCFG_GP_OUTPUT | GPIO_HIGH;
+	GPIO_REG(GPIO_CFG(14)) = CFG_IOCFG_GP_OUTPUT | GPIO_HIGH;
+	GPIO_REG(GPIO_CFG(15)) = CFG_IOCFG_GP_INPUT | CFG_MODE_INPUT_READ;
+}
+
+/*
+ * PIO usage:
+ * ------------------------
+ * PIO0 is the COM0/RED LED (low = LED on)
+ * PIO1 is the COM0/GREEN LED (low = LED on)
+ * PIO2 is the COM1/RED LED (low = LED on)
+ * PIO3 is the COM1/GREEN LED (low = LED on)
+ * PIO[4..30] are not used and not connected anywhere
+ */
+static void th_link_init_pio(void)
+{
+	/* switch all not connected pins to output and high level */
+	NETX_PIO_OUTPIO = 0x7fffffff;	/* all LEDs off */
+	NETX_PIO_OEPIO = 0x7fffffff;
+}
+
+/*
+ * HIFPIO usage:
+ * -------------------------------
+ * HIFPIO32 Relais control (low = off)
+ * HIFPIO[33..84] are not used and not connected anywhere
+ */
+static void th_link_init_hifpio(void)
+{
+	u32 reg, key;
+
+	/*
+	 * to be able to use these pins as PIOs, we must
+	 * activate them globally first
+	 */
+	reg = SYSTEM_REG(SYSTEM_IOC_CR) & ~0x80000000;
+	/* enable write access to the IO_CFG register */
+	key = SYSTEM_REG(SYSTEM_IOC_ACCESS_KEY);
+	SYSTEM_REG(SYSTEM_IOC_ACCESS_KEY) = key;
+	/* do the write now */
+	SYSTEM_REG(SYSTEM_IOC_CR) = reg;
+
+	/* we now can activate PIO mode at these pins */
+	reg = NETX_DPMAS_IF_CONF0_REG & ~(0x7 << 28);
+	NETX_DPMAS_IF_CONF0_REG = reg | IF_CONF0_HIF_IO;
+
+	/* switch all not connected pins to output and high level */
+	NETX_DPMAS_DATA1_REG = 0xfffff;
+	NETX_DPMAS_DRV_EN1_REG = 0xfffff;
+	NETX_DPMAS_IO_MODE1_REG = 0x00000; /* all PIO Mode */
+
+	NETX_DPMAS_DATA0_REG = 0xfffffffe;
+	NETX_DPMAS_DRV_EN0_REG = 0xffffffff;
+	NETX_DPMAS_IO_MODE0_REG = 0x00000000; /* all PIO Mode */
+}
+
+#define FLASH_ACCESS_TIMING 0x0203030F
+
+static int th_link_devices_init(void)
+{
+	th_link_init_gpio();
+	th_link_init_pio();
+	th_link_init_hifpio();
+
+	/*
+	 * the ROM code only sets up the CS0 line,
+	 * we need here to enable the CS1 and CS2 lines as well, to get
+	 * access to all three 64 MiB windows into the flash
+	 */
+	writel(FLASH_ACCESS_TIMING, NETX_PA_MEMCR); /* CS0, paranoia */
+	writel(FLASH_ACCESS_TIMING, NETX_PA_MEMCR + 4); /* CS1 */
+	writel(FLASH_ACCESS_TIMING, NETX_PA_MEMCR + 8); /* CS2 */
+
+	/* 256 MiB flash, but only 192 MiB can be really accessed */
+	netx_add_pflash(192 * SZ_1M);
+
+	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
+	/* Do not overwrite primary env for now */
+	devfs_add_partition("nor0", 0x40000, 0x40000, PARTITION_FIXED, "env0");
+
+	protect_file("/dev/env0", 1);
+
+	netx_add_eth0(&th_link_eth0_data);
+	netx_add_eth1(&th_link_eth1_data);
+
+	armlinux_set_bootparams((void *)NETX_SDRAM_BASE + 0x100);
+	armlinux_set_architecture(MACH_TYPE_THLINK_ETH);
+
+	return 0;
+}
+device_initcall(th_link_devices_init);
+
+static int th_link_mem_init(void)
+{
+	arm_add_mem_device("ram0", NETX_SDRAM_BASE, SZ_256M);
+	return 0;
+}
+mem_initcall(th_link_mem_init);
diff --git a/arch/arm/configs/hilscher_netX_thlink_defconfig b/arch/arm/configs/hilscher_netX_thlink_defconfig
new file mode 100644
index 0000000..654600a
--- /dev/null
+++ b/arch/arm/configs/hilscher_netX_thlink_defconfig
@@ -0,0 +1,39 @@
+CONFIG_ARCH_NETX=y
+CONFIG_MACH_NETXTHLINK=y
+CONFIG_AEABI=y
+CONFIG_TEXT_BASE=0x81f00000
+CONFIG_BROKEN=y
+CONFIG_PROMPT="th-link:"
+CONFIG_LONGHELP=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_PARTITION_DISK=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/netx-th-link/env"
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_NETCONSOLE=y
+# CONFIG_DRIVER_SERIAL_NETX is not set
+CONFIG_DRIVER_NET_NETX=y
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_INTEL is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
+CONFIG_CFI_BUFFER_WRITE=y
diff --git a/arch/arm/mach-netx/Kconfig b/arch/arm/mach-netx/Kconfig
index 8e83417..a0d621a 100644
--- a/arch/arm/mach-netx/Kconfig
+++ b/arch/arm/mach-netx/Kconfig
@@ -3,9 +3,11 @@ if ARCH_NETX
 config ARCH_TEXT_BASE
 	hex
 	default 0x81f00000 if MACH_NXDB500
+	default 0x83f00000 if MACH_NETXTHLINK
 
 config BOARDINFO
 	default "Hilscher Netx nxdb500" if MACH_NXDB500
+	default "Hilscher TH-LINK"     if MACH_NETXTHLINK
 
 config NETX_SDRAM_CTRL
 	hex
@@ -14,6 +16,7 @@ config NETX_SDRAM_CTRL
 	default 0x030D0111 if MACH_NXHMIBB
 	default 0x010D0111 if MACH_NXEB500HMI
 	default 0x030D0001 if MACH_NXHX
+	default 0x030D0321 if MACH_NETXTHLINK
 
 config NETX_SDRAM_TIMING_CTRL
 	hex
@@ -22,6 +25,7 @@ config NETX_SDRAM_TIMING_CTRL
 	default 0x03C13251 if MACH_NXHMIBB
 	default 0x03C13251 if MACH_NXEB500HMI
 	default 0x03C23251 if MACH_NXHX
+	default 0x02b13251 if MACH_NETXTHLINK
 
 config NETX_MEM_CTRL
 	hex
@@ -30,6 +34,7 @@ config NETX_MEM_CTRL
 	default 0x0103030F if MACH_NXHMIBB
 	default 0x0103030F if MACH_NXEB500HMI
 	default 0x0103030F if MACH_NXHX
+	default 0x0203030F if MACH_NETXTHLINK
 
 config NETX_COOKIE
 	hex
@@ -38,6 +43,7 @@ config NETX_COOKIE
 	default 16 if MACH_NXHMIBB
 	default 16 if MACH_NXEB500HMI
 	default 16 if MACH_NXHX
+	default 32 if MACH_NETXTHLINK
 
 choice
 
@@ -51,6 +57,13 @@ config MACH_NXDB500
 	help
 	  Say Y here if you are using the Hilscher Netx nxdb500 board
 
+config MACH_NETXTHLINK
+	bool "Hilscher TH-Link"
+	select HAS_NETX_ETHER
+	select HAS_CFI
+	help
+	  Say Y here if you are using the Hilscher TH-Link platform
+
 endchoice
 
 endif
diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
index ff97af4..f958ee6 100644
--- a/arch/arm/tools/mach-types
+++ b/arch/arm/tools/mach-types
@@ -3963,3 +3963,4 @@ pcats_9307_type_a	MACH_PCATS_9307_TYPE_A	PCATS_9307_TYPE_A	4008
 pcats_9307_type_o	MACH_PCATS_9307_TYPE_O	PCATS_9307_TYPE_O	4009
 pcats_9307_type_r	MACH_PCATS_9307_TYPE_R	PCATS_9307_TYPE_R	4010
 streamplug		MACH_STREAMPLUG		STREAMPLUG		4011
+th_link_eth		MACH_THLINK_ETH	 	THLINK_ETH		4156
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4ZNd-0004wD-Qn
 for barebox@lists.infradead.org; Sun, 10 Feb 2013 16:03:54 +0000
Received: from mail641.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E4B43DC1367
 for <barebox@lists.infradead.org>; Sun, 10 Feb 2013 17:14:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 10 Feb 2013 17:02:37 +0100
Message-Id: <1360512157-22161-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360512157-22161-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130210155819.GU19322@game.jcrosoft.org>
 <1360512157-22161-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] arm: add vexpress board support
To: barebox@lists.infradead.org

detect the cpu model to dynamise the periphs mapping

currently only tested on qemu but should work on real hardware

Cortex-A9

if you use 1GiB of ram you can run the same barebox on Cortex-A15 or Cortex-A9
otherwise use vexpress_ca9_defconfig where the TEXT_BASE is at 0x63f00000

when we will add the relocation support this defconfig will be drop

qemu/arm-softmmu/qemu-system-arm -M vexpress-a9 -m 1024 -smp 1 -kernel build/vexpress/barebox -pflash build/vexpress/flash0 -nographic

Cortex-A15

qemu/arm-softmmu/qemu-system-arm -M vexpress-a15 -m 1024 -smp 1 -kernel build/vexpress/barebox -pflash build/vexpress/flash0 -nographic

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig                               |   10 ++
 arch/arm/Makefile                              |    2 +
 arch/arm/boards/vexpress/Kconfig               |   10 ++
 arch/arm/boards/vexpress/Makefile              |    4 +
 arch/arm/boards/vexpress/config.h              |    5 +
 arch/arm/boards/vexpress/env/config            |   38 +++++++
 arch/arm/boards/vexpress/init.c                |  128 ++++++++++++++++++++++++
 arch/arm/boards/vexpress/lowlevel.c            |   20 ++++
 arch/arm/configs/vexpress_ca9_defconfig        |   61 +++++++++++
 arch/arm/configs/vexpress_defconfig            |   60 +++++++++++
 arch/arm/include/asm/hardware/arm_timer.h      |    5 +
 arch/arm/include/asm/hardware/sp810.h          |   68 +++++++++++++
 arch/arm/mach-vexpress/Kconfig                 |   18 ++++
 arch/arm/mach-vexpress/Makefile                |    3 +
 arch/arm/mach-vexpress/devices.c               |   73 ++++++++++++++
 arch/arm/mach-vexpress/include/mach/clkdev.h   |    7 ++
 arch/arm/mach-vexpress/include/mach/debug_ll.h |   33 ++++++
 arch/arm/mach-vexpress/include/mach/devices.h  |   22 ++++
 arch/arm/mach-vexpress/reset.c                 |   22 ++++
 arch/arm/mach-vexpress/v2m.c                   |   85 ++++++++++++++++
 include/linux/amba/sp805.h                     |   32 ++++++
 21 files changed, 706 insertions(+)
 create mode 100644 arch/arm/boards/vexpress/Kconfig
 create mode 100644 arch/arm/boards/vexpress/Makefile
 create mode 100644 arch/arm/boards/vexpress/config.h
 create mode 100644 arch/arm/boards/vexpress/env/config
 create mode 100644 arch/arm/boards/vexpress/init.c
 create mode 100644 arch/arm/boards/vexpress/lowlevel.c
 create mode 100644 arch/arm/configs/vexpress_ca9_defconfig
 create mode 100644 arch/arm/configs/vexpress_defconfig
 create mode 100644 arch/arm/include/asm/hardware/sp810.h
 create mode 100644 arch/arm/mach-vexpress/Kconfig
 create mode 100644 arch/arm/mach-vexpress/Makefile
 create mode 100644 arch/arm/mach-vexpress/devices.c
 create mode 100644 arch/arm/mach-vexpress/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-vexpress/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-vexpress/include/mach/devices.h
 create mode 100644 arch/arm/mach-vexpress/reset.c
 create mode 100644 arch/arm/mach-vexpress/v2m.c
 create mode 100644 include/linux/amba/sp805.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 28332ec..5ae5bd0 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -105,6 +105,15 @@ config ARCH_VERSATILE
 	select CPU_ARM926T
 	select GPIOLIB
 
+config ARCH_VEXPRESS
+	bool "ARM Vexpres boards"
+	select HAS_DEBUG_LL
+	select CPU_V7
+	select ARM_AMBA
+	select AMBA_SP804
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+
 config ARCH_TEGRA
 	bool "Nvidia Tegra-based boards"
 	select CPU_ARM926T
@@ -125,6 +134,7 @@ source arch/arm/mach-omap/Kconfig
 source arch/arm/mach-pxa/Kconfig
 source arch/arm/mach-samsung/Kconfig
 source arch/arm/mach-versatile/Kconfig
+source arch/arm/mach-vexpress/Kconfig
 source arch/arm/mach-tegra/Kconfig
 
 config ARM_ASM_UNIFIED
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index fcb2969..73631ba 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -63,6 +63,7 @@ machine-$(CONFIG_ARCH_OMAP)		:= omap
 machine-$(CONFIG_ARCH_PXA)		:= pxa
 machine-$(CONFIG_ARCH_SAMSUNG)		:= samsung
 machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
+machine-$(CONFIG_ARCH_VEXPRESS)		:= vexpress
 machine-$(CONFIG_ARCH_TEGRA)		:= tegra
 
 # Board directory name.  This list is sorted alphanumerically
@@ -146,6 +147,7 @@ board-$(CONFIG_MACH_USB_A9260)			:= usb-a926x
 board-$(CONFIG_MACH_USB_A9263)			:= usb-a926x
 board-$(CONFIG_MACH_USB_A9G20)			:= usb-a926x
 board-$(CONFIG_MACH_VERSATILEPB)		:= versatile
+board-$(CONFIG_MACH_VEXPRESS)			:= vexpress
 board-$(CONFIG_MACH_TX25)			:= karo-tx25
 board-$(CONFIG_MACH_TQMA53)			:= tqma53
 board-$(CONFIG_MACH_TX51)			:= karo-tx51
diff --git a/arch/arm/boards/vexpress/Kconfig b/arch/arm/boards/vexpress/Kconfig
new file mode 100644
index 0000000..2428901
--- /dev/null
+++ b/arch/arm/boards/vexpress/Kconfig
@@ -0,0 +1,10 @@
+
+if MACH_VERSATILEPB
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x01000000
+
+config BOARDINFO
+	default "ARM Versatile/PB (ARM926EJ-S)"
+endif
diff --git a/arch/arm/boards/vexpress/Makefile b/arch/arm/boards/vexpress/Makefile
new file mode 100644
index 0000000..98921a4
--- /dev/null
+++ b/arch/arm/boards/vexpress/Makefile
@@ -0,0 +1,4 @@
+obj-y += init.o
+
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/vexpress/config.h b/arch/arm/boards/vexpress/config.h
new file mode 100644
index 0000000..25bb18f
--- /dev/null
+++ b/arch/arm/boards/vexpress/config.h
@@ -0,0 +1,5 @@
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/vexpress/env/config b/arch/arm/boards/vexpress/env/config
new file mode 100644
index 0000000..667dce3
--- /dev/null
+++ b/arch/arm/boards/vexpress/env/config
@@ -0,0 +1,38 @@
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
+# can be either 'nfs', 'tftp' or 'nor'
+kernel_loc=tftp
+# can be either 'net', 'nor' or 'initrd'
+rootfs_loc=initrd
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root.$rootfs_type
+
+#kernelimage=zImage
+kernelimage=uImage
+#kernelimage=Image
+#kernelimage=Image.lzo
+
+nfsroot="$eth0.serverip:/opt/work/busybox/arm9/rootfs_arm"
+
+nor_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
+rootfs_mtdblock_nor=3
+
+autoboot_timeout=3
+
+bootargs="console=ttyAMA0,115200n8 CONSOLE=/dev/ttyAMA0"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;31m[barebox@\h]:\w\e[0m\n# "
+
diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
new file mode 100644
index 0000000..82b4e54
--- /dev/null
+++ b/arch/arm/boards/vexpress/init.c
@@ -0,0 +1,128 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#include <common.h>
+#include <init.h>
+#include <asm/armlinux.h>
+#include <asm/system_info.h>
+#include <generated/mach-types.h>
+#include <mach/devices.h>
+#include <environment.h>
+#include <partition.h>
+#include <sizes.h>
+#include <io.h>
+
+struct vexpress_init {
+	void (*core_init)(void);
+	void (*mem_init)(void);
+	void (*console_init)(void);
+	void (*devices_init)(void);
+};
+
+struct vexpress_init *v2m_init;
+
+static void vexpress_ax_mem_init(void)
+{
+	vexpress_add_ddram(SZ_512M);
+}
+
+#define V2M_SYS_FLASH	0x03c
+
+static void vexpress_ax_devices_init(void)
+{
+	add_cfi_flash_device(0, 0x08000000, SZ_64M, 0);
+	add_cfi_flash_device(1, 0x0c000000, SZ_64M, 0);
+	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, 0x1a000000,
+			64 * 1024, IORESOURCE_MEM, NULL);
+}
+
+static void vexpress_ax_console_init(void)
+{
+	vexpress_register_uart(0);
+	vexpress_register_uart(1);
+	vexpress_register_uart(2);
+	vexpress_register_uart(3);
+}
+
+struct vexpress_init vexpress_init_ax = {
+	.core_init = vexpress_init,
+	.mem_init = vexpress_ax_mem_init,
+	.console_init = vexpress_ax_console_init,
+	.devices_init = vexpress_ax_devices_init,
+};
+
+static void vexpress_a9_mem_init(void)
+{
+	vexpress_a9_add_ddram(SZ_512M, SZ_512M);
+}
+
+static void vexpress_a9_devices_init(void)
+{
+	add_cfi_flash_device(0, 0x40000000, SZ_64M, 0);
+	add_cfi_flash_device(1, 0x44000000, SZ_64M, 0);
+	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, 0x4e000000,
+			64 * 1024, IORESOURCE_MEM, NULL);
+
+	armlinux_set_architecture(MACH_TYPE_VEXPRESS);
+}
+
+static void vexpress_a9_console_init(void)
+{
+	vexpress_a9_register_uart(0);
+	vexpress_a9_register_uart(1);
+	vexpress_a9_register_uart(2);
+	vexpress_a9_register_uart(3);
+}
+
+struct vexpress_init vexpress_init_a9 = {
+	.core_init = vexpress_a9_init,
+	.mem_init = vexpress_a9_mem_init,
+	.console_init = vexpress_a9_console_init,
+	.devices_init = vexpress_a9_devices_init,
+};
+
+static int vexpress_mem_init(void)
+{
+	v2m_init->mem_init();
+
+	return 0;
+}
+mem_initcall(vexpress_mem_init);
+
+static int vexpress_devices_init(void)
+{
+	writel(1, v2m_sysreg_base + V2M_SYS_FLASH);
+	v2m_init->devices_init();
+
+	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
+	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
+
+	armlinux_set_bootparams((void *)(0x00000100));
+
+	return 0;
+}
+device_initcall(vexpress_devices_init);
+
+static int vexpress_console_init(void)
+{
+	v2m_init->console_init();
+
+	return 0;
+}
+console_initcall(vexpress_console_init);
+
+static int vexpress_core_init(void)
+{
+	if (cpu_is_cortex_a9())
+		v2m_init = &vexpress_init_a9;
+	else
+		v2m_init = &vexpress_init_ax;
+
+	v2m_init->core_init();
+
+	return 0;
+}
+postcore_initcall(vexpress_core_init);
diff --git a/arch/arm/boards/vexpress/lowlevel.c b/arch/arm/boards/vexpress/lowlevel.c
new file mode 100644
index 0000000..04ed84b
--- /dev/null
+++ b/arch/arm/boards/vexpress/lowlevel.c
@@ -0,0 +1,20 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/system_info.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	if (cpu_is_cortex_a9())
+		barebox_arm_entry(0x60000000, SZ_512M, 0);
+	else
+		barebox_arm_entry(0x80000000, SZ_512M, 0);
+}
diff --git a/arch/arm/configs/vexpress_ca9_defconfig b/arch/arm/configs/vexpress_ca9_defconfig
new file mode 100644
index 0000000..f16a8ca
--- /dev/null
+++ b/arch/arm/configs/vexpress_ca9_defconfig
@@ -0,0 +1,61 @@
+CONFIG_ARCH_VEXPRESS=y
+CONFIG_MACH_VEXPRESS
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_TEXT_BASE=0x63f00000
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="vexpress: "
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/vexpress/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOO
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_CLK=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_DRIVER_NET_SMC91111=y
+# CONFIG_SPI is not set
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_AMD is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
+CONFIG_FS_TFTP=y
+CONFIG_SHA1=y
+CONFIG_SHA256=y
diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
new file mode 100644
index 0000000..e166078
--- /dev/null
+++ b/arch/arm/configs/vexpress_defconfig
@@ -0,0 +1,60 @@
+CONFIG_ARCH_VEXPRESS=y
+CONFIG_MACH_VEXPRESS
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="vexpress: "
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/vexpress/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOO
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_CLK=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_DRIVER_NET_SMC91111=y
+# CONFIG_SPI is not set
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_AMD is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
+CONFIG_FS_TFTP=y
+CONFIG_SHA1=y
+CONFIG_SHA256=y
diff --git a/arch/arm/include/asm/hardware/arm_timer.h b/arch/arm/include/asm/hardware/arm_timer.h
index 0433279..8a58390 100644
--- a/arch/arm/include/asm/hardware/arm_timer.h
+++ b/arch/arm/include/asm/hardware/arm_timer.h
@@ -12,7 +12,12 @@
  *
  * Integrator AP has 16-bit timers, Integrator CP, Versatile and Realview
  * can have 16-bit or 32-bit selectable via a bit in the control register.
+ *
+ * Every SP804 contains two identical timers.
  */
+#define TIMER_1_BASE	0x00
+#define TIMER_2_BASE	0x20
+
 #define TIMER_LOAD	0x00			/* ACVR rw */
 #define TIMER_VALUE	0x04			/* ACVR ro */
 #define TIMER_CTRL	0x08			/* ACVR rw */
diff --git a/arch/arm/include/asm/hardware/sp810.h b/arch/arm/include/asm/hardware/sp810.h
new file mode 100644
index 0000000..3e3996a
--- /dev/null
+++ b/arch/arm/include/asm/hardware/sp810.h
@@ -0,0 +1,68 @@
+/*
+ * arch/arm/include/asm/hardware/sp810.h
+ *
+ * ARM PrimeXsys System Controller SP810 header file
+ *
+ * Copyright (C) 2009 ST Microelectronics
+ * Viresh Kumar <viresh.linux@gmail.com>
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2. This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#ifndef __ASM_ARM_SP810_H
+#define __ASM_ARM_SP810_H
+
+#include <io.h>
+
+/* sysctl registers offset */
+#define SCCTRL			0x000
+#define SCSYSSTAT		0x004
+#define SCIMCTRL		0x008
+#define SCIMSTAT		0x00C
+#define SCXTALCTRL		0x010
+#define SCPLLCTRL		0x014
+#define SCPLLFCTRL		0x018
+#define SCPERCTRL0		0x01C
+#define SCPERCTRL1		0x020
+#define SCPEREN			0x024
+#define SCPERDIS		0x028
+#define SCPERCLKEN		0x02C
+#define SCPERSTAT		0x030
+#define SCSYSID0		0xEE0
+#define SCSYSID1		0xEE4
+#define SCSYSID2		0xEE8
+#define SCSYSID3		0xEEC
+#define SCITCR			0xF00
+#define SCITIR0			0xF04
+#define SCITIR1			0xF08
+#define SCITOR			0xF0C
+#define SCCNTCTRL		0xF10
+#define SCCNTDATA		0xF14
+#define SCCNTSTEP		0xF18
+#define SCPERIPHID0		0xFE0
+#define SCPERIPHID1		0xFE4
+#define SCPERIPHID2		0xFE8
+#define SCPERIPHID3		0xFEC
+#define SCPCELLID0		0xFF0
+#define SCPCELLID1		0xFF4
+#define SCPCELLID2		0xFF8
+#define SCPCELLID3		0xFFC
+
+#define SCCTRL_TIMEREN0SEL_REFCLK	(0 << 15)
+#define SCCTRL_TIMEREN0SEL_TIMCLK	(1 << 15)
+
+#define SCCTRL_TIMEREN1SEL_REFCLK	(0 << 17)
+#define SCCTRL_TIMEREN1SEL_TIMCLK	(1 << 17)
+
+static inline void sysctl_soft_reset(void __iomem *base)
+{
+	/* switch to slow mode */
+	writel(0x2, base + SCCTRL);
+
+	/* writing any value to SCSYSSTAT reg will reset system */
+	writel(0, base + SCSYSSTAT);
+}
+
+#endif	/* __ASM_ARM_SP810_H */
diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
new file mode 100644
index 0000000..c595494
--- /dev/null
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -0,0 +1,18 @@
+if ARCH_VEXPRESS
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x83f00000
+
+config BOARDINFO
+	default "ARM Vexpress" if MACH_VEXPRESS
+
+choice
+	prompt "ARM Board type"
+
+config MACH_VEXPRESS
+	bool "ARM Vexpress"
+
+endchoice
+
+endif
diff --git a/arch/arm/mach-vexpress/Makefile b/arch/arm/mach-vexpress/Makefile
new file mode 100644
index 0000000..74b4a0f
--- /dev/null
+++ b/arch/arm/mach-vexpress/Makefile
@@ -0,0 +1,3 @@
+obj-y += v2m.o
+obj-y += devices.o
+obj-y += reset.o
diff --git a/arch/arm/mach-vexpress/devices.c b/arch/arm/mach-vexpress/devices.c
new file mode 100644
index 0000000..69c93ef
--- /dev/null
+++ b/arch/arm/mach-vexpress/devices.c
@@ -0,0 +1,73 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#include <common.h>
+
+#include <linux/amba/bus.h>
+
+#include <asm/memory.h>
+
+#include <mach/devices.h>
+
+void vexpress_a9_add_ddram(u32 ddr0_size, u32 ddr1_size)
+{
+	arm_add_mem_device("ram0", 0x60000000, ddr0_size);
+
+	if (ddr1_size)
+		arm_add_mem_device("ram1", 0x80000000, ddr1_size);
+}
+
+
+void vexpress_a9_register_uart(unsigned id)
+{
+	resource_size_t start;
+
+	switch (id) {
+	case 0:
+		start = 0x10009000;
+		break;
+	case 1:
+		start = 0x1000a000;
+		break;
+	case 2:
+		start = 0x1000b000;
+		break;
+	case 3:
+		start = 0x1000c000;
+		break;
+	default:
+		return;
+	}
+	amba_apb_device_add(NULL, "uart-pl011", id, start, 4096, NULL, 0);
+}
+
+void vexpress_add_ddram(u32 size)
+{
+	arm_add_mem_device("ram1", 0x80000000, size);
+}
+
+void vexpress_register_uart(unsigned id)
+{
+	resource_size_t start;
+
+	switch (id) {
+	case 0:
+		start = 0x1c090000;
+		break;
+	case 1:
+		start = 0x1c0a0000;
+		break;
+	case 2:
+		start = 0x1c0b0000;
+		break;
+	case 3:
+		start = 0x1c0c0000;
+		break;
+	default:
+		return;
+	}
+	amba_apb_device_add(NULL, "uart-pl011", id, start, 4096, NULL, 0);
+}
diff --git a/arch/arm/mach-vexpress/include/mach/clkdev.h b/arch/arm/mach-vexpress/include/mach/clkdev.h
new file mode 100644
index 0000000..04b37a8
--- /dev/null
+++ b/arch/arm/mach-vexpress/include/mach/clkdev.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_MACH_CLKDEV_H
+#define __ASM_MACH_CLKDEV_H
+
+#define __clk_get(clk) ({ 1; })
+#define __clk_put(clk) do { } while (0)
+
+#endif
diff --git a/arch/arm/mach-vexpress/include/mach/debug_ll.h b/arch/arm/mach-vexpress/include/mach/debug_ll.h
new file mode 100644
index 0000000..15d6e85
--- /dev/null
+++ b/arch/arm/mach-vexpress/include/mach/debug_ll.h
@@ -0,0 +1,33 @@
+/*
+ * Copyright 2013 Jean-Christophe PLAGNIOL-VILLARD <plagniol@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#ifndef __MACH_DEBUG_LL_H__
+#define   __MACH_DEBUG_LL_H__
+
+#include <linux/amba/serial.h>
+#include <io.h>
+
+#define DEBUG_LL_PHYS_BASE		0x10000000
+#define DEBUG_LL_PHYS_BASE_RS1		0x1c000000
+
+#ifdef MP
+#define UART_BASE DEBUG_LL_PHYS_BASE
+#else
+#define UART_BASE DEBUG_LL_PHYS_BASE_RS1
+#endif
+
+static inline void PUTC_LL(char c)
+{
+	/* Wait until there is space in the FIFO */
+	while (readl(UART_BASE + UART01x_FR) & UART01x_FR_TXFF);
+
+	/* Send the character */
+	writel(c, UART_BASE + UART01x_DR);
+
+	/* Wait to make sure it hits the line, in case we die too soon. */
+	while (readl(UART_BASE + UART01x_FR) & UART01x_FR_TXFF);
+}
+#endif
diff --git a/arch/arm/mach-vexpress/include/mach/devices.h b/arch/arm/mach-vexpress/include/mach/devices.h
new file mode 100644
index 0000000..adeada8
--- /dev/null
+++ b/arch/arm/mach-vexpress/include/mach/devices.h
@@ -0,0 +1,22 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#ifndef __ASM_ARCH_DEVICES_H__
+#define __ASM_ARCH_DEVICES_H__
+
+void vexpress_a9_add_ddram(u32 ddr0_size, u32 ddr1_size);
+void vexpress_add_ddram(u32 size);
+
+void vexpress_a9_register_uart(unsigned id);
+void vexpress_register_uart(unsigned id);
+
+void vexpress_a9_init(void);
+void vexpress_init(void);
+
+extern void *v2m_wdt_base;
+extern void *v2m_sysreg_base;
+
+#endif /* __ASM_ARCH_DEVICES_H__ */
diff --git a/arch/arm/mach-vexpress/reset.c b/arch/arm/mach-vexpress/reset.c
new file mode 100644
index 0000000..ad6e06f
--- /dev/null
+++ b/arch/arm/mach-vexpress/reset.c
@@ -0,0 +1,22 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#include <common.h>
+#include <io.h>
+#include <linux/amba/sp805.h>
+
+#include <mach/devices.h>
+
+void __iomem *v2m_wdt_base;
+
+void reset_cpu(ulong addr)
+{
+	writel(LOAD_MIN, v2m_wdt_base + WDTLOAD);
+	writeb(RESET_ENABLE, v2m_wdt_base + WDTCONTROL);
+
+	while (1)
+		;
+}
diff --git a/arch/arm/mach-vexpress/v2m.c b/arch/arm/mach-vexpress/v2m.c
new file mode 100644
index 0000000..12d5d1a
--- /dev/null
+++ b/arch/arm/mach-vexpress/v2m.c
@@ -0,0 +1,85 @@
+/*
+ * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <linux/amba/bus.h>
+
+#include <asm/hardware/arm_timer.h>
+#include <asm/hardware/sp810.h>
+
+#include <mach/devices.h>
+
+void __iomem *v2m_sysreg_base;
+
+static const char *v2m_osc2_periphs[] = {
+	"mb:uart0", "uart-pl0110",	/* PL011 UART0 */
+	"mb:uart1", "uart-pl0111",	/* PL011 UART1 */
+	"mb:uart2", "uart-pl0112",	/* PL011 UART2 */
+	"mb:uart3", "uart-pl0113",	/* PL011 UART3 */
+};
+
+static void v2m_clk_init(void)
+{
+	struct clk *clk;
+	int i;
+
+	clk = clk_fixed("dummy_apb_pclk", 0);
+	clk_register_clkdev(clk, "apb_pclk", NULL);
+
+	clk = clk_fixed("mb:sp804_clk", 1000000);
+	clk_register_clkdev(clk, NULL, "sp804");
+
+	clk = clk_fixed("mb:osc2", 24000000);
+	for (i = 0; i < ARRAY_SIZE(v2m_osc2_periphs); i++)
+		clk_register_clkdev(clk, NULL, v2m_osc2_periphs[i]);
+
+}
+
+static void v2m_sysctl_init(void __iomem *base)
+{
+	u32 scctrl;
+
+	if (WARN_ON(!base))
+		return;
+
+	/* Select 1MHz TIMCLK as the reference clock for SP804 timers */
+	scctrl = readl(base + SCCTRL);
+	scctrl |= SCCTRL_TIMEREN0SEL_TIMCLK;
+	scctrl |= SCCTRL_TIMEREN1SEL_TIMCLK;
+	writel(scctrl, base + SCCTRL);
+}
+
+static void __init v2m_sp804_init(void __iomem *base)
+{
+	writel(0, base + TIMER_1_BASE + TIMER_CTRL);
+
+	amba_apb_device_add(NULL, "sp804", DEVICE_ID_SINGLE, (resource_size_t)base, 4096, NULL, 0);
+}
+
+void vexpress_a9_init(void)
+{
+	v2m_wdt_base = IOMEM(0x1000f000);
+	v2m_sysreg_base = IOMEM(0x10001000);
+	v2m_sysctl_init(IOMEM(0x10001000));
+	v2m_clk_init();
+
+	v2m_sp804_init(IOMEM(0x10011000));
+}
+
+void vexpress_init(void)
+{
+	v2m_wdt_base = IOMEM(0x1c0f0000);
+	v2m_sysreg_base = IOMEM(0x1c020000);
+	v2m_sysctl_init(IOMEM(0x1c020000));
+	v2m_clk_init();
+
+	v2m_sp804_init(IOMEM(0x1c110000));
+}
diff --git a/include/linux/amba/sp805.h b/include/linux/amba/sp805.h
new file mode 100644
index 0000000..b0ff290
--- /dev/null
+++ b/include/linux/amba/sp805.h
@@ -0,0 +1,32 @@
+/*
+ * Watchdog driver for ARM SP805 watchdog module
+ *
+ * Copyright (C) 2010 ST Microelectronics
+ * Viresh Kumar <viresh.linux@gmail.com>
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2 or later. This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#ifndef __AMBA_SP805_H__
+#define __AMBA_SP805_H__
+
+/* watchdog register offsets and masks */
+#define WDTLOAD			0x000
+	#define LOAD_MIN	0x00000001
+	#define LOAD_MAX	0xFFFFFFFF
+#define WDTVALUE		0x004
+#define WDTCONTROL		0x008
+	/* control register masks */
+	#define	INT_ENABLE	(1 << 0)
+	#define	RESET_ENABLE	(1 << 1)
+#define WDTINTCLR		0x00C
+#define WDTRIS			0x010
+#define WDTMIS			0x014
+	#define INT_MASK	(1 << 0)
+#define WDTLOCK			0xC00
+	#define	UNLOCK		0x1ACCE551
+	#define	LOCK		0x00000001
+
+#endif /* __AMBA_SP805_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

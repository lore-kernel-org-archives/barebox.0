Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAYmt-0005hQ-3J
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 07:20:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Jul 2015 09:19:35 +0200
Message-Id: <1435821576-18638-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435821576-18638-1-git-send-email-s.hauer@pengutronix.de>
References: <1435821576-18638-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: beagleboard: Move to multiimage support
To: Barebox List <barebox@lists.infradead.org>

Breathe some life back into the beagleboard:

- switch to multiimage support
- update config
- initialize early UART for debugging

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagle/Makefile                    |  1 +
 arch/arm/boards/beagle/board.c                     | 13 ++++
 arch/arm/boards/beagle/defaultenv-beagle/boot/mmc  |  5 ++
 .../boards/beagle/defaultenv-beagle/boot/nand-ubi  |  4 ++
 .../beagle/defaultenv-beagle/boot/nand-ubi-dt      |  5 ++
 .../beagle/defaultenv-beagle/init/mtdparts-nand    | 11 +++
 .../beagle/defaultenv-beagle/network/eth0-discover |  5 ++
 arch/arm/boards/beagle/env/boot/mmc                |  5 --
 arch/arm/boards/beagle/env/boot/nand-ubi           |  4 --
 arch/arm/boards/beagle/env/boot/nand-ubi-dt        |  5 --
 arch/arm/boards/beagle/env/init/mtdparts-nand      | 11 ---
 arch/arm/boards/beagle/env/network/eth0-discover   |  5 --
 arch/arm/boards/beagle/lowlevel.c                  | 39 +++++++++--
 arch/arm/configs/omap3530_beagle_defconfig         | 81 +++++++++++++---------
 arch/arm/configs/omap3530_beagle_xload_defconfig   | 17 +++--
 arch/arm/mach-omap/Kconfig                         | 14 ++--
 images/Makefile                                    |  1 +
 images/Makefile.omap3                              | 19 +++++
 18 files changed, 162 insertions(+), 83 deletions(-)
 create mode 100644 arch/arm/boards/beagle/defaultenv-beagle/boot/mmc
 create mode 100644 arch/arm/boards/beagle/defaultenv-beagle/boot/nand-ubi
 create mode 100644 arch/arm/boards/beagle/defaultenv-beagle/boot/nand-ubi-dt
 create mode 100644 arch/arm/boards/beagle/defaultenv-beagle/init/mtdparts-nand
 create mode 100644 arch/arm/boards/beagle/defaultenv-beagle/network/eth0-discover
 delete mode 100644 arch/arm/boards/beagle/env/boot/mmc
 delete mode 100644 arch/arm/boards/beagle/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/beagle/env/boot/nand-ubi-dt
 delete mode 100644 arch/arm/boards/beagle/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/beagle/env/network/eth0-discover
 create mode 100644 images/Makefile.omap3

diff --git a/arch/arm/boards/beagle/Makefile b/arch/arm/boards/beagle/Makefile
index 01c7a25..3bee9a2 100644
--- a/arch/arm/boards/beagle/Makefile
+++ b/arch/arm/boards/beagle/Makefile
@@ -1,2 +1,3 @@
 obj-y += board.o
 lwl-y += lowlevel.o
+bbenv-y += defaultenv-beagle
diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 7756210..b7efe95 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -22,6 +22,7 @@
 #include <linux/sizes.h>
 #include <io.h>
 #include <ns16550.h>
+#include <envfs.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <mach/gpmc.h>
@@ -31,6 +32,7 @@
 #include <i2c/i2c.h>
 #include <linux/err.h>
 #include <usb/ehci.h>
+#include <asm/barebox-arm.h>
 
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
 
@@ -42,6 +44,9 @@
  */
 static int beagle_console_init(void)
 {
+	if (barebox_arm_machine() != MACH_TYPE_OMAP3_BEAGLE)
+		return 0;
+
 	barebox_set_model("Texas Instruments beagle");
 	barebox_set_hostname("beagle");
 
@@ -82,6 +87,9 @@ static struct gpmc_nand_platform_data nand_plat = {
 
 static int beagle_mem_init(void)
 {
+	if (barebox_arm_machine() != MACH_TYPE_OMAP3_BEAGLE)
+		return 0;
+
 	omap_add_ram0(SZ_128M);
 
 	return 0;
@@ -90,6 +98,9 @@ mem_initcall(beagle_mem_init);
 
 static int beagle_devices_init(void)
 {
+	if (barebox_arm_machine() != MACH_TYPE_OMAP3_BEAGLE)
+		return 0;
+
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	omap3_add_i2c1(NULL);
 
@@ -107,6 +118,8 @@ static int beagle_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
 
+	defaultenv_append_directory(defaultenv_beagle);
+
 	return 0;
 }
 device_initcall(beagle_devices_init);
diff --git a/arch/arm/boards/beagle/defaultenv-beagle/boot/mmc b/arch/arm/boards/beagle/defaultenv-beagle/boot/mmc
new file mode 100644
index 0000000..db638f8
--- /dev/null
+++ b/arch/arm/boards/beagle/defaultenv-beagle/boot/mmc
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+global.bootm.image="/boot/zImage"
+#global.bootm.oftree="/boot/oftree"
+global.linux.bootargs.dyn.root="root=mmcblk0p2 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/beagle/defaultenv-beagle/boot/nand-ubi b/arch/arm/boards/beagle/defaultenv-beagle/boot/nand-ubi
new file mode 100644
index 0000000..e0ef904
--- /dev/null
+++ b/arch/arm/boards/beagle/defaultenv-beagle/boot/nand-ubi
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+global.bootm.image="/dev/nand0.kernel.bb"
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/beagle/defaultenv-beagle/boot/nand-ubi-dt b/arch/arm/boards/beagle/defaultenv-beagle/boot/nand-ubi-dt
new file mode 100644
index 0000000..5fc0a6c
--- /dev/null
+++ b/arch/arm/boards/beagle/defaultenv-beagle/boot/nand-ubi-dt
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+global.bootm.image="/dev/nand0.kernel.bb"
+global.bootm.oftree="/dev/nand0.oftree.bb"
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/beagle/defaultenv-beagle/init/mtdparts-nand b/arch/arm/boards/beagle/defaultenv-beagle/init/mtdparts-nand
new file mode 100644
index 0000000..9335bb1
--- /dev/null
+++ b/arch/arm/boards/beagle/defaultenv-beagle/init/mtdparts-nand
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "NAND partitions"
+	exit
+fi
+
+mtdparts="128k(nand0.xload),256k(nand0.barebox)ro,128k(nand0.bareboxenv),128k(nand0.oftree),4M(nand0.kernel),120M(nand0.rootfs),-(nand0.data)"
+kernelname="omap2-nand"
+
+mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/beagle/defaultenv-beagle/network/eth0-discover b/arch/arm/boards/beagle/defaultenv-beagle/network/eth0-discover
new file mode 100644
index 0000000..86d13f5
--- /dev/null
+++ b/arch/arm/boards/beagle/defaultenv-beagle/network/eth0-discover
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+# The beagle board supports a network adapter on USB
+
+usb
diff --git a/arch/arm/boards/beagle/env/boot/mmc b/arch/arm/boards/beagle/env/boot/mmc
deleted file mode 100644
index db638f8..0000000
--- a/arch/arm/boards/beagle/env/boot/mmc
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/boot/zImage"
-#global.bootm.oftree="/boot/oftree"
-global.linux.bootargs.dyn.root="root=mmcblk0p2 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/beagle/env/boot/nand-ubi b/arch/arm/boards/beagle/env/boot/nand-ubi
deleted file mode 100644
index e0ef904..0000000
--- a/arch/arm/boards/beagle/env/boot/nand-ubi
+++ /dev/null
@@ -1,4 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/dev/nand0.kernel.bb"
-global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/beagle/env/boot/nand-ubi-dt b/arch/arm/boards/beagle/env/boot/nand-ubi-dt
deleted file mode 100644
index 5fc0a6c..0000000
--- a/arch/arm/boards/beagle/env/boot/nand-ubi-dt
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/dev/nand0.kernel.bb"
-global.bootm.oftree="/dev/nand0.oftree.bb"
-global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/beagle/env/init/mtdparts-nand b/arch/arm/boards/beagle/env/init/mtdparts-nand
deleted file mode 100644
index 9335bb1..0000000
--- a/arch/arm/boards/beagle/env/init/mtdparts-nand
+++ /dev/null
@@ -1,11 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NAND partitions"
-	exit
-fi
-
-mtdparts="128k(nand0.xload),256k(nand0.barebox)ro,128k(nand0.bareboxenv),128k(nand0.oftree),4M(nand0.kernel),120M(nand0.rootfs),-(nand0.data)"
-kernelname="omap2-nand"
-
-mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/beagle/env/network/eth0-discover b/arch/arm/boards/beagle/env/network/eth0-discover
deleted file mode 100644
index 86d13f5..0000000
--- a/arch/arm/boards/beagle/env/network/eth0-discover
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-# The beagle board supports a network adapter on USB
-
-usb
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index d6e6b9f..30cc1f2 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -1,4 +1,5 @@
 #include <init.h>
+#include <debug_ll.h>
 #include <io.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
@@ -11,6 +12,7 @@
 #include <mach/sdrc.h>
 #include <mach/syslib.h>
 #include <mach/sys_info.h>
+#include <generated/mach-types.h>
 
 /**
  * @brief Do the pin muxing required for Board operation.
@@ -157,6 +159,22 @@ static void sdrc_init(void)
 	return;
 }
 
+static noinline int beagle_board_init_sdram(void)
+{
+	struct barebox_arm_boarddata *bd = (void *)OMAP3_SRAM_SCRATCH_SPACE + 0x10;
+
+	boarddata_create(bd, MACH_TYPE_OMAP3_BEAGLE);
+
+	barebox_arm_entry(0x80000000, SZ_128M, bd);
+}
+
+ENTRY_FUNCTION(start_omap3_beagleboard_sdram, bootinfo, r1, r2)
+{
+	omap3_save_bootinfo((void *)bootinfo);
+
+	beagle_board_init_sdram();
+}
+
 /**
  * @brief The basic entry point for board initialization.
  *
@@ -166,28 +184,37 @@ static void sdrc_init(void)
  *
  * @return void
  */
-static int beagle_board_init(void)
+static noinline int beagle_board_init(void)
 {
 	int in_sdram = omap3_running_in_sdram();
+	struct barebox_arm_boarddata bd;
 
 	if (!in_sdram)
 		omap3_core_init();
 
 	mux_config();
+
+	omap_uart_lowlevel_init((void *)OMAP3_UART3_BASE);
+
 	/* Dont reconfigure SDRAM while running in SDRAM! */
 	if (!in_sdram)
 		sdrc_init();
 
-	return 0;
+	boarddata_create(&bd, MACH_TYPE_OMAP3_BEAGLE);
+
+	barebox_arm_entry(0x80000000, SZ_128M, &bd);
 }
 
-void __naked  __bare_init barebox_arm_reset_vector(uint32_t *data)
+ENTRY_FUNCTION(start_omap3_beagleboard_sram, bootinfo, r1, r2)
 {
-	omap3_save_bootinfo(data);
+	omap3_save_bootinfo((void *)bootinfo);
 
 	arm_cpu_lowlevel_init();
 
-	beagle_board_init();
+	omap3_gp_romcode_call(OMAP3_GP_ROMCODE_API_L2_INVAL, 0);
+
+	relocate_to_current_adr();
+	setup_c();
 
-	barebox_arm_entry(0x80000000, SZ_128M, NULL);
+	beagle_board_init();
 }
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index 3068fbb..070f156 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -1,67 +1,79 @@
 CONFIG_ARCH_OMAP=y
+CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_BEAGLE=y
 CONFIG_THUMB2_BAREBOX=y
-CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x87e00000
-CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="barebox> "
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BLSPEC=y
+CONFIG_IMD_TARGET=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/beagle/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_DIRNAME=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_READLINK=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_RESET_SOURCE=y
+CONFIG_DEBUG_LL=y
+CONFIG_DEBUG_OMAP_UART_PORT=3
+CONFIG_DEBUG_INITCALLS=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_FLASH=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_I2C=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
 CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_NET_USB=y
@@ -81,6 +93,7 @@ CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
 CONFIG_MFD_TWL4030=y
+CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
index 585ee0f..074cc21 100644
--- a/arch/arm/configs/omap3530_beagle_xload_defconfig
+++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
@@ -1,21 +1,25 @@
 CONFIG_ARCH_OMAP=y
 CONFIG_OMAP_BUILD_IFT=y
+CONFIG_OMAP3_USBBOOT=y
+CONFIG_OMAP3_USB_LOADER=y
+CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_BEAGLE=y
 CONFIG_THUMB2_BAREBOX=y
-# CONFIG_CMD_ARM_CPUINFO is not set
-# CONFIG_ARM_EXCEPTIONS is not set
-CONFIG_TEXT_BASE=0x40200000
-CONFIG_MEMORY_LAYOUT_FIXED=y
-CONFIG_STACK_BASE=0x4020F000
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x0
 CONFIG_STACK_SIZE=0xc00
-CONFIG_MALLOC_BASE=0x87BFFF10
+CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_DUMMY=y
+CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="X-load Beagle>"
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_OFDEVICE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
@@ -33,6 +37,7 @@ CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 # CONFIG_MCI_WRITE is not set
 CONFIG_MCI_OMAP_HSMMC=y
+# CONFIG_PINCTRL is not set
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index abf204a..af35975 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -157,6 +157,13 @@ config MACH_AFI_GF
 	  help
 	  Say Y here if you are using afis GF
 
+config MACH_BEAGLE
+	bool "Texas Instrument's Beagle Board"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select ARCH_OMAP3
+	help
+	  Say Y here if you are using Beagle Board
+
 config MACH_BEAGLEBONE
 	bool "Texas Instrument's Beagle Bone"
 	select ARCH_AM33XX
@@ -180,13 +187,6 @@ config MACH_OMAP343xSDP
 	help
 	  Say Y here if you are using SDP343x platform
 
-config MACH_BEAGLE
-	bool "Texas Instrument's Beagle Board"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	select ARCH_OMAP3
-	help
-	  Say Y here if you are using Beagle Board
-
 config MACH_OMAP3EVM
 	bool "Texas Instrument's OMAP3 EVM"
 	select ARCH_OMAP3
diff --git a/images/Makefile b/images/Makefile
index 587cb26..1e1771f 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -105,6 +105,7 @@ include $(srctree)/images/Makefile.imx
 include $(srctree)/images/Makefile.imxhabv4
 include $(srctree)/images/Makefile.mvebu
 include $(srctree)/images/Makefile.mxs
+include $(srctree)/images/Makefile.omap3
 include $(srctree)/images/Makefile.rockchip
 include $(srctree)/images/Makefile.socfpga
 include $(srctree)/images/Makefile.tegra
diff --git a/images/Makefile.omap3 b/images/Makefile.omap3
new file mode 100644
index 0000000..694ec30
--- /dev/null
+++ b/images/Makefile.omap3
@@ -0,0 +1,19 @@
+# %.mlo - convert into mlo image
+# ----------------------------------------------------------------
+quiet_cmd_omap3_mlo_image = MLO     $@
+      cmd_omap3_mlo_image = scripts/omap_signGP -o $@ -l 0x40200000 -c $<
+
+$(obj)/%.omap3_mlo: $(obj)/% FORCE
+	$(call if_changed,omap3_mlo_image)
+
+pblx-$(CONFIG_MACH_BEAGLE) += start_omap3_beagleboard_sdram start_omap3_beagleboard_sram
+FILE_barebox-beagleboard.img = start_omap3_beagleboard_sdram.pblx
+omap3-barebox-$(CONFIG_MACH_BEAGLE) += barebox-beagleboard.img
+FILE_barebox-beagleboard-mlo.img = start_omap3_beagleboard_sram.pblx.omap3_mlo
+omap3-mlo-$(CONFIG_MACH_BEAGLE) += barebox-beagleboard-mlo.img
+
+ifdef CONFIG_OMAP_BUILD_IFT
+image-y += $(omap3-mlo-y)
+else
+image-y += $(omap3-barebox-y)
+endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

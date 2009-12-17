Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLD0z-0003bx-BW
	for barebox@lists.infradead.org; Thu, 17 Dec 2009 09:51:26 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id nBH9pGrL028995
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 17 Dec 2009 03:51:18 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 17 Dec 2009 15:21:14 +0530
Message-Id: <1261043474-31872-3-git-send-email-premi@ti.com>
In-Reply-To: <1261043474-31872-1-git-send-email-premi@ti.com>
References: <1261043474-31872-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 2/2] omap3evm: Minimal default configuration
To: barebox@lists.infradead.org

Created a minimal configuration that just gets the
board up and running.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/configs/omap3_evm_defconfig |  197 ++++++++++++++++++++++++++++++++++
 1 files changed, 197 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/configs/omap3_evm_defconfig

diff --git a/arch/arm/configs/omap3_evm_defconfig b/arch/arm/configs/omap3_evm_defconfig
new file mode 100644
index 0000000..99d1198
--- /dev/null
+++ b/arch/arm/configs/omap3_evm_defconfig
@@ -0,0 +1,197 @@
+#
+# Automatically generated make config: don't edit
+# U-Boot version: 2.0.0-rc10
+# Mon Dec 14 16:16:09 2009
+#
+CONFIG_GENERIC_LINKER_SCRIPT=y
+CONFIG_ARM=y
+
+#
+# System Type
+#
+CONFIG_ARCH_OMAP=y
+#
+# Processor Type
+#
+CONFIG_CPU_32=y
+CONFIG_CPU_V7=y
+CONFIG_CPU_32v7=y
+
+#
+# processor features
+#
+CONFIG_ARCH_TEXT_BASE=0x80e80000
+CONFIG_BOARDINFO="Texas Instrument's OMAP3EVM"
+
+#
+# OMAP Features
+#
+CONFIG_ARCH_OMAP3=y
+CONFIG_OMAP_CONFIG_STACKSIZE=0x00008000
+CONFIG_OMAP_MALLOC_LEN=0x00008000
+CONFIG_OMAP_CLOCK_ALL=y
+CONFIG_OMAP_CLOCK_SOURCE_S32K=y
+CONFIG_OMAP3_CLOCK_CONFIG=y
+# CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
+CONFIG_GPMC=y
+
+#
+# OMAP Platform Features
+#
+CONFIG_MACH_OMAP3EVM=y
+CONFIG_OMAP3EVM_UART1=y
+# CONFIG_OMAP3EVM_UART3 is not set
+CONFIG_HAS_OMAP_NAND=y
+CONFIG_AEABI=y
+
+#
+# Arm specific settings
+#
+CONFIG_CMD_ARM_CPUINFO=y
+# CONFIG_CMDLINE_TAG is not set
+# CONFIG_SETUP_MEMORY_TAGS is not set
+# CONFIG_INITRD_TAG is not set
+# CONFIG_CPU_V7_DCACHE_SKIP is not set
+CONFIG_HAS_KALLSYMS=y
+CONFIG_HAS_MODULES=y
+# CONFIG_CMD_MEMORY is not set
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
+CONFIG_TEXT_BASE=0x40200000
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+# CONFIG_MEMORY_LAYOUT_DEFAULT is not set
+CONFIG_MEMORY_LAYOUT_FIXED=y
+CONFIG_STACK_BASE=0x87BF7F10
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_BASE=0x87BFFF10
+CONFIG_MALLOC_SIZE=0x400000
+# CONFIG_BROKEN is not set
+# CONFIG_EXPERIMENTAL is not set
+CONFIG_MACH_HAS_LOWLEVEL_INIT=y
+CONFIG_MACH_DO_LOWLEVEL_INIT=y
+CONFIG_ARCH_HAS_LOWLEVEL_INIT=y
+CONFIG_PROMPT="OMAP3_EVM> "
+CONFIG_BAUDRATE=115200
+CONFIG_SIMPLE_READLINE=y
+CONFIG_LONGHELP=y
+CONFIG_CBSIZE=1024
+CONFIG_MAXARGS=16
+# CONFIG_SHELL_HUSH is not set
+CONFIG_SHELL_SIMPLE=y
+# CONFIG_CMDLINE_EDITING is not set
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
+CONFIG_CONSOLE_FULL=y
+CONFIG_CONSOLE_ACTIVATE_FIRST=y
+# CONFIG_OF_FLAT_TREE is not set
+# CONFIG_PARTITION is not set
+# CONFIG_DEFAULT_ENVIRONMENT is not set
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
+# CONFIG_CMD_EDIT is not set
+# CONFIG_CMD_EXEC is not set
+# CONFIG_CMD_SLEEP is not set
+# CONFIG_CMD_SAVEENV is not set
+# CONFIG_CMD_LOADENV is not set
+# CONFIG_CMD_EXPORT is not set
+# CONFIG_CMD_PRINTENV is not set
+# CONFIG_CMD_READLINE is not set
+CONFIG_CMD_TRUE=y
+CONFIG_CMD_FALSE=y
+
+#
+# file commands
+#
+CONFIG_CMD_LS=y
+# CONFIG_CMD_RM is not set
+# CONFIG_CMD_CAT is not set
+# CONFIG_CMD_MKDIR is not set
+# CONFIG_CMD_RMDIR is not set
+# CONFIG_CMD_CP is not set
+CONFIG_CMD_PWD=y
+CONFIG_CMD_CD=y
+# CONFIG_CMD_MOUNT is not set
+# CONFIG_CMD_UMOUNT is not set
+
+#
+# console
+#
+CONFIG_CMD_CLEAR=y
+CONFIG_CMD_ECHO=y
+
+#
+# memory
+#
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_CRC is not set
+# CONFIG_CMD_MTEST is not set
+
+#
+# flash
+#
+
+#
+# booting
+#
+# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_BOOTU=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+# CONFIG_CMD_TIMEOUT is not set
+# CONFIG_CMD_PARTITION is not set
+CONFIG_CMD_VERSION=y
+CONFIG_CMD_HELP=y
+CONFIG_CMD_DEVINFO=y
+# CONFIG_NET is not set
+
+#
+# Drivers
+#
+
+#
+# serial drivers
+#
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+
+#
+# SPI drivers
+#
+# CONFIG_SPI is not set
+
+#
+# flash drivers
+#
+
+
+#
+# Filesystem support
+#
+# CONFIG_FS_CRAMFS is not set
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
+CONFIG_CRC16=y
-- 
1.6.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

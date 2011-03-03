Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUG-0003SD-4U
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:18 +0000
Received: by wwj40 with SMTP id 40so1440284wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:11 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:36 +0100
Message-Id: <4d701d3e.9009d80a.2cd3.5e88@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 22/54] Add arch/nios2/configs/generic_defconfig
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/configs/generic_defconfig

---
 arch/nios2/configs/generic_defconfig |  212 ++++++++++++++++++++++++++++++++++
 1 files changed, 212 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/configs/generic_defconfig

diff --git a/arch/nios2/configs/generic_defconfig b/arch/nios2/configs/generic_defconfig
new file mode 100644
index 0000000..76b69da
--- /dev/null
+++ b/arch/nios2/configs/generic_defconfig
@@ -0,0 +1,212 @@
+#
+# Automatically generated make config: don't edit
+# Linux/nios2 2011.02.0 Barebox Configuration
+# Mon Feb 21 22:11:24 2011
+#
+CONFIG_NIOS2=y
+CONFIG_BOARDINFO="Altera Generic Board"
+CONFIG_GENERIC=y
+
+#
+# Board configuration           
+#
+# CONFIG_EARLY_PRINTF is not set
+CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
+CONFIG_GREGORIAN_CALENDER=y
+CONFIG_HAS_KALLSYMS=y
+CONFIG_HAS_MODULES=y
+CONFIG_CMD_MEMORY=y
+CONFIG_ENV_HANDLING=y
+
+#
+# General Settings              
+#
+CONFIG_LOCALVERSION_AUTO=y
+
+#
+# memory layout                 
+#
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+CONFIG_MEMORY_LAYOUT_DEFAULT=y
+# CONFIG_MEMORY_LAYOUT_FIXED is not set
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_SIZE=0x40000
+# CONFIG_BROKEN is not set
+# CONFIG_EXPERIMENTAL is not set
+CONFIG_PROMPT="barebox:"
+CONFIG_BAUDRATE=9600
+CONFIG_LONGHELP=y
+CONFIG_CBSIZE=1024
+CONFIG_MAXARGS=16
+CONFIG_SHELL_HUSH=y
+# CONFIG_SHELL_SIMPLE is not set
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="> "
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_MENU is not set
+# CONFIG_PASSWORD is not set
+CONFIG_DYNAMIC_CRC_TABLE=y
+CONFIG_ERRNO_MESSAGES=y
+CONFIG_TIMESTAMP=y
+CONFIG_CONSOLE_FULL=y
+CONFIG_CONSOLE_ACTIVATE_FIRST=y
+# CONFIG_OF_FLAT_TREE is not set
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/nios2/boards/generic/env"
+# CONFIG_POLLER is not set
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
+# CONFIG_CMD_LOGIN is not set
+# CONFIG_CMD_PASSWD is not set
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
+CONFIG_CMD_CRC_CMP=y
+# CONFIG_CMD_MTEST is not set
+
+#
+# flash                         
+#
+CONFIG_CMD_FLASH=y
+# CONFIG_CMD_UBI is not set
+
+#
+# booting                       
+#
+CONFIG_CMD_BOOTM=y
+CONFIG_CMD_BOOTM_ZLIB=y
+# CONFIG_CMD_BOOTM_BZLIB is not set
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_TEST=y
+CONFIG_CMD_VERSION=y
+CONFIG_CMD_HELP=y
+CONFIG_CMD_DEVINFO=y
+# CONFIG_CMD_UNLZO is not set
+CONFIG_NET=y
+# CONFIG_NET_DHCP is not set
+# CONFIG_NET_NFS is not set
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
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
+CONFIG_DRIVER_SERIAL_ALTERA=y
+# CONFIG_DRIVER_SERIAL_ALTERA_JTAG is not set
+# CONFIG_DRIVER_SERIAL_NS16550 is not set
+CONFIG_MIIDEV=y
+
+#
+# Network drivers               
+#
+CONFIG_DRIVER_NET_TSE=y
+# CONFIG_TSE_USE_DEDICATED_DESC_MEM is not set
+# CONFIG_DRIVER_NET_SMC911X is not set
+# CONFIG_DRIVER_NET_SMC91111 is not set
+
+#
+# SPI drivers                   
+#
+CONFIG_SPI=y
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
+# CONFIG_CFI_BUFFER_WRITE is not set
+# CONFIG_MTD is not set
+# CONFIG_ATA is not set
+# CONFIG_USB is not set
+# CONFIG_USB_GADGET is not set
+# CONFIG_VIDEO is not set
+# CONFIG_MCI is not set
+
+#
+# MFD
+#
+# CONFIG_I2C_MC13892 is not set
+# CONFIG_DRIVER_SPI_MC13783 is not set
+# CONFIG_LED is not set
+
+#
+# Filesystem support            
+#
+# CONFIG_FS_CRAMFS is not set
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
+CONFIG_ZLIB=y
+CONFIG_CRC32=y
+# CONFIG_DIGEST is not set
+# CONFIG_GENERIC_FIND_NEXT_BIT is not set
+CONFIG_PROCESS_ESCAPE_SEQUENCE=y
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

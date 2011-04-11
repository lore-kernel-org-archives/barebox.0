Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9IHT-0006QK-AL
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:39:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:39:46 +0200
Message-Id: <1302532791-20664-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
References: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/12] add panda defconfigs
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/panda_defconfig       |   60 ++++++++++++++++++++++++++++++++
 arch/arm/configs/panda_xload_defconfig |   26 ++++++++++++++
 2 files changed, 86 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/configs/panda_defconfig
 create mode 100644 arch/arm/configs/panda_xload_defconfig

diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
new file mode 100644
index 0000000..38cc958
--- /dev/null
+++ b/arch/arm/configs/panda_defconfig
@@ -0,0 +1,60 @@
+CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP4=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x8f000000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="barebox> "
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pcm049/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_FLASH=y
+# CONFIG_CMD_BOOTM is not set
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
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_SMSC95XX=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_OMAP_GPMC=y
+CONFIG_UBI=y
+CONFIG_USB=y
+CONFIG_USB_EHCI=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/panda_xload_defconfig b/arch/arm/configs/panda_xload_defconfig
new file mode 100644
index 0000000..24452a6
--- /dev/null
+++ b/arch/arm/configs/panda_xload_defconfig
@@ -0,0 +1,26 @@
+CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP4=y
+# CONFIG_OMAP_GPMC is not set
+CONFIG_OMAP_BUILD_IFT=y
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_TEXT_BASE=0x40300000
+CONFIG_MEMORY_LAYOUT_FIXED=y
+CONFIG_STACK_BASE=0x8f000000
+CONFIG_MALLOC_BASE=0x84000000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_PROMPT="barebox> "
+CONFIG_SHELL_NONE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
+# CONFIG_CONSOLE_FULL is not set
+CONFIG_PARTITION=y
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+# CONFIG_COMMAND_SUPPORT is not set
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+# CONFIG_SPI is not set
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_FS_FAT=y
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLUU8-0005Oy-8k
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 08:48:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Sep 2013 10:48:20 +0200
Message-Id: <1379321300-8085-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
References: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/11] ARM: Altera SoCFPGA: Add defconfig files
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/socfpga-xload_defconfig | 30 +++++++++++
 arch/arm/configs/socfpga_defconfig       | 89 ++++++++++++++++++++++++++++++++
 2 files changed, 119 insertions(+)
 create mode 100644 arch/arm/configs/socfpga-xload_defconfig
 create mode 100644 arch/arm/configs/socfpga_defconfig

diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
new file mode 100644
index 0000000..716b2ac
--- /dev/null
+++ b/arch/arm/configs/socfpga-xload_defconfig
@@ -0,0 +1,30 @@
+CONFIG_ARCH_SOCFPGA=y
+CONFIG_ARCH_SOCFPGA_XLOAD=y
+CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT=y
+CONFIG_MACH_SOCFPGA_EBV_SOCRATES=y
+CONFIG_THUMB2_BAREBOX=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+# CONFIG_ARM_EXCEPTIONS is not set
+# CONFIG_MEMINFO is not set
+CONFIG_PBL_IMAGE=y
+CONFIG_PBL_RELOCATABLE=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_DUMMY=y
+CONFIG_RELOCATABLE=y
+CONFIG_SHELL_NONE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+# CONFIG_MCI_WRITE is not set
+CONFIG_MCI_DW=y
+CONFIG_MFD_MC13XXX=y
+CONFIG_EEPROM_AT25=y
+# CONFIG_FS_RAMFS is not set
+# CONFIG_FS_DEVFS is not set
+CONFIG_FS_FAT=y
diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
new file mode 100644
index 0000000..0c5a6a7
--- /dev/null
+++ b/arch/arm/configs/socfpga_defconfig
@@ -0,0 +1,89 @@
+CONFIG_ARCH_SOCFPGA=y
+CONFIG_ARCH_SOCFPGA_FPGA=y
+CONFIG_MACH_SOCFPGA_EBV_SOCRATES=y
+CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_LONGHELP=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_DESIGNWARE=y
+CONFIG_MCI=y
+CONFIG_MCI_DW=y
+CONFIG_MFD_MC13XXX=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_EEPROM_AT25=y
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_GPIO_DESIGNWARE=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

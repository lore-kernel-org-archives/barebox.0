Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SrmBl-0007bW-7g
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 08:34:28 +0000
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Thu, 19 Jul 2012 10:33:50 +0200
Message-Id: <1342686830-30950-2-git-send-email-J.Kilb@phytec.de>
In-Reply-To: <1342686830-30950-1-git-send-email-J.Kilb@phytec.de>
References: <1342686830-30950-1-git-send-email-J.Kilb@phytec.de>
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
Subject: [PATCH] add possibility to mark blocks as bad during write
To: barebox@lists.infradead.org

and update phyCARD-A-L1 defaultconfig to use this
feature.

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 arch/arm/configs/phycard_a_l1_defconfig |  122 ++-----------------------------
 drivers/mtd/nand/Kconfig                |   10 +++
 drivers/mtd/nand/nand-bb.c              |   15 ++++-
 3 files changed, 31 insertions(+), 116 deletions(-)

diff --git a/arch/arm/configs/phycard_a_l1_defconfig b/arch/arm/configs/phycard_a_l1_defconfig
index cf980f7..df0b5a5 100644
--- a/arch/arm/configs/phycard_a_l1_defconfig
+++ b/arch/arm/configs/phycard_a_l1_defconfig
@@ -1,105 +1,33 @@
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-CONFIG_ARM_LINUX=y
 CONFIG_ARCH_OMAP=y
-CONFIG_CPU_32=y
-CONFIG_CPU_V7=y
-CONFIG_CPU_32v7=y
-CONFIG_BOARDINFO="Phytec phyCARD-A-L1"
-CONFIG_ARCH_OMAP3=y
-CONFIG_OMAP_CLOCK_ALL=y
-CONFIG_OMAP_CLOCK_SOURCE_S32K=y
-CONFIG_OMAP3_CLOCK_CONFIG=y
-CONFIG_OMAP3_COPY_CLOCK_SRAM=n
-CONFIG_OMAP_GPMC=y
 CONFIG_MACH_PCAAL1=y
 CONFIG_AEABI=y
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_ARM_EXCEPTIONS=y
-CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-CONFIG_BLOCK=y
-CONFIG_BLOCK_WRITE=y
-CONFIG_LOCALVERSION=""
-CONFIG_LOCALVERSION_AUTO=y
-CONFIG_ENVIRONMENT_VARIABLES=y
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0x85000000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-CONFIG_STACK_SIZE=0x8000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_DLMALLOC=y
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_ARCH_HAS_LOWLEVEL_INIT=y
 CONFIG_PROMPT="phyCARD-A-L1 >"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_PASSWORD=y
-CONFIG_PASSWD_SUM_MD5=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-CONFIG_PARTITION=y
-CONFIG_PARTITION_DISK=y
-CONFIG_PARTITION_DISK_DOS=y
-CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phycard-a-l1/env"
-CONFIG_COMMAND_SUPPORT=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_PASSWD_MODE_STAR=y
 CONFIG_CMD_TIME=y
-CONFIG_CMD_LS=y
-CONFIG_CMD_RM=y
-CONFIG_CMD_CAT=y
-CONFIG_CMD_MKDIR=y
-CONFIG_CMD_RMDIR=y
-CONFIG_CMD_CP=y
-CONFIG_CMD_PWD=y
-CONFIG_CMD_CD=y
-CONFIG_CMD_MOUNT=y
-CONFIG_CMD_UMOUNT=y
-CONFIG_CMD_NAND=y
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_DIGEST=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_SHA256SUM=y
@@ -107,22 +35,15 @@ CONFIG_CMD_SHA224SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_UBI=y
-CONFIG_CMD_BOOTM=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_IMINFO=y
-CONFIG_CMD_BOOTZ=n
-CONFIG_CMD_BOOTU=n
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
@@ -134,49 +55,20 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-CONFIG_MIIDEV=y
 CONFIG_DRIVER_NET_SMC911X=y
-CONFIG_DRIVER_NET_SMC911X_ADDRESS_SHIFT=0
-CONFIG_SPI=n
+# CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
-CONFIG_NAND_WRITE=y
-CONFIG_NAND_ECC_SOFT=y
-CONFIG_NAND_ECC_HW=y
-CONFIG_NAND_ECC_HW_SYNDROME=y
-CONFIG_NAND_ECC_HW_NONE=y
-CONFIG_NAND_INFO=y
-CONFIG_NAND_READ_OOB=y
-CONFIG_NAND_BBT=y
-CONFIG_NAND_OOB_DEVICE=y
+CONFIG_NAND_MARK_BAD=y
 CONFIG_NAND_OMAP_GPMC=y
-CONFIG_MTD_NAND_IDS=y
+CONFIG_MTD_NAND_VERIFY_WRITE=y
 CONFIG_UBI=y
-CONFIG_DISK=y
-CONFIG_DISK_WRITE=y
-CONFIG_DISK_ATA=y
 CONFIG_DISK_INTF_PLATFORM_IDE=y
 CONFIG_MCI=y
-CONFIG_MCI_INFO=y
-CONFIG_MCI_WRITE=y
 CONFIG_MCI_OMAP_HSMMC=y
 CONFIG_FS_CRAMFS=y
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_PARTITION_NEED_MTD=y
-CONFIG_ZLIB=y
 CONFIG_BZLIB=y
-CONFIG_PROCESS_ESCAPE_SEQUENCE=y
 CONFIG_LZO_DECOMPRESS=y
-CONFIG_FDT=y
-CONFIG_OFTREE=y
-CONFIG_CRC32=y
-CONFIG_CRC16=y
-CONFIG_DIGEST=y
-CONFIG_MD5=y
-CONFIG_SHA1=y
-CONFIG_SHA224=y
-CONFIG_SHA256=y
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 3f90643..e597c3e 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -48,6 +48,16 @@ config NAND_BBT
 	  Say y here to include support for bad block tables. This speeds
 	  up the process of checking for bad blocks
 
+config NAND_MARK_BAD
+	bool
+	default n
+	prompt "Support marking erronoues blocks as bad"
+	help
+	  If an erase/write error occurs during copying data into a *.bb
+	  partition, the block will be maked as bad.
+	  Attention!! Use with caution,only when your NAND driver is known
+	  to work correctly.
+
 config NAND_IMX
 	bool
 	prompt "i.MX NAND driver"
diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index 519337e..1cc21c3 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -112,8 +112,21 @@ static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
 
 		now = min(count, (size_t)(bb->info.erasesize));
 		ret = cdev_write(parent, buf, now, cur_ofs, 0);
-		if (ret < 0)
+		if (ret < 0) {
+#ifdef CONFIG_NAND_MARK_BAD
+			debug("marking bad block at 0x%08x\n", cur_ofs);
+			ret = cdev_ioctl(parent, MEMSETBADBLOCK, &cur_ofs);
+			if (ret < 0)
+				return ret;
+
+			bb->offset += bb->info.erasesize;
+			cur_ofs += bb->info.erasesize;
+			continue;
+#else
 			return ret;
+#endif
+		}
+
 		buf += now;
 		count -= now;
 		cur_ofs += now;
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

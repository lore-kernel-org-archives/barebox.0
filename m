Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0STd-000089-EZ
 for barebox@lists.infradead.org; Wed, 30 Jan 2013 07:53:02 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 10F3CBF0F6
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 16:07:22 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Wed, 30 Jan 2013 08:52:53 +0100
Message-Id: <1359532373-24086-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH v2] pcm049: clean up defconfig
To: barebox@lists.infradead.org

add BAREBOX_MAX_IMAGE_SIZE and rebuild defconfig with savedefconfig

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/configs/pcm049_defconfig       |   19 +++++++++++--------
 arch/arm/configs/pcm049_xload_defconfig |    3 ++-
 2 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/arch/arm/configs/pcm049_defconfig b/arch/arm/configs/pcm049_defconfig
index adb600f..19df95a 100644
--- a/arch/arm/configs/pcm049_defconfig
+++ b/arch/arm/configs/pcm049_defconfig
@@ -1,13 +1,12 @@
 CONFIG_ARCH_OMAP=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_ARCH_OMAP4=y
 CONFIG_MACH_PCM049=y
 CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x8f000000
 CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
 CONFIG_LONGHELP=y
@@ -21,11 +20,12 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pcm049/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIME=y
+CONFIG_CMD_AUTOMOUNT=y
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_IOMEM=y
@@ -36,7 +36,6 @@ CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
@@ -45,25 +44,29 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+CONFIG_SMSC_PHY=y
 CONFIG_DRIVER_NET_SMC911X=y
 # CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_OMAP=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_OMAP_GPMC=y
 CONFIG_UBI=y
+CONFIG_USB=y
 CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_I2C_TWL6030=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
 CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/pcm049_xload_defconfig b/arch/arm/configs/pcm049_xload_defconfig
index b6d3a7a..189c040 100644
--- a/arch/arm/configs/pcm049_xload_defconfig
+++ b/arch/arm/configs/pcm049_xload_defconfig
@@ -1,11 +1,12 @@
 CONFIG_ARCH_OMAP=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
 CONFIG_ARCH_OMAP4=y
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_PCM049=y
-CONFIG_AEABI=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 # CONFIG_ARM_EXCEPTIONS is not set
+# CONFIG_MEMINFO is not set
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x40300000
 CONFIG_MEMORY_LAYOUT_FIXED=y
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9906-0008Ba-VE
 for barebox@lists.infradead.org; Tue, 13 Aug 2013 07:26:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 Aug 2013 09:26:12 +0200
Message-Id: <1376378772-25649-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
References: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] ARM: mvebu: cubox: Update defconfig
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/solidrun_cubox_defconfig | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/solidrun_cubox_defconfig b/arch/arm/configs/solidrun_cubox_defconfig
index 40f5c0d..eca7d7f 100644
--- a/arch/arm/configs/solidrun_cubox_defconfig
+++ b/arch/arm/configs/solidrun_cubox_defconfig
@@ -1,18 +1,23 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="dove-cubox"
 CONFIG_ARCH_MVEBU=y
 CONFIG_ARCH_DOVE=y
-CONFIG_AEABI=y
+CONFIG_THUMB2_BAREBOX=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
 CONFIG_LONGHELP=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEBUG_LL=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
@@ -22,6 +27,8 @@ CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_LET=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_GLOBAL=y
 CONFIG_CMD_AUTOMOUNT=y
@@ -35,6 +42,8 @@ CONFIG_CMD_LOADY=y
 CONFIG_CMD_LOADS=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_SHA256SUM=y
@@ -45,6 +54,7 @@ CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
+CONFIG_FLEXIBLE_BOOTARGS=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
@@ -52,6 +62,8 @@ CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_SPI=y
@@ -61,6 +73,7 @@ CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
 CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SPI_MVEBU=y
 CONFIG_I2C=y
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

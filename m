Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp8.mail.ru ([94.100.176.53])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Txbie-0002UD-Qb
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 11:08:45 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 22 Jan 2013 15:08:35 +0400
Message-Id: <1358852915-17983-5-git-send-email-shc_work@mail.ru>
In-Reply-To: <1358852915-17983-1-git-send-email-shc_work@mail.ru>
References: <1358852915-17983-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 5/5] ARM: ccmx51: Update defconfig
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/configs/ccmx51_defconfig |   25 ++++++++++++++++---------
 1 files changed, 16 insertions(+), 9 deletions(-)

diff --git a/arch/arm/configs/ccmx51_defconfig b/arch/arm/configs/ccmx51_defconfig
index d14de55..9677403 100644
--- a/arch/arm/configs/ccmx51_defconfig
+++ b/arch/arm/configs/ccmx51_defconfig
@@ -2,54 +2,61 @@ CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX51=y
 CONFIG_MACH_CCMX51=y
 CONFIG_AEABI=y
+CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/ccxmx51/env"
+CONFIG_DEBUG_LL=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_NANDTEST=y
+CONFIG_CMD_MTEST=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
 CONFIG_CMD_I2C=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_CLK=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
 CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_DRIVER_NET_FEC_IMX=y
-CONFIG_DRIVER_SPI_IMX=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_IMX=y
 CONFIG_USB=y
+CONFIG_USB_IMX_CHIPIDEA=y
 CONFIG_USB_EHCI=y
+CONFIG_USB_ULPI=y
+CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
-# CONFIG_MCI_WRITE is not set
 CONFIG_MCI_IMX_ESDHC=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
+CONFIG_LZO_DECOMPRESS=y
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

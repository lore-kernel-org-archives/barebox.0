Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRjZX-0004vX-FU
 for barebox@lists.infradead.org; Sun, 11 Oct 2020 22:12:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Oct 2020 00:12:00 +0200
Message-Id: <20201011221200.9023-11-a.fatoum@pengutronix.de>
In-Reply-To: <20201011221200.9023-1-a.fatoum@pengutronix.de>
References: <20201011221200.9023-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/11] sandbox: defconfig: enable new generic features
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Recent commits have modified sandbox for easier support of many common
features:

- block devices
- watchdogs
- reset source
- reboot mode
- barebox state

Enable those in defconfig along with some other useful options.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/configs/sandbox_defconfig | 45 ++++++++++++++++++++++++--
 1 file changed, 43 insertions(+), 2 deletions(-)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index c343f053faff..ca24d81acac7 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -2,20 +2,34 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PARTITION=y
+CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_COMPRESSION_GZIP=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/sandbox/board/env"
+CONFIG_STATE=y
+CONFIG_STATE_CRYPTO=y
+CONFIG_RESET_SOURCE=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_POLLER=y
+CONFIG_CMD_SLICE=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_SAVES=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
@@ -39,14 +53,18 @@ CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_PASSWD=y
 CONFIG_CMD_SPLASH=y
+CONFIG_CMD_FBTEST=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
 CONFIG_CMD_MM=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
@@ -56,18 +74,31 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_POWEROFF=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_WD=y
 CONFIG_CMD_2048=y
+CONFIG_CMD_KEYSTORE=y
+CONFIG_CMD_LINUX_EXEC=y
+CONFIG_CMD_OF_DIFF=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OF_FIXUP_STATUS=y
+CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
+CONFIG_CMD_STATE=y
+CONFIG_CMD_DHRYSTONE=y
 CONFIG_CMD_SPD_DECODE=y
+CONFIG_CMD_SEED=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_SNTP=y
+CONFIG_NET_FASTBOOT=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
+CONFIG_OF_OVERLAY_LIVE=y
 CONFIG_DRIVER_NET_TAP=y
 CONFIG_DRIVER_SPI_GPIO=y
 CONFIG_I2C=y
@@ -76,6 +107,9 @@ CONFIG_MTD=y
 CONFIG_MTD_M25P80=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_MFD_SYSCON=y
+CONFIG_STATE_DRV=y
+CONFIG_UBOOTVAR=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
@@ -84,9 +118,12 @@ CONFIG_LED_GPIO_BICOLOR=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_EEPROM_AT25=y
 CONFIG_EEPROM_AT24=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_POLLER=y
 # CONFIG_PINCTRL is not set
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=y
+CONFIG_SYSCON_REBOOT_MODE=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
@@ -94,12 +131,17 @@ CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
+CONFIG_FS_JFFS2=y
 CONFIG_FS_BPKFS=y
 CONFIG_FS_UIMAGEFS=y
+CONFIG_FS_PSTORE=y
+CONFIG_FS_PSTORE_CONSOLE=y
 CONFIG_FS_SQUASHFS=y
+CONFIG_FS_UBOOTVARFS=y
 CONFIG_BZLIB=y
 CONFIG_LZ4_DECOMPRESS=y
 CONFIG_XZ_DECOMPRESS=y
+CONFIG_BASE64=y
 CONFIG_LZO_DECOMPRESS=y
 CONFIG_BMP=y
 CONFIG_PNG=y
@@ -112,4 +154,3 @@ CONFIG_BAREBOX_LOGO_240=y
 CONFIG_BAREBOX_LOGO_320=y
 CONFIG_BAREBOX_LOGO_400=y
 CONFIG_BAREBOX_LOGO_640=y
-CONFIG_DIGEST_HMAC_GENERIC=y
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

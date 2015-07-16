Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFePf-0002x7-Oh
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:21:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 10:20:40 +0200
Message-Id: <1437034840-10473-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] sandbox: Update defconfig
To: Barebox List <barebox@lists.infradead.org>

The sandbox defconfig hasn't been updated for a long time. This enables
tons of features since the binary size is not relevant at all for sandbox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/sandbox/configs/sandbox_defconfig | 64 +++++++++++++++++++++++++++++++++-
 1 file changed, 63 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index ec045f7..7e494a6 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -1,40 +1,102 @@
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
 CONFIG_PARTITION=y
+CONFIG_DEFAULT_COMPRESSION_GZIP=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/sandbox/board/env"
 CONFIG_DEBUG_INFO=y
+CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
+CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTM is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_CMP=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA224SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_SHA384SUM=y
+CONFIG_CMD_SHA512SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_2048=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OF_DISPLAY_TIMINGS=y
 CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_SPD_DECODE=y
 CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_DRIVER_NET_TAP=y
 # CONFIG_SPI is not set
+CONFIG_VIDEO=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
 # CONFIG_PINCTRL is not set
 CONFIG_FS_CRAMFS=y
+CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_FS_BPKFS=y
+CONFIG_FS_UIMAGEFS=y
+CONFIG_BZLIB=y
+CONFIG_LZ4_DECOMPRESS=y
+CONFIG_XZ_DECOMPRESS=y
+CONFIG_LZO_DECOMPRESS=y
+CONFIG_BMP=y
+CONFIG_PNG=y
+CONFIG_FONT_8x16=y
+CONFIG_FONT_7x14=y
+CONFIG_FONT_MINI_4x6=y
+CONFIG_BAREBOX_LOGO=y
+CONFIG_BAREBOX_LOGO_64=y
+CONFIG_BAREBOX_LOGO_240=y
+CONFIG_BAREBOX_LOGO_320=y
+CONFIG_BAREBOX_LOGO_400=y
+CONFIG_BAREBOX_LOGO_640=y
+CONFIG_DIGEST_MD5_GENERIC=y
+CONFIG_DIGEST_SHA1_GENERIC=y
+CONFIG_DIGEST_SHA224_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
+CONFIG_DIGEST_SHA384_GENERIC=y
+CONFIG_DIGEST_SHA512_GENERIC=y
+CONFIG_DIGEST_HMAC_GENERIC=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

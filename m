Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4Bux-0006U3-NH
 for barebox@lists.infradead.org; Thu, 25 Dec 2014 17:09:47 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 25 Dec 2014 18:09:05 +0100
Message-Id: <1419527345-9301-8-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
References: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 8/8] ARM: imx233-olinuxino: update defconfig
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/configs/imx233-olinuxino_defconfig | 100 ++++++++++++++++++++--------
 1 file changed, 72 insertions(+), 28 deletions(-)

diff --git a/arch/arm/configs/imx233-olinuxino_defconfig b/arch/arm/configs/imx233-olinuxino_defconfig
index 75b5911..5aed6a9 100644
--- a/arch/arm/configs/imx233-olinuxino_defconfig
+++ b/arch/arm/configs/imx233-olinuxino_defconfig
@@ -1,52 +1,89 @@
 CONFIG_ARCH_MXS=y
 CONFIG_MACH_IMX233_OLINUXINO=y
+CONFIG_MXS_OCOTP=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_BROKEN=y
-CONFIG_EXPERIMENTAL=y
-CONFIG_MODULES=y
-CONFIG_LONGHELP=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BLSPEC=y
+CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/imx233-olinuxino/env"
-CONFIG_BAREBOXENV_TARGET=y
+CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_INFO=y
-CONFIG_ENABLE_FLASH_NOISE=y
-CONFIG_ENABLE_PARTITION_NOISE=y
-CONFIG_ENABLE_DEVICE_NOISE=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_BOOTZ=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_NET=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_CMP=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA224SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
-CONFIG_NET_NFS=y
+CONFIG_CMD_HOST=y
 CONFIG_CMD_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_2048=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_SERIAL_AUART=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_SMSC95XX=y
-CONFIG_DISK_INTF_PLATFORM_IDE=y
+# CONFIG_SPI is not set
 CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
@@ -56,8 +93,15 @@ CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MXS=y
 CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
 CONFIG_KEYBOARD_GPIO=y
 CONFIG_MXS_APBH_DMA=y
+CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_ZLIB=y
+CONFIG_LZO_DECOMPRESS=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

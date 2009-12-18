Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4e-0001Kw-PL
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:48:08 +0100
Message-Id: <1261151305-18627-20-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-19-git-send-email-s.hauer@pengutronix.de>
References: <1261151305-18627-1-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-2-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-3-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-4-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-5-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-6-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-7-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-8-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-9-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-10-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-11-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-12-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-13-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-14-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-15-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-16-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-17-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-18-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-19-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/36] ipe337: update defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/configs/ipe337_defconfig |   27 +++++++++++++++++++--------
 1 files changed, 19 insertions(+), 8 deletions(-)

diff --git a/arch/blackfin/configs/ipe337_defconfig b/arch/blackfin/configs/ipe337_defconfig
index 16bf2c2..fd4ff66 100644
--- a/arch/blackfin/configs/ipe337_defconfig
+++ b/arch/blackfin/configs/ipe337_defconfig
@@ -1,7 +1,7 @@
 #
 # Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc5-git
-# Thu Jul  3 10:25:25 2008
+# barebox version: 2.0.0-rc10
+# Fri Dec 18 11:53:16 2009
 #
 CONFIG_BLACKFIN=y
 CONFIG_BF561=y
@@ -22,6 +22,7 @@ CONFIG_ENV_HANDLING=y
 #
 # General Settings              
 #
+CONFIG_LOCALVERSION_AUTO=y
 
 #
 # memory layout                 
@@ -37,8 +38,6 @@ CONFIG_MALLOC_SIZE=0x400000
 # CONFIG_EXPERIMENTAL is not set
 CONFIG_PROMPT="barebox:"
 CONFIG_BAUDRATE=115200
-CONFIG_CMDLINE_EDITING=y
-# CONFIG_AUTO_COMPLETE is not set
 CONFIG_LONGHELP=y
 CONFIG_CBSIZE=1024
 CONFIG_MAXARGS=16
@@ -46,9 +45,12 @@ CONFIG_SHELL_HUSH=y
 # CONFIG_SHELL_SIMPLE is not set
 # CONFIG_GLOB is not set
 CONFIG_PROMPT_HUSH_PS2="> "
+CONFIG_CMDLINE_EDITING=y
+# CONFIG_AUTO_COMPLETE is not set
 CONFIG_DYNAMIC_CRC_TABLE=y
 CONFIG_ERRNO_MESSAGES=y
 CONFIG_TIMESTAMP=y
+CONFIG_CONSOLE_FULL=y
 CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
@@ -76,8 +78,9 @@ CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_HELP=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_TRUE=y
+CONFIG_CMD_FALSE=y
 
 #
 # file commands                 
@@ -111,7 +114,6 @@ CONFIG_CMD_CRC=y
 # flash                         
 #
 CONFIG_CMD_FLASH=y
-# CONFIG_CMD_NAND is not set
 
 #
 # booting                       
@@ -125,11 +127,12 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_TEST=y
+CONFIG_CMD_VERSION=y
+CONFIG_CMD_HELP=y
+CONFIG_CMD_DEVINFO=y
 CONFIG_NET=y
-CONFIG_NET_BOOTP=y
 CONFIG_NET_DHCP=y
 # CONFIG_NET_RARP is not set
-# CONFIG_NET_SNTP is not set
 # CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
@@ -150,12 +153,14 @@ CONFIG_MIIPHY=y
 #
 CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_DRIVER_NET_SMC911X_ADDRESS_SHIFT=1
+# CONFIG_DRIVER_NET_SMC91111 is not set
 
 #
 # SPI drivers                   
 #
 CONFIG_SPI=y
 # CONFIG_DRIVER_SPI_MC13783 is not set
+# CONFIG_I2C is not set
 
 #
 # flash drivers                 
@@ -165,10 +170,16 @@ CONFIG_DRIVER_CFI=y
 CONFIG_DRIVER_CFI_OLD=y
 CONFIG_CFI_BUFFER_WRITE=y
 # CONFIG_NAND is not set
+# CONFIG_USB is not set
+# CONFIG_USB_GADGET is not set
+# CONFIG_VIDEO is not set
 
 #
 # Filesystem support            
 #
 # CONFIG_FS_CRAMFS is not set
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
 CONFIG_ZLIB=y
 CONFIG_CRC32=y
+# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

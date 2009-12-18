Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4e-0001Kx-Nv
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:48:03 +0100
Message-Id: <1261151305-18627-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-14-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/36] pcm030: Update defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/configs/pcm030_defconfig |   27 +++++++++++++++++++--------
 1 files changed, 19 insertions(+), 8 deletions(-)

diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
index a03e7aa..efdfb52 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -1,7 +1,7 @@
 #
 # Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc5-git
-# Thu Jul  3 09:49:23 2008
+# barebox version: 2.0.0-rc10
+# Fri Dec 18 11:53:12 2009
 #
 CONFIG_BOARDINFO="Phytec Phycore mpc5200b tiny"
 CONFIG_ARCH_TEXT_BASE=0x01000000
@@ -28,6 +28,7 @@ CONFIG_CMD_MEMORY=y
 #
 # General Settings              
 #
+CONFIG_LOCALVERSION_AUTO=y
 
 #
 # memory layout                 
@@ -44,8 +45,6 @@ CONFIG_MALLOC_SIZE=0x400000
 # CONFIG_RELOCATABLE is not set
 CONFIG_PROMPT="barebox:"
 CONFIG_BAUDRATE=115200
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
 CONFIG_LONGHELP=y
 CONFIG_CBSIZE=1024
 CONFIG_MAXARGS=16
@@ -53,9 +52,12 @@ CONFIG_SHELL_HUSH=y
 # CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="> "
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
 CONFIG_DYNAMIC_CRC_TABLE=y
 CONFIG_ERRNO_MESSAGES=y
 CONFIG_TIMESTAMP=y
+CONFIG_CONSOLE_FULL=y
 CONFIG_CONSOLE_ACTIVATE_FIRST=y
 CONFIG_EARLY_CONSOLE_BAUDRATE=115200
 CONFIG_OF_FLAT_TREE=y
@@ -83,8 +85,9 @@ CONFIG_CMD_SLEEP=y
 # CONFIG_CMD_LOADENV is not set
 # CONFIG_CMD_EXPORT is not set
 # CONFIG_CMD_PRINTENV is not set
-CONFIG_CMD_HELP=y
 # CONFIG_CMD_READLINE is not set
+CONFIG_CMD_TRUE=y
+CONFIG_CMD_FALSE=y
 
 #
 # file commands                 
@@ -118,7 +121,6 @@ CONFIG_CMD_MEMINFO=y
 # flash                         
 #
 CONFIG_CMD_FLASH=y
-# CONFIG_CMD_NAND is not set
 
 #
 # booting                       
@@ -133,11 +135,12 @@ CONFIG_CMD_GO=y
 # CONFIG_CMD_PARTITION is not set
 CONFIG_CMD_TEST=y
 # CONFIG_CMD_REGINFO is not set
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
@@ -157,6 +160,7 @@ CONFIG_MIIPHY=y
 # Network drivers               
 #
 # CONFIG_DRIVER_NET_SMC911X is not set
+# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_MPC5200=y
 
 #
@@ -164,6 +168,7 @@ CONFIG_DRIVER_NET_MPC5200=y
 #
 CONFIG_SPI=y
 # CONFIG_DRIVER_SPI_MC13783 is not set
+# CONFIG_I2C is not set
 
 #
 # flash drivers                 
@@ -174,11 +179,17 @@ CONFIG_DRIVER_CFI=y
 CONFIG_DRIVER_CFI_OLD=y
 # CONFIG_CFI_BUFFER_WRITE is not set
 # CONFIG_NAND is not set
+# CONFIG_USB is not set
+# CONFIG_USB_GADGET is not set
+# CONFIG_VIDEO is not set
 
 #
 # Filesystem support            
 #
 CONFIG_FS_CRAMFS=y
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
 CONFIG_ZLIB=y
 CONFIG_BZLIB=y
 CONFIG_CRC32=y
+# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

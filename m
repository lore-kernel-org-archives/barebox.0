Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1VDqj8-0003D8-WB
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:56:03 +0200
Message-Id: <1377500163-28962-23-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/22] ARM: beaglebone: update defconfig
To: barebox@lists.infradead.org

- compile in thumb2 mode for a smaller binary
- increase TEXT_BASE to get more memory space
- set malloc size to zero for autodetection
- enable some more commands
- disable MCI_STARTUP, it's no longer needed and saves some time
  during boot

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_beaglebone_defconfig | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/arch/arm/configs/am335x_beaglebone_defconfig b/arch/arm/configs/am335x_beaglebone_defconfig
index 4e37e01..4bcee24 100644
--- a/arch/arm/configs/am335x_beaglebone_defconfig
+++ b/arch/arm/configs/am335x_beaglebone_defconfig
@@ -1,10 +1,13 @@
 CONFIG_ARCH_OMAP=y
 CONFIG_ARCH_AM33XX=y
-CONFIG_AEABI=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x81000000
+CONFIG_TEXT_BASE=0x8f000000
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
 CONFIG_LONGHELP=y
@@ -25,14 +28,13 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_TIME=y
-CONFIG_CMD_DIRNAME=y
 CONFIG_CMD_LN=y
-CONFIG_CMD_READLINK=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MM=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_MD5SUM=y
@@ -45,13 +47,17 @@ CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_I2C=y
 CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_DETECT=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
@@ -61,8 +67,9 @@ CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_NET_CPSW=y
 # CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_OMAP=y
 CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

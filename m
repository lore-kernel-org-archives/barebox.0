Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wm2Mj-00079h-Cw
 for barebox@lists.infradead.org; Sun, 18 May 2014 14:47:06 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Sun, 18 May 2014 16:46:28 +0200
Message-Id: <1400424390-24736-3-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1400424390-24736-1-git-send-email-m.olbrich@pengutronix.de>
References: <1400424390-24736-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: mini2440: update defconfig
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/arm/configs/friendlyarm_mini2440_defconfig | 34 ++++++++++++-------------
 1 file changed, 16 insertions(+), 18 deletions(-)

diff --git a/arch/arm/configs/friendlyarm_mini2440_defconfig b/arch/arm/configs/friendlyarm_mini2440_defconfig
index ed11014..353f1db 100644
--- a/arch/arm/configs/friendlyarm_mini2440_defconfig
+++ b/arch/arm/configs/friendlyarm_mini2440_defconfig
@@ -7,37 +7,35 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0x33e00000
 CONFIG_BROKEN=y
 CONFIG_PROMPT="mini2440:"
-CONFIG_LONGHELP=y
-CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/friendlyarm-mini2440/env"
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_GPIO=y
-CONFIG_NET=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_NET=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
 CONFIG_USB=y
 CONFIG_USB_OHCI=y
-CONFIG_DRIVER_VIDEO_S3C24XX=y
 CONFIG_MCI=y
 CONFIG_MCI_S3C=y
+CONFIG_FS_TFTP=y
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

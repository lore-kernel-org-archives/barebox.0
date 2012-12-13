Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjC9R-0001ng-5e
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 17:00:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2012 18:00:44 +0100
Message-Id: <1355418044-27452-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
References: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] ARM i.MX pcm038: Update defconfig for chipidea driver
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/pcm038_defconfig |    9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/configs/pcm038_defconfig b/arch/arm/configs/pcm038_defconfig
index 13e2451..e2f5388 100644
--- a/arch/arm/configs/pcm038_defconfig
+++ b/arch/arm/configs/pcm038_defconfig
@@ -2,7 +2,6 @@ CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND=y
 CONFIG_ARCH_IMX27=y
 CONFIG_MACH_PCM038=y
-CONFIG_IMX_CLKO=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
@@ -16,8 +15,6 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_PARTITION=y
-CONFIG_PARTITION_DISK=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pcm038/env"
 CONFIG_CMD_EDIT=y
@@ -32,7 +29,6 @@ CONFIG_CMD_TIME=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
@@ -40,16 +36,16 @@ CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
@@ -71,6 +67,7 @@ CONFIG_USB=y
 CONFIG_USB_IMX_CHIPIDEA=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
+CONFIG_USB_STORAGE=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX=y
 CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

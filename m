Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arroyo.ext.ti.com ([192.94.94.40])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWPsa-0005IJ-PL
 for barebox@lists.infradead.org; Mon, 21 May 2012 10:30:22 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id q4LAUIRp018613
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 05:30:19 -0500
Received: from DBDE70.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q4LAUITk022759
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 16:00:18 +0530 (IST)
From: Anand Gadiyar <gadiyar@ti.com>
Date: Mon, 21 May 2012 16:00:13 +0530
Message-ID: <1337596213-15239-5-git-send-email-gadiyar@ti.com>
In-Reply-To: <1337596213-15239-1-git-send-email-gadiyar@ti.com>
References: <1337596213-15239-1-git-send-email-gadiyar@ti.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] panda: update defconfig for i2c and led support
To: barebox@lists.infradead.org
Cc: Anand Gadiyar <gadiyar@ti.com>

Enable I2C and LED support in defconfig.

Signed-off-by: Anand Gadiyar <gadiyar@ti.com>
---
 arch/arm/configs/panda_defconfig |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
index 68cc11e..0b2d423 100644
--- a/arch/arm/configs/panda_defconfig
+++ b/arch/arm/configs/panda_defconfig
@@ -19,7 +19,6 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/panda/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
@@ -43,6 +42,8 @@ CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_LED=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
@@ -54,11 +55,16 @@ CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_SMSC95XX=y
 # CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_OMAP=y
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

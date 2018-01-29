Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.89 #1 (Red Hat Linux))
 id 1eg96n-0008Dc-I7
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 13:04:29 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D2C7EA004B1
 for <barebox@lists.infradead.org>; Mon, 29 Jan 2018 14:04:23 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Mon, 29 Jan 2018 14:04:10 +0100
Message-Id: <1517231051-12129-2-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1517231051-12129-1-git-send-email-d.schultz@phytec.de>
References: <1517231051-12129-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 2/3] ARM: configs: am335x_defconfig: Reorder configs
To: barebox@lists.infradead.org

These configs were added directly in the config file and not with
menuconfig. Reorder these like menuconfig would place them.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/configs/am335x_defconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
index 5a236fb..09dde90 100644
--- a/arch/arm/configs/am335x_defconfig
+++ b/arch/arm/configs/am335x_defconfig
@@ -29,12 +29,14 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_STATE=y
 CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_CMD_MMC_EXTCSD=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GO=y
@@ -87,7 +89,6 @@ CONFIG_CMD_OF_DISPLAY_TIMINGS=y
 CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
-CONFIG_CMD_MMC_EXTCSD=y
 CONFIG_CMD_STATE=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
@@ -124,6 +125,7 @@ CONFIG_USB_MUSB_GADGET=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_STATE_DRV=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
@@ -143,5 +145,3 @@ CONFIG_FS_FAT_LFN=y
 CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
 CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
-CONFIG_STATE=y
-CONFIG_STATE_DRV=y
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

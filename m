Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk6Fj-0006rJ-Lf
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 09:13:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Sep 2016 11:12:48 +0200
Message-Id: <1473844368-13030-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1473844368-13030-1-git-send-email-s.hauer@pengutronix.de>
References: <1473844368-13030-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/12] ARM: vincell_defconfig: make smaller
To: Barebox List <barebox@lists.infradead.org>

The image built with vincell_defconfig has become too big to fit
into the SoC internal SRAM. Make it smaller by disabling UBIFS
support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/vincell_defconfig | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/configs/vincell_defconfig b/arch/arm/configs/vincell_defconfig
index 83862de..81bfbed 100644
--- a/arch/arm/configs/vincell_defconfig
+++ b/arch/arm/configs/vincell_defconfig
@@ -104,7 +104,6 @@ CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
 CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
-CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
 CONFIG_STATE_DRV=y
 CONFIG_EEPROM_AT25=y
@@ -112,5 +111,4 @@ CONFIG_EEPROM_AT24=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_IMX=y
 CONFIG_FS_TFTP=y
-CONFIG_FS_UBIFS=y
-CONFIG_FS_UBIFS_COMPRESSION_LZO=y
+CONFIG_LZO_DECOMPRESS=y
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

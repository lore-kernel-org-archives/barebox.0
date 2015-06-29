Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z9RQi-0007vt-Ai
 for barebox@lists.infradead.org; Mon, 29 Jun 2015 05:16:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Jun 2015 07:16:03 +0200
Message-Id: <1435554963-30272-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: m25p80: Fix Kconfig dependencies
To: Barebox List <barebox@lists.infradead.org>

The m25p80 driver now depends on MTD_SPI_NOR which is disabled in all
defconfigs, so this effectively disables the m25p80 driver in all
defconfigs. Fix this by selecting MTD_SPI_NOR which is library code
without further dependencies. Also let m25p80 depend on SPI because
it needs the SPI code and won't link without it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/devices/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/devices/Kconfig b/drivers/mtd/devices/Kconfig
index 345c348..9c3925b 100644
--- a/drivers/mtd/devices/Kconfig
+++ b/drivers/mtd/devices/Kconfig
@@ -21,7 +21,8 @@ config MTD_DATAFLASH_WRITE_VERIFY
 
 config MTD_M25P80
 	tristate "Support most SPI Flash chips (AT26DF, M25P, W25X, ...)"
-	depends on MTD_SPI_NOR
+	depends on SPI
+	select MTD_SPI_NOR
 	help
 	  This enables access to most modern SPI flash chips, used for
 	  program and data storage. Series supported include Atmel AT26DF,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

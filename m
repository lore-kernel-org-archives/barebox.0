Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQihF-00008y-Oa
 for barebox@lists.infradead.org; Sun, 07 Sep 2014 20:04:26 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Sun,  7 Sep 2014 17:02:45 -0300
Message-Id: <1410120165-1760-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH] nand: orion: Limit to Kirkwood platform
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

This driver is only available on Kirkwood SoCs, so add proper dependency.

Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/mtd/nand/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index ccf1f9c..c345847 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -93,7 +93,7 @@ config NAND_OMAP_GPMC
 config NAND_ORION
 	bool
 	prompt "Orion NAND driver"
-	depends on ARCH_MVEBU
+	depends on ARCH_KIRKWOOD
 	help
 	  Support for the Orion NAND controller, present in Kirkwood SoCs.
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gK2oj-0006Pd-V4
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 14:58:59 +0000
From: Bastian Krause <bst@pengutronix.de>
Date: Tue,  6 Nov 2018 15:58:06 +0100
Message-Id: <20181106145806.15952-1-bst@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mtd: nand_denali: update compatible
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>

190a1c6e47 ("dts: update to v4.18-rc3") changed the compatible of the
Denali NAND controller. Update the compatible in the barebox driver
accordingly.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 drivers/mtd/nand/nand_denali_dt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_denali_dt.c b/drivers/mtd/nand/nand_denali_dt.c
index 2c6b188094..e3024549cd 100644
--- a/drivers/mtd/nand/nand_denali_dt.c
+++ b/drivers/mtd/nand/nand_denali_dt.c
@@ -86,7 +86,7 @@ out_disable_clk:
 
 static __maybe_unused struct of_device_id denali_nand_compatible[] = {
 	{
-		.compatible = "denali,denali-nand-dt"
+		.compatible = "altr,socfpga-denali-nand"
 	}, {
 		/* sentinel */
 	}
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

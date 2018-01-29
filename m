Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.89 #1 (Red Hat Linux))
 id 1eg96n-0008Di-I8
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 13:04:28 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 13E0CA0050F
 for <barebox@lists.infradead.org>; Mon, 29 Jan 2018 14:04:24 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Mon, 29 Jan 2018 14:04:11 +0100
Message-Id: <1517231051-12129-3-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 3/3] drivers: mtd: nand: omap: Return stat value
To: barebox@lists.infradead.org

The read page function should return the total count of flipped bits,
otherwise the caller always thinks no bitflip occured.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index e18ce63..38f4960 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -712,7 +712,7 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 	else
 		mtd->ecc_stats.corrected += stat;
 
-	return 0;
+	return stat;
 }
 
 static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

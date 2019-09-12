Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8LD0-0000AC-Kl
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 09:16:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Sep 2019 11:16:07 +0200
Message-Id: <20190912091607.32196-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: nand: Fix retrieving nand_chip from mtd_info
To: Barebox List <barebox@lists.infradead.org>

With 76b6f74c53 we begin embedding a struct mtd_info into struct
nand_chip. With this mtd_to_nand() must be changed accordingly.

Fixes: 76b6f74c53 ("mtd: nand: Embed struct mtd_info into struct nand_chip")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/mtd/nand.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 762f9c4f2a..401f630570 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -803,7 +803,7 @@ const struct nand_sdr_timings *onfi_async_timing_mode_to_sdr_timings(int mode);
 
 static inline struct nand_chip *mtd_to_nand(struct mtd_info *mtd)
 {
-	return mtd->priv;
+	return container_of(mtd, struct nand_chip, mtd);
 }
 
 #endif /* __LINUX_MTD_NAND_H */
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

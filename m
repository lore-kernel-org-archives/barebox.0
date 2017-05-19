Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dBiUm-0004xC-3h
 for barebox@lists.infradead.org; Fri, 19 May 2017 14:03:10 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4DCEBA00353
 for <barebox@lists.infradead.org>; Fri, 19 May 2017 16:03:31 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 19 May 2017 16:02:37 +0200
Message-Id: <1495202557-24290-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH] imx-bbu-nand-fcb: add support for imx6ull
To: barebox@lists.infradead.org

The i.MX 6ull secures the fcb with bch 40. This is identical to i.MX 6ul.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 common/imx-bbu-nand-fcb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 5d3d3f7..7218c5e 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -441,7 +441,7 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
 		goto err;
 	}
 
-	if (cpu_is_mx6ul())
+	if (cpu_is_mx6ul() || cpu_is_mx6ull())
 		fcb = read_fcb_bch(rawpage, 40);
 	else
 		fcb = read_fcb_hamming_13_8(rawpage);
@@ -899,8 +899,8 @@ static int imx_bbu_write_fcbs_dbbts(struct mtd_info *mtd, struct fcb_block *fcb)
 
 	fcb_raw_page = xzalloc(mtd->writesize + mtd->oobsize);
 
-	if (cpu_is_mx6ul()) {
-		/* 40 bit BCH, for i.MX6UL */
+	if (cpu_is_mx6ul() || cpu_is_mx6ull()) {
+		/* 40 bit BCH, for i.MX6UL(L) */
 		encode_bch_ecc(fcb_raw_page + 32, fcb, 40);
 	} else {
 		memcpy(fcb_raw_page + 12, fcb, sizeof(struct fcb_block));
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abkFy-0005W3-S5
 for barebox@lists.infradead.org; Fri, 04 Mar 2016 07:34:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Mar 2016 08:34:12 +0100
Message-Id: <1457076852-16471-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1457076852-16471-1-git-send-email-s.hauer@pengutronix.de>
References: <1457076852-16471-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] imx-bbu-nand-fcb: Remove double write of first fcb
To: Barebox List <barebox@lists.infradead.org>

The first FCB page was written twice. One time is enough, drop the
second write.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 6e33ee1..3eb9e9b 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -461,10 +461,6 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	 */
 	memset(fcb_raw_page + mtd->writesize, 0xFF, 2);
 
-	ret = raw_write_page(mtd, fcb_raw_page, mtd->erasesize);
-	if (ret)
-		goto out;
-
 	dbbt->Checksum = 0;
 	dbbt->FingerPrint = 0x54424244;
 	dbbt->Version = 0x01000000;
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

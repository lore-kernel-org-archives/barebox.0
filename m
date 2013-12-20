Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vu0mu-0004X4-W8
 for barebox@lists.infradead.org; Fri, 20 Dec 2013 14:10:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Dec 2013 15:10:19 +0100
Message-Id: <1387548620-26893-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1387548620-26893-1-git-send-email-s.hauer@pengutronix.de>
References: <1387548620-26893-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] mtd: fix mtd_read return value
To: barebox@lists.infradead.org

mtd->read returns the number of bitflips as positive numbers.
Instead of returning these numbers Return -EUCLEAN when the bitflip
threshold has been reached, 0 otherwise.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 0abe667..fc2ac00 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -313,7 +313,20 @@ int mtd_block_markbad(struct mtd_info *mtd, loff_t ofs)
 int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
 		u_char *buf)
 {
-	return mtd->read(mtd, from, len, retlen, buf);
+	int ret_code;
+	*retlen = 0;
+
+	/*
+	 * In the absence of an error, drivers return a non-negative integer
+	 * representing the maximum number of bitflips that were corrected on
+	 * any one ecc region (if applicable; zero otherwise).
+	 */
+	ret_code = mtd->read(mtd, from, len, retlen, buf);
+	if (unlikely(ret_code < 0))
+		return ret_code;
+	if (mtd->ecc_strength == 0)
+		return 0;	/* device lacks ecc */
+	return ret_code >= mtd->bitflip_threshold ? -EUCLEAN : 0;
 }
 
 int mtd_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

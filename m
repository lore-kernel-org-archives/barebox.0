Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1anSNa-0005RR-1M
 for barebox@lists.infradead.org; Tue, 05 Apr 2016 14:54:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 Apr 2016 16:54:28 +0200
Message-Id: <1459868068-8175-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: peb: Allow to write subpages
To: Barebox List <barebox@lists.infradead.org>

When checking for valid write sizes we havbe to take the subpage shift
into account to allow writing subpages. Without it ubiformat may not
work properly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
reported-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/mtd/peb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index 46696ce..639dc0e 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -377,7 +377,7 @@ int mtd_peb_write(struct mtd_info *mtd, const void *buf, int pnum, int offset,
 		return -EINVAL;
 	if (len <= 0)
 		return -EINVAL;
-	if (len % mtd->writesize)
+	if (len % (mtd->writesize >> mtd->subpage_sft))
 		return -EINVAL;
 	if (mtd_peb_is_bad(mtd, pnum))
 		return -EINVAL;
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

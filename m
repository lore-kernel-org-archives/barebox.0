Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vu0mq-0004Wx-4G
 for barebox@lists.infradead.org; Fri, 20 Dec 2013 14:10:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Dec 2013 15:10:18 +0100
Message-Id: <1387548620-26893-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] mtd: fix wrong return values in cdev read
To: barebox@lists.infradead.org

mtd->read returns the number of bitflips as positive numbers.
Instead of returning these numbers Return -EUCLEAN when the bitflip
threshold has been reached, 0 otherwise.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 33f900e..0abe667 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -75,12 +75,11 @@ static ssize_t mtd_op_read(struct cdev *cdev, void* buf, size_t count,
 			offset, count);
 
 	ret = mtd_read(mtd, offset, count, &retlen, buf);
-
-	if(ret) {
-		printf("err %d\n", ret);
+	if (ret < 0)
 		return ret;
-	}
-	return retlen;
+	if (mtd->ecc_strength == 0)
+		return retlen;	/* device lacks ecc */
+	return ret >= mtd->bitflip_threshold ? -EUCLEAN : retlen;
 }
 
 #define NOTALIGNED(x) (x & (mtd->writesize - 1)) != 0
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3JSS-0004tD-LL
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 11:18:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Sep 2018 13:18:15 +0200
Message-Id: <20180921111820.29742-4-s.hauer@pengutronix.de>
In-Reply-To: <20180921111820.29742-1-s.hauer@pengutronix.de>
References: <20180921111820.29742-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] mtd: mtdraw: do not write empty buffers
To: Barebox List <barebox@lists.infradead.org>

When a page is completely 0xff then do not write it since users
expect pages to be writable when they are empty.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/mtdraw.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 3ad9de80a2..bfae795bd7 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -165,6 +165,9 @@ static ssize_t mtdraw_blkwrite(struct mtd_info *mtd, const void *buf,
 	struct mtd_oob_ops ops;
 	int ret;
 
+	if (mtd_buf_all_ff(buf, mtd->writesize + mtd->oobsize))
+		return 0;
+
 	ops.mode = MTD_OPS_RAW;
 	ops.ooboffs = 0;
 	ops.datbuf = (void *)buf;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

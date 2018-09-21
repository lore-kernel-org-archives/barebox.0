Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3JSC-0004sc-L7
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 11:18:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Sep 2018 13:18:13 +0200
Message-Id: <20180921111820.29742-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] mtd: mtdraw: Simplify error path
To: Barebox List <barebox@lists.infradead.org>

We do not need a printf when writing fails, it's the callers job
to report this. Remove printf and simplify the error path a bit.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/mtdraw.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 4f7c3b836c..d0dde0dee2 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -146,11 +146,11 @@ static ssize_t mtdraw_read(struct cdev *cdev, void *buf, size_t count,
 		count -= ret;
 		retlen += ret;
 	}
+
 	if (ret < 0)
-		printf("err %zd\n", ret);
-	else
-		ret = retlen;
-	return ret;
+		return ret;
+
+	return retlen;
 }
 
 #ifdef CONFIG_MTD_WRITE
@@ -231,12 +231,10 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 		retlen += count;
 	}
 
-	if (ret < 0) {
-		printf("err %d\n", ret);
+	if (ret < 0)
 		return ret;
-	} else {
-		return retlen;
-	}
+
+	return retlen;
 }
 
 static int mtdraw_erase(struct cdev *cdev, loff_t count, loff_t offset)
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

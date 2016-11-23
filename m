Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c9U27-0008Kf-Rw
 for barebox@lists.infradead.org; Wed, 23 Nov 2016 09:40:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Nov 2016 10:39:33 +0100
Message-Id: <20161123093937.15711-6-s.hauer@pengutronix.de>
In-Reply-To: <20161123093937.15711-1-s.hauer@pengutronix.de>
References: <20161123093937.15711-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] mtd: peb: Fix format specifier
To: Barebox List <barebox@lists.infradead.org>

The correct format specifier for size_t is %zu. Use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/peb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index 73f90bb..66227d4 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -397,7 +397,7 @@ int mtd_peb_write(struct mtd_info *mtd, const void *buf, int pnum, int offset,
 	addr = (loff_t)pnum * mtd->erasesize + offset;
 	err = mtd_write(mtd, addr, len, &written, buf);
 	if (err) {
-		dev_err(&mtd->class_dev, "error %d while writing %d bytes to PEB %d:%d, written %zd bytes\n",
+		dev_err(&mtd->class_dev, "error %d while writing %d bytes to PEB %d:%d, written %zu bytes\n",
 			err, len, pnum, offset, written);
 	} else {
 		if (written != len)
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

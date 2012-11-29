Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Te9OA-0000C0-IO
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 19:03:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 20:03:06 +0100
Message-Id: <1354215786-25615-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354215786-25615-1-git-send-email-s.hauer@pengutronix.de>
References: <1354215786-25615-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] mtd core: call driver write function with complete buffer
To: barebox@lists.infradead.org

mtd->write is supposed to loop around pages internally, no need
to do this in mtd_write. This fixes a huge write performance drop
with the m25p80 driver when it was converted to a mtd driver recently.
Since mtd->writesize is 1 for this driver mtd_write ended up doing
single byte writes on the flash.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c |   56 +++-------------------------------------------------
 1 file changed, 3 insertions(+), 53 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 8601787..b5916da 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -62,65 +62,15 @@ static 	ssize_t mtd_read(struct cdev *cdev, void* buf, size_t count,
 #define MTDPGALG(x) ((x) & ~(mtd->writesize - 1))
 
 #ifdef CONFIG_MTD_WRITE
-static int all_ff(const void *buf, int len)
-{
-	int i;
-	const uint8_t *p = buf;
-
-	for (i = 0; i < len; i++)
-		if (p[i] != 0xFF)
-			return 0;
-	return 1;
-}
-
 static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
 			  loff_t _offset, ulong flags)
 {
 	struct mtd_info *mtd = cdev->priv;
-	size_t retlen, now;
-	int ret = 0;
-	void *wrbuf = NULL;
-	size_t count = _count;
-	unsigned long offset = _offset;
-
-	if (NOTALIGNED(offset)) {
-		printf("offset 0x%0lx not page aligned\n", offset);
-		return -EINVAL;
-	}
-
-	dev_dbg(cdev->dev, "write: offset: 0x%08lx count: 0x%zx\n", offset, count);
-	while (count) {
-		now = count > mtd->writesize ? mtd->writesize : count;
-
-		if (NOTALIGNED(now)) {
-			dev_dbg(cdev->dev, "not aligned: %d %ld\n",
-				mtd->writesize,
-				(offset % mtd->writesize));
-			wrbuf = xmalloc(mtd->writesize);
-			memset(wrbuf, 0xff, mtd->writesize);
-			memcpy(wrbuf + (offset % mtd->writesize), buf, now);
-			if (!all_ff(wrbuf, mtd->writesize))
-				ret = mtd->write(mtd, MTDPGALG(offset),
-						  mtd->writesize, &retlen,
-						  wrbuf);
-			free(wrbuf);
-		} else {
-			if (!all_ff(buf, mtd->writesize))
-				ret = mtd->write(mtd, offset, now, &retlen,
-						  buf);
-			dev_dbg(cdev->dev,
-				"offset: 0x%08lx now: 0x%zx retlen: 0x%zx\n",
-				offset, now, retlen);
-		}
-		if (ret)
-			goto out;
+	size_t retlen;
+	int ret;
 
-		offset += now;
-		count -= now;
-		buf += now;
-	}
+	ret = mtd->write(mtd, _offset, _count, &retlen, buf);
 
-out:
 	return ret ? ret : _count;
 }
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

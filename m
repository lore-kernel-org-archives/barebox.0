Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TgIau-0005Bv-4i
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 17:17:13 +0000
Received: from mail186.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 667D2FF9F8F
 for <barebox@lists.infradead.org>; Wed,  5 Dec 2012 18:28:49 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  5 Dec 2012 18:15:20 +0100
Message-Id: <1354727720-23063-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121205165337.GJ8327@game.jcrosoft.org>
References: <20121205165337.GJ8327@game.jcrosoft.org>
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
Subject: [PATCH 1/1] mtd: nand: fix unaligned write support
To: barebox@lists.infradead.org

via cdev we may write unaligned data the code was drop in the commit
0a4b1c7e440a81819eb2137f923573a3055dc7a2
mtd core: call driver write function with complete buffer

which is true for spi flashes but the code is still mandatory on nand

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/core.c            |    3 --
 drivers/mtd/nand/nand_write.c |   66 ++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 65 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index b5916da..8908f22 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -58,9 +58,6 @@ static 	ssize_t mtd_read(struct cdev *cdev, void* buf, size_t count,
 	return retlen;
 }
 
-#define NOTALIGNED(x) (x & (mtd->writesize - 1)) != 0
-#define MTDPGALG(x) ((x) & ~(mtd->writesize - 1))
-
 #ifdef CONFIG_MTD_WRITE
 static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
 			  loff_t _offset, ulong flags)
diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index 5ed04ce..e49db43 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -363,7 +363,7 @@ int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
  *
  * NAND write with ECC
  */
-int nand_write(struct mtd_info *mtd, loff_t to, size_t len,
+int __nand_write(struct mtd_info *mtd, loff_t to, size_t len,
 			  size_t *retlen, const uint8_t *buf)
 {
 	struct nand_chip *chip = mtd->priv;
@@ -386,6 +386,70 @@ int nand_write(struct mtd_info *mtd, loff_t to, size_t len,
 	return ret;
 }
 
+static int all_ff(const void *buf, int len)
+{
+	int i;
+	const uint8_t *p = buf;
+
+	for (i = 0; i < len; i++)
+		if (p[i] != 0xFF)
+			return 0;
+	return 1;
+}
+
+#define MTD_NOTALIGNED(x) (x & (mtd->writesize - 1)) != 0
+#define MTDPGALG(x) ((x) & ~(mtd->writesize - 1))
+
+int nand_write(struct mtd_info *mtd, loff_t _offset, size_t _count,
+			  size_t *retlen, const uint8_t *buf)
+{
+	size_t now;
+	int ret = 0;
+	void *wrbuf = NULL;
+	size_t count = _count;
+	unsigned long offset = _offset;
+
+	if (MTD_NOTALIGNED(offset)) {
+		printf("offset 0x%0lx not page aligned\n", offset);
+		return -EINVAL;
+	}
+
+	dev_dbg(mtd->parent, "write: offset: 0x%08lx count: 0x%zx\n", offset, count);
+	while (count) {
+		now = count > mtd->writesize ? mtd->writesize : count;
+
+		if (MTD_NOTALIGNED(now)) {
+			dev_dbg(mtd->parent, "not aligned: %d %ld\n",
+				mtd->writesize,
+				(offset % mtd->writesize));
+			wrbuf = xmalloc(mtd->writesize);
+			memset(wrbuf, 0xff, mtd->writesize);
+			memcpy(wrbuf + (offset % mtd->writesize), buf, now);
+			if (!all_ff(wrbuf, mtd->writesize))
+				ret = __nand_write(mtd, MTDPGALG(offset),
+						  mtd->writesize, retlen,
+						  wrbuf);
+			free(wrbuf);
+		} else {
+			if (!all_ff(buf, mtd->writesize))
+				ret = __nand_write(mtd, offset, now, retlen,
+						  buf);
+			dev_dbg(mtd->parent,
+				"offset: 0x%08lx now: 0x%zx retlen: 0x%zx\n",
+				offset, now, *retlen);
+		}
+		if (ret)
+			goto out;
+
+		offset += now;
+		count -= now;
+		buf += now;
+	}
+
+out:
+	return ret ? ret : _count;
+}
+
 /**
  * nand_do_write_oob - [MTD Interface] NAND write out-of-band
  * @mtd:	MTD device structure
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghC1x-0005fd-Su
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 11:28:22 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23993981AbfAIL2PWreAC (ORCPT
 <rfc822;barebox@lists.infradead.org>); Wed, 9 Jan 2019 12:28:15 +0100
Date: Wed, 9 Jan 2019 12:28:14 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20190109112814.GA918@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH] mtd: core: Fix erase area alignment for non power of 2
 erasesize
To: Barebox List <barebox@lists.infradead.org>

Devices as AT45DB161 DataFlash uses non power of two page size (528)
while present alignment algorithm relies on erasesize being power
of 2.
Fix that by introducing helper functions rounding to any multiply.
Note that logic is sligthly changed to be consistent as ending
address is moved forward to include also last byte meant to be
erased while previous implementation moved it backward.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/core.c     | 28 ++++++++++++++++++++++------
 include/linux/kernel.h |  5 +++++
 2 files changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index d3cbe502f..f86b70176 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -141,15 +141,31 @@ static struct mtd_erase_region_info *mtd_find_erase_region(struct mtd_info *mtd,
 	return NULL;
 }
 
+static inline loff_t esize_up(loff_t x, uint32_t erasesize)
+{
+	uint32_t mod = DIV_ROUND_DOWN_ULL(x, erasesize);
+	if (mod == 0)
+		return x;
+	return x + erasesize - mod;
+}
+
+static inline loff_t esize_down(loff_t x, uint32_t erasesize)
+{
+	uint32_t mod = DIV_ROUND_DOWN_ULL(x, erasesize);
+	if (mod == 0)
+		return x;
+	return x - mod;
+}
+
 static int mtd_erase_align(struct mtd_info *mtd, loff_t *count, loff_t *offset)
 {
 	struct mtd_erase_region_info *e;
 	loff_t ofs;
 
 	if (mtd->numeraseregions == 0) {
-		ofs = *offset & ~(loff_t)(mtd->erasesize - 1);
-		*count += (*offset - ofs);
-		*count = ALIGN(*count, mtd->erasesize);
+		ofs = esize_down(*offset, mtd->erasesize);
+		*count += *offset - ofs;
+		*count = esize_up(*count, mtd->erasesize);
 		*offset = ofs;
 		return 0;
 	}
@@ -158,14 +174,14 @@ static int mtd_erase_align(struct mtd_info *mtd, loff_t *count, loff_t *offset)
 	if (!e)
 		return -EINVAL;
 
-	ofs = *offset & ~(e->erasesize - 1);
-	*count += (*offset - ofs);
+	ofs = esize_down(*offset, e->erasesize);
+	*count += *offset - ofs;
 
 	e = mtd_find_erase_region(mtd, *offset + *count);
 	if (!e)
 		return -EINVAL;
 
-	*count = ALIGN(*count, e->erasesize);
+	*count = esize_up(*count, e->erasesize);
 	*offset = ofs;
 
 	return 0;
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index cc6d6f746..ee0b48e08 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -55,6 +55,11 @@
 
 #define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
 
+#define DIV_ROUND_DOWN_ULL(ll, d) \
+	({ unsigned long long _tmp = (ll); do_div(_tmp, d); _tmp; })
+
+#define DIV_ROUND_UP_ULL(ll, d)		DIV_ROUND_DOWN_ULL((ll) + (d) - 1, (d))
+
 #define DIV_ROUND_CLOSEST(x, divisor)(			\
 {							\
 	typeof(divisor) __divisor = divisor;		\
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

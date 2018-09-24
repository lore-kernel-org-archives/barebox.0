Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4TWM-0001pR-6n
 for barebox@lists.infradead.org; Mon, 24 Sep 2018 16:15:45 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23992087AbeIXQPCjJtaE (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Mon, 24 Sep 2018 18:15:02 +0200
Date: Mon, 24 Sep 2018 18:15:01 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20180924161501.GA3938@lenoch>
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
To: barebox@lists.infradead.org

Devices as AT45DB161 DataFlash uses non power of two page size (528)
while present alignment algorithm relies on erasesize being power
of 2.
Fix that by introducing helper functions do round to any multiply.
Note that logic is sligthly changed to be consistent as ending
address is moved forward to include also last byte meant to be
erased while previous implementation moved it backward.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 Honestly, I do not like this way of "fixing" code. In ideal world
 this aliment should be done elsewhere, but this is just nice easy path
 of least resistance (evil).

 drivers/mtd/core.c | 31 +++++++++++++++++++++++++------
 1 file changed, 25 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index ae7818a18..36c0ac228 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -141,15 +141,34 @@ static struct mtd_erase_region_info *mtd_find_erase_region(struct mtd_info *mtd,
 	return NULL;
 }
 
+static inline loff_t __round_up(loff_t x, uint32_t multiple)
+{
+	uint64_t __x = x;
+	uint32_t mod = do_div(__x, multiple);
+	if (mod == 0)
+		return x;
+	return x + multiple - mod;
+}
+
+static inline loff_t __round_down(loff_t x, uint32_t multiple)
+{
+	uint64_t __x = x;
+	uint32_t mod = do_div(__x, multiple);
+	if (mod == 0)
+		return x;
+
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
+		ofs = __round_down(*offset, mtd->erasesize);
+		*count += *offset - ofs;
+		*count = __round_up(*count, mtd->erasesize);
 		*offset = ofs;
 		return 0;
 	}
@@ -158,14 +177,14 @@ static int mtd_erase_align(struct mtd_info *mtd, loff_t *count, loff_t *offset)
 	if (!e)
 		return -EINVAL;
 
-	ofs = *offset & ~(e->erasesize - 1);
-	*count += (*offset - ofs);
+	ofs = __round_down(*offset, e->erasesize);
+	*count += *offset - ofs;
 
 	e = mtd_find_erase_region(mtd, *offset + *count);
 	if (!e)
 		return -EINVAL;
 
-	*count = ALIGN(*count, e->erasesize);
+	*count = __round_up(*count, e->erasesize);
 	*offset = ofs;
 
 	return 0;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

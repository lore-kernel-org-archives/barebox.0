Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giIs3-0004KB-GG
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 12:58:41 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23994214AbfALM6ed4ifD (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sat, 12 Jan 2019 13:58:34 +0100
Date: Sat, 12 Jan 2019 13:58:28 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20190112125828.GA16754@lenoch>
References: <20190109112814.GA918@lenoch>
 <20190110083207.gh5ppkin6suvshps@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190110083207.gh5ppkin6suvshps@pengutronix.de>
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
Subject: Re: [PATCH] mtd: core: Fix erase area alignment for non power of 2
 erasesize
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 10, 2019 at 09:32:07AM +0100, Sascha Hauer wrote:
> On Wed, Jan 09, 2019 at 12:28:14PM +0100, Ladislav Michl wrote:
> > Devices as AT45DB161 DataFlash uses non power of two page size (528)
> > while present alignment algorithm relies on erasesize being power
> > of 2.
> > Fix that by introducing helper functions rounding to any multiply.
> > Note that logic is sligthly changed to be consistent as ending
> > address is moved forward to include also last byte meant to be
> > erased while previous implementation moved it backward.
> > 
> > Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> > ---
> >  drivers/mtd/core.c     | 28 ++++++++++++++++++++++------
> >  include/linux/kernel.h |  5 +++++
> >  2 files changed, 27 insertions(+), 6 deletions(-)
> 
> Applied, thanks

Hi Sascha,

I was searching for paper bag, but was unable to find anything thick
enouh to cover behind :-/ This version is buggy and I noticed right
now when testing on another board. Corrected version follows, which
is also 192 bytes shorter for my ARM target. It seems next branch
at https://git.pengutronix.de/ is not yet updated, so perhaps my fault
won't affect anyone.

--- 8< ---
From: Ladislav Michl <ladis@linux-mips.org>
Subject: [PATCH v2] mtd: core: Fix erase area alignment for non power of 2 erasesize

Devices as AT45DB161 DataFlash uses non power of two page size (528)
while present alignment algorithm relies on erasesize being power
of 2.
Fix that by introducing helper functions rounding to any multiply.
Note that logic is sligthly changed to be consistent as ending
address is moved forward to include also last byte meant to be
erased while previous implementation moved it backward.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/core.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index d3cbe502f..f44c6cfc6 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -141,15 +141,28 @@ static struct mtd_erase_region_info *mtd_find_erase_region(struct mtd_info *mtd,
 	return NULL;
 }
 
+static loff_t __mtd_erase_round(loff_t x, uint32_t esize, int up)
+{
+	uint64_t dividend = x;
+	uint32_t mod = do_div(dividend, esize);
+	if (mod == 0)
+		return x;
+	if (up)
+		x += esize;
+	return x - mod;
+}
+#define mtd_erase_round_up(x, esize)	__mtd_erase_round(x, esize, 1)
+#define mtd_erase_round_down(x, esize)	__mtd_erase_round(x, esize, 0)
+
 static int mtd_erase_align(struct mtd_info *mtd, loff_t *count, loff_t *offset)
 {
 	struct mtd_erase_region_info *e;
 	loff_t ofs;
 
 	if (mtd->numeraseregions == 0) {
-		ofs = *offset & ~(loff_t)(mtd->erasesize - 1);
-		*count += (*offset - ofs);
-		*count = ALIGN(*count, mtd->erasesize);
+		ofs = mtd_erase_round_down(*offset, mtd->erasesize);
+		*count += *offset - ofs;
+		*count = mtd_erase_round_up(*count, mtd->erasesize);
 		*offset = ofs;
 		return 0;
 	}
@@ -158,14 +171,14 @@ static int mtd_erase_align(struct mtd_info *mtd, loff_t *count, loff_t *offset)
 	if (!e)
 		return -EINVAL;
 
-	ofs = *offset & ~(e->erasesize - 1);
-	*count += (*offset - ofs);
+	ofs = mtd_erase_round_down(*offset, e->erasesize);
+	*count += *offset - ofs;
 
 	e = mtd_find_erase_region(mtd, *offset + *count);
 	if (!e)
 		return -EINVAL;
 
-	*count = ALIGN(*count, e->erasesize);
+	*count = mtd_erase_round_up(*count, e->erasesize);
 	*offset = ofs;
 
 	return 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

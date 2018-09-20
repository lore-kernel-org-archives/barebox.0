Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g33fb-0002BF-Dd
 for barebox@lists.infradead.org; Thu, 20 Sep 2018 18:27:21 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23992408AbeITS1C0gotB (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Thu, 20 Sep 2018 20:27:02 +0200
Date: Thu, 20 Sep 2018 20:27:01 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20180920182701.GA18781@lenoch>
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
Subject: mtd_peb_write broken on dataflash
To: barebox@lists.infradead.org

As mtd_peb_write checks for alignment, it fails writing to dataflash:
barebox$ state -s
ERROR: state: Failed to write PEB 0, -22
ERROR: state: Failed to write circular to 0 length 48, -22
WARNING: state: Failed to write state backend bucket, -22
ERROR: state: Failed to write PEB 1, -22
ERROR: state: Failed to write circular to 0 length 48, -22
WARNING: state: Failed to write state backend bucket, -22
ERROR: state: Failed to write PEB 2, -22
ERROR: state: Failed to write circular to 0 length 48, -22
WARNING: state: Failed to write state backend bucket, -22
ERROR: state: Failed to write state to at least 1 buckets. Successfully written to 0 buckets
ERROR: state: Failed to write packed state, -5
state: I/O error

Patch bellow is a naive fix just to show where problem is.

There's also problem erasing dataflash:
barebox$ erase /dev/dataflash0.barebox-state
erase: Invalid argument

I guess we'll run into similar issue for MTD_RAM, so question is whenever
we want such a strict check here at all. Opinions?

Thank you.

---
 drivers/mtd/peb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index c35b63f2f..6035fbc45 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -376,7 +376,7 @@ int mtd_peb_write(struct mtd_info *mtd, const void *buf, int pnum, int offset,
 		return -EINVAL;
 	if (len <= 0)
 		return -EINVAL;
-	if (len % (mtd->writesize >> mtd->subpage_sft))
+	if (mtd->type != MTD_DATAFLASH && len % (mtd->writesize >> mtd->subpage_sft))
 		return -EINVAL;
 	if (mtd_peb_is_bad(mtd, pnum))
 		return -EINVAL;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

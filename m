Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0Tcj-0002PQ-BC
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 10:11:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Jan 2014 11:05:28 +0100
Message-Id: <1389089135-29986-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389089135-29986-1-git-send-email-s.hauer@pengutronix.de>
References: <1389089135-29986-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] UBI: Fix invalidate_fastmap()
To: barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>

From: Richard Weinberger <richard@nod.at>

Onging tests uncovered that invalidate_fastmap() is broken.
It must not call ubi_wl_put_fm_peb() because all PEBs used
by the old fastmap have already been put back.

Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
---
 drivers/mtd/ubi/fastmap.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 939e534..4d120ae 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -1338,7 +1338,7 @@ out:
 static int invalidate_fastmap(struct ubi_device *ubi,
 			      struct ubi_fastmap_layout *fm)
 {
-	int ret, i;
+	int ret;
 	struct ubi_vid_hdr *vh;
 
 	ret = erase_block(ubi, fm->e[0]->pnum);
@@ -1355,9 +1355,6 @@ static int invalidate_fastmap(struct ubi_device *ubi,
 	vh->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
 	ret = ubi_io_write_vid_hdr(ubi, fm->e[0]->pnum, vh);
 
-	for (i = 0; i < fm->used_blocks; i++)
-		ubi_wl_put_fm_peb(ubi, fm->e[i], i, fm->to_be_tortured[i]);
-
 	return ret;
 }
 
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

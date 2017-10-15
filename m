Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e3guh-0001UQ-FA
 for barebox@lists.infradead.org; Sun, 15 Oct 2017 11:17:01 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sun, 15 Oct 2017 13:16:31 +0200
Message-Id: <20171015111631.4506-1-mkl@pengutronix.de>
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
Subject: [PATCH] UBI: attach: add missing newline at end of pr_err()
To: barebox@lists.infradead.org

This patch adds the missing newline at the end of the pr_err()
statement.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/mtd/ubi/attach.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index b49842be3948..ff4b4e7acb76 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -782,7 +782,7 @@ static int check_corruption(struct ubi_device *ubi, struct ubi_vid_hdr *vid_hdr,
 		pnum);
 	ubi_err(ubi, "this may be a non-UBI PEB or a severe VID header corruption which requires manual inspection");
 	ubi_dump_vid_hdr(vid_hdr);
-	pr_err("hexdump of PEB %d offset %d, length %d",
+	pr_err("hexdump of PEB %d offset %d, length %d\n",
 	       pnum, ubi->leb_start, ubi->leb_size);
 	ubi_dbg_print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
 			       ubi->peb_buf, ubi->leb_size, 1);
-- 
2.14.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

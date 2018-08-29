Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSn-0005UT-23
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:51 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 801E8A00CB7
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:57 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:41 +0200
Message-Id: <1535545212-18871-26-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
References: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 25/56] UBI: fastmap: use ubi_io_{read,
 write}_data() instead of ubi_io_{read, write}()
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

ubi_io_{read,write}_data() are wrappers around ubi_io_{read/write}() that
are used to read/write eraseblock payload data, which is exactly what
fastmap does when calling ubi_io_{read,write}().

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 683ac0d9c4ab..2bf626f8075e 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -809,7 +809,7 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		goto out;
 	}
 
-	ret = ubi_io_read(ubi, fmsb, fm_anchor, ubi->leb_start, sizeof(*fmsb));
+	ret = ubi_io_read_data(ubi, fmsb, fm_anchor, 0, sizeof(*fmsb));
 	if (ret && ret != UBI_IO_BITFLIPS)
 		goto free_fm_sb;
 	else if (ret == UBI_IO_BITFLIPS)
@@ -927,8 +927,8 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		if (sqnum < be64_to_cpu(vh->sqnum))
 			sqnum = be64_to_cpu(vh->sqnum);
 
-		ret = ubi_io_read(ubi, ubi->fm_buf + (ubi->leb_size * i), pnum,
-				  ubi->leb_start, ubi->leb_size);
+		ret = ubi_io_read_data(ubi, ubi->fm_buf + (ubi->leb_size * i),
+				       pnum, 0, ubi->leb_size);
 		if (ret && ret != UBI_IO_BITFLIPS) {
 			ubi_err(ubi, "unable to read fastmap block# %i (PEB: %i, "
 				"err: %i)", i, pnum, ret);
@@ -1218,8 +1218,8 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 	}
 
 	for (i = 0; i < new_fm->used_blocks; i++) {
-		ret = ubi_io_write(ubi, fm_raw + (i * ubi->leb_size),
-			new_fm->e[i]->pnum, ubi->leb_start, ubi->leb_size);
+		ret = ubi_io_write_data(ubi, fm_raw + (i * ubi->leb_size),
+					new_fm->e[i]->pnum, 0, ubi->leb_size);
 		if (ret) {
 			ubi_err(ubi, "unable to write fastmap to PEB %i!",
 				new_fm->e[i]->pnum);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

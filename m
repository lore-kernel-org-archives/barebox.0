Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0Tco-0002PV-0F
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 10:11:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Jan 2014 11:05:32 +0100
Message-Id: <1389089135-29986-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] UBI: fastmap: fix backward compatibility with image_seq
To: barebox@lists.infradead.org

From: Richard Genoud <richard.genoud@gmail.com>

Some old UBI implementations (e.g. U-Boot) have not implemented the image
sequence feature.
So, when erase blocks are written, the image sequence in the ec header
is lost (set to zero).
UBI scan_all() takes this case into account (commits
32bc4820287a1a03982979515949e8ea56eac641 and
2eadaad67b2b6bd132eda105128d2d466298b8e3)

But fastmap scan functions (ubi_scan_fastmap() and scan_pool()) didn't.

This patch fixes the issue.

Signed-off-by: Richard Genoud <richard.genoud@gmail.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/fastmap.c | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 0a343fd..8963e06 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -406,6 +406,7 @@ static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	 */
 	for (i = 0; i < pool_size; i++) {
 		int scrub = 0;
+		int image_seq;
 
 		pnum = be32_to_cpu(pebs[i]);
 
@@ -424,7 +425,13 @@ static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		} else if (ret == UBI_IO_BITFLIPS)
 			scrub = 1;
 
-		if (be32_to_cpu(ech->image_seq) != ubi->image_seq) {
+		/*
+		 * Older UBI implementations have image_seq set to zero, so
+		 * we shouldn't fail if image_seq == 0.
+		 */
+		image_seq = be32_to_cpu(ech->image_seq);
+
+		if (image_seq && (image_seq != ubi->image_seq)) {
 			ubi_err("bad image seq: 0x%x, expected: 0x%x",
 				be32_to_cpu(ech->image_seq), ubi->image_seq);
 			ret = UBI_BAD_FASTMAP;
@@ -911,6 +918,8 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	}
 
 	for (i = 0; i < used_blocks; i++) {
+		int image_seq;
+
 		pnum = be32_to_cpu(fmsb->block_loc[i]);
 
 		if (ubi_io_is_bad(ubi, pnum)) {
@@ -928,10 +937,17 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		} else if (ret == UBI_IO_BITFLIPS)
 			fm->to_be_tortured[i] = 1;
 
+		image_seq = be32_to_cpu(ech->image_seq);
 		if (!ubi->image_seq)
-			ubi->image_seq = be32_to_cpu(ech->image_seq);
+			ubi->image_seq = image_seq;
 
-		if (be32_to_cpu(ech->image_seq) != ubi->image_seq) {
+		/*
+		 * Older UBI implementations have image_seq set to zero, so
+		 * we shouldn't fail if image_seq == 0.
+		 */
+		if (image_seq && (image_seq != ubi->image_seq)) {
+			ubi_err("wrong image seq:%d instead of %d",
+				be32_to_cpu(ech->image_seq), ubi->image_seq);
 			ret = UBI_BAD_FASTMAP;
 			goto free_hdr;
 		}
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

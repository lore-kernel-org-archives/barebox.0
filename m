Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1R7-0005bR-PP
 for barebox@lists.infradead.org; Mon, 15 Jul 2019 13:54:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jul 2019 15:54:34 +0200
Message-Id: <20190715135434.5666-3-s.hauer@pengutronix.de>
In-Reply-To: <20190715135434.5666-1-s.hauer@pengutronix.de>
References: <20190715135434.5666-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 3/3] ubiformat: handle write errors correctly
To: Barebox List <barebox@lists.infradead.org>

This is a barebox adoption of mtd-utils commit
d9cbf6a ("ubiformat: handle write errors correctly"):

|     ubiformat: handle write errors correctly
|
|     This issue was reported and analyzed by
|     Anton Olofsson <anol.martinsson@gmail.com>:
|
|     when ubiformat encounters a write error while flashing the UBI image (which may
|     come from a file of from stdout), it correctly marks the faulty eraseblock as
|     bad and skips it. However, it also incorrectly drops the data buffer which was
|     supposed to be written, and reads next block of data.
|
|     This patch fixes this issue - in case of a write error, we preserve the current
|     data and write it to the next eraseblock, instead of dropping it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ubiformat.c | 29 ++++++++++++++++++++---------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/common/ubiformat.c b/common/ubiformat.c
index 4f0df6fd5c..655c5323ba 100644
--- a/common/ubiformat.c
+++ b/common/ubiformat.c
@@ -188,6 +188,7 @@ static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 		       const struct ubigen_info *ui, struct ubi_scan_info *si)
 {
 	int fd = 0, img_ebs, eb, written_ebs = 0, ret = -1, eb_cnt;
+	int skip_data_read = 0;
 	off_t st_size;
 	char *buf = NULL;
 	uint64_t lastprint = 0;
@@ -266,17 +267,20 @@ static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 			continue;
 		}
 
-		if (args->image) {
-			err = read_full(fd, buf, mtd->erasesize);
-			if (err < 0) {
-				sys_errmsg("failed to read eraseblock %d from image",
-					   written_ebs);
-				goto out_close;
+		if (!skip_data_read) {
+			if (args->image) {
+				err = read_full(fd, buf, mtd->erasesize);
+				if (err < 0) {
+					sys_errmsg("failed to read eraseblock %d from image",
+						written_ebs);
+					goto out_close;
+				}
+			} else {
+				memcpy(buf, inbuf, mtd->erasesize);
+				inbuf += mtd->erasesize;
 			}
-		} else {
-			memcpy(buf, inbuf, mtd->erasesize);
-			inbuf += mtd->erasesize;
 		}
+		skip_data_read = 0;
 
 		if (args->override_ec)
 			ec = args->ec;
@@ -318,6 +322,13 @@ static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 				goto out_close;
 			}
 
+			/*
+			 * We have to make sure that we do not read next block
+			 * of data from the input image or stdin - we have to
+			 * write buf first instead.
+			 */
+                        skip_data_read = 1;
+
 			continue;
 		}
 		if (++written_ebs >= img_ebs)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

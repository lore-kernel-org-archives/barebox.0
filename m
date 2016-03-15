Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxh-0005TC-Ui
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:28 +0100
Message-Id: <1458040534-6171-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/16] mtd: ubi: Use mtd_all_ff/mtd_check_pattern
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/attach.c |  2 +-
 drivers/mtd/ubi/io.c     | 10 +++++-----
 drivers/mtd/ubi/misc.c   | 19 -------------------
 drivers/mtd/ubi/ubi.h    |  1 -
 4 files changed, 6 insertions(+), 26 deletions(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index d6fe43b..88370f4 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -772,7 +772,7 @@ static int check_corruption(struct ubi_device *ubi, struct ubi_vid_hdr *vid_hdr,
 	if (err)
 		goto out_unlock;
 
-	if (ubi_check_pattern(ubi->peb_buf, 0xFF, ubi->leb_size))
+	if (mtd_buf_all_ff(ubi->peb_buf, ubi->leb_size))
 		goto out_unlock;
 
 	ubi_err("PEB %d contains corrupted VID header, and the data does not contain all 0xFF",
diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index e55dfc5..801c0eb 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -405,7 +405,7 @@ static int torture_peb(struct ubi_device *ubi, int pnum)
 		if (err)
 			goto out;
 
-		err = ubi_check_pattern(ubi->peb_buf, 0xFF, ubi->peb_size);
+		err = mtd_buf_all_ff(ubi->peb_buf, ubi->peb_size);
 		if (err == 0) {
 			ubi_err("erased PEB %d, but a non-0xFF byte found",
 				pnum);
@@ -424,7 +424,7 @@ static int torture_peb(struct ubi_device *ubi, int pnum)
 		if (err)
 			goto out;
 
-		err = ubi_check_pattern(ubi->peb_buf, patterns[i],
+		err = mtd_buf_check_pattern(ubi->peb_buf, patterns[i],
 					ubi->peb_size);
 		if (err == 0) {
 			ubi_err("pattern %x checking failed for PEB %d",
@@ -740,7 +740,7 @@ int ubi_io_read_ec_hdr(struct ubi_device *ubi, int pnum,
 		 * 0xFF. If yes, this physical eraseblock is assumed to be
 		 * empty.
 		 */
-		if (ubi_check_pattern(ec_hdr, 0xFF, UBI_EC_HDR_SIZE)) {
+		if (mtd_buf_all_ff(ec_hdr, UBI_EC_HDR_SIZE)) {
 			/* The physical eraseblock is supposedly empty */
 			if (verbose)
 				ubi_warn("no EC header found at PEB %d, only 0xFF bytes",
@@ -996,7 +996,7 @@ int ubi_io_read_vid_hdr(struct ubi_device *ubi, int pnum,
 		if (mtd_is_eccerr(read_err))
 			return UBI_IO_BAD_HDR_EBADMSG;
 
-		if (ubi_check_pattern(vid_hdr, 0xFF, UBI_VID_HDR_SIZE)) {
+		if (mtd_buf_all_ff(vid_hdr, UBI_VID_HDR_SIZE)) {
 			if (verbose)
 				ubi_warn("no VID header found at PEB %d, only 0xFF bytes",
 					 pnum);
@@ -1382,7 +1382,7 @@ int ubi_self_check_all_ff(struct ubi_device *ubi, int pnum, int offset, int len)
 		goto error;
 	}
 
-	err = ubi_check_pattern(buf, 0xFF, len);
+	err = mtd_buf_all_ff(buf, len);
 	if (err == 0) {
 		ubi_err("flash region at PEB %d:%d, length %d does not contain all 0xFF bytes",
 			pnum, offset, len);
diff --git a/drivers/mtd/ubi/misc.c b/drivers/mtd/ubi/misc.c
index b5c6efe..9633466 100644
--- a/drivers/mtd/ubi/misc.c
+++ b/drivers/mtd/ubi/misc.c
@@ -128,22 +128,3 @@ void ubi_calculate_reserved(struct ubi_device *ubi)
 			 ubi->bad_peb_count, ubi->bad_peb_limit);
 	}
 }
-
-/**
- * ubi_check_pattern - check if buffer contains only a certain byte pattern.
- * @buf: buffer to check
- * @patt: the pattern to check
- * @size: buffer size in bytes
- *
- * This function returns %1 in there are only @patt bytes in @buf, and %0 if
- * something else was also found.
- */
-int ubi_check_pattern(const void *buf, uint8_t patt, int size)
-{
-	int i;
-
-	for (i = 0; i < size; i++)
-		if (((const uint8_t *)buf)[i] != patt)
-			return 0;
-	return 1;
-}
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 61ae738..577b35d 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -757,7 +757,6 @@ int ubi_calc_data_len(const struct ubi_device *ubi, const void *buf,
 int ubi_check_volume(struct ubi_device *ubi, int vol_id);
 void ubi_update_reserved(struct ubi_device *ubi);
 void ubi_calculate_reserved(struct ubi_device *ubi);
-int ubi_check_pattern(const void *buf, uint8_t patt, int size);
 
 /* eba.c */
 int ubi_eba_unmap_leb(struct ubi_device *ubi, struct ubi_volume *vol,
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

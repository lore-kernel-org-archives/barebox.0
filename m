Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSp-0005Uw-UL
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:55 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 837E8A00CD7
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:58 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:45 +0200
Message-Id: <1535545212-18871-30-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 29/56] UBI: simplify LEB write and atomic LEB change code
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

ubi_eba_write_leb(), ubi_eba_write_leb_st() and
ubi_eba_atomic_leb_change() are using a convoluted retry/exit path.
Add the try_write_vid_and_data() function to simplify the retry logic
and make sure we have a single exit path instead of manually releasing
the resources in each error path.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fix conflicts]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/eba.c | 271 +++++++++++++++++++++-----------------------------
 1 file changed, 113 insertions(+), 158 deletions(-)

diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index bc2dc2ef4371..fd8368286825 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -600,6 +600,67 @@ static int recover_peb(struct ubi_device *ubi, int pnum, int vol_id, int lnum,
 }
 
 /**
+ * try_write_vid_and_data - try to write VID header and data to a new PEB.
+ * @vol: volume description object
+ * @lnum: logical eraseblock number
+ * @vid_hdr: VID header to write
+ * @buf: buffer containing the data
+ * @offset: where to start writing data
+ * @len: how many bytes should be written
+ *
+ * This function tries to write VID header and data belonging to logical
+ * eraseblock @lnum of volume @vol to a new physical eraseblock. Returns zero
+ * in case of success and a negative error code in case of failure.
+ * In case of error, it is possible that something was still written to the
+ * flash media, but may be some garbage.
+ */
+static int try_write_vid_and_data(struct ubi_volume *vol, int lnum,
+				  struct ubi_vid_hdr *vid_hdr, const void *buf,
+				  int offset, int len)
+{
+	struct ubi_device *ubi = vol->ubi;
+	int pnum, opnum, err, vol_id = vol->vol_id;
+
+	pnum = ubi_wl_get_peb(ubi);
+	if (pnum < 0) {
+		err = pnum;
+		goto out_put;
+	}
+
+	opnum = vol->eba_tbl[lnum];
+
+	dbg_eba("write VID hdr and %d bytes at offset %d of LEB %d:%d, PEB %d",
+		len, offset, vol_id, lnum, pnum);
+
+	err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
+	if (err) {
+		ubi_warn(ubi, "failed to write VID header to LEB %d:%d, PEB %d",
+			 vol_id, lnum, pnum);
+		goto out_put;
+	}
+
+	if (len) {
+		err = ubi_io_write_data(ubi, buf, pnum, offset, len);
+		if (err) {
+			ubi_warn(ubi,
+				 "failed to write %d bytes at offset %d of LEB %d:%d, PEB %d",
+				 len, offset, vol_id, lnum, pnum);
+			goto out_put;
+		}
+	}
+
+	vol->eba_tbl[lnum] = pnum;
+
+out_put:
+	if (err && pnum >= 0)
+		err = ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 1);
+	else if (!err && opnum >= 0)
+		err = ubi_wl_put_peb(ubi, vol_id, lnum, opnum, 0);
+
+	return err;
+}
+
+/**
  * ubi_eba_write_leb - write data to dynamic volume.
  * @ubi: UBI device description object
  * @vol: volume description object
@@ -612,11 +673,12 @@ static int recover_peb(struct ubi_device *ubi, int pnum, int vol_id, int lnum,
  * @vol. Returns zero in case of success and a negative error code in case
  * of failure. In case of error, it is possible that something was still
  * written to the flash media, but may be some garbage.
+ * This function retries %UBI_IO_RETRIES times before giving up.
  */
 int ubi_eba_write_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
 		      const void *buf, int offset, int len)
 {
-	int err, pnum, tries = 0, vol_id = vol->vol_id;
+	int err, pnum, tries, vol_id = vol->vol_id;
 	struct ubi_vid_hdr *vid_hdr;
 
 	if (ubi->ro_mode)
@@ -637,11 +699,9 @@ int ubi_eba_write_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
 			if (err == -EIO && ubi->bad_allowed)
 				err = recover_peb(ubi, pnum, vol_id, lnum, buf,
 						  offset, len);
-			if (err)
-				ubi_ro_mode(ubi);
 		}
-		leb_write_unlock(ubi, vol_id, lnum);
-		return err;
+
+		goto out;
 	}
 
 	/*
@@ -661,63 +721,31 @@ int ubi_eba_write_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
 	vid_hdr->compat = ubi_get_compat(ubi, vol_id);
 	vid_hdr->data_pad = cpu_to_be32(vol->data_pad);
 
-retry:
-	pnum = ubi_wl_get_peb(ubi);
-	if (pnum < 0) {
-		ubi_free_vid_hdr(ubi, vid_hdr);
-		leb_write_unlock(ubi, vol_id, lnum);
-		return pnum;
-	}
-
-	dbg_eba("write VID hdr and %d bytes at offset %d of LEB %d:%d, PEB %d",
-		len, offset, vol_id, lnum, pnum);
-
-	err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
-	if (err) {
-		ubi_warn(ubi, "failed to write VID header to LEB %d:%d, PEB %d",
-			 vol_id, lnum, pnum);
-		goto write_error;
-	}
+	for (tries = 0; tries <= UBI_IO_RETRIES; tries++) {
+		err = try_write_vid_and_data(vol, lnum, vid_hdr, buf, offset,
+					     len);
+		if (err != -EIO || !ubi->bad_allowed)
+			break;
 
-	if (len) {
-		err = ubi_io_write_data(ubi, buf, pnum, offset, len);
-		if (err) {
-			ubi_warn(ubi, "failed to write %d bytes at offset %d of LEB %d:%d, PEB %d",
-				 len, offset, vol_id, lnum, pnum);
-			goto write_error;
-		}
+		/*
+		 * Fortunately, this is the first write operation to this
+		 * physical eraseblock, so just put it and request a new one.
+		 * We assume that if this physical eraseblock went bad, the
+		 * erase code will handle that.
+		 */
+		vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
+		ubi_msg(ubi, "try another PEB");
 	}
 
-	vol->eba_tbl[lnum] = pnum;
-
-	leb_write_unlock(ubi, vol_id, lnum);
 	ubi_free_vid_hdr(ubi, vid_hdr);
-	return 0;
 
-write_error:
-	if (err != -EIO || !ubi->bad_allowed) {
+out:
+	if (err)
 		ubi_ro_mode(ubi);
-		leb_write_unlock(ubi, vol_id, lnum);
-		ubi_free_vid_hdr(ubi, vid_hdr);
-		return err;
-	}
 
-	/*
-	 * Fortunately, this is the first write operation to this physical
-	 * eraseblock, so just put it and request a new one. We assume that if
-	 * this physical eraseblock went bad, the erase code will handle that.
-	 */
-	err = ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 1);
-	if (err || ++tries > UBI_IO_RETRIES) {
-		ubi_ro_mode(ubi);
-		leb_write_unlock(ubi, vol_id, lnum);
-		ubi_free_vid_hdr(ubi, vid_hdr);
-		return err;
-	}
+	leb_write_unlock(ubi, vol_id, lnum);
 
-	vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
-	ubi_msg(ubi, "try another PEB");
-	goto retry;
+	return err;
 }
 
 /**
@@ -745,7 +773,7 @@ write_error:
 int ubi_eba_write_leb_st(struct ubi_device *ubi, struct ubi_volume *vol,
 			 int lnum, const void *buf, int len, int used_ebs)
 {
-	int err, pnum, tries = 0, data_size = len, vol_id = vol->vol_id;
+	int err, tries, data_size = len, vol_id = vol->vol_id;
 	struct ubi_vid_hdr *vid_hdr;
 	uint32_t crc;
 
@@ -763,10 +791,8 @@ int ubi_eba_write_leb_st(struct ubi_device *ubi, struct ubi_volume *vol,
 		return -ENOMEM;
 
 	err = leb_write_lock(ubi, vol_id, lnum);
-	if (err) {
-		ubi_free_vid_hdr(ubi, vid_hdr);
-		return err;
-	}
+	if (err)
+		goto out;
 
 	vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
 	vid_hdr->vol_id = cpu_to_be32(vol_id);
@@ -780,62 +806,26 @@ int ubi_eba_write_leb_st(struct ubi_device *ubi, struct ubi_volume *vol,
 	vid_hdr->used_ebs = cpu_to_be32(used_ebs);
 	vid_hdr->data_crc = cpu_to_be32(crc);
 
-retry:
-	pnum = ubi_wl_get_peb(ubi);
-	if (pnum < 0) {
-		ubi_free_vid_hdr(ubi, vid_hdr);
-		leb_write_unlock(ubi, vol_id, lnum);
-		return pnum;
-	}
-
-	dbg_eba("write VID hdr and %d bytes at LEB %d:%d, PEB %d, used_ebs %d",
-		len, vol_id, lnum, pnum, used_ebs);
+	ubi_assert(vol->eba_tbl[lnum] < 0);
 
-	err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
-	if (err) {
-		ubi_warn(ubi, "failed to write VID header to LEB %d:%d, PEB %d",
-			 vol_id, lnum, pnum);
-		goto write_error;
-	}
+	for (tries = 0; tries <= UBI_IO_RETRIES; tries++) {
+		err = try_write_vid_and_data(vol, lnum, vid_hdr, buf, 0, len);
+		if (err != -EIO || !ubi->bad_allowed)
+			break;
 
-	err = ubi_io_write_data(ubi, buf, pnum, 0, len);
-	if (err) {
-		ubi_warn(ubi, "failed to write %d bytes of data to PEB %d",
-			 len, pnum);
-		goto write_error;
+		vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
+		ubi_msg(ubi, "try another PEB");
 	}
 
-	ubi_assert(vol->eba_tbl[lnum] < 0);
-	vol->eba_tbl[lnum] = pnum;
+	if (err)
+		ubi_ro_mode(ubi);
 
 	leb_write_unlock(ubi, vol_id, lnum);
-	ubi_free_vid_hdr(ubi, vid_hdr);
-	return 0;
-
-write_error:
-	if (err != -EIO || !ubi->bad_allowed) {
-		/*
-		 * This flash device does not admit of bad eraseblocks or
-		 * something nasty and unexpected happened. Switch to read-only
-		 * mode just in case.
-		 */
-		ubi_ro_mode(ubi);
-		leb_write_unlock(ubi, vol_id, lnum);
-		ubi_free_vid_hdr(ubi, vid_hdr);
-		return err;
-	}
 
-	err = ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 1);
-	if (err || ++tries > UBI_IO_RETRIES) {
-		ubi_ro_mode(ubi);
-		leb_write_unlock(ubi, vol_id, lnum);
-		ubi_free_vid_hdr(ubi, vid_hdr);
-		return err;
-	}
+out:
+	ubi_free_vid_hdr(ubi, vid_hdr);
 
-	vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
-	ubi_msg(ubi, "try another PEB");
-	goto retry;
+	return err;
 }
 
 /*
@@ -858,7 +848,7 @@ write_error:
 int ubi_eba_atomic_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
 			      int lnum, const void *buf, int len)
 {
-	int err, pnum, old_pnum, tries = 0, vol_id = vol->vol_id;
+	int err, tries, vol_id = vol->vol_id;
 	struct ubi_vid_hdr *vid_hdr;
 	uint32_t crc;
 
@@ -896,65 +886,30 @@ int ubi_eba_atomic_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
 	vid_hdr->copy_flag = 1;
 	vid_hdr->data_crc = cpu_to_be32(crc);
 
-retry:
-	pnum = ubi_wl_get_peb(ubi);
-	if (pnum < 0) {
-		err = pnum;
-		goto out_leb_unlock;
-	}
-
-	dbg_eba("change LEB %d:%d, PEB %d, write VID hdr to PEB %d",
-		vol_id, lnum, vol->eba_tbl[lnum], pnum);
+	dbg_eba("change LEB %d:%d", vol_id, lnum);
 
-	err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
-	if (err) {
-		ubi_warn(ubi, "failed to write VID header to LEB %d:%d, PEB %d",
-			 vol_id, lnum, pnum);
-		goto write_error;
-	}
+	for (tries = 0; tries <= UBI_IO_RETRIES; tries++) {
+		err = try_write_vid_and_data(vol, lnum, vid_hdr, buf, 0, len);
+		if (err != -EIO || !ubi->bad_allowed)
+			break;
 
-	err = ubi_io_write_data(ubi, buf, pnum, 0, len);
-	if (err) {
-		ubi_warn(ubi, "failed to write %d bytes of data to PEB %d",
-			 len, pnum);
-		goto write_error;
+		vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
+		ubi_msg(ubi, "try another PEB");
 	}
 
-	old_pnum = vol->eba_tbl[lnum];
-	vol->eba_tbl[lnum] = pnum;
-
-	if (old_pnum >= 0) {
-		err = ubi_wl_put_peb(ubi, vol_id, lnum, old_pnum, 0);
-		if (err)
-			goto out_leb_unlock;
-	}
+	/*
+	 * This flash device does not admit of bad eraseblocks or
+	 * something nasty and unexpected happened. Switch to read-only
+	 * mode just in case.
+	 */
+	if (err)
+		ubi_ro_mode(ubi);
 
-out_leb_unlock:
 	leb_write_unlock(ubi, vol_id, lnum);
+
 out_mutex:
 	ubi_free_vid_hdr(ubi, vid_hdr);
 	return err;
-
-write_error:
-	if (err != -EIO || !ubi->bad_allowed) {
-		/*
-		 * This flash device does not admit of bad eraseblocks or
-		 * something nasty and unexpected happened. Switch to read-only
-		 * mode just in case.
-		 */
-		ubi_ro_mode(ubi);
-		goto out_leb_unlock;
-	}
-
-	err = ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 1);
-	if (err || ++tries > UBI_IO_RETRIES) {
-		ubi_ro_mode(ubi);
-		goto out_leb_unlock;
-	}
-
-	vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
-	ubi_msg(ubi, "try another PEB");
-	goto retry;
 }
 
 /**
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

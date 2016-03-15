Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxF-0005Gt-VQ
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:32 +0100
Message-Id: <1458040534-6171-15-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/16] mtd: ubi: Use mtd_peb_write
To: Barebox List <barebox@lists.infradead.org>

mtd_peb_write provides the same functionality as ubi_io_write. Use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/debug.h |  14 ------
 drivers/mtd/ubi/io.c    | 113 +-----------------------------------------------
 2 files changed, 1 insertion(+), 126 deletions(-)

diff --git a/drivers/mtd/ubi/debug.h b/drivers/mtd/ubi/debug.h
index f177e6b..9d0542c 100644
--- a/drivers/mtd/ubi/debug.h
+++ b/drivers/mtd/ubi/debug.h
@@ -73,20 +73,6 @@ static inline int ubi_dbg_is_bgt_disabled(const struct ubi_device *ubi)
 }
 
 /**
- * ubi_dbg_is_write_failure - if it is time to emulate a write failure.
- * @ubi: UBI device description object
- *
- * Returns non-zero if a write failure should be emulated, otherwise returns
- * zero.
- */
-static inline int ubi_dbg_is_write_failure(const struct ubi_device *ubi)
-{
-	if (ubi->dbg.emulate_io_failures)
-		return !(random32() % 500);
-	return 0;
-}
-
-/**
  * ubi_dbg_is_erase_failure - if its time to emulate an erase failure.
  * @ubi: UBI device description object
  *
diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index 4fa8e5d..ed0cd1c 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -93,8 +93,6 @@ static int self_check_ec_hdr(const struct ubi_device *ubi, int pnum,
 static int self_check_peb_vid_hdr(const struct ubi_device *ubi, int pnum);
 static int self_check_vid_hdr(const struct ubi_device *ubi, int pnum,
 			      const struct ubi_vid_hdr *vid_hdr);
-static int self_check_write(struct ubi_device *ubi, const void *buf, int pnum,
-			    int offset, int len);
 
 /**
  * ubi_io_read - read data from a physical eraseblock.
@@ -150,8 +148,6 @@ int ubi_io_write(struct ubi_device *ubi, const void *buf, int pnum, int offset,
 		 int len)
 {
 	int err;
-	size_t written;
-	loff_t addr;
 
 	dbg_io("write %d bytes to PEB %d:%d", len, pnum, offset);
 
@@ -165,15 +161,6 @@ int ubi_io_write(struct ubi_device *ubi, const void *buf, int pnum, int offset,
 		return -EROFS;
 	}
 
-	err = self_check_not_bad(ubi, pnum);
-	if (err)
-		return err;
-
-	/* The area we are writing to has to contain all 0xFF bytes */
-	err = ubi_self_check_all_ff(ubi, pnum, offset, len);
-	if (err)
-		return err;
-
 	if (offset >= ubi->leb_start) {
 		/*
 		 * We write to the data area of the physical eraseblock. Make
@@ -187,39 +174,7 @@ int ubi_io_write(struct ubi_device *ubi, const void *buf, int pnum, int offset,
 			return err;
 	}
 
-	if (ubi_dbg_is_write_failure(ubi)) {
-		ubi_err("cannot write %d bytes to PEB %d:%d (emulated)",
-			len, pnum, offset);
-		dump_stack();
-		return -EIO;
-	}
-
-	addr = (loff_t)pnum * ubi->peb_size + offset;
-	err = mtd_write(ubi->mtd, addr, len, &written, buf);
-	if (err) {
-		ubi_err("error %d while writing %d bytes to PEB %d:%d, written %zd bytes",
-			err, len, pnum, offset, written);
-		dump_stack();
-		ubi_dump_flash(ubi, pnum, offset, len);
-	} else
-		ubi_assert(written == len);
-
-	if (!err) {
-		err = self_check_write(ubi, buf, pnum, offset, len);
-		if (err)
-			return err;
-
-		/*
-		 * Since we always write sequentially, the rest of the PEB has
-		 * to contain only 0xFF bytes.
-		 */
-		offset += len;
-		len = ubi->peb_size - offset;
-		if (len)
-			err = ubi_self_check_all_ff(ubi, pnum, offset, len);
-	}
-
-	return err;
+	return mtd_peb_write(ubi->mtd, buf, pnum, offset, len);
 }
 
 /**
@@ -1100,72 +1055,6 @@ exit:
 }
 
 /**
- * self_check_write - make sure write succeeded.
- * @ubi: UBI device description object
- * @buf: buffer with data which were written
- * @pnum: physical eraseblock number the data were written to
- * @offset: offset within the physical eraseblock the data were written to
- * @len: how many bytes were written
- *
- * This functions reads data which were recently written and compares it with
- * the original data buffer - the data have to match. Returns zero if the data
- * match and a negative error code if not or in case of failure.
- */
-static int self_check_write(struct ubi_device *ubi, const void *buf, int pnum,
-			    int offset, int len)
-{
-	int err, i;
-	size_t read;
-	void *buf1;
-	loff_t addr = (loff_t)pnum * ubi->peb_size + offset;
-
-	if (!ubi_dbg_chk_io(ubi))
-		return 0;
-
-	buf1 = kmalloc(len, GFP_KERNEL);
-	if (!buf1) {
-		ubi_err("cannot allocate memory to check writes");
-		return 0;
-	}
-
-	err = mtd_read(ubi->mtd, addr, len, &read, buf1);
-	if (err && !mtd_is_bitflip(err))
-		goto out_free;
-
-	for (i = 0; i < len; i++) {
-		uint8_t c = ((uint8_t *)buf)[i];
-		uint8_t c1 = ((uint8_t *)buf1)[i];
-		int dump_len;
-
-		if (c == c1)
-			continue;
-
-		ubi_err("self-check failed for PEB %d:%d, len %d",
-			pnum, offset, len);
-		ubi_msg("data differ at position %d", i);
-		dump_len = max_t(int, 128, len - i);
-		ubi_msg("hex dump of the original buffer from %d to %d",
-			i, i + dump_len);
-		print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
-			       buf + i, dump_len, 1);
-		ubi_msg("hex dump of the read buffer from %d to %d",
-			i, i + dump_len);
-		print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
-			       buf1 + i, dump_len, 1);
-		dump_stack();
-		err = -EINVAL;
-		goto out_free;
-	}
-
-	vfree(buf1);
-	return 0;
-
-out_free:
-	vfree(buf1);
-	return err;
-}
-
-/**
  * ubi_self_check_all_ff - check that a region of flash is empty.
  * @ubi: UBI device description object
  * @pnum: the physical eraseblock number to check
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

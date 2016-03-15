Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxX-0005OR-Td
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:31 +0100
Message-Id: <1458040534-6171-14-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/16] mtd: ubi: Use mtd_peb_read
To: Barebox List <barebox@lists.infradead.org>

mtd_peb_read provides the same functionality as ubi_io_read. Use
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/debug.h | 13 --------
 drivers/mtd/ubi/io.c    | 89 +++----------------------------------------------
 2 files changed, 5 insertions(+), 97 deletions(-)

diff --git a/drivers/mtd/ubi/debug.h b/drivers/mtd/ubi/debug.h
index ebf961b..f177e6b 100644
--- a/drivers/mtd/ubi/debug.h
+++ b/drivers/mtd/ubi/debug.h
@@ -73,19 +73,6 @@ static inline int ubi_dbg_is_bgt_disabled(const struct ubi_device *ubi)
 }
 
 /**
- * ubi_dbg_is_bitflip - if it is time to emulate a bit-flip.
- * @ubi: UBI device description object
- *
- * Returns non-zero if a bit-flip should be emulated, otherwise returns zero.
- */
-static inline int ubi_dbg_is_bitflip(const struct ubi_device *ubi)
-{
-	if (ubi->dbg.emulate_bitflips)
-		return !(random32() % 200);
-	return 0;
-}
-
-/**
  * ubi_dbg_is_write_failure - if it is time to emulate a write failure.
  * @ubi: UBI device description object
  *
diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index 4031253..4fa8e5d 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -121,91 +121,12 @@ static int self_check_write(struct ubi_device *ubi, const void *buf, int pnum,
 int ubi_io_read(const struct ubi_device *ubi, void *buf, int pnum, int offset,
 		int len)
 {
-	int err, retries = 0;
-	size_t read;
-	loff_t addr;
-
-	dbg_io("read %d bytes from PEB %d:%d", len, pnum, offset);
-
-	ubi_assert(pnum >= 0 && pnum < ubi->peb_count);
-	ubi_assert(offset >= 0 && offset + len <= ubi->peb_size);
-	ubi_assert(len > 0);
-
-	err = self_check_not_bad(ubi, pnum);
-	if (err)
-		return err;
-
-	/*
-	 * Deliberately corrupt the buffer to improve robustness. Indeed, if we
-	 * do not do this, the following may happen:
-	 * 1. The buffer contains data from previous operation, e.g., read from
-	 *    another PEB previously. The data looks like expected, e.g., if we
-	 *    just do not read anything and return - the caller would not
-	 *    notice this. E.g., if we are reading a VID header, the buffer may
-	 *    contain a valid VID header from another PEB.
-	 * 2. The driver is buggy and returns us success or -EBADMSG or
-	 *    -EUCLEAN, but it does not actually put any data to the buffer.
-	 *
-	 * This may confuse UBI or upper layers - they may think the buffer
-	 * contains valid data while in fact it is just old data. This is
-	 * especially possible because UBI (and UBIFS) relies on CRC, and
-	 * treats data as correct even in case of ECC errors if the CRC is
-	 * correct.
-	 *
-	 * Try to prevent this situation by changing the first byte of the
-	 * buffer.
-	 */
-	*((uint8_t *)buf) ^= 0xFF;
-
-	addr = (loff_t)pnum * ubi->peb_size + offset;
-retry:
-	err = mtd_read(ubi->mtd, addr, len, &read, buf);
-	if (err) {
-		const char *errstr = mtd_is_eccerr(err) ? " (ECC error)" : "";
-
-		if (mtd_is_bitflip(err)) {
-			/*
-			 * -EUCLEAN is reported if there was a bit-flip which
-			 * was corrected, so this is harmless.
-			 *
-			 * We do not report about it here unless debugging is
-			 * enabled. A corresponding message will be printed
-			 * later, when it is has been scrubbed.
-			 */
-			ubi_msg("fixable bit-flip detected at PEB %d", pnum);
-			ubi_assert(len == read);
-			return UBI_IO_BITFLIPS;
-		}
+	int ret;
 
-		if (retries++ < UBI_IO_RETRIES) {
-			ubi_warn("error %d%s while reading %d bytes from PEB %d:%d, read only %zd bytes, retry",
-				 err, errstr, len, pnum, offset, read);
-			goto retry;
-		}
-
-		ubi_err("error %d%s while reading %d bytes from PEB %d:%d, read %zd bytes",
-			err, errstr, len, pnum, offset, read);
-		dump_stack();
-
-		/*
-		 * The driver should never return -EBADMSG if it failed to read
-		 * all the requested data. But some buggy drivers might do
-		 * this, so we change it to -EIO.
-		 */
-		if (read != len && mtd_is_eccerr(err)) {
-			ubi_assert(0);
-			err = -EIO;
-		}
-	} else {
-		ubi_assert(len == read);
-
-		if (ubi_dbg_is_bitflip(ubi)) {
-			dbg_gen("bit-flip (emulated)");
-			err = UBI_IO_BITFLIPS;
-		}
-	}
-
-	return err;
+	ret = mtd_peb_read(ubi->mtd, buf, pnum, offset, len);
+	if (mtd_is_bitflip(ret))
+		return UBI_IO_BITFLIPS;
+	return ret;
 }
 
 /**
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

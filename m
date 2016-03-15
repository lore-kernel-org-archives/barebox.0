Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxI-0005IM-Tg
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:30 +0100
Message-Id: <1458040534-6171-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/16] mtd: ubi: Use mtd_peb_torture
To: Barebox List <barebox@lists.infradead.org>

The mtd-peb API provides a torture test derived from the UBI torture
test. Use it. Since the mtd-peb variant of the torture test will also
mark a block as bad when the test fails this also makes a separate
ubi_io_mark_bad unnecessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/io.c  | 115 +++-----------------------------------------------
 drivers/mtd/ubi/ubi.h |   1 -
 drivers/mtd/ubi/wl.c  |   5 ---
 3 files changed, 5 insertions(+), 116 deletions(-)

diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index 4495996..4031253 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -376,82 +376,6 @@ retry:
 	return 0;
 }
 
-/* Patterns to write to a physical eraseblock when torturing it */
-static uint8_t patterns[] = {0xa5, 0x5a, 0x0};
-
-/**
- * torture_peb - test a supposedly bad physical eraseblock.
- * @ubi: UBI device description object
- * @pnum: the physical eraseblock number to test
- *
- * This function returns %-EIO if the physical eraseblock did not pass the
- * test, a positive number of erase operations done if the test was
- * successfully passed, and other negative error codes in case of other errors.
- */
-static int torture_peb(struct ubi_device *ubi, int pnum)
-{
-	int err, i, patt_count;
-
-	ubi_msg("run torture test for PEB %d", pnum);
-	patt_count = ARRAY_SIZE(patterns);
-	ubi_assert(patt_count > 0);
-
-	for (i = 0; i < patt_count; i++) {
-		err = do_sync_erase(ubi, pnum);
-		if (err)
-			goto out;
-
-		/* Make sure the PEB contains only 0xFF bytes */
-		err = ubi_io_read(ubi, ubi->peb_buf, pnum, 0, ubi->peb_size);
-		if (err)
-			goto out;
-
-		err = mtd_buf_all_ff(ubi->peb_buf, ubi->peb_size);
-		if (err == 0) {
-			ubi_err("erased PEB %d, but a non-0xFF byte found",
-				pnum);
-			err = -EIO;
-			goto out;
-		}
-
-		/* Write a pattern and check it */
-		memset(ubi->peb_buf, patterns[i], ubi->peb_size);
-		err = ubi_io_write(ubi, ubi->peb_buf, pnum, 0, ubi->peb_size);
-		if (err)
-			goto out;
-
-		memset(ubi->peb_buf, ~patterns[i], ubi->peb_size);
-		err = ubi_io_read(ubi, ubi->peb_buf, pnum, 0, ubi->peb_size);
-		if (err)
-			goto out;
-
-		err = mtd_buf_check_pattern(ubi->peb_buf, patterns[i],
-					ubi->peb_size);
-		if (err == 0) {
-			ubi_err("pattern %x checking failed for PEB %d",
-				patterns[i], pnum);
-			err = -EIO;
-			goto out;
-		}
-	}
-
-	err = patt_count;
-	ubi_msg("PEB %d passed torture test, do not mark it as bad", pnum);
-
-out:
-	if (err == UBI_IO_BITFLIPS || mtd_is_eccerr(err)) {
-		/*
-		 * If a bit-flip or data integrity error was detected, the test
-		 * has not passed because it happened on a freshly erased
-		 * physical eraseblock which means something is wrong with it.
-		 */
-		ubi_err("read problems on freshly erased PEB %d, must be bad",
-			pnum);
-		err = -EIO;
-	}
-	return err;
-}
-
 /**
  * nor_erase_prepare - prepare a NOR flash PEB for erasure.
  * @ubi: UBI device description object
@@ -564,15 +488,15 @@ int ubi_io_sync_erase(struct ubi_device *ubi, int pnum, int torture)
 	}
 
 	if (torture) {
-		ret = torture_peb(ubi, pnum);
+		ret = mtd_peb_torture(ubi->mtd, pnum);
 		if (ret < 0)
 			return ret;
+	} else {
+		err = do_sync_erase(ubi, pnum);
+		if (err)
+			return err;
 	}
 
-	err = do_sync_erase(ubi, pnum);
-	if (err)
-		return err;
-
 	return ret + 1;
 }
 
@@ -606,35 +530,6 @@ int ubi_io_is_bad(const struct ubi_device *ubi, int pnum)
 }
 
 /**
- * ubi_io_mark_bad - mark a physical eraseblock as bad.
- * @ubi: UBI device description object
- * @pnum: the physical eraseblock number to mark
- *
- * This function returns zero in case of success and a negative error code in
- * case of failure.
- */
-int ubi_io_mark_bad(const struct ubi_device *ubi, int pnum)
-{
-	int err;
-	struct mtd_info *mtd = ubi->mtd;
-
-	ubi_assert(pnum >= 0 && pnum < ubi->peb_count);
-
-	if (ubi->ro_mode) {
-		ubi_err("read-only mode");
-		return -EROFS;
-	}
-
-	if (!ubi->bad_allowed)
-		return 0;
-
-	err = mtd_block_markbad(mtd, (loff_t)pnum * ubi->peb_size);
-	if (err)
-		ubi_err("cannot mark PEB %d bad, error %d", pnum, err);
-	return err;
-}
-
-/**
  * validate_ec_hdr - validate an erase counter header.
  * @ubi: UBI device description object
  * @ec_hdr: the erase counter header to check
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 577b35d..03a36d2 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -799,7 +799,6 @@ int ubi_io_write(struct ubi_device *ubi, const void *buf, int pnum, int offset,
 		 int len);
 int ubi_io_sync_erase(struct ubi_device *ubi, int pnum, int torture);
 int ubi_io_is_bad(const struct ubi_device *ubi, int pnum);
-int ubi_io_mark_bad(const struct ubi_device *ubi, int pnum);
 int ubi_io_read_ec_hdr(struct ubi_device *ubi, int pnum,
 		       struct ubi_ec_hdr *ec_hdr, int verbose);
 int ubi_io_write_ec_hdr(struct ubi_device *ubi, int pnum,
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index 4c20e90..cb2f9d7 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -1421,11 +1421,6 @@ static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
 		available_consumed = 1;
 	}
 
-	ubi_msg("mark PEB %d as bad", pnum);
-	err = ubi_io_mark_bad(ubi, pnum);
-	if (err)
-		goto out_ro;
-
 	if (ubi->beb_rsvd_pebs > 0) {
 		if (available_consumed) {
 			/*
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

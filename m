Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxF-0005Gv-VW
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:33 +0100
Message-Id: <1458040534-6171-16-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/16] mtd: ubi: Use mtd_peb_erase
To: Barebox List <barebox@lists.infradead.org>

mtd_peb_erase provides the same functionality as do_sync_erase. Use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/debug.h | 14 -------------
 drivers/mtd/ubi/io.c    | 55 +------------------------------------------------
 2 files changed, 1 insertion(+), 68 deletions(-)

diff --git a/drivers/mtd/ubi/debug.h b/drivers/mtd/ubi/debug.h
index 9d0542c..c1b41b4 100644
--- a/drivers/mtd/ubi/debug.h
+++ b/drivers/mtd/ubi/debug.h
@@ -72,20 +72,6 @@ static inline int ubi_dbg_is_bgt_disabled(const struct ubi_device *ubi)
 	return ubi->dbg.disable_bgt;
 }
 
-/**
- * ubi_dbg_is_erase_failure - if its time to emulate an erase failure.
- * @ubi: UBI device description object
- *
- * Returns non-zero if an erase failure should be emulated, otherwise returns
- * zero.
- */
-static inline int ubi_dbg_is_erase_failure(const struct ubi_device *ubi)
-{
-	if (ubi->dbg.emulate_io_failures)
-		return !(random32() % 400);
-	return 0;
-}
-
 static inline int ubi_dbg_chk_io(const struct ubi_device *ubi)
 {
 	return ubi->dbg.chk_io;
diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index ed0cd1c..b3cb4f2 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -178,17 +178,6 @@ int ubi_io_write(struct ubi_device *ubi, const void *buf, int pnum, int offset,
 }
 
 /**
- * erase_callback - MTD erasure call-back.
- * @ei: MTD erase information object.
- *
- * Note, even though MTD erase interface is asynchronous, all the current
- * implementations are synchronous anyway.
- */
-static void erase_callback(struct erase_info *ei)
-{
-}
-
-/**
  * do_sync_erase - synchronously erase a physical eraseblock.
  * @ubi: UBI device description object
  * @pnum: the physical eraseblock number to erase
@@ -199,9 +188,6 @@ static void erase_callback(struct erase_info *ei)
  */
 static int do_sync_erase(struct ubi_device *ubi, int pnum)
 {
-	int err, retries = 0;
-	struct erase_info ei;
-
 	dbg_io("erase PEB %d", pnum);
 	ubi_assert(pnum >= 0 && pnum < ubi->peb_count);
 
@@ -210,46 +196,7 @@ static int do_sync_erase(struct ubi_device *ubi, int pnum)
 		return -EROFS;
 	}
 
-retry:
-	memset(&ei, 0, sizeof(struct erase_info));
-
-	ei.mtd      = ubi->mtd;
-	ei.addr     = (loff_t)pnum * ubi->peb_size;
-	ei.len      = ubi->peb_size;
-	ei.callback = erase_callback;
-
-	err = mtd_erase(ubi->mtd, &ei);
-	if (err) {
-		if (retries++ < UBI_IO_RETRIES) {
-			ubi_warn("error %d while erasing PEB %d, retry",
-				 err, pnum);
-			goto retry;
-		}
-		ubi_err("cannot erase PEB %d, error %d", pnum, err);
-		dump_stack();
-		return err;
-	}
-
-	if (ei.state == MTD_ERASE_FAILED) {
-		if (retries++ < UBI_IO_RETRIES) {
-			ubi_warn("error while erasing PEB %d, retry", pnum);
-			goto retry;
-		}
-		ubi_err("cannot erase PEB %d", pnum);
-		dump_stack();
-		return -EIO;
-	}
-
-	err = ubi_self_check_all_ff(ubi, pnum, 0, ubi->peb_size);
-	if (err)
-		return err;
-
-	if (ubi_dbg_is_erase_failure(ubi)) {
-		ubi_err("cannot erase PEB %d (emulated)", pnum);
-		return -EIO;
-	}
-
-	return 0;
+	return mtd_peb_erase(ubi->mtd, pnum);
 }
 
 /**
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1R7-0005bP-PM
 for barebox@lists.infradead.org; Mon, 15 Jul 2019 13:54:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jul 2019 15:54:32 +0200
Message-Id: <20190715135434.5666-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] mtd: ubi: mark PEBs as bad on erase failure
To: Barebox List <barebox@lists.infradead.org>

70542a9c65 converted UBI to use mtd_peb_torture(). It was assumed that a
block was marked as bad when it didn't pass the torture test. However,
not all possibly bad blocks went through the torture test, so it could
happen that a block that could not be erased was still kept as good
block. This patch fixes this and explicitly calls ubi_io_mark_bad() when
a block cannot be erased.

Fixes: 70542a9c65 ("mtd: ubi: Use mtd_peb_torture")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/io.c  | 29 +++++++++++++++++++++++++++++
 drivers/mtd/ubi/ubi.h |  1 +
 drivers/mtd/ubi/wl.c  |  5 +++++
 3 files changed, 35 insertions(+)

diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index d0ea23b124..78458b58e1 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -356,6 +356,35 @@ int ubi_io_is_bad(const struct ubi_device *ubi, int pnum)
 	return 0;
 }
 
+/**
+ * ubi_io_mark_bad - mark a physical eraseblock as bad.
+ * @ubi: UBI device description object
+ * @pnum: the physical eraseblock number to mark
+ *
+ * This function returns zero in case of success and a negative error code in
+ * case of failure.
+ */
+int ubi_io_mark_bad(const struct ubi_device *ubi, int pnum)
+{
+	int err;
+	struct mtd_info *mtd = ubi->mtd;
+
+	ubi_assert(pnum >= 0 && pnum < ubi->peb_count);
+
+	if (ubi->ro_mode) {
+		ubi_err(ubi, "read-only mode");
+		return -EROFS;
+	}
+
+	if (!ubi->bad_allowed)
+		return 0;
+
+	err = mtd_block_markbad(mtd, (loff_t)pnum * ubi->peb_size);
+	if (err)
+		ubi_err(ubi, "cannot mark PEB %d bad, error %d", pnum, err);
+	return err;
+}
+
 /**
  * validate_ec_hdr - validate an erase counter header.
  * @ubi: UBI device description object
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index b85d602055..922c1a3c8b 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -865,6 +865,7 @@ int ubi_io_write(struct ubi_device *ubi, const void *buf, int pnum, int offset,
 		 int len);
 int ubi_io_sync_erase(struct ubi_device *ubi, int pnum, int torture);
 int ubi_io_is_bad(const struct ubi_device *ubi, int pnum);
+int ubi_io_mark_bad(const struct ubi_device *ubi, int pnum);
 int ubi_io_read_ec_hdr(struct ubi_device *ubi, int pnum,
 		       struct ubi_ec_hdr *ec_hdr, int verbose);
 int ubi_io_write_ec_hdr(struct ubi_device *ubi, int pnum,
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index fa1b813702..cf90ecfb23 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -1085,6 +1085,11 @@ static int __erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk)
 		available_consumed = 1;
 	}
 
+	ubi_msg(ubi, "mark PEB %d as bad", pnum);
+	err = ubi_io_mark_bad(ubi, pnum);
+	if (err)
+		goto out_ro;
+
 	if (ubi->beb_rsvd_pebs > 0) {
 		if (available_consumed) {
 			/*
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

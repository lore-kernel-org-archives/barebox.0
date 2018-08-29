Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzT1-0005bX-Um
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:11 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 48217A00E57
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:04 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:20:08 +0200
Message-Id: <1535545212-18871-53-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 52/56] ubi: fastmap: Correctly handle interrupted erasures in
 EBA
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Fastmap cannot track the LEB unmap operation, therefore it can
happen that after an interrupted erasure the mapping still looks
good from Fastmap's point of view, while reading from the PEB will
cause an ECC error and confuses the upper layer.

Instead of teaching users of UBI how to deal with that, we read back
the VID header and check for errors. If the PEB is empty or shows ECC
errors we fixup the mapping and schedule the PEB for erasure.

Fixes: dbb7d2a88d2a ("UBI: Add fastmap core")
Cc: <stable@vger.kernel.org>
Reported-by: martin bayern <Martinbayern@outlook.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fixed compile issue]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/eba.c | 88 ++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 87 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index 69a6242e054a..c0653122ffc5 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -456,6 +456,80 @@ out_unlock:
 	return err;
 }
 
+#ifdef CONFIG_MTD_UBI_FASTMAP
+/**
+ * check_mapping - check and fixup a mapping
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ * @lnum: logical eraseblock number
+ * @pnum: physical eraseblock number
+ *
+ * Checks whether a given mapping is valid. Fastmap cannot track LEB unmap
+ * operations, if such an operation is interrupted the mapping still looks
+ * good, but upon first read an ECC is reported to the upper layer.
+ * Normaly during the full-scan at attach time this is fixed, for Fastmap
+ * we have to deal with it while reading.
+ * If the PEB behind a LEB shows this symthom we change the mapping to
+ * %UBI_LEB_UNMAPPED and schedule the PEB for erasure.
+ *
+ * Returns 0 on success, negative error code in case of failure.
+ */
+static int check_mapping(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
+			 int *pnum)
+{
+	int err;
+	struct ubi_vid_io_buf *vidb;
+
+	if (!ubi->fast_attach)
+		return 0;
+
+	vidb = ubi_alloc_vid_buf(ubi, GFP_NOFS);
+	if (!vidb)
+		return -ENOMEM;
+
+	err = ubi_io_read_vid_hdr(ubi, *pnum, vidb, 0);
+	if (err > 0 && err != UBI_IO_BITFLIPS) {
+		int torture = 0;
+
+		switch (err) {
+			case UBI_IO_FF:
+			case UBI_IO_FF_BITFLIPS:
+			case UBI_IO_BAD_HDR:
+			case UBI_IO_BAD_HDR_EBADMSG:
+				break;
+			default:
+				ubi_assert(0);
+		}
+
+		if (err == UBI_IO_BAD_HDR_EBADMSG || err == UBI_IO_FF_BITFLIPS)
+			torture = 1;
+
+		vol->eba_tbl->entries[lnum].pnum = UBI_LEB_UNMAPPED;
+		ubi_wl_put_peb(ubi, vol->vol_id, lnum, *pnum, torture);
+
+		*pnum = UBI_LEB_UNMAPPED;
+	} else if (err < 0) {
+		ubi_err(ubi, "unable to read VID header back from PEB %i: %i",
+			*pnum, err);
+
+		goto out_free;
+	}
+
+	err = 0;
+
+out_free:
+	ubi_free_vid_buf(vidb);
+
+	return err;
+}
+#else
+static int check_mapping(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
+		  int *pnum)
+{
+	return 0;
+}
+#endif
+
 /**
  * ubi_eba_read_leb - read data.
  * @ubi: UBI device description object
@@ -488,7 +562,13 @@ int ubi_eba_read_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
 		return err;
 
 	pnum = vol->eba_tbl->entries[lnum].pnum;
-	if (pnum < 0) {
+	if (pnum >= 0) {
+		err = check_mapping(ubi, vol, lnum, &pnum);
+		if (err < 0)
+			goto out_unlock;
+	}
+
+	if (pnum == UBI_LEB_UNMAPPED) {
 		/*
 		 * The logical eraseblock is not mapped, fill the whole buffer
 		 * with 0xFF bytes. The exception is static volumes for which
@@ -836,6 +916,12 @@ int ubi_eba_write_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
 
 	pnum = vol->eba_tbl->entries[lnum].pnum;
 	if (pnum >= 0) {
+		err = check_mapping(ubi, vol, lnum, &pnum);
+		if (err < 0)
+			goto out;
+	}
+
+	if (pnum >= 0) {
 		dbg_eba("write %d bytes at offset %d of LEB %d:%d, PEB %d",
 			len, offset, vol_id, lnum, pnum);
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

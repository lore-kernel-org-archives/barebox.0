Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSu-0005dk-Qj
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:02 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4684FA00CCF
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:58 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:44 +0200
Message-Id: <1535545212-18871-29-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 28/56] UBI: simplify recover_peb() code
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

recover_peb() is using a convoluted retry/exit path. Add try_recover_peb()
to simplify the retry logic and make sure we have a single exit path
instead of manually releasing the resource in each error path.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fix conflicts]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/eba.c | 114 ++++++++++++++++++++++++++++++++------------------
 1 file changed, 74 insertions(+), 40 deletions(-)

diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index 9decc0e1ecce..bc2dc2ef4371 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -465,38 +465,37 @@ out_unlock:
 }
 
 /**
- * recover_peb - recover from write failure.
- * @ubi: UBI device description object
+ * try_recover_peb - try to recover from write failure.
+ * @vol: volume description object
  * @pnum: the physical eraseblock to recover
- * @vol_id: volume ID
  * @lnum: logical eraseblock number
  * @buf: data which was not written because of the write failure
  * @offset: offset of the failed write
  * @len: how many bytes should have been written
+ * @vid: VID header
+ * @retry: whether the caller should retry in case of failure
  *
  * This function is called in case of a write failure and moves all good data
  * from the potentially bad physical eraseblock to a good physical eraseblock.
  * This function also writes the data which was not written due to the failure.
- * Returns new physical eraseblock number in case of success, and a negative
- * error code in case of failure.
+ * Returns 0 in case of success, and a negative error code in case of failure.
+ * In case of failure, the %retry parameter is set to false if this is a fatal
+ * error (retrying won't help), and true otherwise.
  */
-static int recover_peb(struct ubi_device *ubi, int pnum, int vol_id, int lnum,
-		       const void *buf, int offset, int len)
+static int try_recover_peb(struct ubi_volume *vol, int pnum, int lnum,
+			   const void *buf, int offset, int len,
+			   struct ubi_vid_hdr *vid_hdr, bool *retry)
 {
-	int err, idx = vol_id2idx(ubi, vol_id), new_pnum, data_size, tries = 0;
-	struct ubi_volume *vol = ubi->volumes[idx];
-	struct ubi_vid_hdr *vid_hdr;
+	struct ubi_device *ubi = vol->ubi;
+	int new_pnum, err, vol_id = vol->vol_id, data_size;
 	uint32_t crc;
 
-	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
-	if (!vid_hdr)
-		return -ENOMEM;
+	*retry = false;
 
-retry:
 	new_pnum = ubi_wl_get_peb(ubi);
 	if (new_pnum < 0) {
-		ubi_free_vid_hdr(ubi, vid_hdr);
-		return new_pnum;
+		err = new_pnum;
+		goto out_put;
 	}
 
 	ubi_msg(ubi, "recover PEB %d, move data to PEB %d",
@@ -520,6 +519,8 @@ retry:
 			goto out_unlock;
 	}
 
+	*retry = true;
+
 	memcpy(ubi->peb_buf + offset, buf, len);
 
 	data_size = offset + len;
@@ -530,39 +531,72 @@ retry:
 	vid_hdr->data_crc = cpu_to_be32(crc);
 	err = ubi_io_write_vid_hdr(ubi, new_pnum, vid_hdr);
 	if (err)
-		goto write_error;
+		goto out_unlock;
 
 	err = ubi_io_write_data(ubi, ubi->peb_buf, new_pnum, 0, data_size);
-	if (err)
-		goto write_error;
 
-	ubi_free_vid_hdr(ubi, vid_hdr);
+out_unlock:
+	if (!err)
+		vol->eba_tbl[lnum] = new_pnum;
 
-	vol->eba_tbl[lnum] = new_pnum;
-	ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 1);
+out_put:
 
-	ubi_msg(ubi, "data was successfully recovered");
-	return 0;
+	if (!err) {
+		ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 1);
+		ubi_msg(ubi, "data was successfully recovered");
+	} else if (new_pnum >= 0) {
+		/*
+		 * Bad luck? This physical eraseblock is bad too? Crud. Let's
+		 * try to get another one.
+		 */
+		ubi_wl_put_peb(ubi, vol_id, lnum, new_pnum, 1);
+		ubi_warn(ubi, "failed to write to PEB %d", new_pnum);
+	}
 
-out_unlock:
-out_put:
-	ubi_wl_put_peb(ubi, vol_id, lnum, new_pnum, 1);
-	ubi_free_vid_hdr(ubi, vid_hdr);
 	return err;
+}
 
-write_error:
-	/*
-	 * Bad luck? This physical eraseblock is bad too? Crud. Let's try to
-	 * get another one.
-	 */
-	ubi_warn(ubi, "failed to write to PEB %d", new_pnum);
-	ubi_wl_put_peb(ubi, vol_id, lnum, new_pnum, 1);
-	if (++tries > UBI_IO_RETRIES) {
-		ubi_free_vid_hdr(ubi, vid_hdr);
-		return err;
+/**
+ * recover_peb - recover from write failure.
+ * @ubi: UBI device description object
+ * @pnum: the physical eraseblock to recover
+ * @vol_id: volume ID
+ * @lnum: logical eraseblock number
+ * @buf: data which was not written because of the write failure
+ * @offset: offset of the failed write
+ * @len: how many bytes should have been written
+ *
+ * This function is called in case of a write failure and moves all good data
+ * from the potentially bad physical eraseblock to a good physical eraseblock.
+ * This function also writes the data which was not written due to the failure.
+ * Returns 0 in case of success, and a negative error code in case of failure.
+ * This function tries %UBI_IO_RETRIES before giving up.
+ */
+static int recover_peb(struct ubi_device *ubi, int pnum, int vol_id, int lnum,
+		       const void *buf, int offset, int len)
+{
+	int err, idx = vol_id2idx(ubi, vol_id), tries;
+	struct ubi_volume *vol = ubi->volumes[idx];
+	struct ubi_vid_hdr *vid_hdr;
+
+	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
+	if (!vid_hdr)
+		return -ENOMEM;
+
+	for (tries = 0; tries <= UBI_IO_RETRIES; tries++) {
+		bool retry;
+
+		err = try_recover_peb(vol, pnum, lnum, buf, offset, len,
+				      vid_hdr, &retry);
+		if (!err || !retry)
+			break;
+
+		ubi_msg(ubi, "try again");
 	}
-	ubi_msg(ubi, "try again");
-	goto retry;
+
+	ubi_free_vid_hdr(ubi, vid_hdr);
+
+	return err;
 }
 
 /**
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

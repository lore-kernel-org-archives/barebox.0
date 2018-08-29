Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzT2-0004xU-Ab
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C7AB0A00D47
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:59 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:50 +0200
Message-Id: <1535545212-18871-35-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 34/56] UBI: introduce the VID buffer concept
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

Currently, all VID headers are allocated and freed using the
ubi_zalloc_vid_hdr() and ubi_free_vid_hdr() function. These functions
make sure to align allocation on ubi->vid_hdr_alsize and adjust the
vid_hdr pointer to match the ubi->vid_hdr_shift requirements.
This works fine, but is a bit convoluted.
Moreover, the future introduction of LEB consolidation (needed to support
MLC/TLC NANDs) will allows a VID buffer to contain more than one VID
header.

Hence the creation of a ubi_vid_io_buf struct to attach extra information
to the VID header.

We currently only store the actual pointer of the underlying buffer, but
will soon add the number of VID headers contained in the buffer.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fix conflicts]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/attach.c  | 40 +++++++++----------
 drivers/mtd/ubi/eba.c     | 81 ++++++++++++++++++++++-----------------
 drivers/mtd/ubi/fastmap.c | 71 ++++++++++++++++++++--------------
 drivers/mtd/ubi/io.c      | 39 ++++++++++---------
 drivers/mtd/ubi/ubi.h     | 97 ++++++++++++++++++++++++++++++++---------------
 drivers/mtd/ubi/vtbl.c    | 13 ++++---
 drivers/mtd/ubi/wl.c      | 19 ++++++----
 7 files changed, 218 insertions(+), 142 deletions(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index 36483b804fb1..eee0e55ba9ce 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -447,7 +447,7 @@ int ubi_compare_lebs(struct ubi_device *ubi, const struct ubi_ainf_peb *aeb,
 {
 	int len, err, second_is_newer, bitflips = 0, corrupted = 0;
 	uint32_t data_crc, crc;
-	struct ubi_vid_hdr *vh = NULL;
+	struct ubi_vid_io_buf *vidb = NULL;
 	unsigned long long sqnum2 = be64_to_cpu(vid_hdr->sqnum);
 
 	if (sqnum2 == aeb->sqnum) {
@@ -490,12 +490,12 @@ int ubi_compare_lebs(struct ubi_device *ubi, const struct ubi_ainf_peb *aeb,
 			return bitflips << 1;
 		}
 
-		vh = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
-		if (!vh)
+		vidb = ubi_alloc_vid_buf(ubi, GFP_KERNEL);
+		if (!vidb)
 			return -ENOMEM;
 
 		pnum = aeb->pnum;
-		err = ubi_io_read_vid_hdr(ubi, pnum, vh, 0);
+		err = ubi_io_read_vid_hdr(ubi, pnum, vidb, 0);
 		if (err) {
 			if (err == UBI_IO_BITFLIPS)
 				bitflips = 1;
@@ -509,7 +509,7 @@ int ubi_compare_lebs(struct ubi_device *ubi, const struct ubi_ainf_peb *aeb,
 			}
 		}
 
-		vid_hdr = vh;
+		vid_hdr = ubi_get_vid_hdr(vidb);
 	}
 
 	/* Read the data of the copy and check the CRC */
@@ -533,7 +533,7 @@ int ubi_compare_lebs(struct ubi_device *ubi, const struct ubi_ainf_peb *aeb,
 		bitflips |= !!err;
 	}
 
-	ubi_free_vid_hdr(ubi, vh);
+	ubi_free_vid_buf(vidb);
 
 	if (second_is_newer)
 		dbg_bld("second PEB %d is newer, copy_flag is set", pnum);
@@ -544,7 +544,7 @@ int ubi_compare_lebs(struct ubi_device *ubi, const struct ubi_ainf_peb *aeb,
 
 out_unlock:
 out_free_vidh:
-	ubi_free_vid_hdr(ubi, vh);
+	ubi_free_vid_buf(vidb);
 	return err;
 }
 
@@ -944,7 +944,8 @@ static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		    int pnum, bool fast)
 {
 	struct ubi_ec_hdr *ech = ai->ech;
-	struct ubi_vid_hdr *vidh = ai->vidh;
+	struct ubi_vid_io_buf *vidb = ai->vidb;
+	struct ubi_vid_hdr *vidh = ubi_get_vid_hdr(vidb);
 	long long ec;
 	int err, bitflips = 0, vol_id = -1, ec_err = 0;
 
@@ -1042,7 +1043,7 @@ static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 
 	/* OK, we've done with the EC header, let's look at the VID header */
 
-	err = ubi_io_read_vid_hdr(ubi, pnum, vidh, 0);
+	err = ubi_io_read_vid_hdr(ubi, pnum, vidb, 0);
 	if (err < 0)
 		return err;
 	switch (err) {
@@ -1384,8 +1385,8 @@ static int scan_all(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	if (!ai->ech)
 		return err;
 
-	ai->vidh = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
-	if (!ai->vidh)
+	ai->vidb = ubi_alloc_vid_buf(ubi, GFP_KERNEL);
+	if (!ai->vidb)
 		goto out_ech;
 
 	for (pnum = start; pnum < ubi->peb_count; pnum++) {
@@ -1432,13 +1433,13 @@ static int scan_all(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	if (err)
 		goto out_vidh;
 
-	ubi_free_vid_hdr(ubi, ai->vidh);
+	ubi_free_vid_buf(ai->vidb);
 	kfree(ai->ech);
 
 	return 0;
 
 out_vidh:
-	ubi_free_vid_hdr(ubi, ai->vidh);
+	ubi_free_vid_buf(ai->vidb);
 out_ech:
 	kfree(ai->ech);
 	return err;
@@ -1489,8 +1490,8 @@ static int scan_fast(struct ubi_device *ubi, struct ubi_attach_info **ai)
 	if (!scan_ai->ech)
 		goto out_ai;
 
-	scan_ai->vidh = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
-	if (!scan_ai->vidh)
+	scan_ai->vidb = ubi_alloc_vid_buf(ubi, GFP_KERNEL);
+	if (!scan_ai->vidb)
 		goto out_ech;
 
 	for (pnum = 0; pnum < UBI_FM_MAX_START; pnum++) {
@@ -1500,7 +1501,7 @@ static int scan_fast(struct ubi_device *ubi, struct ubi_attach_info **ai)
 			goto out_vidh;
 	}
 
-	ubi_free_vid_hdr(ubi, scan_ai->vidh);
+	ubi_free_vid_buf(scan_ai->vidb);
 	kfree(scan_ai->ech);
 
 	if (scan_ai->force_full_scan)
@@ -1521,7 +1522,7 @@ static int scan_fast(struct ubi_device *ubi, struct ubi_attach_info **ai)
 	return err;
 
 out_vidh:
-	ubi_free_vid_hdr(ubi, scan_ai->vidh);
+	ubi_free_vid_buf(scan_ai->vidb);
 out_ech:
 	kfree(scan_ai->ech);
 out_ai:
@@ -1645,7 +1646,8 @@ out_ai:
  */
 static int self_check_ai(struct ubi_device *ubi, struct ubi_attach_info *ai)
 {
-	struct ubi_vid_hdr *vidh = ai->vidh;
+	struct ubi_vid_io_buf *vidb = ai->vidb;
+	struct ubi_vid_hdr *vidh = ubi_get_vid_hdr(vidb);
 	int pnum, err, vols_found = 0;
 	struct rb_node *rb1, *rb2;
 	struct ubi_ainf_volume *av;
@@ -1775,7 +1777,7 @@ static int self_check_ai(struct ubi_device *ubi, struct ubi_attach_info *ai)
 
 			last_aeb = aeb;
 
-			err = ubi_io_read_vid_hdr(ubi, aeb->pnum, vidh, 1);
+			err = ubi_io_read_vid_hdr(ubi, aeb->pnum, vidb, 1);
 			if (err && err != UBI_IO_BITFLIPS) {
 				ubi_err(ubi, "VID header is not OK (%d)",
 					err);
diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index 652474b4ba45..7c0fdefa2576 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -479,6 +479,7 @@ int ubi_eba_read_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
 		     void *buf, int offset, int len, int check)
 {
 	int err, pnum, scrub = 0, vol_id = vol->vol_id;
+	struct ubi_vid_io_buf *vidb;
 	struct ubi_vid_hdr *vid_hdr;
 	uint32_t uninitialized_var(crc);
 
@@ -509,13 +510,15 @@ int ubi_eba_read_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
 
 retry:
 	if (check) {
-		vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
-		if (!vid_hdr) {
+		vidb = ubi_alloc_vid_buf(ubi, GFP_NOFS);
+		if (!vidb) {
 			err = -ENOMEM;
 			goto out_unlock;
 		}
 
-		err = ubi_io_read_vid_hdr(ubi, pnum, vid_hdr, 1);
+		vid_hdr = ubi_get_vid_hdr(vidb);
+
+		err = ubi_io_read_vid_hdr(ubi, pnum, vidb, 1);
 		if (err && err != UBI_IO_BITFLIPS) {
 			if (err > 0) {
 				/*
@@ -561,7 +564,7 @@ retry:
 		ubi_assert(len == be32_to_cpu(vid_hdr->data_size));
 
 		crc = be32_to_cpu(vid_hdr->data_crc);
-		ubi_free_vid_hdr(ubi, vid_hdr);
+		ubi_free_vid_buf(vidb);
 	}
 
 	err = ubi_io_read_data(ubi, buf, pnum, offset, len);
@@ -598,7 +601,7 @@ retry:
 	return err;
 
 out_free:
-	ubi_free_vid_hdr(ubi, vid_hdr);
+	ubi_free_vid_buf(vidb);
 out_unlock:
 	leb_read_unlock(ubi, vol_id, lnum);
 	return err;
@@ -612,7 +615,7 @@ out_unlock:
  * @buf: data which was not written because of the write failure
  * @offset: offset of the failed write
  * @len: how many bytes should have been written
- * @vid: VID header
+ * @vidb: VID buffer
  * @retry: whether the caller should retry in case of failure
  *
  * This function is called in case of a write failure and moves all good data
@@ -624,9 +627,10 @@ out_unlock:
  */
 static int try_recover_peb(struct ubi_volume *vol, int pnum, int lnum,
 			   const void *buf, int offset, int len,
-			   struct ubi_vid_hdr *vid_hdr, bool *retry)
+			   struct ubi_vid_io_buf *vidb, bool *retry)
 {
 	struct ubi_device *ubi = vol->ubi;
+	struct ubi_vid_hdr *vid_hdr;
 	int new_pnum, err, vol_id = vol->vol_id, data_size;
 	uint32_t crc;
 
@@ -641,7 +645,7 @@ static int try_recover_peb(struct ubi_volume *vol, int pnum, int lnum,
 	ubi_msg(ubi, "recover PEB %d, move data to PEB %d",
 		pnum, new_pnum);
 
-	err = ubi_io_read_vid_hdr(ubi, pnum, vid_hdr, 1);
+	err = ubi_io_read_vid_hdr(ubi, pnum, vidb, 1);
 	if (err && err != UBI_IO_BITFLIPS) {
 		if (err > 0)
 			err = -EIO;
@@ -669,7 +673,7 @@ static int try_recover_peb(struct ubi_volume *vol, int pnum, int lnum,
 	vid_hdr->copy_flag = 1;
 	vid_hdr->data_size = cpu_to_be32(data_size);
 	vid_hdr->data_crc = cpu_to_be32(crc);
-	err = ubi_io_write_vid_hdr(ubi, new_pnum, vid_hdr);
+	err = ubi_io_write_vid_hdr(ubi, new_pnum, vidb);
 	if (err)
 		goto out_unlock;
 
@@ -717,24 +721,24 @@ static int recover_peb(struct ubi_device *ubi, int pnum, int vol_id, int lnum,
 {
 	int err, idx = vol_id2idx(ubi, vol_id), tries;
 	struct ubi_volume *vol = ubi->volumes[idx];
-	struct ubi_vid_hdr *vid_hdr;
+	struct ubi_vid_io_buf *vidb;
 
-	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
-	if (!vid_hdr)
+	vidb = ubi_alloc_vid_buf(ubi, GFP_NOFS);
+	if (!vidb)
 		return -ENOMEM;
 
 	for (tries = 0; tries <= UBI_IO_RETRIES; tries++) {
 		bool retry;
 
-		err = try_recover_peb(vol, pnum, lnum, buf, offset, len,
-				      vid_hdr, &retry);
+		err = try_recover_peb(vol, pnum, lnum, buf, offset, len, vidb,
+				      &retry);
 		if (!err || !retry)
 			break;
 
 		ubi_msg(ubi, "try again");
 	}
 
-	ubi_free_vid_hdr(ubi, vid_hdr);
+	ubi_free_vid_buf(vidb);
 
 	return err;
 }
@@ -743,7 +747,7 @@ static int recover_peb(struct ubi_device *ubi, int pnum, int vol_id, int lnum,
  * try_write_vid_and_data - try to write VID header and data to a new PEB.
  * @vol: volume description object
  * @lnum: logical eraseblock number
- * @vid_hdr: VID header to write
+ * @vidb: the VID buffer to write
  * @buf: buffer containing the data
  * @offset: where to start writing data
  * @len: how many bytes should be written
@@ -755,7 +759,7 @@ static int recover_peb(struct ubi_device *ubi, int pnum, int vol_id, int lnum,
  * flash media, but may be some garbage.
  */
 static int try_write_vid_and_data(struct ubi_volume *vol, int lnum,
-				  struct ubi_vid_hdr *vid_hdr, const void *buf,
+				  struct ubi_vid_io_buf *vidb, const void *buf,
 				  int offset, int len)
 {
 	struct ubi_device *ubi = vol->ubi;
@@ -772,7 +776,7 @@ static int try_write_vid_and_data(struct ubi_volume *vol, int lnum,
 	dbg_eba("write VID hdr and %d bytes at offset %d of LEB %d:%d, PEB %d",
 		len, offset, vol_id, lnum, pnum);
 
-	err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
+	err = ubi_io_write_vid_hdr(ubi, pnum, vidb);
 	if (err) {
 		ubi_warn(ubi, "failed to write VID header to LEB %d:%d, PEB %d",
 			 vol_id, lnum, pnum);
@@ -819,6 +823,7 @@ int ubi_eba_write_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
 		      const void *buf, int offset, int len)
 {
 	int err, pnum, tries, vol_id = vol->vol_id;
+	struct ubi_vid_io_buf *vidb;
 	struct ubi_vid_hdr *vid_hdr;
 
 	if (ubi->ro_mode)
@@ -848,12 +853,14 @@ int ubi_eba_write_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
 	 * The logical eraseblock is not mapped. We have to get a free physical
 	 * eraseblock and write the volume identifier header there first.
 	 */
-	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
-	if (!vid_hdr) {
+	vidb = ubi_alloc_vid_buf(ubi, GFP_NOFS);
+	if (!vidb) {
 		leb_write_unlock(ubi, vol_id, lnum);
 		return -ENOMEM;
 	}
 
+	vid_hdr = ubi_get_vid_hdr(vidb);
+
 	vid_hdr->vol_type = UBI_VID_DYNAMIC;
 	vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
 	vid_hdr->vol_id = cpu_to_be32(vol_id);
@@ -862,8 +869,7 @@ int ubi_eba_write_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
 	vid_hdr->data_pad = cpu_to_be32(vol->data_pad);
 
 	for (tries = 0; tries <= UBI_IO_RETRIES; tries++) {
-		err = try_write_vid_and_data(vol, lnum, vid_hdr, buf, offset,
-					     len);
+		err = try_write_vid_and_data(vol, lnum, vidb, buf, offset, len);
 		if (err != -EIO || !ubi->bad_allowed)
 			break;
 
@@ -877,7 +883,7 @@ int ubi_eba_write_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
 		ubi_msg(ubi, "try another PEB");
 	}
 
-	ubi_free_vid_hdr(ubi, vid_hdr);
+	ubi_free_vid_buf(vidb);
 
 out:
 	if (err)
@@ -914,6 +920,7 @@ int ubi_eba_write_leb_st(struct ubi_device *ubi, struct ubi_volume *vol,
 			 int lnum, const void *buf, int len, int used_ebs)
 {
 	int err, tries, data_size = len, vol_id = vol->vol_id;
+	struct ubi_vid_io_buf *vidb;
 	struct ubi_vid_hdr *vid_hdr;
 	uint32_t crc;
 
@@ -926,10 +933,12 @@ int ubi_eba_write_leb_st(struct ubi_device *ubi, struct ubi_volume *vol,
 	else
 		ubi_assert(!(len & (ubi->min_io_size - 1)));
 
-	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
-	if (!vid_hdr)
+	vidb = ubi_alloc_vid_buf(ubi, GFP_NOFS);
+	if (!vidb)
 		return -ENOMEM;
 
+	vid_hdr = ubi_get_vid_hdr(vidb);
+
 	err = leb_write_lock(ubi, vol_id, lnum);
 	if (err)
 		goto out;
@@ -949,7 +958,7 @@ int ubi_eba_write_leb_st(struct ubi_device *ubi, struct ubi_volume *vol,
 	ubi_assert(vol->eba_tbl->entries[lnum].pnum < 0);
 
 	for (tries = 0; tries <= UBI_IO_RETRIES; tries++) {
-		err = try_write_vid_and_data(vol, lnum, vid_hdr, buf, 0, len);
+		err = try_write_vid_and_data(vol, lnum, vidb, buf, 0, len);
 		if (err != -EIO || !ubi->bad_allowed)
 			break;
 
@@ -963,7 +972,7 @@ int ubi_eba_write_leb_st(struct ubi_device *ubi, struct ubi_volume *vol,
 	leb_write_unlock(ubi, vol_id, lnum);
 
 out:
-	ubi_free_vid_hdr(ubi, vid_hdr);
+	ubi_free_vid_buf(vidb);
 
 	return err;
 }
@@ -989,6 +998,7 @@ int ubi_eba_atomic_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
 			      int lnum, const void *buf, int len)
 {
 	int err, tries, vol_id = vol->vol_id;
+	struct ubi_vid_io_buf *vidb;
 	struct ubi_vid_hdr *vid_hdr;
 	uint32_t crc;
 
@@ -1006,10 +1016,12 @@ int ubi_eba_atomic_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
 		return ubi_eba_write_leb(ubi, vol, lnum, NULL, 0, 0);
 	}
 
-	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
-	if (!vid_hdr)
+	vidb = ubi_alloc_vid_buf(ubi, GFP_NOFS);
+	if (!vidb)
 		return -ENOMEM;
 
+	vid_hdr = ubi_get_vid_hdr(vidb);
+
 	err = leb_write_lock(ubi, vol_id, lnum);
 	if (err)
 		goto out_mutex;
@@ -1029,7 +1041,7 @@ int ubi_eba_atomic_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
 	dbg_eba("change LEB %d:%d", vol_id, lnum);
 
 	for (tries = 0; tries <= UBI_IO_RETRIES; tries++) {
-		err = try_write_vid_and_data(vol, lnum, vid_hdr, buf, 0, len);
+		err = try_write_vid_and_data(vol, lnum, vidb, buf, 0, len);
 		if (err != -EIO || !ubi->bad_allowed)
 			break;
 
@@ -1048,7 +1060,7 @@ int ubi_eba_atomic_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
 	leb_write_unlock(ubi, vol_id, lnum);
 
 out_mutex:
-	ubi_free_vid_hdr(ubi, vid_hdr);
+	ubi_free_vid_buf(vidb);
 	return err;
 }
 
@@ -1094,9 +1106,10 @@ static int is_error_sane(int err)
  *   o a negative error code in case of failure.
  */
 int ubi_eba_copy_leb(struct ubi_device *ubi, int from, int to,
-		     struct ubi_vid_hdr *vid_hdr)
+		     struct ubi_vid_io_buf *vidb)
 {
 	int err, vol_id, lnum, data_size, aldata_size, idx;
+	struct ubi_vid_hdr *vid_hdr = ubi_get_vid_hdr(vidb);
 	struct ubi_volume *vol;
 	uint32_t crc;
 
@@ -1203,7 +1216,7 @@ int ubi_eba_copy_leb(struct ubi_device *ubi, int from, int to,
 	}
 	vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
 
-	err = ubi_io_write_vid_hdr(ubi, to, vid_hdr);
+	err = ubi_io_write_vid_hdr(ubi, to, vidb);
 	if (err) {
 		if (err == -EIO)
 			err = MOVE_TARGET_WR_ERR;
@@ -1211,7 +1224,7 @@ int ubi_eba_copy_leb(struct ubi_device *ubi, int from, int to,
 	}
 
 	/* Read the VID header back and check if it was written correctly */
-	err = ubi_io_read_vid_hdr(ubi, to, vid_hdr, 1);
+	err = ubi_io_read_vid_hdr(ubi, to, vidb, 1);
 	if (err) {
 		if (err != UBI_IO_BITFLIPS) {
 			ubi_warn(ubi, "error %d while reading VID header back from PEB %d",
diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index b319ae672cf2..a0b5fe784a6f 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -44,21 +44,23 @@ size_t ubi_calc_fm_size(struct ubi_device *ubi)
  * Returns a new struct ubi_vid_hdr on success.
  * NULL indicates out of memory.
  */
-static struct ubi_vid_hdr *new_fm_vhdr(struct ubi_device *ubi, int vol_id)
+static struct ubi_vid_io_buf *new_fm_vbuf(struct ubi_device *ubi, int vol_id)
 {
-	struct ubi_vid_hdr *new;
+	struct ubi_vid_io_buf *new;
+	struct ubi_vid_hdr *vh;
 
-	new = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
+	new = ubi_alloc_vid_buf(ubi, GFP_KERNEL);
 	if (!new)
 		goto out;
 
-	new->vol_type = UBI_VID_DYNAMIC;
-	new->vol_id = cpu_to_be32(vol_id);
+	vh = ubi_get_vid_hdr(new);
+	vh->vol_type = UBI_VID_DYNAMIC;
+	vh->vol_id = cpu_to_be32(vol_id);
 
 	/* UBI implementations without fastmap support have to delete the
 	 * fastmap.
 	 */
-	new->compat = UBI_COMPAT_DELETE;
+	vh->compat = UBI_COMPAT_DELETE;
 
 out:
 	return new;
@@ -345,6 +347,7 @@ static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		     __be32 *pebs, int pool_size, unsigned long long *max_sqnum,
 		     struct list_head *lfree)
 {
+	struct ubi_vid_io_buf *vb;
 	struct ubi_vid_hdr *vh;
 	struct ubi_ec_hdr *ech;
 	struct ubi_ainf_peb *new_aeb;
@@ -354,12 +357,14 @@ static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	if (!ech)
 		return -ENOMEM;
 
-	vh = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
-	if (!vh) {
+	vb = ubi_alloc_vid_buf(ubi, GFP_KERNEL);
+	if (!vb) {
 		kfree(ech);
 		return -ENOMEM;
 	}
 
+	vh = ubi_get_vid_hdr(vb);
+
 	dbg_bld("scanning fastmap pool: size = %i", pool_size);
 
 	/*
@@ -400,7 +405,7 @@ static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			goto out;
 		}
 
-		err = ubi_io_read_vid_hdr(ubi, pnum, vh, 0);
+		err = ubi_io_read_vid_hdr(ubi, pnum, vb, 0);
 		if (err == UBI_IO_FF || err == UBI_IO_FF_BITFLIPS) {
 			unsigned long long ec = be64_to_cpu(ech->ec);
 			unmap_peb(ai, pnum);
@@ -446,7 +451,7 @@ static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	}
 
 out:
-	ubi_free_vid_hdr(ubi, vh);
+	ubi_free_vid_buf(vb);
 	kfree(ech);
 	return ret;
 }
@@ -774,6 +779,7 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		     struct ubi_attach_info *scan_ai)
 {
 	struct ubi_fm_sb *fmsb, *fmsb2;
+	struct ubi_vid_io_buf *vb;
 	struct ubi_vid_hdr *vh;
 	struct ubi_ec_hdr *ech;
 	struct ubi_fastmap_layout *fm;
@@ -848,12 +854,14 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		goto free_fm_sb;
 	}
 
-	vh = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
-	if (!vh) {
+	vb = ubi_alloc_vid_buf(ubi, GFP_KERNEL);
+	if (!vb) {
 		ret = -ENOMEM;
 		goto free_hdr;
 	}
 
+	vh = ubi_get_vid_hdr(vb);
+
 	for (i = 0; i < used_blocks; i++) {
 		int image_seq;
 
@@ -896,7 +904,7 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			goto free_hdr;
 		}
 
-		ret = ubi_io_read_vid_hdr(ubi, pnum, vh, 0);
+		ret = ubi_io_read_vid_hdr(ubi, pnum, vb, 0);
 		if (ret && ret != UBI_IO_BITFLIPS) {
 			ubi_err(ubi, "unable to read fastmap block# %i (PEB: %i)",
 				i, pnum);
@@ -986,7 +994,7 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	ubi->fm_disabled = 0;
 	ubi->fast_attach = 1;
 
-	ubi_free_vid_hdr(ubi, vh);
+	ubi_free_vid_buf(vb);
 	kfree(ech);
 out:
 	if (ret == UBI_BAD_FASTMAP)
@@ -994,7 +1002,7 @@ out:
 	return ret;
 
 free_hdr:
-	ubi_free_vid_hdr(ubi, vh);
+	ubi_free_vid_buf(vb);
 	kfree(ech);
 free_fm_sb:
 	kfree(fmsb);
@@ -1022,6 +1030,7 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 	struct ubi_fm_eba *feba;
 	struct ubi_wl_entry *wl_e;
 	struct ubi_volume *vol;
+	struct ubi_vid_io_buf *avbuf, *dvbuf;
 	struct ubi_vid_hdr *avhdr, *dvhdr;
 	struct ubi_work *ubi_wrk;
 	struct rb_node *tmp_rb;
@@ -1031,18 +1040,21 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 	fm_raw = ubi->fm_buf;
 	memset(ubi->fm_buf, 0, ubi->fm_size);
 
-	avhdr = new_fm_vhdr(ubi, UBI_FM_SB_VOLUME_ID);
-	if (!avhdr) {
+	avbuf = new_fm_vbuf(ubi, UBI_FM_SB_VOLUME_ID);
+	if (!avbuf) {
 		ret = -ENOMEM;
 		goto out;
 	}
 
-	dvhdr = new_fm_vhdr(ubi, UBI_FM_DATA_VOLUME_ID);
-	if (!dvhdr) {
+	dvbuf = new_fm_vbuf(ubi, UBI_FM_DATA_VOLUME_ID);
+	if (!dvbuf) {
 		ret = -ENOMEM;
 		goto out_kfree;
 	}
 
+	avhdr = ubi_get_vid_hdr(avbuf);
+	dvhdr = ubi_get_vid_hdr(dvbuf);
+
 	fmsb = (struct ubi_fm_sb *)fm_raw;
 	fm_pos += sizeof(*fmsb);
 	ubi_assert(fm_pos <= ubi->fm_size);
@@ -1190,7 +1202,7 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 	avhdr->lnum = 0;
 
 	dbg_bld("writing fastmap SB to PEB %i", new_fm->e[0]->pnum);
-	ret = ubi_io_write_vid_hdr(ubi, new_fm->e[0]->pnum, avhdr);
+	ret = ubi_io_write_vid_hdr(ubi, new_fm->e[0]->pnum, avbuf);
 	if (ret) {
 		ubi_err(ubi, "unable to write vid_hdr to fastmap SB!");
 		goto out_kfree;
@@ -1210,7 +1222,7 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 		dvhdr->lnum = cpu_to_be32(i);
 		dbg_bld("writing fastmap data to PEB %i sqnum %llu",
 			new_fm->e[i]->pnum, be64_to_cpu(dvhdr->sqnum));
-		ret = ubi_io_write_vid_hdr(ubi, new_fm->e[i]->pnum, dvhdr);
+		ret = ubi_io_write_vid_hdr(ubi, new_fm->e[i]->pnum, dvbuf);
 		if (ret) {
 			ubi_err(ubi, "unable to write vid_hdr to PEB %i!",
 				new_fm->e[i]->pnum);
@@ -1234,8 +1246,8 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 	dbg_bld("fastmap written!");
 
 out_kfree:
-	ubi_free_vid_hdr(ubi, avhdr);
-	ubi_free_vid_hdr(ubi, dvhdr);
+	ubi_free_vid_buf(avbuf);
+	ubi_free_vid_buf(dvbuf);
 out:
 	return ret;
 }
@@ -1304,7 +1316,8 @@ static int invalidate_fastmap(struct ubi_device *ubi)
 	int ret;
 	struct ubi_fastmap_layout *fm;
 	struct ubi_wl_entry *e;
-	struct ubi_vid_hdr *vh = NULL;
+	struct ubi_vid_io_buf *vb = NULL;
+	struct ubi_vid_hdr *vh;
 
 	if (!ubi->fm)
 		return 0;
@@ -1316,10 +1329,12 @@ static int invalidate_fastmap(struct ubi_device *ubi)
 	if (!fm)
 		goto out;
 
-	vh = new_fm_vhdr(ubi, UBI_FM_SB_VOLUME_ID);
-	if (!vh)
+	vb = new_fm_vbuf(ubi, UBI_FM_SB_VOLUME_ID);
+	if (!vb)
 		goto out_free_fm;
 
+	vh = ubi_get_vid_hdr(vb);
+
 	ret = -ENOSPC;
 	e = ubi_wl_get_fm_peb(ubi, 1);
 	if (!e)
@@ -1330,7 +1345,7 @@ static int invalidate_fastmap(struct ubi_device *ubi)
 	 * to scanning mode.
 	 */
 	vh->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
-	ret = ubi_io_write_vid_hdr(ubi, e->pnum, vh);
+	ret = ubi_io_write_vid_hdr(ubi, e->pnum, vb);
 	if (ret < 0) {
 		ubi_wl_put_fm_peb(ubi, e, 0, 0);
 		goto out_free_fm;
@@ -1342,7 +1357,7 @@ static int invalidate_fastmap(struct ubi_device *ubi)
 	ubi->fm = fm;
 
 out:
-	ubi_free_vid_hdr(ubi, vh);
+	ubi_free_vid_buf(vb);
 	return ret;
 
 out_free_fm:
diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index 6d08f92ea647..4c2731c4172a 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -226,6 +226,7 @@ static int nor_erase_prepare(struct ubi_device *ubi, int pnum)
 	loff_t addr;
 	uint32_t data = 0;
 	struct ubi_ec_hdr ec_hdr;
+	struct ubi_vid_io_buf vidb;
 
 	/*
 	 * Note, we cannot generally define VID header buffers on stack,
@@ -252,7 +253,10 @@ static int nor_erase_prepare(struct ubi_device *ubi, int pnum)
 			goto error;
 	}
 
-	err = ubi_io_read_vid_hdr(ubi, pnum, &vid_hdr, 0);
+	ubi_init_vid_buf(ubi, &vidb, &vid_hdr);
+	ubi_assert(&vid_hdr == ubi_get_vid_hdr(&vidb));
+
+	err = ubi_io_read_vid_hdr(ubi, pnum, &vidb, 0);
 	if (err != UBI_IO_BAD_HDR_EBADMSG && err != UBI_IO_BAD_HDR &&
 	    err != UBI_IO_FF){
 		addr += ubi->vid_hdr_aloffset;
@@ -687,12 +691,11 @@ bad:
  * ubi_io_read_vid_hdr - read and check a volume identifier header.
  * @ubi: UBI device description object
  * @pnum: physical eraseblock number to read from
- * @vid_hdr: &struct ubi_vid_hdr object where to store the read volume
- * identifier header
+ * @vidb: the volume identifier buffer to store data in
  * @verbose: be verbose if the header is corrupted or wasn't found
  *
  * This function reads the volume identifier header from physical eraseblock
- * @pnum and stores it in @vid_hdr. It also checks CRC checksum of the read
+ * @pnum and stores it in @vidb. It also checks CRC checksum of the read
  * volume identifier header. The error codes are the same as in
  * 'ubi_io_read_ec_hdr()'.
  *
@@ -700,16 +703,16 @@ bad:
  * 'ubi_io_read_ec_hdr()', so refer commentaries in 'ubi_io_read_ec_hdr()'.
  */
 int ubi_io_read_vid_hdr(struct ubi_device *ubi, int pnum,
-			struct ubi_vid_hdr *vid_hdr, int verbose)
+			struct ubi_vid_io_buf *vidb, int verbose)
 {
 	int err, read_err;
 	uint32_t crc, magic, hdr_crc;
-	void *p;
+	struct ubi_vid_hdr *vid_hdr = ubi_get_vid_hdr(vidb);
+	void *p = vidb->buffer;
 
 	dbg_io("read VID header from PEB %d", pnum);
 	ubi_assert(pnum >= 0 &&  pnum < ubi->peb_count);
 
-	p = (char *)vid_hdr - ubi->vid_hdr_shift;
 	read_err = ubi_io_read(ubi, p, pnum, ubi->vid_hdr_aloffset,
 			  ubi->vid_hdr_shift + UBI_VID_HDR_SIZE);
 	if (read_err && read_err != UBI_IO_BITFLIPS && !mtd_is_eccerr(read_err))
@@ -772,23 +775,24 @@ int ubi_io_read_vid_hdr(struct ubi_device *ubi, int pnum,
  * ubi_io_write_vid_hdr - write a volume identifier header.
  * @ubi: UBI device description object
  * @pnum: the physical eraseblock number to write to
- * @vid_hdr: the volume identifier header to write
+ * @vidb: the volume identifier buffer to write
  *
  * This function writes the volume identifier header described by @vid_hdr to
  * physical eraseblock @pnum. This function automatically fills the
- * @vid_hdr->magic and the @vid_hdr->version fields, as well as calculates
- * header CRC checksum and stores it at vid_hdr->hdr_crc.
+ * @vidb->hdr->magic and the @vidb->hdr->version fields, as well as calculates
+ * header CRC checksum and stores it at vidb->hdr->hdr_crc.
  *
  * This function returns zero in case of success and a negative error code in
  * case of failure. If %-EIO is returned, the physical eraseblock probably went
  * bad.
  */
 int ubi_io_write_vid_hdr(struct ubi_device *ubi, int pnum,
-			 struct ubi_vid_hdr *vid_hdr)
+			 struct ubi_vid_io_buf *vidb)
 {
+	struct ubi_vid_hdr *vid_hdr = ubi_get_vid_hdr(vidb);
 	int err;
 	uint32_t crc;
-	void *p;
+	void *p = vidb->buffer;
 
 	dbg_io("write VID header to PEB %d", pnum);
 	ubi_assert(pnum >= 0 &&  pnum < ubi->peb_count);
@@ -806,7 +810,6 @@ int ubi_io_write_vid_hdr(struct ubi_device *ubi, int pnum,
 	if (err)
 		return err;
 
-	p = (char *)vid_hdr - ubi->vid_hdr_shift;
 	err = ubi_io_write(ubi, p, pnum, ubi->vid_hdr_aloffset,
 			   ubi->vid_hdr_alsize);
 	return err;
@@ -972,17 +975,19 @@ static int self_check_peb_vid_hdr(const struct ubi_device *ubi, int pnum)
 {
 	int err;
 	uint32_t crc, hdr_crc;
+	struct ubi_vid_io_buf *vidb;
 	struct ubi_vid_hdr *vid_hdr;
 	void *p;
 
 	if (!ubi_dbg_chk_io(ubi))
 		return 0;
 
-	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
-	if (!vid_hdr)
+	vidb = ubi_alloc_vid_buf(ubi, GFP_NOFS);
+	if (!vidb)
 		return -ENOMEM;
 
-	p = (char *)vid_hdr - ubi->vid_hdr_shift;
+	vid_hdr = ubi_get_vid_hdr(vidb);
+	p = vidb->buffer;
 	err = ubi_io_read(ubi, p, pnum, ubi->vid_hdr_aloffset,
 			  ubi->vid_hdr_alsize);
 	if (err && err != UBI_IO_BITFLIPS && !mtd_is_eccerr(err))
@@ -1003,7 +1008,7 @@ static int self_check_peb_vid_hdr(const struct ubi_device *ubi, int pnum)
 	err = self_check_vid_hdr(ubi, pnum, vid_hdr);
 
 exit:
-	ubi_free_vid_hdr(ubi, vid_hdr);
+	ubi_free_vid_buf(vidb);
 	return err;
 }
 
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index c61b2d9d0a28..4f1ba745ccc9 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -140,6 +140,17 @@ enum {
 };
 
 /**
+ * struct ubi_vid_io_buf - VID buffer used to read/write VID info to/from the
+ *			   flash.
+ * @hdr: a pointer to the VID header stored in buffer
+ * @buffer: underlying buffer
+ */
+struct ubi_vid_io_buf {
+	struct ubi_vid_hdr *hdr;
+	void *buffer;
+};
+
+/**
  * struct ubi_wl_entry - wear-leveling entry.
  * @u.rb: link in the corresponding (free/used) RB-tree
  * @u.list: link in the protection queue
@@ -676,7 +687,7 @@ struct ubi_ainf_volume {
  * @ec_count: a temporary variable used when calculating @mean_ec
  * @aeb_slab_cache: slab cache for &struct ubi_ainf_peb objects
  * @ech: temporary EC header. Only available during scan
- * @vidh: temporary VID header. Only available during scan
+ * @vidh: temporary VID buffer. Only available during scan
  *
  * This data structure contains the result of attaching an MTD device and may
  * be used by other UBI sub-systems to build final UBI data structures, further
@@ -706,7 +717,7 @@ struct ubi_attach_info {
 	int ec_count;
 	struct kmem_cache *aeb_slab_cache;
 	struct ubi_ec_hdr *ech;
-	struct ubi_vid_hdr *vidh;
+	struct ubi_vid_io_buf *vidb;
 };
 
 /**
@@ -819,7 +830,7 @@ int ubi_eba_write_leb_st(struct ubi_device *ubi, struct ubi_volume *vol,
 int ubi_eba_atomic_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
 			      int lnum, const void *buf, int len);
 int ubi_eba_copy_leb(struct ubi_device *ubi, int from, int to,
-		     struct ubi_vid_hdr *vid_hdr);
+		     struct ubi_vid_io_buf *vidb);
 int ubi_eba_init(struct ubi_device *ubi, struct ubi_attach_info *ai);
 unsigned long long ubi_next_sqnum(struct ubi_device *ubi);
 int self_check_eba(struct ubi_device *ubi, struct ubi_attach_info *ai_fastmap,
@@ -853,9 +864,9 @@ int ubi_io_read_ec_hdr(struct ubi_device *ubi, int pnum,
 int ubi_io_write_ec_hdr(struct ubi_device *ubi, int pnum,
 			struct ubi_ec_hdr *ec_hdr);
 int ubi_io_read_vid_hdr(struct ubi_device *ubi, int pnum,
-			struct ubi_vid_hdr *vid_hdr, int verbose);
+			struct ubi_vid_io_buf *vidb, int verbose);
 int ubi_io_write_vid_hdr(struct ubi_device *ubi, int pnum,
-			 struct ubi_vid_hdr *vid_hdr);
+			 struct ubi_vid_io_buf *vidb);
 
 /* build.c */
 int ubi_detach_mtd_dev(int ubi_num, int anyway);
@@ -958,44 +969,68 @@ static inline void ubi_move_aeb_to_list(struct ubi_ainf_volume *av,
 }
 
 /**
- * ubi_zalloc_vid_hdr - allocate a volume identifier header object.
- * @ubi: UBI device description object
- * @gfp_flags: GFP flags to allocate with
- *
- * This function returns a pointer to the newly allocated and zero-filled
- * volume identifier header object in case of success and %NULL in case of
- * failure.
+ * ubi_init_vid_buf - Initialize a VID buffer
+ * @ubi: the UBI device
+ * @vidb: the VID buffer to initialize
+ * @buf: the underlying buffer
+ */
+static inline void ubi_init_vid_buf(const struct ubi_device *ubi,
+				    struct ubi_vid_io_buf *vidb,
+				    void *buf)
+{
+	if (buf)
+		memset(buf, 0, ubi->vid_hdr_alsize);
+
+	vidb->buffer = buf;
+	vidb->hdr = buf + ubi->vid_hdr_shift;
+}
+
+/**
+ * ubi_init_vid_buf - Allocate a VID buffer
+ * @ubi: the UBI device
+ * @gfp_flags: GFP flags to use for the allocation
  */
-static inline struct ubi_vid_hdr *
-ubi_zalloc_vid_hdr(const struct ubi_device *ubi, gfp_t gfp_flags)
+static inline struct ubi_vid_io_buf *
+ubi_alloc_vid_buf(const struct ubi_device *ubi, gfp_t gfp_flags)
 {
-	void *vid_hdr;
+	struct ubi_vid_io_buf *vidb;
+	void *buf;
 
-	vid_hdr = kzalloc(ubi->vid_hdr_alsize, gfp_flags);
-	if (!vid_hdr)
+	vidb = kzalloc(sizeof(*vidb), gfp_flags);
+	if (!vidb)
 		return NULL;
 
-	/*
-	 * VID headers may be stored at un-aligned flash offsets, so we shift
-	 * the pointer.
-	 */
-	return vid_hdr + ubi->vid_hdr_shift;
+	buf = kmalloc(ubi->vid_hdr_alsize, gfp_flags);
+	if (!buf) {
+		kfree(vidb);
+		return NULL;
+	}
+
+	ubi_init_vid_buf(ubi, vidb, buf);
+
+	return vidb;
 }
 
 /**
- * ubi_free_vid_hdr - free a volume identifier header object.
- * @ubi: UBI device description object
- * @vid_hdr: the object to free
+ * ubi_free_vid_buf - Free a VID buffer
+ * @vidb: the VID buffer to free
  */
-static inline void ubi_free_vid_hdr(const struct ubi_device *ubi,
-				    struct ubi_vid_hdr *vid_hdr)
+static inline void ubi_free_vid_buf(struct ubi_vid_io_buf *vidb)
 {
-	void *p = vid_hdr;
-
-	if (!p)
+	if (!vidb)
 		return;
 
-	kfree(p - ubi->vid_hdr_shift);
+	kfree(vidb->buffer);
+	kfree(vidb);
+}
+
+/**
+ * ubi_get_vid_hdr - Get the VID header attached to a VID buffer
+ * @vidb: VID buffer
+ */
+static inline struct ubi_vid_hdr *ubi_get_vid_hdr(struct ubi_vid_io_buf *vidb)
+{
+	return vidb->hdr;
 }
 
 /*
diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
index ea30edef87bf..41af1f4d9204 100644
--- a/drivers/mtd/ubi/vtbl.c
+++ b/drivers/mtd/ubi/vtbl.c
@@ -290,15 +290,18 @@ static int create_vtbl(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		       int copy, void *vtbl)
 {
 	int err, tries = 0;
+	struct ubi_vid_io_buf *vidb;
 	struct ubi_vid_hdr *vid_hdr;
 	struct ubi_ainf_peb *new_aeb;
 
 	dbg_gen("create volume table (copy #%d)", copy + 1);
 
-	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
-	if (!vid_hdr)
+	vidb = ubi_alloc_vid_buf(ubi, GFP_KERNEL);
+	if (!vidb)
 		return -ENOMEM;
 
+	vid_hdr = ubi_get_vid_hdr(vidb);
+
 retry:
 	new_aeb = ubi_early_get_peb(ubi, ai);
 	if (IS_ERR(new_aeb)) {
@@ -315,7 +318,7 @@ retry:
 	vid_hdr->sqnum = cpu_to_be64(++ai->max_sqnum);
 
 	/* The EC header is already there, write the VID header */
-	err = ubi_io_write_vid_hdr(ubi, new_aeb->pnum, vid_hdr);
+	err = ubi_io_write_vid_hdr(ubi, new_aeb->pnum, vidb);
 	if (err)
 		goto write_error;
 
@@ -330,7 +333,7 @@ retry:
 	 */
 	err = ubi_add_to_av(ubi, ai, new_aeb->pnum, new_aeb->ec, vid_hdr, 0);
 	ubi_free_aeb(ai, new_aeb);
-	ubi_free_vid_hdr(ubi, vid_hdr);
+	ubi_free_vid_buf(vidb);
 	return err;
 
 write_error:
@@ -345,7 +348,7 @@ write_error:
 	kfree(new_aeb);
 	ubi_free_aeb(ai, new_aeb);
 out_free:
-	ubi_free_vid_hdr(ubi, vid_hdr);
+	ubi_free_vid_buf(vidb);
 	return err;
 
 }
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index eef9c17c2d0f..32cea29e8827 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -623,6 +623,7 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 	int anchor = wrk->anchor;
 #endif
 	struct ubi_wl_entry *e1, *e2;
+	struct ubi_vid_io_buf *vidb;
 	struct ubi_vid_hdr *vid_hdr;
 	int dst_leb_clean = 0;
 
@@ -630,10 +631,12 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 	if (shutdown)
 		return 0;
 
-	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
-	if (!vid_hdr)
+	vidb = ubi_alloc_vid_buf(ubi, GFP_NOFS);
+	if (!vidb)
 		return -ENOMEM;
 
+	vid_hdr = ubi_get_vid_hdr(vidb);
+
 	ubi_assert(!ubi->move_from && !ubi->move_to);
 	ubi_assert(!ubi->move_to_put);
 
@@ -724,7 +727,7 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 	 * which is being moved was unmapped.
 	 */
 
-	err = ubi_io_read_vid_hdr(ubi, e1->pnum, vid_hdr, 0);
+	err = ubi_io_read_vid_hdr(ubi, e1->pnum, vidb, 0);
 	if (err && err != UBI_IO_BITFLIPS) {
 		dst_leb_clean = 1;
 		if (err == UBI_IO_FF) {
@@ -761,7 +764,7 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 	vol_id = be32_to_cpu(vid_hdr->vol_id);
 	lnum = be32_to_cpu(vid_hdr->lnum);
 
-	err = ubi_eba_copy_leb(ubi, e1->pnum, e2->pnum, vid_hdr);
+	err = ubi_eba_copy_leb(ubi, e1->pnum, e2->pnum, vidb);
 	if (err) {
 		if (err == MOVE_CANCEL_RACE) {
 			/*
@@ -818,7 +821,7 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 	if (scrubbing)
 		ubi_msg(ubi, "scrubbed PEB %d (LEB %d:%d), data moved to PEB %d",
 			e1->pnum, vol_id, lnum, e2->pnum);
-	ubi_free_vid_hdr(ubi, vid_hdr);
+	ubi_free_vid_buf(vidb);
 
 	if (!ubi->move_to_put) {
 		wl_tree_add(e2, &ubi->used);
@@ -879,7 +882,7 @@ out_not_moved:
 	ubi->move_from = ubi->move_to = NULL;
 	ubi->wl_scheduled = 0;
 
-	ubi_free_vid_hdr(ubi, vid_hdr);
+	ubi_free_vid_buf(vidb);
 	if (dst_leb_clean) {
 		ensure_wear_leveling(ubi, 1);
 	} else {
@@ -900,7 +903,7 @@ out_error:
 	ubi->move_from = ubi->move_to = NULL;
 	ubi->move_to_put = ubi->wl_scheduled = 0;
 
-	ubi_free_vid_hdr(ubi, vid_hdr);
+	ubi_free_vid_buf(vidb);
 	wl_entry_destroy(ubi, e1);
 	wl_entry_destroy(ubi, e2);
 
@@ -911,7 +914,7 @@ out_ro:
 
 out_cancel:
 	ubi->wl_scheduled = 0;
-	ubi_free_vid_hdr(ubi, vid_hdr);
+	ubi_free_vid_buf(vidb);
 	return 0;
 }
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

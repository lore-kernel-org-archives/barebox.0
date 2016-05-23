Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEF-0000Jt-ID
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:09 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id F2100A00CB5
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:21 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:25:55 +0200
Message-Id: <1463992010-31537-8-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
References: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 07/62] UBI: Extend UBI layer debug/messaging capabilities
To: barebox@lists.infradead.org

From: Tanya Brokhman <tlinder@codeaurora.org>

If there is more then one UBI device mounted, there is no way to
distinguish between messages from different UBI devices.
Add device number to all ubi layer message types.

The R/O block driver messages were replaced by pr_* since
ubi_device structure is not used by it.

Amended a bit by Artem.

Signed-off-by: Tanya Brokhman <tlinder@codeaurora.org>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>

Conflicts:
	drivers/mtd/ubi/block.c
	drivers/mtd/ubi/build.c
	drivers/mtd/ubi/cdev.c
	drivers/mtd/ubi/debug.c
	drivers/mtd/ubi/fastmap.c
	drivers/mtd/ubi/io.c
	drivers/mtd/ubi/ubi.h
	drivers/mtd/ubi/vmt.c
	drivers/mtd/ubi/wl.c

Reworked it for barebox.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/attach.c  | 126 ++++++++++++++++++++++++----------------------
 drivers/mtd/ubi/barebox.c |  18 +++----
 drivers/mtd/ubi/build.c   |  65 ++++++++++++------------
 drivers/mtd/ubi/debug.c   |   4 +-
 drivers/mtd/ubi/eba.c     |  53 +++++++++----------
 drivers/mtd/ubi/fastmap.c |  96 +++++++++++++++++------------------
 drivers/mtd/ubi/io.c      |  91 ++++++++++++++++-----------------
 drivers/mtd/ubi/kapi.c    |   6 +--
 drivers/mtd/ubi/misc.c    |   4 +-
 drivers/mtd/ubi/ubi.h     |  13 ++---
 drivers/mtd/ubi/vmt.c     |  68 +++++++++++++------------
 drivers/mtd/ubi/vtbl.c    |  48 +++++++++---------
 drivers/mtd/ubi/wl.c      |  58 +++++++++++----------
 13 files changed, 337 insertions(+), 313 deletions(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index 88370f4..b23fa68 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -170,6 +170,7 @@ static int add_corrupted(struct ubi_attach_info *ai, int pnum, int ec)
 
 /**
  * validate_vid_hdr - check volume identifier header.
+ * @ubi: UBI device description object
  * @vid_hdr: the volume identifier header to check
  * @av: information about the volume this logical eraseblock belongs to
  * @pnum: physical eraseblock number the VID header came from
@@ -182,7 +183,8 @@ static int add_corrupted(struct ubi_attach_info *ai, int pnum, int ec)
  * information in the VID header is consistent to the information in other VID
  * headers of the same volume.
  */
-static int validate_vid_hdr(const struct ubi_vid_hdr *vid_hdr,
+static int validate_vid_hdr(const struct ubi_device *ubi,
+			    const struct ubi_vid_hdr *vid_hdr,
 			    const struct ubi_ainf_volume *av, int pnum)
 {
 	int vol_type = vid_hdr->vol_type;
@@ -200,7 +202,7 @@ static int validate_vid_hdr(const struct ubi_vid_hdr *vid_hdr,
 		 */
 
 		if (vol_id != av->vol_id) {
-			ubi_err("inconsistent vol_id");
+			ubi_err(ubi, "inconsistent vol_id");
 			goto bad;
 		}
 
@@ -210,17 +212,17 @@ static int validate_vid_hdr(const struct ubi_vid_hdr *vid_hdr,
 			av_vol_type = UBI_VID_DYNAMIC;
 
 		if (vol_type != av_vol_type) {
-			ubi_err("inconsistent vol_type");
+			ubi_err(ubi, "inconsistent vol_type");
 			goto bad;
 		}
 
 		if (used_ebs != av->used_ebs) {
-			ubi_err("inconsistent used_ebs");
+			ubi_err(ubi, "inconsistent used_ebs");
 			goto bad;
 		}
 
 		if (data_pad != av->data_pad) {
-			ubi_err("inconsistent data_pad");
+			ubi_err(ubi, "inconsistent data_pad");
 			goto bad;
 		}
 	}
@@ -228,7 +230,7 @@ static int validate_vid_hdr(const struct ubi_vid_hdr *vid_hdr,
 	return 0;
 
 bad:
-	ubi_err("inconsistent VID header at PEB %d", pnum);
+	ubi_err(ubi, "inconsistent VID header at PEB %d", pnum);
 	ubi_dump_vid_hdr(vid_hdr);
 	ubi_dump_av(av);
 	return -EINVAL;
@@ -330,7 +332,7 @@ int ubi_compare_lebs(struct ubi_device *ubi, const struct ubi_ainf_peb *aeb,
 		 * support these images anymore. Well, those images still work,
 		 * but only if no unclean reboots happened.
 		 */
-		ubi_err("unsupported on-flash UBI format");
+		ubi_err(ubi, "unsupported on-flash UBI format");
 		return -EINVAL;
 	}
 
@@ -371,7 +373,7 @@ int ubi_compare_lebs(struct ubi_device *ubi, const struct ubi_ainf_peb *aeb,
 			if (err == UBI_IO_BITFLIPS)
 				bitflips = 1;
 			else {
-				ubi_err("VID of PEB %d header is bad, but it was OK earlier, err %d",
+				ubi_err(ubi, "VID of PEB %d header is bad, but it was OK earlier, err %d",
 					pnum, err);
 				if (err > 0)
 					err = -EIO;
@@ -498,7 +500,7 @@ int ubi_add_to_av(struct ubi_device *ubi, struct ubi_attach_info *ai, int pnum,
 		 * logical eraseblocks because there was an unclean reboot.
 		 */
 		if (aeb->sqnum == sqnum && sqnum != 0) {
-			ubi_err("two LEBs with same sequence number %llu",
+			ubi_err(ubi, "two LEBs with same sequence number %llu",
 				sqnum);
 			ubi_dump_aeb(aeb, 0);
 			ubi_dump_vid_hdr(vid_hdr);
@@ -518,7 +520,7 @@ int ubi_add_to_av(struct ubi_device *ubi, struct ubi_attach_info *ai, int pnum,
 			 * This logical eraseblock is newer than the one
 			 * found earlier.
 			 */
-			err = validate_vid_hdr(vid_hdr, av, pnum);
+			err = validate_vid_hdr(ubi, vid_hdr, av, pnum);
 			if (err)
 				return err;
 
@@ -556,7 +558,7 @@ int ubi_add_to_av(struct ubi_device *ubi, struct ubi_attach_info *ai, int pnum,
 	 * attaching information.
 	 */
 
-	err = validate_vid_hdr(vid_hdr, av, pnum);
+	err = validate_vid_hdr(ubi, vid_hdr, av, pnum);
 	if (err)
 		return err;
 
@@ -659,7 +661,8 @@ static int early_erase_peb(struct ubi_device *ubi,
 		 * Erase counter overflow. Upgrade UBI and use 64-bit
 		 * erase counters internally.
 		 */
-		ubi_err("erase counter overflow at PEB %d, EC %d", pnum, ec);
+		ubi_err(ubi, "erase counter overflow at PEB %d, EC %d",
+			pnum, ec);
 		return -EINVAL;
 	}
 
@@ -727,7 +730,7 @@ struct ubi_ainf_peb *ubi_early_get_peb(struct ubi_device *ubi,
 		return aeb;
 	}
 
-	ubi_err("no free eraseblocks");
+	ubi_err(ubi, "no free eraseblocks");
 	return ERR_PTR(-ENOSPC);
 }
 
@@ -775,9 +778,9 @@ static int check_corruption(struct ubi_device *ubi, struct ubi_vid_hdr *vid_hdr,
 	if (mtd_buf_all_ff(ubi->peb_buf, ubi->leb_size))
 		goto out_unlock;
 
-	ubi_err("PEB %d contains corrupted VID header, and the data does not contain all 0xFF",
+	ubi_err(ubi, "PEB %d contains corrupted VID header, and the data does not contain all 0xFF",
 		pnum);
-	ubi_err("this may be a non-UBI PEB or a severe VID header corruption which requires manual inspection");
+	ubi_err(ubi, "this may be a non-UBI PEB or a severe VID header corruption which requires manual inspection");
 	ubi_dump_vid_hdr(vid_hdr);
 	pr_err("hexdump of PEB %d offset %d, length %d",
 	       pnum, ubi->leb_start, ubi->leb_size);
@@ -848,7 +851,8 @@ static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		bitflips = 1;
 		break;
 	default:
-		ubi_err("'ubi_io_read_ec_hdr()' returned unknown code %d", err);
+		ubi_err(ubi, "'ubi_io_read_ec_hdr()' returned unknown code %d",
+			err);
 		return -EINVAL;
 	}
 
@@ -857,7 +861,7 @@ static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 
 		/* Make sure UBI version is OK */
 		if (ech->version != UBI_VERSION) {
-			ubi_err("this UBI version is %d, image version is %d",
+			ubi_err(ubi, "this UBI version is %d, image version is %d",
 				UBI_VERSION, (int)ech->version);
 			return -EINVAL;
 		}
@@ -871,7 +875,7 @@ static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			 * flash. Upgrade UBI and use 64-bit erase counters
 			 * internally.
 			 */
-			ubi_err("erase counter overflow, max is %d",
+			ubi_err(ubi, "erase counter overflow, max is %d",
 				UBI_MAX_ERASECOUNTER);
 			ubi_dump_ec_hdr(ech);
 			return -EINVAL;
@@ -892,7 +896,7 @@ static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		if (!ubi->image_seq)
 			ubi->image_seq = image_seq;
 		if (image_seq && ubi->image_seq != image_seq) {
-			ubi_err("bad image sequence number %d in PEB %d, expected %d",
+			ubi_err(ubi, "bad image sequence number %d in PEB %d, expected %d",
 				image_seq, pnum, ubi->image_seq);
 			ubi_dump_ec_hdr(ech);
 			return -EINVAL;
@@ -970,7 +974,7 @@ static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			return err;
 		goto adjust_mean_ec;
 	default:
-		ubi_err("'ubi_io_read_vid_hdr()' returned unknown code %d",
+		ubi_err(ubi, "'ubi_io_read_vid_hdr()' returned unknown code %d",
 			err);
 		return -EINVAL;
 	}
@@ -988,7 +992,7 @@ static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		case UBI_COMPAT_DELETE:
 			if (vol_id != UBI_FM_SB_VOLUME_ID
 			    && vol_id != UBI_FM_DATA_VOLUME_ID) {
-				ubi_msg("\"delete\" compatible internal volume %d:%d found, will remove it",
+				ubi_msg(ubi, "\"delete\" compatible internal volume %d:%d found, will remove it",
 					vol_id, lnum);
 			}
 			err = add_to_list(ai, pnum, vol_id, lnum,
@@ -998,13 +1002,13 @@ static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			return 0;
 
 		case UBI_COMPAT_RO:
-			ubi_msg("read-only compatible internal volume %d:%d found, switch to read-only mode",
+			ubi_msg(ubi, "read-only compatible internal volume %d:%d found, switch to read-only mode",
 				vol_id, lnum);
 			ubi->ro_mode = 1;
 			break;
 
 		case UBI_COMPAT_PRESERVE:
-			ubi_msg("\"preserve\" compatible internal volume %d:%d found",
+			ubi_msg(ubi, "\"preserve\" compatible internal volume %d:%d found",
 				vol_id, lnum);
 			err = add_to_list(ai, pnum, vol_id, lnum,
 					  ec, 0, &ai->alien);
@@ -1013,14 +1017,14 @@ static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			return 0;
 
 		case UBI_COMPAT_REJECT:
-			ubi_err("incompatible internal volume %d:%d found",
+			ubi_err(ubi, "incompatible internal volume %d:%d found",
 				vol_id, lnum);
 			return -EINVAL;
 		}
 	}
 
 	if (ec_err)
-		ubi_warn("valid VID header but corrupted EC header at PEB %d",
+		ubi_warn(ubi, "valid VID header but corrupted EC header at PEB %d",
 			 pnum);
 	err = ubi_add_to_av(ubi, ai, pnum, ec, vidh, bitflips);
 	if (err)
@@ -1064,7 +1068,7 @@ static int late_analysis(struct ubi_device *ubi, struct ubi_attach_info *ai)
 	 * with the flash HW or driver.
 	 */
 	if (ai->corr_peb_count) {
-		ubi_err("%d PEBs are corrupted and preserved",
+		ubi_err(ubi, "%d PEBs are corrupted and preserved",
 			ai->corr_peb_count);
 		pr_err("Corrupted PEBs are:");
 		list_for_each_entry(aeb, &ai->corr, u.list)
@@ -1076,7 +1080,7 @@ static int late_analysis(struct ubi_device *ubi, struct ubi_attach_info *ai)
 		 * otherwise, only print a warning.
 		 */
 		if (ai->corr_peb_count >= max_corr) {
-			ubi_err("too many corrupted PEBs, refusing");
+			ubi_err(ubi, "too many corrupted PEBs, refusing");
 			return -EINVAL;
 		}
 	}
@@ -1099,11 +1103,11 @@ static int late_analysis(struct ubi_device *ubi, struct ubi_attach_info *ai)
 		 */
 		if (ai->maybe_bad_peb_count <= 2) {
 			ai->is_empty = 1;
-			ubi_msg("empty MTD device detected");
+			ubi_msg(ubi, "empty MTD device detected");
 			get_random_bytes(&ubi->image_seq,
 					 sizeof(ubi->image_seq));
 		} else {
-			ubi_err("MTD device is not UBI-formatted and possibly contains non-UBI data - refusing it");
+			ubi_err(ubi, "MTD device is not UBI-formatted and possibly contains non-UBI data - refusing it");
 			return -EINVAL;
 		}
 
@@ -1232,7 +1236,7 @@ static int scan_all(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			goto out_vidh;
 	}
 
-	ubi_msg("scanning is finished");
+	ubi_msg(ubi, "scanning is finished");
 
 	/* Calculate mean erase counter */
 	if (ai->ec_count)
@@ -1489,37 +1493,37 @@ static int self_check_ai(struct ubi_device *ubi, struct ubi_attach_info *ai)
 		vols_found += 1;
 
 		if (ai->is_empty) {
-			ubi_err("bad is_empty flag");
+			ubi_err(ubi, "bad is_empty flag");
 			goto bad_av;
 		}
 
 		if (av->vol_id < 0 || av->highest_lnum < 0 ||
 		    av->leb_count < 0 || av->vol_type < 0 || av->used_ebs < 0 ||
 		    av->data_pad < 0 || av->last_data_size < 0) {
-			ubi_err("negative values");
+			ubi_err(ubi, "negative values");
 			goto bad_av;
 		}
 
 		if (av->vol_id >= UBI_MAX_VOLUMES &&
 		    av->vol_id < UBI_INTERNAL_VOL_START) {
-			ubi_err("bad vol_id");
+			ubi_err(ubi, "bad vol_id");
 			goto bad_av;
 		}
 
 		if (av->vol_id > ai->highest_vol_id) {
-			ubi_err("highest_vol_id is %d, but vol_id %d is there",
+			ubi_err(ubi, "highest_vol_id is %d, but vol_id %d is there",
 				ai->highest_vol_id, av->vol_id);
 			goto out;
 		}
 
 		if (av->vol_type != UBI_DYNAMIC_VOLUME &&
 		    av->vol_type != UBI_STATIC_VOLUME) {
-			ubi_err("bad vol_type");
+			ubi_err(ubi, "bad vol_type");
 			goto bad_av;
 		}
 
 		if (av->data_pad > ubi->leb_size / 2) {
-			ubi_err("bad data_pad");
+			ubi_err(ubi, "bad data_pad");
 			goto bad_av;
 		}
 
@@ -1529,48 +1533,48 @@ static int self_check_ai(struct ubi_device *ubi, struct ubi_attach_info *ai)
 			leb_count += 1;
 
 			if (aeb->pnum < 0 || aeb->ec < 0) {
-				ubi_err("negative values");
+				ubi_err(ubi, "negative values");
 				goto bad_aeb;
 			}
 
 			if (aeb->ec < ai->min_ec) {
-				ubi_err("bad ai->min_ec (%d), %d found",
+				ubi_err(ubi, "bad ai->min_ec (%d), %d found",
 					ai->min_ec, aeb->ec);
 				goto bad_aeb;
 			}
 
 			if (aeb->ec > ai->max_ec) {
-				ubi_err("bad ai->max_ec (%d), %d found",
+				ubi_err(ubi, "bad ai->max_ec (%d), %d found",
 					ai->max_ec, aeb->ec);
 				goto bad_aeb;
 			}
 
 			if (aeb->pnum >= ubi->peb_count) {
-				ubi_err("too high PEB number %d, total PEBs %d",
+				ubi_err(ubi, "too high PEB number %d, total PEBs %d",
 					aeb->pnum, ubi->peb_count);
 				goto bad_aeb;
 			}
 
 			if (av->vol_type == UBI_STATIC_VOLUME) {
 				if (aeb->lnum >= av->used_ebs) {
-					ubi_err("bad lnum or used_ebs");
+					ubi_err(ubi, "bad lnum or used_ebs");
 					goto bad_aeb;
 				}
 			} else {
 				if (av->used_ebs != 0) {
-					ubi_err("non-zero used_ebs");
+					ubi_err(ubi, "non-zero used_ebs");
 					goto bad_aeb;
 				}
 			}
 
 			if (aeb->lnum > av->highest_lnum) {
-				ubi_err("incorrect highest_lnum or lnum");
+				ubi_err(ubi, "incorrect highest_lnum or lnum");
 				goto bad_aeb;
 			}
 		}
 
 		if (av->leb_count != leb_count) {
-			ubi_err("bad leb_count, %d objects in the tree",
+			ubi_err(ubi, "bad leb_count, %d objects in the tree",
 				leb_count);
 			goto bad_av;
 		}
@@ -1581,13 +1585,13 @@ static int self_check_ai(struct ubi_device *ubi, struct ubi_attach_info *ai)
 		aeb = last_aeb;
 
 		if (aeb->lnum != av->highest_lnum) {
-			ubi_err("bad highest_lnum");
+			ubi_err(ubi, "bad highest_lnum");
 			goto bad_aeb;
 		}
 	}
 
 	if (vols_found != ai->vols_found) {
-		ubi_err("bad ai->vols_found %d, should be %d",
+		ubi_err(ubi, "bad ai->vols_found %d, should be %d",
 			ai->vols_found, vols_found);
 		goto out;
 	}
@@ -1602,7 +1606,8 @@ static int self_check_ai(struct ubi_device *ubi, struct ubi_attach_info *ai)
 
 			err = ubi_io_read_vid_hdr(ubi, aeb->pnum, vidh, 1);
 			if (err && err != UBI_IO_BITFLIPS) {
-				ubi_err("VID header is not OK (%d)", err);
+				ubi_err(ubi, "VID header is not OK (%d)",
+					err);
 				if (err > 0)
 					err = -EIO;
 				return err;
@@ -1611,37 +1616,37 @@ static int self_check_ai(struct ubi_device *ubi, struct ubi_attach_info *ai)
 			vol_type = vidh->vol_type == UBI_VID_DYNAMIC ?
 				   UBI_DYNAMIC_VOLUME : UBI_STATIC_VOLUME;
 			if (av->vol_type != vol_type) {
-				ubi_err("bad vol_type");
+				ubi_err(ubi, "bad vol_type");
 				goto bad_vid_hdr;
 			}
 
 			if (aeb->sqnum != be64_to_cpu(vidh->sqnum)) {
-				ubi_err("bad sqnum %llu", aeb->sqnum);
+				ubi_err(ubi, "bad sqnum %llu", aeb->sqnum);
 				goto bad_vid_hdr;
 			}
 
 			if (av->vol_id != be32_to_cpu(vidh->vol_id)) {
-				ubi_err("bad vol_id %d", av->vol_id);
+				ubi_err(ubi, "bad vol_id %d", av->vol_id);
 				goto bad_vid_hdr;
 			}
 
 			if (av->compat != vidh->compat) {
-				ubi_err("bad compat %d", vidh->compat);
+				ubi_err(ubi, "bad compat %d", vidh->compat);
 				goto bad_vid_hdr;
 			}
 
 			if (aeb->lnum != be32_to_cpu(vidh->lnum)) {
-				ubi_err("bad lnum %d", aeb->lnum);
+				ubi_err(ubi, "bad lnum %d", aeb->lnum);
 				goto bad_vid_hdr;
 			}
 
 			if (av->used_ebs != be32_to_cpu(vidh->used_ebs)) {
-				ubi_err("bad used_ebs %d", av->used_ebs);
+				ubi_err(ubi, "bad used_ebs %d", av->used_ebs);
 				goto bad_vid_hdr;
 			}
 
 			if (av->data_pad != be32_to_cpu(vidh->data_pad)) {
-				ubi_err("bad data_pad %d", av->data_pad);
+				ubi_err(ubi, "bad data_pad %d", av->data_pad);
 				goto bad_vid_hdr;
 			}
 		}
@@ -1650,12 +1655,13 @@ static int self_check_ai(struct ubi_device *ubi, struct ubi_attach_info *ai)
 			continue;
 
 		if (av->highest_lnum != be32_to_cpu(vidh->lnum)) {
-			ubi_err("bad highest_lnum %d", av->highest_lnum);
+			ubi_err(ubi, "bad highest_lnum %d", av->highest_lnum);
 			goto bad_vid_hdr;
 		}
 
 		if (av->last_data_size != be32_to_cpu(vidh->data_size)) {
-			ubi_err("bad last_data_size %d", av->last_data_size);
+			ubi_err(ubi, "bad last_data_size %d",
+				av->last_data_size);
 			goto bad_vid_hdr;
 		}
 	}
@@ -1696,7 +1702,7 @@ static int self_check_ai(struct ubi_device *ubi, struct ubi_attach_info *ai)
 	err = 0;
 	for (pnum = 0; pnum < ubi->peb_count; pnum++)
 		if (!buf[pnum]) {
-			ubi_err("PEB %d is not referred", pnum);
+			ubi_err(ubi, "PEB %d is not referred", pnum);
 			err = 1;
 		}
 
@@ -1706,18 +1712,18 @@ static int self_check_ai(struct ubi_device *ubi, struct ubi_attach_info *ai)
 	return 0;
 
 bad_aeb:
-	ubi_err("bad attaching information about LEB %d", aeb->lnum);
+	ubi_err(ubi, "bad attaching information about LEB %d", aeb->lnum);
 	ubi_dump_aeb(aeb, 0);
 	ubi_dump_av(av);
 	goto out;
 
 bad_av:
-	ubi_err("bad attaching information about volume %d", av->vol_id);
+	ubi_err(ubi, "bad attaching information about volume %d", av->vol_id);
 	ubi_dump_av(av);
 	goto out;
 
 bad_vid_hdr:
-	ubi_err("bad attaching information about volume %d", av->vol_id);
+	ubi_err(ubi, "bad attaching information about volume %d", av->vol_id);
 	ubi_dump_av(av);
 	ubi_dump_vid_hdr(vidh);
 
diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index ad38e69..085e4a7 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -38,7 +38,7 @@ static ssize_t ubi_volume_cdev_read(struct cdev *cdev, void *buf, size_t size,
 
 		err = ubi_eba_read_leb(ubi, vol, lnum, buf, off, len, 0);
 		if (err) {
-			ubi_err("read error: %s", strerror(-err));
+			ubi_err(ubi, "read error: %s", strerror(-err));
 			break;
 		}
 		off += len;
@@ -68,14 +68,14 @@ static ssize_t ubi_volume_cdev_write(struct cdev* cdev, const void *buf,
 	if (!priv->written) {
 		err = ubi_start_update(ubi, vol, vol->used_bytes);
 		if (err < 0) {
-			ubi_err("Cannot start volume update");
+			ubi_err(ubi, "Cannot start volume update");
 			return err;
 		}
 	}
 
 	err = ubi_more_update_data(ubi, vol, buf, size);
 	if (err < 0) {
-		ubi_err("Couldnt or partially wrote data");
+		ubi_err(ubi, "Couldnt or partially wrote data");
 		return err;
 	}
 
@@ -117,7 +117,7 @@ static int ubi_volume_cdev_close(struct cdev *cdev)
 			kfree(buf);
 
 			if (err < 0) {
-				ubi_err("Couldnt or partially wrote data");
+				ubi_err(ubi, "Couldnt or partially wrote data");
 				return err;
 			}
 		}
@@ -128,12 +128,12 @@ static int ubi_volume_cdev_close(struct cdev *cdev)
 
 		err = ubi_check_volume(ubi, vol->vol_id);
 		if (err < 0) {
-			ubi_err("ubi volume check failed: %s", strerror(err));
+			ubi_err(ubi, "ubi volume check failed: %s", strerror(err));
 			return err;
 		}
 
 		if (err) {
-			ubi_warn("volume %d on UBI device %d is corrupted",
+			ubi_warn(ubi, "volume %d on UBI device %d is corrupted",
 					vol->vol_id, ubi->ubi_num);
 			vol->corrupted = 1;
 		}
@@ -180,7 +180,7 @@ int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
 	cdev->priv = priv;
 	cdev->size = vol->used_bytes;
 	cdev->dev = &vol->dev;
-	ubi_msg("registering %s as /dev/%s", vol->name, cdev->name);
+	ubi_msg(ubi, "registering %s as /dev/%s", vol->name, cdev->name);
 	ret = devfs_create(cdev);
 	if (ret) {
 		kfree(priv);
@@ -243,7 +243,7 @@ int ubi_cdev_add(struct ubi_device *ubi)
 	cdev->priv = ubi;
 	cdev->size = 0;
 
-	ubi_msg("registering /dev/%s", cdev->name);
+	ubi_msg(ubi, "registering /dev/%s", cdev->name);
 	ret = devfs_create(cdev);
 	if (ret)
 		kfree(cdev->name);
@@ -255,7 +255,7 @@ void ubi_cdev_remove(struct ubi_device *ubi)
 {
 	struct cdev *cdev = &ubi->cdev;
 
-	ubi_msg("removing %s", cdev->name);
+	ubi_msg(ubi, "removing %s", cdev->name);
 
 	devfs_remove(cdev);
 	kfree(cdev->name);
diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 268cc6f..ae9afa7 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -78,7 +78,7 @@ int ubi_volume_notify(struct ubi_device *ubi, struct ubi_volume *vol, int ntype)
 	case UBI_VOLUME_RESIZED:
 	case UBI_VOLUME_RENAMED:
 		if (ubi_update_fastmap(ubi)) {
-			ubi_err("Unable to update fastmap!");
+			ubi_err(ubi, "Unable to update fastmap!");
 			ubi_ro_mode(ubi);
 		}
 	}
@@ -165,7 +165,7 @@ static int uif_init(struct ubi_device *ubi, int *ref)
 
 	err = ubi_cdev_add(ubi);
 	if (err) {
-		ubi_err("cannot add character device");
+		ubi_err(ubi, "cannot add character device");
 		goto out_dev;
 	}
 
@@ -173,7 +173,7 @@ static int uif_init(struct ubi_device *ubi, int *ref)
 		if (ubi->volumes[i]) {
 			err = ubi_add_volume(ubi, ubi->volumes[i]);
 			if (err) {
-				ubi_err("cannot add volume %d", i);
+				ubi_err(ubi, "cannot add volume %d", i);
 				goto out_volumes;
 			}
 		}
@@ -186,7 +186,8 @@ out_volumes:
 out_dev:
 	unregister_device(&ubi->dev);
 out_unreg:
-	ubi_err("cannot initialize UBI %s, error %d", ubi->ubi_name, err);
+	ubi_err(ubi, "cannot initialize UBI %s, error %d",
+		ubi->ubi_name, err);
 	return err;
 }
 
@@ -283,7 +284,7 @@ static int io_init(struct ubi_device *ubi, int max_beb_per1024)
 		 * guess we should just pick the largest region. But this is
 		 * not implemented.
 		 */
-		ubi_err("multiple regions, not implemented");
+		ubi_err(ubi, "multiple regions, not implemented");
 		return -EINVAL;
 	}
 
@@ -318,7 +319,7 @@ static int io_init(struct ubi_device *ubi, int max_beb_per1024)
 	 * which allows us to avoid costly division operations.
 	 */
 	if (!is_power_of_2(ubi->min_io_size)) {
-		ubi_err("min. I/O unit (%d) is not power of 2",
+		ubi_err(ubi, "min. I/O unit (%d) is not power of 2",
 			ubi->min_io_size);
 		return -EINVAL;
 	}
@@ -335,7 +336,7 @@ static int io_init(struct ubi_device *ubi, int max_beb_per1024)
 	if (ubi->max_write_size < ubi->min_io_size ||
 	    ubi->max_write_size % ubi->min_io_size ||
 	    !is_power_of_2(ubi->max_write_size)) {
-		ubi_err("bad write buffer size %d for %d min. I/O unit",
+		ubi_err(ubi, "bad write buffer size %d for %d min. I/O unit",
 			ubi->max_write_size, ubi->min_io_size);
 		return -EINVAL;
 	}
@@ -372,7 +373,7 @@ static int io_init(struct ubi_device *ubi, int max_beb_per1024)
 
 	/* The shift must be aligned to 32-bit boundary */
 	if (ubi->vid_hdr_shift % 4) {
-		ubi_err("unaligned VID header shift %d",
+		ubi_err(ubi, "unaligned VID header shift %d",
 			ubi->vid_hdr_shift);
 		return -EINVAL;
 	}
@@ -382,7 +383,7 @@ static int io_init(struct ubi_device *ubi, int max_beb_per1024)
 	    ubi->leb_start < ubi->vid_hdr_offset + UBI_VID_HDR_SIZE ||
 	    ubi->leb_start > ubi->peb_size - UBI_VID_HDR_SIZE ||
 	    ubi->leb_start & (ubi->min_io_size - 1)) {
-		ubi_err("bad VID header (%d) or data offsets (%d)",
+		ubi_err(ubi, "bad VID header (%d) or data offsets (%d)",
 			ubi->vid_hdr_offset, ubi->leb_start);
 		return -EINVAL;
 	}
@@ -402,14 +403,14 @@ static int io_init(struct ubi_device *ubi, int max_beb_per1024)
 	 * read-only mode.
 	 */
 	if (ubi->vid_hdr_offset + UBI_VID_HDR_SIZE <= ubi->hdrs_min_io_size) {
-		ubi_warn("EC and VID headers are in the same minimal I/O unit, switch to read-only mode");
+		ubi_warn(ubi, "EC and VID headers are in the same minimal I/O unit, switch to read-only mode");
 		ubi->ro_mode = 1;
 	}
 
 	ubi->leb_size = ubi->peb_size - ubi->leb_start;
 
 	if (!(ubi->mtd->flags & MTD_WRITEABLE)) {
-		ubi_msg("MTD device %d is write-protected, attach in read-only mode",
+		ubi_msg(ubi, "MTD device %d is write-protected, attach in read-only mode",
 			ubi->mtd->index);
 		ubi->ro_mode = 1;
 	}
@@ -442,7 +443,7 @@ static int autoresize(struct ubi_device *ubi, int vol_id)
 	int err, old_reserved_pebs = vol->reserved_pebs;
 
 	if (ubi->ro_mode) {
-		ubi_warn("skip auto-resize because of R/O mode");
+		ubi_warn(ubi, "skip auto-resize because of R/O mode");
 		return 0;
 	}
 
@@ -463,21 +464,22 @@ static int autoresize(struct ubi_device *ubi, int vol_id)
 		vtbl_rec = ubi->vtbl[vol_id];
 		err = ubi_change_vtbl_record(ubi, vol_id, &vtbl_rec);
 		if (err)
-			ubi_err("cannot clean auto-resize flag for volume %d",
+			ubi_err(ubi, "cannot clean auto-resize flag for volume %d",
 				vol_id);
 	} else {
 		desc.vol = vol;
 		err = ubi_resize_volume(&desc,
 					old_reserved_pebs + ubi->avail_pebs);
 		if (err)
-			ubi_err("cannot auto-resize volume %d", vol_id);
+			ubi_err(ubi, "cannot auto-resize volume %d",
+				vol_id);
 	}
 
 	if (err)
 		return err;
 
-	ubi_msg("volume %d (\"%s\") re-sized from %d to %d LEBs", vol_id,
-		vol->name, old_reserved_pebs, vol->reserved_pebs);
+	ubi_msg(ubi, "volume %d (\"%s\") re-sized from %d to %d LEBs",
+		vol_id, vol->name, old_reserved_pebs, vol->reserved_pebs);
 	return 0;
 }
 
@@ -533,7 +535,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	 * no sense to attach emulated MTD devices, so we prohibit this.
 	 */
 	if (mtd->type == MTD_UBIVOLUME) {
-		ubi_err("refuse attaching mtd%d - it is already emulated on top of UBI",
+		ubi_err(ubi, "refuse attaching mtd%d - it is already emulated on top of UBI",
 			mtd->index);
 		return -EINVAL;
 	}
@@ -544,7 +546,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 			if (!ubi_devices[ubi_num])
 				break;
 		if (ubi_num == UBI_MAX_DEVICES) {
-			ubi_err("only %d UBI devices may be created",
+			ubi_err(ubi, "only %d UBI devices may be created",
 				UBI_MAX_DEVICES);
 			return -ENFILE;
 		}
@@ -554,7 +556,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 
 		/* Make sure ubi_num is not busy */
 		if (ubi_devices[ubi_num]) {
-			ubi_err("ubi%d already exists", ubi_num);
+			ubi_err(ubi, "ubi%d already exists", ubi_num);
 			return -EEXIST;
 		}
 	}
@@ -586,7 +588,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 
 	if (!ubi->fm_disabled && (int)mtd_div_by_eb(ubi->mtd->size, ubi->mtd)
 	    <= UBI_FM_MAX_START) {
-		ubi_err("More than %i PEBs are needed for fastmap, sorry.",
+		ubi_err(ubi, "More than %i PEBs are needed for fastmap, sorry.",
 			UBI_FM_MAX_START);
 		ubi->fm_disabled = 1;
 	}
@@ -613,7 +615,8 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 #endif
 	err = ubi_attach(ubi, 0);
 	if (err) {
-		ubi_err("failed to attach mtd%d, error %d", mtd->index, err);
+		ubi_err(ubi, "failed to attach mtd%d, error %d",
+			mtd->index, err);
 		goto out_free;
 	}
 
@@ -627,23 +630,23 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	if (err)
 		goto out_detach;
 
-	ubi_msg("attached mtd%d (name \"%s\", size %llu MiB) to ubi%d",
+	ubi_msg(ubi, "attached mtd%d (name \"%s\", size %llu MiB) to ubi%d",
 		mtd->index, mtd->name, ubi->flash_size >> 20, ubi_num);
-	ubi_debug("PEB size: %d bytes (%d KiB), LEB size: %d bytes",
+	ubi_msg(ubi, "PEB size: %d bytes (%d KiB), LEB size: %d bytes",
 		ubi->peb_size, ubi->peb_size >> 10, ubi->leb_size);
-	ubi_debug("min./max. I/O unit sizes: %d/%d, sub-page size %d",
+	ubi_msg(ubi, "min./max. I/O unit sizes: %d/%d, sub-page size %d",
 		ubi->min_io_size, ubi->max_write_size, ubi->hdrs_min_io_size);
-	ubi_debug("VID header offset: %d (aligned %d), data offset: %d",
+	ubi_msg(ubi, "VID header offset: %d (aligned %d), data offset: %d",
 		ubi->vid_hdr_offset, ubi->vid_hdr_aloffset, ubi->leb_start);
-	ubi_debug("good PEBs: %d, bad PEBs: %d, corrupted PEBs: %d",
+	ubi_msg(ubi, "good PEBs: %d, bad PEBs: %d, corrupted PEBs: %d",
 		ubi->good_peb_count, ubi->bad_peb_count, ubi->corr_peb_count);
-	ubi_debug("user volume: %d, internal volumes: %d, max. volumes count: %d",
+	ubi_msg(ubi, "user volume: %d, internal volumes: %d, max. volumes count: %d",
 		ubi->vol_count - UBI_INT_VOL_COUNT, UBI_INT_VOL_COUNT,
 		ubi->vtbl_slots);
-	ubi_debug("max/mean erase counter: %d/%d, WL threshold: %d, image sequence number: %u",
+	ubi_msg(ubi, "max/mean erase counter: %d/%d, WL threshold: %d, image sequence number: %u",
 		ubi->max_ec, ubi->mean_ec, CONFIG_MTD_UBI_WL_THRESHOLD,
 		ubi->image_seq);
-	ubi_debug("available PEBs: %d, total reserved PEBs: %d, PEBs reserved for bad PEB handling: %d",
+	ubi_msg(ubi, "available PEBs: %d, total reserved PEBs: %d, PEBs reserved for bad PEB handling: %d",
 		ubi->avail_pebs, ubi->rsvd_pebs, ubi->beb_rsvd_pebs);
 
 	dev_add_param_int_ro(&ubi->dev, "peb_size", ubi->peb_size, "%d");
@@ -713,7 +716,7 @@ int ubi_detach_mtd_dev(int ubi_num, int anyway)
 
 	ubi_assert(ubi_num == ubi->ubi_num);
 
-	ubi_msg("detaching mtd%d from ubi%d", ubi->mtd->index, ubi_num);
+	ubi_msg(ubi, "detaching mtd%d from ubi%d", ubi->mtd->index, ubi_num);
 #ifdef CONFIG_MTD_UBI_FASTMAP
 	/* If we don't write a new fastmap at detach time we lose all
 	 * EC updates that have been made since the last written fastmap. */
@@ -728,7 +731,7 @@ int ubi_detach_mtd_dev(int ubi_num, int anyway)
 	vfree(ubi->vtbl);
 	vfree(ubi->peb_buf);
 	vfree(ubi->fm_buf);
-	ubi_msg("mtd%d is detached from ubi%d", ubi->mtd->index, ubi->ubi_num);
+	ubi_msg(ubi, "mtd%d is detached", ubi->mtd->index);
 	kfree(ubi);
 
 	return 0;
diff --git a/drivers/mtd/ubi/debug.c b/drivers/mtd/ubi/debug.c
index 89c78e7..6ae797c 100644
--- a/drivers/mtd/ubi/debug.c
+++ b/drivers/mtd/ubi/debug.c
@@ -35,12 +35,12 @@ void ubi_dump_flash(struct ubi_device *ubi, int pnum, int offset, int len)
 		return;
 	err = mtd_read(ubi->mtd, addr, len, &read, buf);
 	if (err && err != -EUCLEAN) {
-		ubi_err("error %d while reading %d bytes from PEB %d:%d, read %zd bytes",
+		ubi_err(ubi, "err %d while reading %d bytes from PEB %d:%d, read %zd bytes",
 			err, len, pnum, offset, read);
 		goto out;
 	}
 
-	ubi_msg("dumping %d bytes of data from PEB %d, offset %d",
+	ubi_msg(ubi, "dumping %d bytes of data from PEB %d, offset %d",
 		len, pnum, offset);
 	print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1, buf, len, 1);
 out:
diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index bf96b14..1b0b6e6 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -397,7 +397,7 @@ retry:
 				 */
 				if (err == UBI_IO_BAD_HDR_EBADMSG ||
 				    err == UBI_IO_BAD_HDR) {
-					ubi_warn("corrupted VID header at PEB %d, LEB %d:%d",
+					ubi_warn(ubi, "corrupted VID header at PEB %d, LEB %d:%d",
 						 pnum, vol_id, lnum);
 					err = -EBADMSG;
 				} else
@@ -423,7 +423,7 @@ retry:
 				goto out_unlock;
 			scrub = 1;
 			if (!check) {
-				ubi_msg("force data checking");
+				ubi_msg(ubi, "force data checking");
 				check = 1;
 				goto retry;
 			}
@@ -434,7 +434,7 @@ retry:
 	if (check) {
 		uint32_t crc1 = crc32(UBI_CRC32_INIT, buf, len);
 		if (crc1 != crc) {
-			ubi_warn("CRC error: calculated %#08x, must be %#08x",
+			ubi_warn(ubi, "CRC error: calculated %#08x, must be %#08x",
 				 crc1, crc);
 			err = -EBADMSG;
 			goto out_unlock;
@@ -488,7 +488,8 @@ retry:
 		return new_pnum;
 	}
 
-	ubi_msg("recover PEB %d, move data to PEB %d", pnum, new_pnum);
+	ubi_msg(ubi, "recover PEB %d, move data to PEB %d",
+		pnum, new_pnum);
 
 	err = ubi_io_read_vid_hdr(ubi, pnum, vid_hdr, 1);
 	if (err && err != UBI_IO_BITFLIPS) {
@@ -523,7 +524,7 @@ retry:
 	vol->eba_tbl[lnum] = new_pnum;
 	ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 1);
 
-	ubi_msg("data was successfully recovered");
+	ubi_msg(ubi, "data was successfully recovered");
 	return 0;
 
 out_unlock:
@@ -537,13 +538,13 @@ write_error:
 	 * Bad luck? This physical eraseblock is bad too? Crud. Let's try to
 	 * get another one.
 	 */
-	ubi_warn("failed to write to PEB %d", new_pnum);
+	ubi_warn(ubi, "failed to write to PEB %d", new_pnum);
 	ubi_wl_put_peb(ubi, vol_id, lnum, new_pnum, 1);
 	if (++tries > UBI_IO_RETRIES) {
 		ubi_free_vid_hdr(ubi, vid_hdr);
 		return err;
 	}
-	ubi_msg("try again");
+	ubi_msg(ubi, "try again");
 	goto retry;
 }
 
@@ -581,7 +582,7 @@ int ubi_eba_write_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
 
 		err = ubi_io_write_data(ubi, buf, pnum, offset, len);
 		if (err) {
-			ubi_warn("failed to write data to PEB %d", pnum);
+			ubi_warn(ubi, "failed to write data to PEB %d", pnum);
 			if (err == -EIO && ubi->bad_allowed)
 				err = recover_peb(ubi, pnum, vol_id, lnum, buf,
 						  offset, len);
@@ -622,7 +623,7 @@ retry:
 
 	err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
 	if (err) {
-		ubi_warn("failed to write VID header to LEB %d:%d, PEB %d",
+		ubi_warn(ubi, "failed to write VID header to LEB %d:%d, PEB %d",
 			 vol_id, lnum, pnum);
 		goto write_error;
 	}
@@ -630,7 +631,7 @@ retry:
 	if (len) {
 		err = ubi_io_write_data(ubi, buf, pnum, offset, len);
 		if (err) {
-			ubi_warn("failed to write %d bytes at offset %d of LEB %d:%d, PEB %d",
+			ubi_warn(ubi, "failed to write %d bytes at offset %d of LEB %d:%d, PEB %d",
 				 len, offset, vol_id, lnum, pnum);
 			goto write_error;
 		}
@@ -664,7 +665,7 @@ write_error:
 	}
 
 	vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
-	ubi_msg("try another PEB");
+	ubi_msg(ubi, "try another PEB");
 	goto retry;
 }
 
@@ -741,14 +742,14 @@ retry:
 
 	err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
 	if (err) {
-		ubi_warn("failed to write VID header to LEB %d:%d, PEB %d",
+		ubi_warn(ubi, "failed to write VID header to LEB %d:%d, PEB %d",
 			 vol_id, lnum, pnum);
 		goto write_error;
 	}
 
 	err = ubi_io_write_data(ubi, buf, pnum, 0, len);
 	if (err) {
-		ubi_warn("failed to write %d bytes of data to PEB %d",
+		ubi_warn(ubi, "failed to write %d bytes of data to PEB %d",
 			 len, pnum);
 		goto write_error;
 	}
@@ -782,7 +783,7 @@ write_error:
 	}
 
 	vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
-	ubi_msg("try another PEB");
+	ubi_msg(ubi, "try another PEB");
 	goto retry;
 }
 
@@ -856,14 +857,14 @@ retry:
 
 	err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
 	if (err) {
-		ubi_warn("failed to write VID header to LEB %d:%d, PEB %d",
+		ubi_warn(ubi, "failed to write VID header to LEB %d:%d, PEB %d",
 			 vol_id, lnum, pnum);
 		goto write_error;
 	}
 
 	err = ubi_io_write_data(ubi, buf, pnum, 0, len);
 	if (err) {
-		ubi_warn("failed to write %d bytes of data to PEB %d",
+		ubi_warn(ubi, "failed to write %d bytes of data to PEB %d",
 			 len, pnum);
 		goto write_error;
 	}
@@ -900,7 +901,7 @@ write_error:
 	}
 
 	vid_hdr->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
-	ubi_msg("try another PEB");
+	ubi_msg(ubi, "try another PEB");
 	goto retry;
 }
 
@@ -1020,7 +1021,7 @@ int ubi_eba_copy_leb(struct ubi_device *ubi, int from, int to,
 	dbg_wl("read %d bytes of data", aldata_size);
 	err = ubi_io_read_data(ubi, ubi->peb_buf, from, 0, aldata_size);
 	if (err && err != UBI_IO_BITFLIPS) {
-		ubi_warn("error %d while reading data from PEB %d",
+		ubi_warn(ubi, "error %d while reading data from PEB %d",
 			 err, from);
 		err = MOVE_SOURCE_RD_ERR;
 		goto out_unlock_buf;
@@ -1066,7 +1067,7 @@ int ubi_eba_copy_leb(struct ubi_device *ubi, int from, int to,
 	err = ubi_io_read_vid_hdr(ubi, to, vid_hdr, 1);
 	if (err) {
 		if (err != UBI_IO_BITFLIPS) {
-			ubi_warn("error %d while reading VID header back from PEB %d",
+			ubi_warn(ubi, "error %d while reading VID header back from PEB %d",
 				 err, to);
 			if (is_error_sane(err))
 				err = MOVE_TARGET_RD_ERR;
@@ -1091,7 +1092,7 @@ int ubi_eba_copy_leb(struct ubi_device *ubi, int from, int to,
 		err = ubi_io_read_data(ubi, ubi->peb_buf, to, 0, aldata_size);
 		if (err) {
 			if (err != UBI_IO_BITFLIPS) {
-				ubi_warn("error %d while reading data back from PEB %d",
+				ubi_warn(ubi, "error %d while reading data back from PEB %d",
 					 err, to);
 				if (is_error_sane(err))
 					err = MOVE_TARGET_RD_ERR;
@@ -1101,7 +1102,7 @@ int ubi_eba_copy_leb(struct ubi_device *ubi, int from, int to,
 		}
 
 		if (crc != crc32(UBI_CRC32_INIT, ubi->peb_buf, data_size)) {
-			ubi_warn("read data back from PEB %d and it is different",
+			ubi_warn(ubi, "read data back from PEB %d and it is different",
 				 to);
 			err = -EINVAL;
 			goto out_unlock_buf;
@@ -1151,10 +1152,10 @@ static void print_rsvd_warning(struct ubi_device *ubi,
 			return;
 	}
 
-	ubi_warn("cannot reserve enough PEBs for bad PEB handling, reserved %d, need %d",
+	ubi_warn(ubi, "cannot reserve enough PEBs for bad PEB handling, reserved %d, need %d",
 		 ubi->beb_rsvd_pebs, ubi->beb_rsvd_level);
 	if (ubi->corr_peb_count)
-		ubi_warn("%d PEBs are corrupted and not used",
+		ubi_warn(ubi, "%d PEBs are corrupted and not used",
 			 ubi->corr_peb_count);
 }
 
@@ -1232,7 +1233,7 @@ int self_check_eba(struct ubi_device *ubi, struct ubi_attach_info *ai_fastmap,
 					fm_eba[i][j] == UBI_LEB_UNMAPPED)
 					continue;
 
-				ubi_err("LEB:%i:%i is PEB:%i instead of %i!",
+				ubi_err(ubi, "LEB:%i:%i is PEB:%i instead of %i!",
 					vol->vol_id, i, fm_eba[i][j],
 					scan_eba[i][j]);
 				ubi_assert(0);
@@ -1308,10 +1309,10 @@ int ubi_eba_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 	}
 
 	if (ubi->avail_pebs < EBA_RESERVED_PEBS) {
-		ubi_err("no enough physical eraseblocks (%d, need %d)",
+		ubi_err(ubi, "no enough physical eraseblocks (%d, need %d)",
 			ubi->avail_pebs, EBA_RESERVED_PEBS);
 		if (ubi->corr_peb_count)
-			ubi_err("%d PEBs are corrupted and not used",
+			ubi_err(ubi, "%d PEBs are corrupted and not used",
 				ubi->corr_peb_count);
 		err = -ENOSPC;
 		goto out_free;
diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 52b8c47..98f69a3 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -329,7 +329,7 @@ static int process_pool_aeb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	if (found)
 		av = tmp_av;
 	else {
-		ubi_err("orphaned volume in fastmap pool!");
+		ubi_err(ubi, "orphaned volume in fastmap pool!");
 		kfree(new_aeb);
 		return UBI_BAD_FASTMAP;
 	}
@@ -413,14 +413,14 @@ static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		pnum = be32_to_cpu(pebs[i]);
 
 		if (ubi_io_is_bad(ubi, pnum)) {
-			ubi_err("bad PEB in fastmap pool!");
+			ubi_err(ubi, "bad PEB in fastmap pool!");
 			ret = UBI_BAD_FASTMAP;
 			goto out;
 		}
 
 		err = ubi_io_read_ec_hdr(ubi, pnum, ech, 0);
 		if (err && err != UBI_IO_BITFLIPS) {
-			ubi_err("unable to read EC header! PEB:%i err:%i",
+			ubi_err(ubi, "unable to read EC header! PEB:%i err:%i",
 				pnum, err);
 			ret = err > 0 ? UBI_BAD_FASTMAP : err;
 			goto out;
@@ -434,7 +434,7 @@ static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		image_seq = be32_to_cpu(ech->image_seq);
 
 		if (image_seq && (image_seq != ubi->image_seq)) {
-			ubi_err("bad image seq: 0x%x, expected: 0x%x",
+			ubi_err(ubi, "bad image seq: 0x%x, expected: 0x%x",
 				be32_to_cpu(ech->image_seq), ubi->image_seq);
 			ret = UBI_BAD_FASTMAP;
 			goto out;
@@ -491,7 +491,7 @@ static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			}
 		} else {
 			/* We are paranoid and fall back to scanning mode */
-			ubi_err("fastmap pool PEBs contains damaged PEBs!");
+			ubi_err(ubi, "fastmap pool PEBs contains damaged PEBs!");
 			ret = err > 0 ? UBI_BAD_FASTMAP : err;
 			goto out;
 		}
@@ -578,7 +578,7 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 		goto fail_bad;
 
 	if (be32_to_cpu(fmhdr->magic) != UBI_FM_HDR_MAGIC) {
-		ubi_err("bad fastmap header magic: 0x%x, expected: 0x%x",
+		ubi_err(ubi, "bad fastmap header magic: 0x%x, expected: 0x%x",
 			be32_to_cpu(fmhdr->magic), UBI_FM_HDR_MAGIC);
 		goto fail_bad;
 	}
@@ -588,7 +588,7 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 	if (fm_pos >= fm_size)
 		goto fail_bad;
 	if (be32_to_cpu(fmpl1->magic) != UBI_FM_POOL_MAGIC) {
-		ubi_err("bad fastmap pool magic: 0x%x, expected: 0x%x",
+		ubi_err(ubi, "bad fastmap pool magic: 0x%x, expected: 0x%x",
 			be32_to_cpu(fmpl1->magic), UBI_FM_POOL_MAGIC);
 		goto fail_bad;
 	}
@@ -598,7 +598,7 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 	if (fm_pos >= fm_size)
 		goto fail_bad;
 	if (be32_to_cpu(fmpl2->magic) != UBI_FM_POOL_MAGIC) {
-		ubi_err("bad fastmap pool magic: 0x%x, expected: 0x%x",
+		ubi_err(ubi, "bad fastmap pool magic: 0x%x, expected: 0x%x",
 			be32_to_cpu(fmpl2->magic), UBI_FM_POOL_MAGIC);
 		goto fail_bad;
 	}
@@ -609,25 +609,26 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 	fm->max_wl_pool_size = be16_to_cpu(fmpl2->max_size);
 
 	if (pool_size > UBI_FM_MAX_POOL_SIZE || pool_size < 0) {
-		ubi_err("bad pool size: %i", pool_size);
+		ubi_err(ubi, "bad pool size: %i", pool_size);
 		goto fail_bad;
 	}
 
 	if (wl_pool_size > UBI_FM_MAX_POOL_SIZE || wl_pool_size < 0) {
-		ubi_err("bad WL pool size: %i", wl_pool_size);
+		ubi_err(ubi, "bad WL pool size: %i", wl_pool_size);
 		goto fail_bad;
 	}
 
 
 	if (fm->max_pool_size > UBI_FM_MAX_POOL_SIZE ||
 	    fm->max_pool_size < 0) {
-		ubi_err("bad maximal pool size: %i", fm->max_pool_size);
+		ubi_err(ubi, "bad maximal pool size: %i", fm->max_pool_size);
 		goto fail_bad;
 	}
 
 	if (fm->max_wl_pool_size > UBI_FM_MAX_POOL_SIZE ||
 	    fm->max_wl_pool_size < 0) {
-		ubi_err("bad maximal WL pool size: %i", fm->max_wl_pool_size);
+		ubi_err(ubi, "bad maximal WL pool size: %i",
+			fm->max_wl_pool_size);
 		goto fail_bad;
 	}
 
@@ -686,8 +687,7 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 			goto fail_bad;
 
 		if (be32_to_cpu(fmvhdr->magic) != UBI_FM_VHDR_MAGIC) {
-			ubi_err("bad fastmap vol header magic: 0x%x, " \
-				"expected: 0x%x",
+			ubi_err(ubi, "bad fastmap vol header magic: 0x%x, expected: 0x%x",
 				be32_to_cpu(fmvhdr->magic), UBI_FM_VHDR_MAGIC);
 			goto fail_bad;
 		}
@@ -712,8 +712,7 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 			goto fail_bad;
 
 		if (be32_to_cpu(fm_eba->magic) != UBI_FM_EBA_MAGIC) {
-			ubi_err("bad fastmap EBA header magic: 0x%x, " \
-				"expected: 0x%x",
+			ubi_err(ubi, "bad fastmap EBA header magic: 0x%x, expected: 0x%x",
 				be32_to_cpu(fm_eba->magic), UBI_FM_EBA_MAGIC);
 			goto fail_bad;
 		}
@@ -777,7 +776,7 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 			int err;
 
 			if (ubi_io_is_bad(ubi, tmp_aeb->pnum)) {
-				ubi_err("bad PEB in fastmap EBA orphan list");
+				ubi_err(ubi, "bad PEB in fastmap EBA orphan list");
 				ret = UBI_BAD_FASTMAP;
 				kfree(ech);
 				goto fail;
@@ -785,8 +784,8 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 
 			err = ubi_io_read_ec_hdr(ubi, tmp_aeb->pnum, ech, 0);
 			if (err && err != UBI_IO_BITFLIPS) {
-				ubi_err("unable to read EC header! PEB:%i " \
-					"err:%i", tmp_aeb->pnum, err);
+				ubi_err(ubi, "unable to read EC header! PEB:%i err:%i",
+					tmp_aeb->pnum, err);
 				ret = err > 0 ? UBI_BAD_FASTMAP : err;
 				kfree(ech);
 
@@ -896,14 +895,14 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		fm->to_be_tortured[0] = 1;
 
 	if (be32_to_cpu(fmsb->magic) != UBI_FM_SB_MAGIC) {
-		ubi_err("bad super block magic: 0x%x, expected: 0x%x",
+		ubi_err(ubi, "bad super block magic: 0x%x, expected: 0x%x",
 			be32_to_cpu(fmsb->magic), UBI_FM_SB_MAGIC);
 		ret = UBI_BAD_FASTMAP;
 		goto free_fm_sb;
 	}
 
 	if (fmsb->version != UBI_FM_FMT_VERSION) {
-		ubi_err("bad fastmap version: %i, expected: %i",
+		ubi_err(ubi, "bad fastmap version: %i, expected: %i",
 			fmsb->version, UBI_FM_FMT_VERSION);
 		ret = UBI_BAD_FASTMAP;
 		goto free_fm_sb;
@@ -911,15 +910,16 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 
 	used_blocks = be32_to_cpu(fmsb->used_blocks);
 	if (used_blocks > UBI_FM_MAX_BLOCKS || used_blocks < 1) {
-		ubi_err("number of fastmap blocks is invalid: %i", used_blocks);
+		ubi_err(ubi, "number of fastmap blocks is invalid: %i",
+			used_blocks);
 		ret = UBI_BAD_FASTMAP;
 		goto free_fm_sb;
 	}
 
 	fm_size = ubi->leb_size * used_blocks;
 	if (fm_size != ubi->fm_size) {
-		ubi_err("bad fastmap size: %zi, expected: %zi", fm_size,
-			ubi->fm_size);
+		ubi_err(ubi, "bad fastmap size: %zi, expected: %zi",
+			fm_size, ubi->fm_size);
 		ret = UBI_BAD_FASTMAP;
 		goto free_fm_sb;
 	}
@@ -948,7 +948,7 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 
 		ret = ubi_io_read_ec_hdr(ubi, pnum, ech, 0);
 		if (ret && ret != UBI_IO_BITFLIPS) {
-			ubi_err("unable to read fastmap block# %i EC (PEB: %i)",
+			ubi_err(ubi, "unable to read fastmap block# %i EC (PEB: %i)",
 				i, pnum);
 			if (ret > 0)
 				ret = UBI_BAD_FASTMAP;
@@ -965,7 +965,7 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		 * we shouldn't fail if image_seq == 0.
 		 */
 		if (image_seq && (image_seq != ubi->image_seq)) {
-			ubi_err("wrong image seq:%d instead of %d",
+			ubi_err(ubi, "wrong image seq:%d instead of %d",
 				be32_to_cpu(ech->image_seq), ubi->image_seq);
 			ret = UBI_BAD_FASTMAP;
 			goto free_hdr;
@@ -973,15 +973,14 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 
 		ret = ubi_io_read_vid_hdr(ubi, pnum, vh, 0);
 		if (ret && ret != UBI_IO_BITFLIPS) {
-			ubi_err("unable to read fastmap block# %i (PEB: %i)",
+			ubi_err(ubi, "unable to read fastmap block# %i (PEB: %i)",
 				i, pnum);
 			goto free_hdr;
 		}
 
 		if (i == 0) {
 			if (be32_to_cpu(vh->vol_id) != UBI_FM_SB_VOLUME_ID) {
-				ubi_err("bad fastmap anchor vol_id: 0x%x," \
-					" expected: 0x%x",
+				ubi_err(ubi, "bad fastmap anchor vol_id: 0x%x, expected: 0x%x",
 					be32_to_cpu(vh->vol_id),
 					UBI_FM_SB_VOLUME_ID);
 				ret = UBI_BAD_FASTMAP;
@@ -989,8 +988,7 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			}
 		} else {
 			if (be32_to_cpu(vh->vol_id) != UBI_FM_DATA_VOLUME_ID) {
-				ubi_err("bad fastmap data vol_id: 0x%x," \
-					" expected: 0x%x",
+				ubi_err(ubi, "bad fastmap data vol_id: 0x%x, expected: 0x%x",
 					be32_to_cpu(vh->vol_id),
 					UBI_FM_DATA_VOLUME_ID);
 				ret = UBI_BAD_FASTMAP;
@@ -1004,7 +1002,7 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		ret = ubi_io_read(ubi, ubi->fm_buf + (ubi->leb_size * i), pnum,
 				  ubi->leb_start, ubi->leb_size);
 		if (ret && ret != UBI_IO_BITFLIPS) {
-			ubi_err("unable to read fastmap block# %i (PEB: %i, " \
+			ubi_err(ubi, "unable to read fastmap block# %i (PEB: %i, "
 				"err: %i)", i, pnum, ret);
 			goto free_hdr;
 		}
@@ -1018,8 +1016,9 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	fmsb2->data_crc = 0;
 	crc = crc32(UBI_CRC32_INIT, ubi->fm_buf, fm_size);
 	if (crc != tmp_crc) {
-		ubi_err("fastmap data CRC is invalid");
-		ubi_err("CRC should be: 0x%x, calc: 0x%x", tmp_crc, crc);
+		ubi_err(ubi, "fastmap data CRC is invalid");
+		ubi_err(ubi, "CRC should be: 0x%x, calc: 0x%x",
+			tmp_crc, crc);
 		ret = UBI_BAD_FASTMAP;
 		goto free_hdr;
 	}
@@ -1055,16 +1054,17 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	ubi->fm = fm;
 	ubi->fm_pool.max_size = ubi->fm->max_pool_size;
 	ubi->fm_wl_pool.max_size = ubi->fm->max_wl_pool_size;
-	ubi_msg("attached by fastmap");
-	ubi_debug("fastmap pool size: %d", ubi->fm_pool.max_size);
-	ubi_debug("fastmap WL pool size: %d", ubi->fm_wl_pool.max_size);
+	ubi_msg(ubi, "attached by fastmap");
+	ubi_msg(ubi, "fastmap pool size: %d", ubi->fm_pool.max_size);
+	ubi_msg(ubi, "fastmap WL pool size: %d",
+		ubi->fm_wl_pool.max_size);
 	ubi->fm_disabled = 0;
 
 	ubi_free_vid_hdr(ubi, vh);
 	kfree(ech);
 out:
 	if (ret == UBI_BAD_FASTMAP)
-		ubi_err("Attach by fastmap failed, doing a full scan!");
+		ubi_err(ubi, "Attach by fastmap failed, doing a full scan!");
 	return ret;
 
 free_hdr:
@@ -1254,7 +1254,7 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 	dbg_bld("writing fastmap SB to PEB %i", new_fm->e[0]->pnum);
 	ret = ubi_io_write_vid_hdr(ubi, new_fm->e[0]->pnum, avhdr);
 	if (ret) {
-		ubi_err("unable to write vid_hdr to fastmap SB!");
+		ubi_err(ubi, "unable to write vid_hdr to fastmap SB!");
 		goto out_kfree;
 	}
 
@@ -1274,7 +1274,7 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 			new_fm->e[i]->pnum, be64_to_cpu(dvhdr->sqnum));
 		ret = ubi_io_write_vid_hdr(ubi, new_fm->e[i]->pnum, dvhdr);
 		if (ret) {
-			ubi_err("unable to write vid_hdr to PEB %i!",
+			ubi_err(ubi, "unable to write vid_hdr to PEB %i!",
 				new_fm->e[i]->pnum);
 			goto out_kfree;
 		}
@@ -1284,7 +1284,7 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 		ret = ubi_io_write(ubi, fm_raw + (i * ubi->leb_size),
 			new_fm->e[i]->pnum, ubi->leb_start, ubi->leb_size);
 		if (ret) {
-			ubi_err("unable to write fastmap to PEB %i!",
+			ubi_err(ubi, "unable to write fastmap to PEB %i!",
 				new_fm->e[i]->pnum);
 			goto out_kfree;
 		}
@@ -1436,7 +1436,7 @@ int ubi_update_fastmap(struct ubi_device *ubi)
 	ubi->fm = NULL;
 
 	if (new_fm->used_blocks > UBI_FM_MAX_BLOCKS) {
-		ubi_err("fastmap too large");
+		ubi_err(ubi, "fastmap too large");
 		ret = -ENOSPC;
 		goto err;
 	}
@@ -1446,7 +1446,7 @@ int ubi_update_fastmap(struct ubi_device *ubi)
 
 		if (!tmp_e && !old_fm) {
 			int j;
-			ubi_err("could not get any free erase block");
+			ubi_err(ubi, "could not get any free erase block");
 
 			for (j = 1; j < i; j++)
 				ubi_wl_put_fm_peb(ubi, new_fm->e[j], j, 0);
@@ -1462,7 +1462,7 @@ int ubi_update_fastmap(struct ubi_device *ubi)
 					ubi_wl_put_fm_peb(ubi, new_fm->e[j],
 							  j, 0);
 
-				ubi_err("could not erase old fastmap PEB");
+				ubi_err(ubi, "could not erase old fastmap PEB");
 				goto err;
 			}
 
@@ -1486,7 +1486,7 @@ int ubi_update_fastmap(struct ubi_device *ubi)
 			ret = erase_block(ubi, old_fm->e[0]->pnum);
 			if (ret < 0) {
 				int i;
-				ubi_err("could not erase old anchor PEB");
+				ubi_err(ubi, "could not erase old anchor PEB");
 
 				for (i = 1; i < new_fm->used_blocks; i++)
 					ubi_wl_put_fm_peb(ubi, new_fm->e[i],
@@ -1507,7 +1507,7 @@ int ubi_update_fastmap(struct ubi_device *ubi)
 	} else {
 		if (!tmp_e) {
 			int i;
-			ubi_err("could not find any anchor PEB");
+			ubi_err(ubi, "could not find any anchor PEB");
 
 			for (i = 1; i < new_fm->used_blocks; i++)
 				ubi_wl_put_fm_peb(ubi, new_fm->e[i], i, 0);
@@ -1532,13 +1532,13 @@ out_unlock:
 err:
 	kfree(new_fm);
 
-	ubi_warn("Unable to write new fastmap, err=%i", ret);
+	ubi_warn(ubi, "Unable to write new fastmap, err=%i", ret);
 
 	ret = 0;
 	if (old_fm) {
 		ret = invalidate_fastmap(ubi, old_fm);
 		if (ret < 0)
-			ubi_err("Unable to invalidiate current fastmap!");
+			ubi_err(ubi, "Unable to invalidiate current fastmap!");
 		else if (ret)
 			ret = 0;
 	}
diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index b3cb4f2..bb38b79 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -157,7 +157,7 @@ int ubi_io_write(struct ubi_device *ubi, const void *buf, int pnum, int offset,
 	ubi_assert(len > 0 && len % ubi->hdrs_min_io_size == 0);
 
 	if (ubi->ro_mode) {
-		ubi_err("read-only mode");
+		ubi_err(ubi, "read-only mode");
 		return -EROFS;
 	}
 
@@ -192,7 +192,7 @@ static int do_sync_erase(struct ubi_device *ubi, int pnum)
 	ubi_assert(pnum >= 0 && pnum < ubi->peb_count);
 
 	if (ubi->ro_mode) {
-		ubi_err("read-only mode");
+		ubi_err(ubi, "read-only mode");
 		return -EROFS;
 	}
 
@@ -268,7 +268,7 @@ error:
 	 * it. Supposedly the flash media or the driver is screwed up, so
 	 * return an error.
 	 */
-	ubi_err("cannot invalidate PEB %d, write returned %d", pnum, err);
+	ubi_err(ubi, "cannot invalidate PEB %d, write returned %d", pnum, err);
 	ubi_dump_flash(ubi, pnum, 0, ubi->peb_size);
 	return -EIO;
 }
@@ -300,7 +300,7 @@ int ubi_io_sync_erase(struct ubi_device *ubi, int pnum, int torture)
 		return err;
 
 	if (ubi->ro_mode) {
-		ubi_err("read-only mode");
+		ubi_err(ubi, "read-only mode");
 		return -EROFS;
 	}
 
@@ -342,7 +342,7 @@ int ubi_io_is_bad(const struct ubi_device *ubi, int pnum)
 
 		ret = mtd_block_isbad(mtd, (loff_t)pnum * ubi->peb_size);
 		if (ret < 0)
-			ubi_err("error %d while checking if PEB %d is bad",
+			ubi_err(ubi, "error %d while checking if PEB %d is bad",
 				ret, pnum);
 		else if (ret)
 			dbg_io("PEB %d is bad", pnum);
@@ -371,32 +371,32 @@ static int validate_ec_hdr(const struct ubi_device *ubi,
 	leb_start = be32_to_cpu(ec_hdr->data_offset);
 
 	if (ec_hdr->version != UBI_VERSION) {
-		ubi_err("node with incompatible UBI version found: this UBI version is %d, image version is %d",
+		ubi_err(ubi, "node with incompatible UBI version found: this UBI version is %d, image version is %d",
 			UBI_VERSION, (int)ec_hdr->version);
 		goto bad;
 	}
 
 	if (vid_hdr_offset != ubi->vid_hdr_offset) {
-		ubi_err("bad VID header offset %d, expected %d",
+		ubi_err(ubi, "bad VID header offset %d, expected %d",
 			vid_hdr_offset, ubi->vid_hdr_offset);
 		goto bad;
 	}
 
 	if (leb_start != ubi->leb_start) {
-		ubi_err("bad data offset %d, expected %d",
+		ubi_err(ubi, "bad data offset %d, expected %d",
 			leb_start, ubi->leb_start);
 		goto bad;
 	}
 
 	if (ec < 0 || ec > UBI_MAX_ERASECOUNTER) {
-		ubi_err("bad erase counter %lld", ec);
+		ubi_err(ubi, "bad erase counter %lld", ec);
 		goto bad;
 	}
 
 	return 0;
 
 bad:
-	ubi_err("bad EC header");
+	ubi_err(ubi, "bad EC header");
 	ubi_dump_ec_hdr(ec_hdr);
 	dump_stack();
 	return 1;
@@ -462,7 +462,7 @@ int ubi_io_read_ec_hdr(struct ubi_device *ubi, int pnum,
 		if (mtd_buf_all_ff(ec_hdr, UBI_EC_HDR_SIZE)) {
 			/* The physical eraseblock is supposedly empty */
 			if (verbose)
-				ubi_warn("no EC header found at PEB %d, only 0xFF bytes",
+				ubi_warn(ubi, "no EC header found at PEB %d, only 0xFF bytes",
 					 pnum);
 			dbg_bld("no EC header found at PEB %d, only 0xFF bytes",
 				pnum);
@@ -477,7 +477,7 @@ int ubi_io_read_ec_hdr(struct ubi_device *ubi, int pnum,
 		 * 0xFF bytes. Report that the header is corrupted.
 		 */
 		if (verbose) {
-			ubi_warn("bad magic number at PEB %d: %08x instead of %08x",
+			ubi_warn(ubi, "bad magic number at PEB %d: %08x instead of %08x",
 				 pnum, magic, UBI_EC_HDR_MAGIC);
 			ubi_dump_ec_hdr(ec_hdr);
 		}
@@ -491,7 +491,7 @@ int ubi_io_read_ec_hdr(struct ubi_device *ubi, int pnum,
 
 	if (hdr_crc != crc) {
 		if (verbose) {
-			ubi_warn("bad EC header CRC at PEB %d, calculated %#08x, read %#08x",
+			ubi_warn(ubi, "bad EC header CRC at PEB %d, calculated %#08x, read %#08x",
 				 pnum, crc, hdr_crc);
 			ubi_dump_ec_hdr(ec_hdr);
 		}
@@ -507,7 +507,7 @@ int ubi_io_read_ec_hdr(struct ubi_device *ubi, int pnum,
 	/* And of course validate what has just been read from the media */
 	err = validate_ec_hdr(ubi, ec_hdr);
 	if (err) {
-		ubi_err("validation failed for PEB %d", pnum);
+		ubi_err(ubi, "validation failed for PEB %d", pnum);
 		return -EINVAL;
 	}
 
@@ -581,40 +581,40 @@ static int validate_vid_hdr(const struct ubi_device *ubi,
 	int usable_leb_size = ubi->leb_size - data_pad;
 
 	if (copy_flag != 0 && copy_flag != 1) {
-		ubi_err("bad copy_flag");
+		ubi_err(ubi, "bad copy_flag");
 		goto bad;
 	}
 
 	if (vol_id < 0 || lnum < 0 || data_size < 0 || used_ebs < 0 ||
 	    data_pad < 0) {
-		ubi_err("negative values");
+		ubi_err(ubi, "negative values");
 		goto bad;
 	}
 
 	if (vol_id >= UBI_MAX_VOLUMES && vol_id < UBI_INTERNAL_VOL_START) {
-		ubi_err("bad vol_id");
+		ubi_err(ubi, "bad vol_id");
 		goto bad;
 	}
 
 	if (vol_id < UBI_INTERNAL_VOL_START && compat != 0) {
-		ubi_err("bad compat");
+		ubi_err(ubi, "bad compat");
 		goto bad;
 	}
 
 	if (vol_id >= UBI_INTERNAL_VOL_START && compat != UBI_COMPAT_DELETE &&
 	    compat != UBI_COMPAT_RO && compat != UBI_COMPAT_PRESERVE &&
 	    compat != UBI_COMPAT_REJECT) {
-		ubi_err("bad compat");
+		ubi_err(ubi, "bad compat");
 		goto bad;
 	}
 
 	if (vol_type != UBI_VID_DYNAMIC && vol_type != UBI_VID_STATIC) {
-		ubi_err("bad vol_type");
+		ubi_err(ubi, "bad vol_type");
 		goto bad;
 	}
 
 	if (data_pad >= ubi->leb_size / 2) {
-		ubi_err("bad data_pad");
+		ubi_err(ubi, "bad data_pad");
 		goto bad;
 	}
 
@@ -626,45 +626,45 @@ static int validate_vid_hdr(const struct ubi_device *ubi,
 		 * mapped logical eraseblocks.
 		 */
 		if (used_ebs == 0) {
-			ubi_err("zero used_ebs");
+			ubi_err(ubi, "zero used_ebs");
 			goto bad;
 		}
 		if (data_size == 0) {
-			ubi_err("zero data_size");
+			ubi_err(ubi, "zero data_size");
 			goto bad;
 		}
 		if (lnum < used_ebs - 1) {
 			if (data_size != usable_leb_size) {
-				ubi_err("bad data_size");
+				ubi_err(ubi, "bad data_size");
 				goto bad;
 			}
 		} else if (lnum == used_ebs - 1) {
 			if (data_size == 0) {
-				ubi_err("bad data_size at last LEB");
+				ubi_err(ubi, "bad data_size at last LEB");
 				goto bad;
 			}
 		} else {
-			ubi_err("too high lnum");
+			ubi_err(ubi, "too high lnum");
 			goto bad;
 		}
 	} else {
 		if (copy_flag == 0) {
 			if (data_crc != 0) {
-				ubi_err("non-zero data CRC");
+				ubi_err(ubi, "non-zero data CRC");
 				goto bad;
 			}
 			if (data_size != 0) {
-				ubi_err("non-zero data_size");
+				ubi_err(ubi, "non-zero data_size");
 				goto bad;
 			}
 		} else {
 			if (data_size == 0) {
-				ubi_err("zero data_size of copy");
+				ubi_err(ubi, "zero data_size of copy");
 				goto bad;
 			}
 		}
 		if (used_ebs != 0) {
-			ubi_err("bad used_ebs");
+			ubi_err(ubi, "bad used_ebs");
 			goto bad;
 		}
 	}
@@ -672,7 +672,7 @@ static int validate_vid_hdr(const struct ubi_device *ubi,
 	return 0;
 
 bad:
-	ubi_err("bad VID header");
+	ubi_err(ubi, "bad VID header");
 	ubi_dump_vid_hdr(vid_hdr);
 	dump_stack();
 	return 1;
@@ -717,7 +717,7 @@ int ubi_io_read_vid_hdr(struct ubi_device *ubi, int pnum,
 
 		if (mtd_buf_all_ff(vid_hdr, UBI_VID_HDR_SIZE)) {
 			if (verbose)
-				ubi_warn("no VID header found at PEB %d, only 0xFF bytes",
+				ubi_warn(ubi, "no VID header found at PEB %d, only 0xFF bytes",
 					 pnum);
 			dbg_bld("no VID header found at PEB %d, only 0xFF bytes",
 				pnum);
@@ -728,7 +728,7 @@ int ubi_io_read_vid_hdr(struct ubi_device *ubi, int pnum,
 		}
 
 		if (verbose) {
-			ubi_warn("bad magic number at PEB %d: %08x instead of %08x",
+			ubi_warn(ubi, "bad magic number at PEB %d: %08x instead of %08x",
 				 pnum, magic, UBI_VID_HDR_MAGIC);
 			ubi_dump_vid_hdr(vid_hdr);
 		}
@@ -742,7 +742,7 @@ int ubi_io_read_vid_hdr(struct ubi_device *ubi, int pnum,
 
 	if (hdr_crc != crc) {
 		if (verbose) {
-			ubi_warn("bad CRC at PEB %d, calculated %#08x, read %#08x",
+			ubi_warn(ubi, "bad CRC at PEB %d, calculated %#08x, read %#08x",
 				 pnum, crc, hdr_crc);
 			ubi_dump_vid_hdr(vid_hdr);
 		}
@@ -756,7 +756,7 @@ int ubi_io_read_vid_hdr(struct ubi_device *ubi, int pnum,
 
 	err = validate_vid_hdr(ubi, vid_hdr);
 	if (err) {
-		ubi_err("validation failed for PEB %d", pnum);
+		ubi_err(ubi, "validation failed for PEB %d", pnum);
 		return -EINVAL;
 	}
 
@@ -826,7 +826,7 @@ static int self_check_not_bad(const struct ubi_device *ubi, int pnum)
 	if (!err)
 		return err;
 
-	ubi_err("self-check failed for PEB %d", pnum);
+	ubi_err(ubi, "self-check failed for PEB %d", pnum);
 	dump_stack();
 	return err > 0 ? -EINVAL : err;
 }
@@ -851,14 +851,14 @@ static int self_check_ec_hdr(const struct ubi_device *ubi, int pnum,
 
 	magic = be32_to_cpu(ec_hdr->magic);
 	if (magic != UBI_EC_HDR_MAGIC) {
-		ubi_err("bad magic %#08x, must be %#08x",
+		ubi_err(ubi, "bad magic %#08x, must be %#08x",
 			magic, UBI_EC_HDR_MAGIC);
 		goto fail;
 	}
 
 	err = validate_ec_hdr(ubi, ec_hdr);
 	if (err) {
-		ubi_err("self-check failed for PEB %d", pnum);
+		ubi_err(ubi, "self-check failed for PEB %d", pnum);
 		goto fail;
 	}
 
@@ -898,8 +898,9 @@ static int self_check_peb_ec_hdr(const struct ubi_device *ubi, int pnum)
 	crc = crc32(UBI_CRC32_INIT, ec_hdr, UBI_EC_HDR_SIZE_CRC);
 	hdr_crc = be32_to_cpu(ec_hdr->hdr_crc);
 	if (hdr_crc != crc) {
-		ubi_err("bad CRC, calculated %#08x, read %#08x", crc, hdr_crc);
-		ubi_err("self-check failed for PEB %d", pnum);
+		ubi_err(ubi, "bad CRC, calculated %#08x, read %#08x",
+			crc, hdr_crc);
+		ubi_err(ubi, "self-check failed for PEB %d", pnum);
 		ubi_dump_ec_hdr(ec_hdr);
 		dump_stack();
 		err = -EINVAL;
@@ -933,21 +934,21 @@ static int self_check_vid_hdr(const struct ubi_device *ubi, int pnum,
 
 	magic = be32_to_cpu(vid_hdr->magic);
 	if (magic != UBI_VID_HDR_MAGIC) {
-		ubi_err("bad VID header magic %#08x at PEB %d, must be %#08x",
+		ubi_err(ubi, "bad VID header magic %#08x at PEB %d, must be %#08x",
 			magic, pnum, UBI_VID_HDR_MAGIC);
 		goto fail;
 	}
 
 	err = validate_vid_hdr(ubi, vid_hdr);
 	if (err) {
-		ubi_err("self-check failed for PEB %d", pnum);
+		ubi_err(ubi, "self-check failed for PEB %d", pnum);
 		goto fail;
 	}
 
 	return err;
 
 fail:
-	ubi_err("self-check failed for PEB %d", pnum);
+	ubi_err(ubi, "self-check failed for PEB %d", pnum);
 	ubi_dump_vid_hdr(vid_hdr);
 	dump_stack();
 	return -EINVAL;
@@ -985,9 +986,9 @@ static int self_check_peb_vid_hdr(const struct ubi_device *ubi, int pnum)
 	crc = crc32(UBI_CRC32_INIT, vid_hdr, UBI_EC_HDR_SIZE_CRC);
 	hdr_crc = be32_to_cpu(vid_hdr->hdr_crc);
 	if (hdr_crc != crc) {
-		ubi_err("bad VID header CRC at PEB %d, calculated %#08x, read %#08x",
+		ubi_err(ubi, "bad VID header CRC at PEB %d, calculated %#08x, read %#08x",
 			pnum, crc, hdr_crc);
-		ubi_err("self-check failed for PEB %d", pnum);
+		ubi_err(ubi, "self-check failed for PEB %d", pnum);
 		ubi_dump_vid_hdr(vid_hdr);
 		dump_stack();
 		err = -EINVAL;
diff --git a/drivers/mtd/ubi/kapi.c b/drivers/mtd/ubi/kapi.c
index 7fc1aa8..60128a5 100644
--- a/drivers/mtd/ubi/kapi.c
+++ b/drivers/mtd/ubi/kapi.c
@@ -188,7 +188,7 @@ struct ubi_volume_desc *ubi_open_volume(int ubi_num, int vol_id, int mode)
 			return ERR_PTR(err);
 		}
 		if (err == 1) {
-			ubi_warn("volume %d on UBI device %d is corrupted",
+			ubi_warn(ubi, "volume %d on UBI device %d is corrupted",
 				 vol_id, ubi->ubi_num);
 			vol->corrupted = 1;
 		}
@@ -201,7 +201,7 @@ out_unlock:
 	kfree(desc);
 out_put_ubi:
 	ubi_put_device(ubi);
-	ubi_err("cannot open device %d, volume %d, error %d",
+	ubi_err(ubi, "cannot open device %d, volume %d, error %d",
 		ubi_num, vol_id, err);
 	return ERR_PTR(err);
 }
@@ -365,7 +365,7 @@ int ubi_leb_read(struct ubi_volume_desc *desc, int lnum, char *buf, int offset,
 
 	err = ubi_eba_read_leb(ubi, vol, lnum, buf, offset, len, check);
 	if (err && mtd_is_eccerr(err) && vol->vol_type == UBI_STATIC_VOLUME) {
-		ubi_warn("mark volume %d as corrupted", vol_id);
+		ubi_warn(ubi, "mark volume %d as corrupted", vol_id);
 		vol->corrupted = 1;
 	}
 
diff --git a/drivers/mtd/ubi/misc.c b/drivers/mtd/ubi/misc.c
index 9633466..d9a8d79 100644
--- a/drivers/mtd/ubi/misc.c
+++ b/drivers/mtd/ubi/misc.c
@@ -107,7 +107,7 @@ void ubi_update_reserved(struct ubi_device *ubi)
 	ubi->avail_pebs -= need;
 	ubi->rsvd_pebs += need;
 	ubi->beb_rsvd_pebs += need;
-	ubi_msg("reserved more %d PEBs for bad PEB handling", need);
+	ubi_msg(ubi, "reserved more %d PEBs for bad PEB handling", need);
 }
 
 /**
@@ -124,7 +124,7 @@ void ubi_calculate_reserved(struct ubi_device *ubi)
 	ubi->beb_rsvd_level = ubi->bad_peb_limit - ubi->bad_peb_count;
 	if (ubi->beb_rsvd_level < 0) {
 		ubi->beb_rsvd_level = 0;
-		ubi_warn("number of bad PEBs (%d) is above the expected limit (%d), not reserving any PEBs for bad PEB handling, will use available PEBs (if any)",
+		ubi_warn(ubi, "number of bad PEBs (%d) is above the expected limit (%d), not reserving any PEBs for bad PEB handling, will use available PEBs (if any)",
 			 ubi->bad_peb_count, ubi->bad_peb_limit);
 	}
 }
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index df104db..6f93575 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -38,13 +38,14 @@
 
 #define ubi_debug(fmt, ...) pr_debug("UBI: " fmt "\n", ##__VA_ARGS__)
 /* Normal UBI messages */
-#define ubi_msg(fmt, ...) pr_info("UBI: " fmt "\n", ##__VA_ARGS__)
+#define ubi_msg(ubi, fmt, ...) pr_info("UBI-%d: %s: " fmt "\n", \
+					ubi->ubi_num, __func__, ##__VA_ARGS__)
 /* UBI warning messages */
-#define ubi_warn(fmt, ...) pr_warn("UBI warning: %s: " fmt "\n",  \
-				   __func__, ##__VA_ARGS__)
+#define ubi_warn(ubi, fmt, ...) pr_warn("UBI-%d warning: %s: " fmt "\n", \
+					ubi->ubi_num, __func__, ##__VA_ARGS__)
 /* UBI error messages */
-#define ubi_err(fmt, ...) pr_err("UBI error: %s: " fmt "\n",      \
-				 __func__, ##__VA_ARGS__)
+#define ubi_err(ubi, fmt, ...) pr_err("UBI-%d error: %s: " fmt "\n", \
+				      ubi->ubi_num, __func__, ##__VA_ARGS__)
 
 /* Background thread name pattern */
 #define UBI_BGT_NAME_PATTERN "ubi_bgt%dd"
@@ -943,7 +944,7 @@ static inline void ubi_ro_mode(struct ubi_device *ubi)
 {
 	if (!ubi->ro_mode) {
 		ubi->ro_mode = 1;
-		ubi_warn("switch to read-only mode");
+		ubi_warn(ubi, "switch to read-only mode");
 		dump_stack();
 	}
 }
diff --git a/drivers/mtd/ubi/vmt.c b/drivers/mtd/ubi/vmt.c
index 549cb42..fbe8876 100644
--- a/drivers/mtd/ubi/vmt.c
+++ b/drivers/mtd/ubi/vmt.c
@@ -59,7 +59,7 @@ int ubi_create_volume(struct ubi_device *ubi, struct ubi_mkvol_req *req)
 			}
 
 		if (vol_id == UBI_VOL_NUM_AUTO) {
-			ubi_err("out of volume IDs");
+			ubi_err(ubi, "out of volume IDs");
 			err = -ENFILE;
 			goto out_unlock;
 		}
@@ -73,7 +73,7 @@ int ubi_create_volume(struct ubi_device *ubi, struct ubi_mkvol_req *req)
 	/* Ensure that this volume does not exist */
 	err = -EEXIST;
 	if (ubi->volumes[vol_id]) {
-		ubi_err("volume %d already exists", vol_id);
+		ubi_err(ubi, "volume %d already exists", vol_id);
 		goto out_unlock;
 	}
 
@@ -82,7 +82,8 @@ int ubi_create_volume(struct ubi_device *ubi, struct ubi_mkvol_req *req)
 		if (ubi->volumes[i] &&
 		    ubi->volumes[i]->name_len == req->name_len &&
 		    !strcmp(ubi->volumes[i]->name, req->name)) {
-			ubi_err("volume \"%s\" exists (ID %d)", req->name, i);
+			ubi_err(ubi, "volume \"%s\" exists (ID %d)",
+				req->name, i);
 			goto out_unlock;
 		}
 
@@ -93,9 +94,10 @@ int ubi_create_volume(struct ubi_device *ubi, struct ubi_mkvol_req *req)
 
 	/* Reserve physical eraseblocks */
 	if (vol->reserved_pebs > ubi->avail_pebs) {
-		ubi_err("not enough PEBs, only %d available", ubi->avail_pebs);
+		ubi_err(ubi, "not enough PEBs, only %d available",
+			ubi->avail_pebs);
 		if (ubi->corr_peb_count)
-			ubi_err("%d PEBs are corrupted and not used",
+			ubi_err(ubi, "%d PEBs are corrupted and not used",
 				ubi->corr_peb_count);
 		err = -ENOSPC;
 		goto out_unlock;
@@ -153,7 +155,7 @@ int ubi_create_volume(struct ubi_device *ubi, struct ubi_mkvol_req *req)
 	/* Register character device for the volume */
 	err = ubi_volume_cdev_add(ubi, vol);
 	if (err) {
-		ubi_err("cannot add character device");
+		ubi_err(ubi, "cannot add character device");
 		goto out_mapping;
 	}
 
@@ -200,7 +202,8 @@ out_acc:
 out_unlock:
 	if (do_free)
 		kfree(vol);
-	ubi_err("cannot create volume %d, error %d", vol_id, err);
+
+	ubi_err(ubi, "cannot create volume %d, error %d", vol_id, err);
 	return err;
 }
 
@@ -264,7 +267,7 @@ int ubi_remove_volume(struct ubi_volume_desc *desc, int no_vtbl)
 	return err;
 
 out_err:
-	ubi_err("cannot remove volume %d, error %d", vol_id, err);
+	ubi_err(ubi, "cannot remove volume %d, error %d", vol_id, err);
 	ubi->volumes[vol_id] = vol;
 out_unlock:
 	return err;
@@ -295,7 +298,7 @@ int ubi_resize_volume(struct ubi_volume_desc *desc, int reserved_pebs)
 
 	if (vol->vol_type == UBI_STATIC_VOLUME &&
 	    reserved_pebs < vol->used_ebs) {
-		ubi_err("too small size %d, %d LEBs contain data",
+		ubi_err(ubi, "too small size %d, %d LEBs contain data",
 			reserved_pebs, vol->used_ebs);
 		return -EINVAL;
 	}
@@ -320,10 +323,10 @@ int ubi_resize_volume(struct ubi_volume_desc *desc, int reserved_pebs)
 	pebs = reserved_pebs - vol->reserved_pebs;
 	if (pebs > 0) {
 		if (pebs > ubi->avail_pebs) {
-			ubi_err("not enough PEBs: requested %d, available %d",
+			ubi_err(ubi, "not enough PEBs: requested %d, available %d",
 				pebs, ubi->avail_pebs);
 			if (ubi->corr_peb_count)
-				ubi_err("%d PEBs are corrupted and not used",
+				ubi_err(ubi, "%d PEBs are corrupted and not used",
 					ubi->corr_peb_count);
 			err = -ENOSPC;
 			goto out_free;
@@ -442,7 +445,7 @@ int ubi_add_volume(struct ubi_device *ubi, struct ubi_volume *vol)
 	/* Register character device for the volume */
 	err = ubi_volume_cdev_add(ubi, vol);
 	if (err) {
-		ubi_err("cannot add character device for volume, error %d",
+		ubi_err(ubi, "cannot add character device for volume, error %d",
 			err);
 		return err;
 	}
@@ -490,7 +493,7 @@ static int self_check_volume(struct ubi_device *ubi, int vol_id)
 
 	if (!vol) {
 		if (reserved_pebs) {
-			ubi_err("no volume info, but volume exists");
+			ubi_err(ubi, "no volume info, but volume exists");
 			goto fail;
 		}
 		return 0;
@@ -498,90 +501,91 @@ static int self_check_volume(struct ubi_device *ubi, int vol_id)
 
 	if (vol->reserved_pebs < 0 || vol->alignment < 0 || vol->data_pad < 0 ||
 	    vol->name_len < 0) {
-		ubi_err("negative values");
+		ubi_err(ubi, "negative values");
 		goto fail;
 	}
 	if (vol->alignment > ubi->leb_size || vol->alignment == 0) {
-		ubi_err("bad alignment");
+		ubi_err(ubi, "bad alignment");
 		goto fail;
 	}
 
 	n = vol->alignment & (ubi->min_io_size - 1);
 	if (vol->alignment != 1 && n) {
-		ubi_err("alignment is not multiple of min I/O unit");
+		ubi_err(ubi, "alignment is not multiple of min I/O unit");
 		goto fail;
 	}
 
 	n = ubi->leb_size % vol->alignment;
 	if (vol->data_pad != n) {
-		ubi_err("bad data_pad, has to be %lld", n);
+		ubi_err(ubi, "bad data_pad, has to be %lld", n);
 		goto fail;
 	}
 
 	if (vol->vol_type != UBI_DYNAMIC_VOLUME &&
 	    vol->vol_type != UBI_STATIC_VOLUME) {
-		ubi_err("bad vol_type");
+		ubi_err(ubi, "bad vol_type");
 		goto fail;
 	}
 
 	if (vol->upd_marker && vol->corrupted) {
-		ubi_err("update marker and corrupted simultaneously");
+		ubi_err(ubi, "update marker and corrupted simultaneously");
 		goto fail;
 	}
 
 	if (vol->reserved_pebs > ubi->good_peb_count) {
-		ubi_err("too large reserved_pebs");
+		ubi_err(ubi, "too large reserved_pebs");
 		goto fail;
 	}
 
 	n = ubi->leb_size - vol->data_pad;
 	if (vol->usable_leb_size != ubi->leb_size - vol->data_pad) {
-		ubi_err("bad usable_leb_size, has to be %lld", n);
+		ubi_err(ubi, "bad usable_leb_size, has to be %lld", n);
 		goto fail;
 	}
 
 	if (vol->name_len > UBI_VOL_NAME_MAX) {
-		ubi_err("too long volume name, max is %d", UBI_VOL_NAME_MAX);
+		ubi_err(ubi, "too long volume name, max is %d",
+			UBI_VOL_NAME_MAX);
 		goto fail;
 	}
 
 	n = strnlen(vol->name, vol->name_len + 1);
 	if (n != vol->name_len) {
-		ubi_err("bad name_len %lld", n);
+		ubi_err(ubi, "bad name_len %lld", n);
 		goto fail;
 	}
 
 	n = (long long)vol->used_ebs * vol->usable_leb_size;
 	if (vol->vol_type == UBI_DYNAMIC_VOLUME) {
 		if (vol->corrupted) {
-			ubi_err("corrupted dynamic volume");
+			ubi_err(ubi, "corrupted dynamic volume");
 			goto fail;
 		}
 		if (vol->used_ebs != vol->reserved_pebs) {
-			ubi_err("bad used_ebs");
+			ubi_err(ubi, "bad used_ebs");
 			goto fail;
 		}
 		if (vol->last_eb_bytes != vol->usable_leb_size) {
-			ubi_err("bad last_eb_bytes");
+			ubi_err(ubi, "bad last_eb_bytes");
 			goto fail;
 		}
 		if (vol->used_bytes != n) {
-			ubi_err("bad used_bytes");
+			ubi_err(ubi, "bad used_bytes");
 			goto fail;
 		}
 	} else {
 		if (vol->used_ebs < 0 || vol->used_ebs > vol->reserved_pebs) {
-			ubi_err("bad used_ebs");
+			ubi_err(ubi, "bad used_ebs");
 			goto fail;
 		}
 		if (vol->last_eb_bytes < 0 ||
 		    vol->last_eb_bytes > vol->usable_leb_size) {
-			ubi_err("bad last_eb_bytes");
+			ubi_err(ubi, "bad last_eb_bytes");
 			goto fail;
 		}
 		if (vol->used_bytes < 0 || vol->used_bytes > n ||
 		    vol->used_bytes < n - vol->usable_leb_size) {
-			ubi_err("bad used_bytes");
+			ubi_err(ubi, "bad used_bytes");
 			goto fail;
 		}
 	}
@@ -599,14 +603,14 @@ static int self_check_volume(struct ubi_device *ubi, int vol_id)
 	if (alignment != vol->alignment || data_pad != vol->data_pad ||
 	    upd_marker != vol->upd_marker || vol_type != vol->vol_type ||
 	    name_len != vol->name_len || strncmp(name, vol->name, name_len)) {
-		ubi_err("volume info is different");
+		ubi_err(ubi, "volume info is different");
 		goto fail;
 	}
 
 	return 0;
 
 fail:
-	ubi_err("self-check failed for volume %d", vol_id);
+	ubi_err(ubi, "self-check failed for volume %d", vol_id);
 	if (vol)
 		ubi_dump_vol_info(vol);
 	ubi_dump_vtbl_record(&ubi->vtbl[vol_id], vol_id);
diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
index c15809a..6772612 100644
--- a/drivers/mtd/ubi/vtbl.c
+++ b/drivers/mtd/ubi/vtbl.c
@@ -181,7 +181,7 @@ static int vtbl_check(const struct ubi_device *ubi,
 
 		crc = crc32(UBI_CRC32_INIT, &vtbl[i], UBI_VTBL_RECORD_SIZE_CRC);
 		if (be32_to_cpu(vtbl[i].crc) != crc) {
-			ubi_err("bad CRC at record %u: %#08x, not %#08x",
+			ubi_err(ubi, "bad CRC at record %u: %#08x, not %#08x",
 				 i, crc, be32_to_cpu(vtbl[i].crc));
 			ubi_dump_vtbl_record(&vtbl[i], i);
 			return 1;
@@ -215,7 +215,7 @@ static int vtbl_check(const struct ubi_device *ubi,
 
 		n = ubi->leb_size % alignment;
 		if (data_pad != n) {
-			ubi_err("bad data_pad, has to be %d", n);
+			ubi_err(ubi, "bad data_pad, has to be %d", n);
 			err = 6;
 			goto bad;
 		}
@@ -231,7 +231,7 @@ static int vtbl_check(const struct ubi_device *ubi,
 		}
 
 		if (reserved_pebs > ubi->good_peb_count) {
-			ubi_err("too large reserved_pebs %d, good PEBs %d",
+			ubi_err(ubi, "too large reserved_pebs %d, good PEBs %d",
 				reserved_pebs, ubi->good_peb_count);
 			err = 9;
 			goto bad;
@@ -261,7 +261,7 @@ static int vtbl_check(const struct ubi_device *ubi,
 
 			if (len1 > 0 && len1 == len2 &&
 			    !strncmp(vtbl[i].name, vtbl[n].name, len1)) {
-				ubi_err("volumes %d and %d have the same name \"%s\"",
+				ubi_err(ubi, "volumes %d and %d have the same name \"%s\"",
 					i, n, vtbl[i].name);
 				ubi_dump_vtbl_record(&vtbl[i], i);
 				ubi_dump_vtbl_record(&vtbl[n], n);
@@ -273,7 +273,7 @@ static int vtbl_check(const struct ubi_device *ubi,
 	return 0;
 
 bad:
-	ubi_err("volume table check failed: record %d, error %d", i, err);
+	ubi_err(ubi, "volume table check failed: record %d, error %d", i, err);
 	ubi_dump_vtbl_record(&vtbl[i], i);
 	return -EINVAL;
 }
@@ -437,11 +437,11 @@ static struct ubi_vtbl_record *process_lvol(struct ubi_device *ubi,
 			leb_corrupted[1] = memcmp(leb[0], leb[1],
 						  ubi->vtbl_size);
 		if (leb_corrupted[1]) {
-			ubi_warn("volume table copy #2 is corrupted");
+			ubi_warn(ubi, "volume table copy #2 is corrupted");
 			err = create_vtbl(ubi, ai, 1, leb[0]);
 			if (err)
 				goto out_free;
-			ubi_msg("volume table was restored");
+			ubi_msg(ubi, "volume table was restored");
 		}
 
 		/* Both LEB 1 and LEB 2 are OK and consistent */
@@ -456,15 +456,15 @@ static struct ubi_vtbl_record *process_lvol(struct ubi_device *ubi,
 		}
 		if (leb_corrupted[1]) {
 			/* Both LEB 0 and LEB 1 are corrupted */
-			ubi_err("both volume tables are corrupted");
+			ubi_err(ubi, "both volume tables are corrupted");
 			goto out_free;
 		}
 
-		ubi_warn("volume table copy #1 is corrupted");
+		ubi_warn(ubi, "volume table copy #1 is corrupted");
 		err = create_vtbl(ubi, ai, 0, leb[1]);
 		if (err)
 			goto out_free;
-		ubi_msg("volume table was restored");
+		ubi_msg(ubi, "volume table was restored");
 
 		vfree(leb[0]);
 		return leb[1];
@@ -551,7 +551,7 @@ static int init_volumes(struct ubi_device *ubi,
 		if (vtbl[i].flags & UBI_VTBL_AUTORESIZE_FLG) {
 			/* Auto re-size flag may be set only for one volume */
 			if (ubi->autoresize_vol_id != -1) {
-				ubi_err("more than one auto-resize volume (%d and %d)",
+				ubi_err(ubi, "more than one auto-resize volume (%d and %d)",
 					ubi->autoresize_vol_id, i);
 				kfree(vol);
 				return -EINVAL;
@@ -597,7 +597,7 @@ static int init_volumes(struct ubi_device *ubi,
 			 * We found a static volume which misses several
 			 * eraseblocks. Treat it as corrupted.
 			 */
-			ubi_warn("static volume %d misses %d LEBs - corrupted",
+			ubi_warn(ubi, "static volume %d misses %d LEBs - corrupted",
 				 av->vol_id, av->used_ebs - av->leb_count);
 			vol->corrupted = 1;
 			continue;
@@ -635,10 +635,10 @@ static int init_volumes(struct ubi_device *ubi,
 	vol->ubi = ubi;
 
 	if (reserved_pebs > ubi->avail_pebs) {
-		ubi_err("not enough PEBs, required %d, available %d",
+		ubi_err(ubi, "not enough PEBs, required %d, available %d",
 			reserved_pebs, ubi->avail_pebs);
 		if (ubi->corr_peb_count)
-			ubi_err("%d PEBs are corrupted and not used",
+			ubi_err(ubi, "%d PEBs are corrupted and not used",
 				ubi->corr_peb_count);
 	}
 	ubi->rsvd_pebs += reserved_pebs;
@@ -649,13 +649,14 @@ static int init_volumes(struct ubi_device *ubi,
 
 /**
  * check_av - check volume attaching information.
+ * @ubi: UBI device description object
  * @vol: UBI volume description object
  * @av: volume attaching information
  *
  * This function returns zero if the volume attaching information is consistent
  * to the data read from the volume tabla, and %-EINVAL if not.
  */
-static int check_av(const struct ubi_volume *vol,
+static int check_av(const struct ubi_device *ubi, const struct ubi_volume *vol,
 		    const struct ubi_ainf_volume *av)
 {
 	int err;
@@ -683,7 +684,7 @@ static int check_av(const struct ubi_volume *vol,
 	return 0;
 
 bad:
-	ubi_err("bad attaching information, error %d", err);
+	ubi_err(ubi, "bad attaching information, error %d", err);
 	ubi_dump_av(av);
 	ubi_dump_vol_info(vol);
 	return -EINVAL;
@@ -707,14 +708,15 @@ static int check_attaching_info(const struct ubi_device *ubi,
 	struct ubi_volume *vol;
 
 	if (ai->vols_found > UBI_INT_VOL_COUNT + ubi->vtbl_slots) {
-		ubi_err("found %d volumes while attaching, maximum is %d + %d",
+		ubi_err(ubi, "found %d volumes while attaching, maximum is %d + %d",
 			ai->vols_found, UBI_INT_VOL_COUNT, ubi->vtbl_slots);
 		return -EINVAL;
 	}
 
 	if (ai->highest_vol_id >= ubi->vtbl_slots + UBI_INT_VOL_COUNT &&
 	    ai->highest_vol_id < UBI_INTERNAL_VOL_START) {
-		ubi_err("too large volume ID %d found", ai->highest_vol_id);
+		ubi_err(ubi, "too large volume ID %d found",
+			ai->highest_vol_id);
 		return -EINVAL;
 	}
 
@@ -740,10 +742,10 @@ static int check_attaching_info(const struct ubi_device *ubi,
 			 * reboot while the volume was being removed. Discard
 			 * these eraseblocks.
 			 */
-			ubi_msg("finish volume %d removal", av->vol_id);
+			ubi_msg(ubi, "finish volume %d removal", av->vol_id);
 			ubi_remove_av(ai, av);
 		} else if (av) {
-			err = check_av(vol, av);
+			err = check_av(ubi, vol, av);
 			if (err)
 				return err;
 		}
@@ -794,13 +796,13 @@ int ubi_read_volume_table(struct ubi_device *ubi, struct ubi_attach_info *ai)
 			if (IS_ERR(ubi->vtbl))
 				return PTR_ERR(ubi->vtbl);
 		} else {
-			ubi_err("the layout volume was not found");
+			ubi_err(ubi, "the layout volume was not found");
 			return -EINVAL;
 		}
 	} else {
 		if (av->leb_count > UBI_LAYOUT_VOLUME_EBS) {
 			/* This must not happen with proper UBI images */
-			ubi_err("too many LEBs (%d) in layout volume",
+			ubi_err(ubi, "too many LEBs (%d) in layout volume",
 				av->leb_count);
 			return -EINVAL;
 		}
@@ -849,7 +851,7 @@ static void self_vtbl_check(const struct ubi_device *ubi)
 		return;
 
 	if (vtbl_check(ubi, ubi->vtbl)) {
-		ubi_err("self-check failed");
+		ubi_err(ubi, "self-check failed");
 		BUG();
 	}
 }
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index 9c5b9b8..fa8f019 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -227,7 +227,7 @@ static int do_work(struct ubi_device *ubi)
 	 */
 	err = wrk->func(ubi, wrk, 0);
 	if (err)
-		ubi_err("work failed with error code %d", err);
+		ubi_err(ubi, "work failed with error code %d", err);
 
 	return err;
 }
@@ -439,8 +439,11 @@ struct ubi_wl_entry *ubi_wl_get_fm_peb(struct ubi_device *ubi, int anchor)
 {
 	struct ubi_wl_entry *e = NULL;
 
-	if (!ubi->free.rb_node || (ubi->free_count - ubi->beb_rsvd_pebs < 1))
+	if (!ubi->free.rb_node || (ubi->free_count - ubi->beb_rsvd_pebs < 1)) {
+		ubi_warn(ubi, "Can't get peb for fastmap:anchor=%d, free_cnt=%d, reserved=%d",
+			 anchor, ubi->free_count, ubi->beb_rsvd_pebs);
 		goto out;
+	}
 
 	if (anchor)
 		e = find_anchor_wl_entry(&ubi->free);
@@ -476,7 +479,7 @@ static int __wl_get_peb(struct ubi_device *ubi)
 retry:
 	if (!ubi->free.rb_node) {
 		if (ubi->works_count == 0) {
-			ubi_err("no free eraseblocks");
+			ubi_err(ubi, "no free eraseblocks");
 			ubi_assert(list_empty(&ubi->works));
 			return -ENOSPC;
 		}
@@ -489,7 +492,7 @@ retry:
 
 	e = find_mean_wl_entry(ubi, &ubi->free);
 	if (!e) {
-		ubi_err("no free eraseblocks");
+		ubi_err(ubi, "no free eraseblocks");
 		return -ENOSPC;
 	}
 
@@ -654,7 +657,8 @@ int ubi_wl_get_peb(struct ubi_device *ubi)
 	err = ubi_self_check_all_ff(ubi, peb, ubi->vid_hdr_aloffset,
 				    ubi->peb_size - ubi->vid_hdr_aloffset);
 	if (err) {
-		ubi_err("new PEB %d does not contain all 0xFF bytes", peb);
+		ubi_err(ubi, "new PEB %d does not contain all 0xFF bytes",
+			peb);
 		return err;
 	}
 
@@ -722,7 +726,7 @@ static int sync_erase(struct ubi_device *ubi, struct ubi_wl_entry *e,
 		 * Erase counter overflow. Upgrade UBI and use 64-bit
 		 * erase counters internally.
 		 */
-		ubi_err("erase counter overflow at PEB %d, EC %llu",
+		ubi_err(ubi, "erase counter overflow at PEB %d, EC %llu",
 			e->pnum, ec);
 		err = -EINVAL;
 		goto out_free;
@@ -1083,7 +1087,7 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 			goto out_not_moved;
 		}
 
-		ubi_err("error %d while reading VID header from PEB %d",
+		ubi_err(ubi, "error %d while reading VID header from PEB %d",
 			err, e1->pnum);
 		goto out_error;
 	}
@@ -1127,7 +1131,7 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 			 * UBI from trying to move it over and over again.
 			 */
 			if (ubi->erroneous_peb_count > ubi->max_erroneous) {
-				ubi_err("too many erroneous eraseblocks (%d)",
+				ubi_err(ubi, "too many erroneous eraseblocks (%d)",
 					ubi->erroneous_peb_count);
 				goto out_error;
 			}
@@ -1143,7 +1147,7 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 
 	/* The PEB has been successfully moved */
 	if (scrubbing)
-		ubi_msg("scrubbed PEB %d (LEB %d:%d), data moved to PEB %d",
+		ubi_msg(ubi, "scrubbed PEB %d (LEB %d:%d), data moved to PEB %d",
 			e1->pnum, vol_id, lnum, e2->pnum);
 	ubi_free_vid_hdr(ubi, vid_hdr);
 
@@ -1214,10 +1218,10 @@ out_not_moved:
 
 out_error:
 	if (vol_id != -1)
-		ubi_err("error %d while moving PEB %d to PEB %d",
+		ubi_err(ubi, "error %d while moving PEB %d to PEB %d",
 			err, e1->pnum, e2->pnum);
 	else
-		ubi_err("error %d while moving PEB %d (LEB %d:%d) to PEB %d",
+		ubi_err(ubi, "error %d while moving PEB %d (LEB %d:%d) to PEB %d",
 			err, e1->pnum, vol_id, lnum, e2->pnum);
 	ubi->move_from = ubi->move_to = NULL;
 	ubi->move_to_put = ubi->wl_scheduled = 0;
@@ -1382,7 +1386,7 @@ static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
 		return err;
 	}
 
-	ubi_err("failed to erase PEB %d, error %d", pnum, err);
+	ubi_err(ubi, "failed to erase PEB %d, error %d", pnum, err);
 	kfree(wl_wrk);
 
 	if (err == -EINTR || err == -ENOMEM || err == -EAGAIN ||
@@ -1410,13 +1414,14 @@ static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
 	/* It is %-EIO, the PEB went bad */
 
 	if (!ubi->bad_allowed) {
-		ubi_err("bad physical eraseblock %d detected", pnum);
+		ubi_err(ubi, "bad physical eraseblock %d detected", pnum);
 		goto out_ro;
 	}
 
 	if (ubi->beb_rsvd_pebs == 0) {
 		if (ubi->avail_pebs == 0) {
-			ubi_err("no reserved/available physical eraseblocks");
+			ubi_err(ubi, "no reserved/available physical eraseblocks");
+
 			goto out_ro;
 		}
 		ubi->avail_pebs -= 1;
@@ -1438,11 +1443,12 @@ static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
 	ubi->good_peb_count -= 1;
 	ubi_calculate_reserved(ubi);
 	if (available_consumed)
-		ubi_warn("no PEBs in the reserved pool, used an available PEB");
+		ubi_warn(ubi, "no PEBs in the reserved pool, used an available PEB");
 	else if (ubi->beb_rsvd_pebs)
-		ubi_msg("%d PEBs left in the reserve", ubi->beb_rsvd_pebs);
+		ubi_msg(ubi, "%d PEBs left in the reserve",
+			ubi->beb_rsvd_pebs);
 	else
-		ubi_warn("last PEB from the reserve was used");
+		ubi_warn(ubi, "last PEB from the reserve was used");
 
 	return err;
 
@@ -1518,7 +1524,7 @@ retry:
 		} else {
 			err = prot_queue_del(ubi, e->pnum);
 			if (err) {
-				ubi_err("PEB %d not found", pnum);
+				ubi_err(ubi, "PEB %d not found", pnum);
 				ubi_ro_mode(ubi);
 				return err;
 			}
@@ -1546,7 +1552,7 @@ int ubi_wl_scrub_peb(struct ubi_device *ubi, int pnum)
 {
 	struct ubi_wl_entry *e;
 
-	ubi_msg("schedule PEB %d for scrubbing", pnum);
+	ubi_msg(ubi, "schedule PEB %d for scrubbing", pnum);
 
 retry:
 	e = ubi->lookuptbl[pnum];
@@ -1574,7 +1580,7 @@ retry:
 
 		err = prot_queue_del(ubi, e->pnum);
 		if (err) {
-			ubi_err("PEB %d not found", pnum);
+			ubi_err(ubi, "PEB %d not found", pnum);
 			ubi_ro_mode(ubi);
 			return err;
 		}
@@ -1791,10 +1797,10 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 #endif
 
 	if (ubi->avail_pebs < reserved_pebs) {
-		ubi_err("no enough physical eraseblocks (%d, need %d)",
+		ubi_err(ubi, "no enough physical eraseblocks (%d, need %d)",
 			ubi->avail_pebs, reserved_pebs);
 		if (ubi->corr_peb_count)
-			ubi_err("%d PEBs are corrupted and not used",
+			ubi_err(ubi, "%d PEBs are corrupted and not used",
 				ubi->corr_peb_count);
 		goto out_free;
 	}
@@ -1882,8 +1888,8 @@ static int self_check_ec(struct ubi_device *ubi, int pnum, int ec)
 
 	read_ec = be64_to_cpu(ec_hdr->ec);
 	if (ec != read_ec && read_ec - ec > 1) {
-		ubi_err("self-check failed for PEB %d", pnum);
-		ubi_err("read EC is %lld, should be %d", read_ec, ec);
+		ubi_err(ubi, "self-check failed for PEB %d", pnum);
+		ubi_err(ubi, "read EC is %lld, should be %d", read_ec, ec);
 		dump_stack();
 		err = 1;
 	} else
@@ -1912,7 +1918,7 @@ static int self_check_in_wl_tree(const struct ubi_device *ubi,
 	if (in_wl_tree(e, root))
 		return 0;
 
-	ubi_err("self-check failed for PEB %d, EC %d, RB-tree %p ",
+	ubi_err(ubi, "self-check failed for PEB %d, EC %d, RB-tree %p ",
 		e->pnum, e->ec, root);
 	dump_stack();
 	return -EINVAL;
@@ -1940,7 +1946,7 @@ static int self_check_in_pq(const struct ubi_device *ubi,
 			if (p == e)
 				return 0;
 
-	ubi_err("self-check failed for PEB %d, EC %d, Protect queue",
+	ubi_err(ubi, "self-check failed for PEB %d, EC %d, Protect queue",
 		e->pnum, e->ec);
 	dump_stack();
 	return -EINVAL;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzT1-0005be-UU
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:10 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 7E0E2A00E59
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:04 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:20:09 +0200
Message-Id: <1535545212-18871-54-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 53/56] ubi: fastmap: Check each mapping only once
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Maintain a bitmap to keep track of which LEB->PEB mapping
was checked already.
That way we have to read back VID headers only once.

Signed-off-by: Richard Weinberger <richard@nod.at>
[Fixed Conflict]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/build.c   |  1 +
 drivers/mtd/ubi/eba.c     |  4 ++++
 drivers/mtd/ubi/fastmap.c | 20 ++++++++++++++++++++
 drivers/mtd/ubi/ubi.h     | 11 +++++++++++
 drivers/mtd/ubi/vtbl.c    | 16 +++++++++++++++-
 5 files changed, 51 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 5917fe67918e..536077ebf3f3 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -219,6 +219,7 @@ void ubi_free_internal_volumes(struct ubi_device *ubi)
 	for (i = ubi->vtbl_slots;
 	     i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
 		ubi_eba_replace_table(ubi->volumes[i], NULL);
+		ubi_fastmap_destroy_checkmap(ubi->volumes[i]);
 		kfree(ubi->volumes[i]);
 	}
 }
diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index c0653122ffc5..d29df1d1550b 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -483,6 +483,9 @@ static int check_mapping(struct ubi_device *ubi, struct ubi_volume *vol, int lnu
 	if (!ubi->fast_attach)
 		return 0;
 
+	if (!vol->checkmap || test_bit(lnum, vol->checkmap))
+		return 0;
+
 	vidb = ubi_alloc_vid_buf(ubi, GFP_NOFS);
 	if (!vidb)
 		return -ENOMEM;
@@ -515,6 +518,7 @@ static int check_mapping(struct ubi_device *ubi, struct ubi_volume *vol, int lnu
 		goto out_free;
 	}
 
+	set_bit(lnum, vol->checkmap);
 	err = 0;
 
 out_free:
diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 5f31f2081437..84c2912bf560 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -1034,6 +1034,26 @@ free_fm_sb:
 	goto out;
 }
 
+int ubi_fastmap_init_checkmap(struct ubi_volume *vol, int leb_count)
+{
+	struct ubi_device *ubi = vol->ubi;
+
+	if (!ubi->fast_attach)
+		return 0;
+
+	vol->checkmap = kcalloc(BITS_TO_LONGS(leb_count), sizeof(unsigned long),
+				GFP_KERNEL);
+	if (!vol->checkmap)
+		return -ENOMEM;
+
+	return 0;
+}
+
+void ubi_fastmap_destroy_checkmap(struct ubi_volume *vol)
+{
+	kfree(vol->checkmap);
+}
+
 /**
  * ubi_write_fastmap - writes a fastmap.
  * @ubi: UBI device object
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index a5096934e2de..b85d60205583 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -305,6 +305,9 @@ struct ubi_eba_leb_desc {
  * @changing_leb: %1 if the atomic LEB change ioctl command is in progress
  * @direct_writes: %1 if direct writes are enabled for this volume
  *
+ * @checkmap: bitmap to remember which PEB->LEB mappings got checked,
+ *            protected by UBI LEB lock tree.
+ *
  * The @corrupted field indicates that the volume's contents is corrupted.
  * Since UBI protects only static volumes, this field is not relevant to
  * dynamic volumes - it is user's responsibility to assure their data
@@ -348,6 +351,10 @@ struct ubi_volume {
 	unsigned int changing_leb:1;
 	unsigned int direct_writes:1;
 
+#ifdef CONFIG_MTD_UBI_FASTMAP
+	unsigned long *checkmap;
+#endif
+
 	struct list_head list;
 };
 
@@ -897,8 +904,12 @@ size_t ubi_calc_fm_size(struct ubi_device *ubi);
 int ubi_update_fastmap(struct ubi_device *ubi);
 int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		     struct ubi_attach_info *scan_ai);
+int ubi_fastmap_init_checkmap(struct ubi_volume *vol, int leb_count);
+void ubi_fastmap_destroy_checkmap(struct ubi_volume *vol);
 #else
 static inline int ubi_update_fastmap(struct ubi_device *ubi) { return 0; }
+int static inline ubi_fastmap_init_checkmap(struct ubi_volume *vol, int leb_count) { return 0; }
+static inline void ubi_fastmap_destroy_checkmap(struct ubi_volume *vol) {}
 #endif
 
 /*
diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
index 41af1f4d9204..4ca5bb897463 100644
--- a/drivers/mtd/ubi/vtbl.c
+++ b/drivers/mtd/ubi/vtbl.c
@@ -526,7 +526,7 @@ static int init_volumes(struct ubi_device *ubi,
 			const struct ubi_attach_info *ai,
 			const struct ubi_vtbl_record *vtbl)
 {
-	int i, reserved_pebs = 0;
+	int i, err, reserved_pebs = 0;
 	struct ubi_ainf_volume *av;
 	struct ubi_volume *vol;
 
@@ -610,6 +610,16 @@ static int init_volumes(struct ubi_device *ubi,
 			(long long)(vol->used_ebs - 1) * vol->usable_leb_size;
 		vol->used_bytes += av->last_data_size;
 		vol->last_eb_bytes = av->last_data_size;
+
+		/*
+		 * We use ubi->peb_count and not vol->reserved_pebs because
+		 * we want to keep the code simple. Otherwise we'd have to
+		 * resize/check the bitmap upon volume resize too.
+		 * Allocating a few bytes more does not hurt.
+		 */
+		err = ubi_fastmap_init_checkmap(vol, ubi->peb_count);
+		if (err)
+			return err;
 	}
 
 	/* And add the layout volume */
@@ -635,6 +645,9 @@ static int init_volumes(struct ubi_device *ubi,
 	reserved_pebs += vol->reserved_pebs;
 	ubi->vol_count += 1;
 	vol->ubi = ubi;
+	err = ubi_fastmap_init_checkmap(vol, UBI_LAYOUT_VOLUME_EBS);
+	if (err)
+		return err;
 
 	if (reserved_pebs > ubi->avail_pebs) {
 		ubi_err(ubi, "not enough PEBs, required %d, available %d",
@@ -837,6 +850,7 @@ int ubi_read_volume_table(struct ubi_device *ubi, struct ubi_attach_info *ai)
 out_free:
 	vfree(ubi->vtbl);
 	for (i = 0; i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
+		ubi_fastmap_destroy_checkmap(ubi->volumes[i]);
 		kfree(ubi->volumes[i]);
 		ubi->volumes[i] = NULL;
 	}
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

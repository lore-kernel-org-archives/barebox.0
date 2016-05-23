Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lER-0000Jv-PO
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:02 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 72619A00CE4
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:26 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:37 +0200
Message-Id: <1463992010-31537-50-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 49/62] UBI: add a helper function for updatting on-flash
 layout volumes
To: barebox@lists.infradead.org

From: shengyong <shengyong1@huawei.com>

Signed-off-by: Sheng Yong <shengyong1@huawei.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
---
 drivers/mtd/ubi/vtbl.c | 45 ++++++++++++++++++++++++---------------------
 1 file changed, 24 insertions(+), 21 deletions(-)

diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
index 0bc824e..6bae84c 100644
--- a/drivers/mtd/ubi/vtbl.c
+++ b/drivers/mtd/ubi/vtbl.c
@@ -63,6 +63,26 @@ static void self_vtbl_check(const struct ubi_device *ubi);
 static struct ubi_vtbl_record empty_vtbl_record;
 
 /**
+ * ubi_update_layout_vol - helper for updatting layout volumes on flash
+ * @ubi: UBI device description object
+ */
+static int ubi_update_layout_vol(struct ubi_device *ubi)
+{
+	struct ubi_volume *layout_vol;
+	int i, err;
+
+	layout_vol = ubi->volumes[vol_id2idx(ubi, UBI_LAYOUT_VOLUME_ID)];
+	for (i = 0; i < UBI_LAYOUT_VOLUME_EBS; i++) {
+		err = ubi_eba_atomic_leb_change(ubi, layout_vol, i, ubi->vtbl,
+						ubi->vtbl_size);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+/**
  * ubi_change_vtbl_record - change volume table record.
  * @ubi: UBI device description object
  * @idx: table index to change
@@ -76,12 +96,10 @@ static struct ubi_vtbl_record empty_vtbl_record;
 int ubi_change_vtbl_record(struct ubi_device *ubi, int idx,
 			   struct ubi_vtbl_record *vtbl_rec)
 {
-	int i, err;
+	int err;
 	uint32_t crc;
-	struct ubi_volume *layout_vol;
 
 	ubi_assert(idx >= 0 && idx < ubi->vtbl_slots);
-	layout_vol = ubi->volumes[vol_id2idx(ubi, UBI_LAYOUT_VOLUME_ID)];
 
 	if (!vtbl_rec)
 		vtbl_rec = &empty_vtbl_record;
@@ -91,15 +109,10 @@ int ubi_change_vtbl_record(struct ubi_device *ubi, int idx,
 	}
 
 	memcpy(&ubi->vtbl[idx], vtbl_rec, sizeof(struct ubi_vtbl_record));
-	for (i = 0; i < UBI_LAYOUT_VOLUME_EBS; i++) {
-		err = ubi_eba_atomic_leb_change(ubi, layout_vol, i, ubi->vtbl,
-						ubi->vtbl_size);
-		if (err)
-			return err;
-	}
+	err = ubi_update_layout_vol(ubi);
 
 	self_vtbl_check(ubi);
-	return 0;
+	return err ? err : 0;
 }
 
 /**
@@ -114,9 +127,7 @@ int ubi_change_vtbl_record(struct ubi_device *ubi, int idx,
 int ubi_vtbl_rename_volumes(struct ubi_device *ubi,
 			    struct list_head *rename_list)
 {
-	int i, err;
 	struct ubi_rename_entry *re;
-	struct ubi_volume *layout_vol;
 
 	list_for_each_entry(re, rename_list, list) {
 		uint32_t crc;
@@ -138,15 +149,7 @@ int ubi_vtbl_rename_volumes(struct ubi_device *ubi,
 		vtbl_rec->crc = cpu_to_be32(crc);
 	}
 
-	layout_vol = ubi->volumes[vol_id2idx(ubi, UBI_LAYOUT_VOLUME_ID)];
-	for (i = 0; i < UBI_LAYOUT_VOLUME_EBS; i++) {
-		err = ubi_eba_atomic_leb_change(ubi, layout_vol, i, ubi->vtbl,
-						ubi->vtbl_size);
-		if (err)
-			return err;
-	}
-
-	return 0;
+	return ubi_update_layout_vol(ubi);
 }
 
 /**
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

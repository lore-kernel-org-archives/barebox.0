Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEF-0000Js-IU
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:50 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 08C7DA00CB6
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:22 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:25:56 +0200
Message-Id: <1463992010-31537-9-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 08/62] UBI: vtbl: Use ubi_eba_atomic_leb_change()
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

This is more a cosmetic change than a fix.
By using ubi_eba_atomic_leb_change()
we can guarantee that the first VTBL record is always
correct and we don't really need the second one anymore.
But we have to keep the second one to not break anything.

Artem: add a comment

Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
---
 drivers/mtd/ubi/vtbl.c | 23 +++++++++--------------
 1 file changed, 9 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
index 6772612..bc443fb 100644
--- a/drivers/mtd/ubi/vtbl.c
+++ b/drivers/mtd/ubi/vtbl.c
@@ -26,9 +26,12 @@
  * eraseblock stores one volume table copy, i.e. LEB 0 and LEB 1 duplicate each
  * other. This redundancy guarantees robustness to unclean reboots. The volume
  * table is basically an array of volume table records. Each record contains
- * full information about the volume and protected by a CRC checksum.
+ * full information about the volume and protected by a CRC checksum. Note,
+ * nowadays we use the atomic LEB change operation when updating the volume
+ * table, so we do not really need 2 LEBs anymore, but we preserve the older
+ * design for the backward compatibility reasons.
  *
- * The volume table is changed, it is first changed in RAM. Then LEB 0 is
+ * When the volume table is changed, it is first changed in RAM. Then LEB 0 is
  * erased, and the updated volume table is written back to LEB 0. Then same for
  * LEB 1. This scheme guarantees recoverability from unclean reboots.
  *
@@ -89,12 +92,8 @@ int ubi_change_vtbl_record(struct ubi_device *ubi, int idx,
 
 	memcpy(&ubi->vtbl[idx], vtbl_rec, sizeof(struct ubi_vtbl_record));
 	for (i = 0; i < UBI_LAYOUT_VOLUME_EBS; i++) {
-		err = ubi_eba_unmap_leb(ubi, layout_vol, i);
-		if (err)
-			return err;
-
-		err = ubi_eba_write_leb(ubi, layout_vol, i, ubi->vtbl, 0,
-					ubi->vtbl_size);
+		err = ubi_eba_atomic_leb_change(ubi, layout_vol, i, ubi->vtbl,
+						ubi->vtbl_size);
 		if (err)
 			return err;
 	}
@@ -141,12 +140,8 @@ int ubi_vtbl_rename_volumes(struct ubi_device *ubi,
 
 	layout_vol = ubi->volumes[vol_id2idx(ubi, UBI_LAYOUT_VOLUME_ID)];
 	for (i = 0; i < UBI_LAYOUT_VOLUME_EBS; i++) {
-		err = ubi_eba_unmap_leb(ubi, layout_vol, i);
-		if (err)
-			return err;
-
-		err = ubi_eba_write_leb(ubi, layout_vol, i, ubi->vtbl, 0,
-					ubi->vtbl_size);
+		err = ubi_eba_atomic_leb_change(ubi, layout_vol, i, ubi->vtbl,
+						ubi->vtbl_size);
 		if (err)
 			return err;
 	}
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

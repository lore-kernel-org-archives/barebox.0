Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSh-0005Uw-Pb
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:47 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 88C4AA00BB4
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:54 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:29 +0200
Message-Id: <1535545212-18871-14-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 13/56] ubi: Introduce vol_ignored()
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

This makes the logic more easy to follow.

Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/attach.c | 24 ++++++++++++++++++------
 drivers/mtd/ubi/ubi.h    | 15 +++++++++++++++
 2 files changed, 33 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index b6f03ed59f26..9cf9b2ae98e3 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -792,6 +792,20 @@ out_unlock:
 	return err;
 }
 
+static bool vol_ignored(int vol_id)
+{
+	switch (vol_id) {
+		case UBI_LAYOUT_VOLUME_ID:
+		return true;
+	}
+
+#ifdef CONFIG_MTD_UBI_FASTMAP
+	return ubi_is_fm_vol(vol_id);
+#else
+	return false;
+#endif
+}
+
 /**
  * scan_peb - scan and process UBI headers of a PEB.
  * @ubi: UBI device description object
@@ -984,17 +998,15 @@ static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		*vid = vol_id;
 	if (sqnum)
 		*sqnum = be64_to_cpu(vidh->sqnum);
-	if (vol_id > UBI_MAX_VOLUMES && vol_id != UBI_LAYOUT_VOLUME_ID) {
+	if (vol_id > UBI_MAX_VOLUMES && !vol_ignored(vol_id)) {
 		int lnum = be32_to_cpu(vidh->lnum);
 
 		/* Unsupported internal volume */
 		switch (vidh->compat) {
 		case UBI_COMPAT_DELETE:
-			if (vol_id != UBI_FM_SB_VOLUME_ID
-			    && vol_id != UBI_FM_DATA_VOLUME_ID) {
-				ubi_msg(ubi, "\"delete\" compatible internal volume %d:%d found, will remove it",
-					vol_id, lnum);
-			}
+			ubi_msg(ubi, "\"delete\" compatible internal volume %d:%d found, will remove it",
+				vol_id, lnum);
+
 			err = add_to_list(ai, pnum, vol_id, lnum,
 					  ec, 1, &ai->erase);
 			if (err)
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 368b829fa17f..5899ad7c92b8 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -1018,4 +1018,19 @@ static inline int idx2vol_id(const struct ubi_device *ubi, int idx)
 		return idx;
 }
 
+/**
+ * ubi_is_fm_vol - check whether a volume ID is a Fastmap volume.
+ * @vol_id: volume ID
+ */
+static inline bool ubi_is_fm_vol(int vol_id)
+{
+	switch (vol_id) {
+		case UBI_FM_SB_VOLUME_ID:
+		case UBI_FM_DATA_VOLUME_ID:
+		return true;
+	}
+
+	return false;
+}
+
 #endif /* !__UBI_UBI_H__ */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

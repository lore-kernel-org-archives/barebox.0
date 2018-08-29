Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSy-0005Ul-Pc
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:07 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4C317A00E45
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:03 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:20:04 +0200
Message-Id: <1535545212-18871-49-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 48/56] ubi: fastmap: Erase outdated anchor PEBs during attach
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

The fastmap update code might erase the current fastmap anchor PEB
in case it doesn't find any new free PEB. When a power cut happens
in this situation we must not have any outdated fastmap anchor PEB
on the device, because that would be used to attach during next
boot.
The easiest way to make that sure is to erase all outdated fastmap
anchor PEBs synchronously during attach.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Richard Weinberger <richard@nod.at>
Fixes: dbb7d2a88d2a ("UBI: Add fastmap core")
Cc: <stable@vger.kernel.org>
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fixed conflicts]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/wl.c | 77 ++++++++++++++++++++++++++++++++++++++--------------
 1 file changed, 57 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index 54c119d20b07..b8513615b64d 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -1392,6 +1392,46 @@ static void shutdown_work(struct ubi_device *ubi)
 }
 
 /**
+ * erase_aeb - erase a PEB given in UBI attach info PEB
+ * @ubi: UBI device description object
+ * @aeb: UBI attach info PEB
+ * @sync: If true, erase synchronously. Otherwise schedule for erasure
+ */
+static int erase_aeb(struct ubi_device *ubi, struct ubi_ainf_peb *aeb, bool sync)
+{
+	struct ubi_wl_entry *e;
+	int err;
+
+	e = kmalloc(sizeof(*e), GFP_KERNEL);
+	if (!e)
+		return -ENOMEM;
+
+	e->pnum = aeb->pnum;
+	e->ec = aeb->ec;
+	ubi->lookuptbl[e->pnum] = e;
+
+	if (sync) {
+		err = sync_erase(ubi, e, false);
+		if (err)
+			goto out_free;
+
+		wl_tree_add(e, &ubi->free);
+		ubi->free_count++;
+	} else {
+		err = schedule_erase(ubi, e, aeb->vol_id, aeb->lnum, 0, false);
+		if (err)
+			goto out_free;
+	}
+
+	return 0;
+
+out_free:
+	wl_entry_destroy(ubi, e);
+
+	return err;
+}
+
+/**
  * ubi_wl_init - initialize the WL sub-system using attaching information.
  * @ubi: UBI device description object
  * @ai: attaching information
@@ -1424,18 +1464,10 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 
 	ubi->free_count = 0;
 	list_for_each_entry_safe(aeb, tmp, &ai->erase, u.list) {
-		e = kmalloc(sizeof(*e), GFP_KERNEL);
-		if (!e)
+		err = erase_aeb(ubi, aeb, false);
+		if (err)
 			goto out_free;
 
-		e->pnum = aeb->pnum;
-		e->ec = aeb->ec;
-		ubi->lookuptbl[e->pnum] = e;
-		if (schedule_erase(ubi, e, aeb->vol_id, aeb->lnum, 0, false)) {
-			wl_entry_destroy(ubi, e);
-			goto out_free;
-		}
-
 		found_pebs++;
 	}
 
@@ -1487,6 +1519,8 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 			ubi_assert(!ubi->lookuptbl[e->pnum]);
 			ubi->lookuptbl[e->pnum] = e;
 		} else {
+			bool sync = false;
+
 			/*
 			 * Usually old Fastmap PEBs are scheduled for erasure
 			 * and we don't have to care about them but if we face
@@ -1496,18 +1530,21 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 			if (ubi->lookuptbl[aeb->pnum])
 				continue;
 
-			e = kmalloc(sizeof(*e), GFP_KERNEL);
-			if (!e)
-				goto out_free;
+			/*
+			 * The fastmap update code might not find a free PEB for
+			 * writing the fastmap anchor to and then reuses the
+			 * current fastmap anchor PEB. When this PEB gets erased
+			 * and a power cut happens before it is written again we
+			 * must make sure that the fastmap attach code doesn't
+			 * find any outdated fastmap anchors, hence we erase the
+			 * outdated fastmap anchor PEBs synchronously here.
+			 */
+			if (aeb->vol_id == UBI_FM_SB_VOLUME_ID)
+				sync = true;
 
-			e->pnum = aeb->pnum;
-			e->ec = aeb->ec;
-			ubi_assert(!ubi->lookuptbl[e->pnum]);
-			ubi->lookuptbl[e->pnum] = e;
-			if (schedule_erase(ubi, e, aeb->vol_id, aeb->lnum, 0, false)) {
-				wl_entry_destroy(ubi, e);
+			err = erase_aeb(ubi, aeb, sync);
+			if (err)
 				goto out_free;
-			}
 		}
 
 		found_pebs++;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEW-0000KA-N5
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:06 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 3BCC7A00CF7
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:28 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:50 +0200
Message-Id: <1463992010-31537-63-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 62/62] mtd: UBI: Remove ubi_free_fastmap
To: barebox@lists.infradead.org

Freeing the fastmap is now done by ubi_fastmap_close() from kernel.
No need to keep the barebox own fastmap free function.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/build.c   |  1 -
 drivers/mtd/ubi/fastmap.c | 14 --------------
 drivers/mtd/ubi/ubi.h     |  1 -
 3 files changed, 16 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 0e8dccc..5953e36 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -723,7 +723,6 @@ int ubi_detach_mtd_dev(int ubi_num, int anyway)
 	/* If we don't write a new fastmap at detach time we lose all
 	 * EC updates that have been made since the last written fastmap. */
 	ubi_update_fastmap(ubi);
-	ubi_free_fastmap(ubi);
 #endif
 
 	uif_close(ubi);
diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index ffa2859..9975722 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -1247,20 +1247,6 @@ out:
 	return ret;
 }
 
-void ubi_free_fastmap(struct ubi_device *ubi)
-{
-	struct ubi_fastmap_layout *fm = ubi->fm;
-	int i;
-
-	if (!fm)
-		return;
-
-	for (i = 0; i < fm->used_blocks; i++)
-		kfree(fm->e[i]);
-
-	kfree(ubi->fm);
-}
-
 /**
  * erase_block - Manually erase a PEB.
  * @ubi: UBI device object
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 8b5416c..89e3347 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -842,7 +842,6 @@ size_t ubi_calc_fm_size(struct ubi_device *ubi);
 int ubi_update_fastmap(struct ubi_device *ubi);
 int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		     int fm_anchor);
-void ubi_free_fastmap(struct ubi_device *ubi);
 #else
 static inline int ubi_update_fastmap(struct ubi_device *ubi) { return 0; }
 #endif
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

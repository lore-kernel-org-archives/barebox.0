Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEV-0000K7-Kb
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:05 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9B02EA00CF3
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:27 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:46 +0200
Message-Id: <1463992010-31537-59-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 58/62] mtd: ubi: fixup error correction in do_sync_erase()
To: barebox@lists.infradead.org

From: Sebastian Siewior <bigeasy@linutronix.de>

Since fastmap we gained do_sync_erase(). This function can return an error
and its error handling isn't obvious. First the memory allocation for
struct ubi_work can fail and as such struct ubi_wl_entry is leaked.
However if the memory allocation succeeds then the tail function takes
care of the struct ubi_wl_entry. A free here could result in a double
free.
To make the error handling simpler, I split the tail function into one
piece which does the work and another which frees the struct ubi_work
which is passed as argument. As result do_sync_erase() can keep the
struct on stack and we get rid of one error source.

Cc: <stable@vger.kernel.org>
Fixes: 8199b901a ("UBI: Add fastmap support to the WL sub-system")
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Richard Weinberger <richard@nod.at>

Conflicts:
	drivers/mtd/ubi/wl.c

Fixed conflicts.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/wl.c | 52 ++++++++++++++++++++++++++++------------------------
 1 file changed, 28 insertions(+), 24 deletions(-)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index 2d6c6ae..1feef3f 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -578,6 +578,7 @@ static int schedule_erase(struct ubi_device *ubi, struct ubi_wl_entry *e,
 	return 0;
 }
 
+static int __erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk);
 /**
  * do_sync_erase - run the erase worker synchronously.
  * @ubi: UBI device description object
@@ -590,20 +591,16 @@ static int schedule_erase(struct ubi_device *ubi, struct ubi_wl_entry *e,
 static int do_sync_erase(struct ubi_device *ubi, struct ubi_wl_entry *e,
 			 int vol_id, int lnum, int torture)
 {
-	struct ubi_work *wl_wrk;
+	struct ubi_work wl_wrk;
 
 	dbg_wl("sync erase of PEB %i", e->pnum);
 
-	wl_wrk = kmalloc(sizeof(struct ubi_work), GFP_NOFS);
-	if (!wl_wrk)
-		return -ENOMEM;
-
-	wl_wrk->e = e;
-	wl_wrk->vol_id = vol_id;
-	wl_wrk->lnum = lnum;
-	wl_wrk->torture = torture;
+	wl_wrk.e = e;
+	wl_wrk.vol_id = vol_id;
+	wl_wrk.lnum = lnum;
+	wl_wrk.torture = torture;
 
-	return erase_worker(ubi, wl_wrk, 0);
+	return __erase_worker(ubi, &wl_wrk);
 }
 
 /**
@@ -971,7 +968,7 @@ out_unlock:
 }
 
 /**
- * erase_worker - physical eraseblock erase worker function.
+ * __erase_worker - physical eraseblock erase worker function.
  * @ubi: UBI device description object
  * @wl_wrk: the work object
  * @shutdown: non-zero if the worker has to free memory and exit
@@ -982,8 +979,7 @@ out_unlock:
  * needed. Returns zero in case of success and a negative error code in case of
  * failure.
  */
-static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
-			int shutdown)
+static int __erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk)
 {
 	struct ubi_wl_entry *e = wl_wrk->e;
 	int pnum = e->pnum;
@@ -991,21 +987,11 @@ static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
 	int lnum = wl_wrk->lnum;
 	int err, available_consumed = 0;
 
-	if (shutdown) {
-		dbg_wl("cancel erasure of PEB %d EC %d", pnum, e->ec);
-		kfree(wl_wrk);
-		wl_entry_destroy(ubi, e);
-		return 0;
-	}
-
 	dbg_wl("erase PEB %d EC %d LEB %d:%d",
 	       pnum, e->ec, wl_wrk->vol_id, wl_wrk->lnum);
 
 	err = sync_erase(ubi, e, wl_wrk->torture);
 	if (!err) {
-		/* Fine, we've erased it successfully */
-		kfree(wl_wrk);
-
 		wl_tree_add(e, &ubi->free);
 		ubi->free_count++;
 
@@ -1021,7 +1007,6 @@ static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
 	}
 
 	ubi_err(ubi, "failed to erase PEB %d, error %d", pnum, err);
-	kfree(wl_wrk);
 
 	if (err == -EINTR || err == -ENOMEM || err == -EAGAIN ||
 	    err == -EBUSY) {
@@ -1093,6 +1078,25 @@ out_ro:
 	return err;
 }
 
+static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
+			  int shutdown)
+{
+	int ret;
+
+	if (shutdown) {
+		struct ubi_wl_entry *e = wl_wrk->e;
+
+		dbg_wl("cancel erasure of PEB %d EC %d", e->pnum, e->ec);
+		kfree(wl_wrk);
+		wl_entry_destroy(ubi, e);
+		return 0;
+	}
+
+	ret = __erase_worker(ubi, wl_wrk);
+	kfree(wl_wrk);
+	return ret;
+}
+
 /**
  * ubi_wl_put_peb - return a PEB to the wear-leveling sub-system.
  * @ubi: UBI device description object
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

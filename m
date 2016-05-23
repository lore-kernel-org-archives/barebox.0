Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEF-0000Ju-IT
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:51 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 10D3CA00CB7
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:22 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:25:57 +0200
Message-Id: <1463992010-31537-10-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 09/62] UBI: Fix double free after do_sync_erase()
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

If the erase worker is unable to erase a PEB it will
free the ubi_wl_entry itself.
The failing ubi_wl_entry must not free()'d again after
do_sync_erase() returns.

Cc: <stable@vger.kernel.org>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>

Conflicts:
	drivers/mtd/ubi/wl.c

Fixed small conflict.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/wl.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index fa8f019..dcc012c 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -1160,7 +1160,6 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 
 	err = do_sync_erase(ubi, e1, vol_id, lnum, 0);
 	if (err) {
-		kfree(e1);
 		if (e2)
 			kfree(e2);
 		goto out_ro;
@@ -1174,10 +1173,8 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 		dbg_wl("PEB %d (LEB %d:%d) was put meanwhile, erase",
 		       e2->pnum, vol_id, lnum);
 		err = do_sync_erase(ubi, e2, vol_id, lnum, 0);
-		if (err) {
-			kfree(e2);
+		if (err)
 			goto out_ro;
-		}
 	}
 
 	dbg_wl("done");
@@ -1210,10 +1207,9 @@ out_not_moved:
 
 	ubi_free_vid_hdr(ubi, vid_hdr);
 	err = do_sync_erase(ubi, e2, vol_id, lnum, torture);
-	if (err) {
-		kfree(e2);
+	if (err)
 		goto out_ro;
-	}
+
 	return 0;
 
 out_error:
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

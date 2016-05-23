Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEJ-0000KA-PA
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:56 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B4C06A00CCB
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:23 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:15 +0200
Message-Id: <1463992010-31537-28-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 27/62] UBI: Fastmap: Fix race in ubi_eba_atomic_leb_change()
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

This function a) requests a new PEB, b) writes data to it,
c) returns the old PEB and d) registers the new PEB in the EBA table.

For the non-fastmap case this works perfectly fine and is powercut safe.
Is fastmap enabled this can lead to issues.
If a new fastmap is written between a) and c) the freshly requested PEB
is no longer in a pool and will not be scanned upon attaching.
If now a powercut happens between c) and d) the freshly requested PEB
will not be scanned and the old one got already scheduled for erase.
After attaching the EBA table will point to a erased PEB.

Fix this issue by swapping steps c) and d).

Signed-off-by: Richard Weinberger <richard@nod.at>

Conflicts:
	drivers/mtd/ubi/eba.c

Fixed minor conflict.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/eba.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index bb89d10..8747213 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -809,7 +809,7 @@ write_error:
 int ubi_eba_atomic_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
 			      int lnum, const void *buf, int len)
 {
-	int err, pnum, tries = 0, vol_id = vol->vol_id;
+	int err, pnum, old_pnum, tries = 0, vol_id = vol->vol_id;
 	struct ubi_vid_hdr *vid_hdr;
 	uint32_t crc;
 
@@ -871,14 +871,15 @@ retry:
 		goto write_error;
 	}
 
-	if (vol->eba_tbl[lnum] >= 0) {
-		err = ubi_wl_put_peb(ubi, vol_id, lnum, vol->eba_tbl[lnum], 0);
+	old_pnum = vol->eba_tbl[lnum];
+	vol->eba_tbl[lnum] = pnum;
+
+	if (old_pnum >= 0) {
+		err = ubi_wl_put_peb(ubi, vol_id, lnum, old_pnum, 0);
 		if (err)
 			goto out_leb_unlock;
 	}
 
-	vol->eba_tbl[lnum] = pnum;
-
 out_leb_unlock:
 	leb_write_unlock(ubi, vol_id, lnum);
 out_mutex:
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

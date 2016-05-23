Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1b4lEj-0003aq-Qq
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:19 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D912DA00CD5
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:24 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:22 +0200
Message-Id: <1463992010-31537-35-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 34/62] UBI: Fastmap: Prepare for variable sized fastmaps
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

The current code assumes that each fastmap has the same amount of PEBs.
So far this is true but will change soon.

Signed-off-by: Richard Weinberger <richard@nod.at>

Conflicts:
	drivers/mtd/ubi/fastmap.c

Fixed minor conflict.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index ae6c044..de395d5 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -1384,7 +1384,7 @@ int ubi_update_fastmap(struct ubi_device *ubi)
 
 			ret = -ENOSPC;
 			goto err;
-		} else if (!tmp_e && old_fm) {
+		} else if (!tmp_e && old_fm && old_fm->e[i]) {
 			ret = erase_block(ubi, old_fm->e[i]->pnum);
 			if (ret < 0) {
 				int j;
@@ -1400,12 +1400,19 @@ int ubi_update_fastmap(struct ubi_device *ubi)
 		} else {
 			new_fm->e[i] = tmp_e;
 
-			if (old_fm)
+			if (old_fm && old_fm->e[i])
 				ubi_wl_put_fm_peb(ubi, old_fm->e[i], i,
 						  old_fm->to_be_tortured[i]);
 		}
 	}
 
+	if (old_fm && new_fm->used_blocks < old_fm->used_blocks) {
+		for (i = new_fm->used_blocks; i < old_fm->used_blocks; i++) {
+			ubi_wl_put_fm_peb(ubi, old_fm->e[i], i,
+					  old_fm->to_be_tortured[i]);
+		}
+	}
+
 	tmp_e = ubi_wl_get_fm_peb(ubi, 1);
 
 	if (old_fm) {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1b4lEj-0003am-RD
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:19 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 7FB12A00CC8
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:23 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:12 +0200
Message-Id: <1463992010-31537-25-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 24/62] UBI: Fastmap: Notify user in case of an
 ubi_update_fastmap() failure
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

If ubi_update_fastmap() fails notify the user.
This is not a hard error as ubi_update_fastmap() makes sure that upon failure
the current on-flash fastmap will no be used upon next UBI attach.

Signed-off-by: Richard Weinberger <richard@nod.at>

Conflicts:
	drivers/mtd/ubi/wl.c

Fixed minor conflict.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/wl.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index 8875ec7..d168abc 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -615,9 +615,15 @@ int ubi_wl_get_peb(struct ubi_device *ubi)
 	struct ubi_fm_pool *pool = &ubi->fm_pool;
 	struct ubi_fm_pool *wl_pool = &ubi->fm_wl_pool;
 
-	if (!pool->size || !wl_pool->size || pool->used == pool->size ||
-	    wl_pool->used == wl_pool->size)
-		ubi_update_fastmap(ubi);
+	/* We check here also for the WL pool because at this point we can
+	 * refill the WL pool synchronous. */
+	if (pool->used == pool->size || wl_pool->used == wl_pool->size) {
+		ret = ubi_update_fastmap(ubi);
+		if (ret) {
+			ubi_msg(ubi, "Unable to write a new fastmap: %i", ret);
+			return -ENOSPC;
+		}
+	}
 
 	/* we got not a single free PEB */
 	if (!pool->size)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

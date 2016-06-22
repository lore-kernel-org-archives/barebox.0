Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFe5Z-0004y1-IH
 for barebox@lists.infradead.org; Wed, 22 Jun 2016 09:04:52 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 80EB9A00266
 for <barebox@lists.infradead.org>; Wed, 22 Jun 2016 11:04:53 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 22 Jun 2016 11:01:57 +0200
Message-Id: <1466586117-14464-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH] mtd: ubi: Fix endless loop when moving PEB
To: barebox@lists.infradead.org

When moving a PEB the leb_write_trylock() function is called.
As the function never returns 0 UBI will end up in an endless
loop.

Noticed the issue when fastmap has been enabled and data is beeing copied
several times to a UBI volume. When UBI tries to move the anchor PEB,
the issue comes up.

The leb_write_trylock() is now equal to the leb_write_lock().
But kept it for easier maintaince in future when syncing with
kernel.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/eba.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index a7af247..31dbcd2 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -257,16 +257,7 @@ static int leb_write_trylock(struct ubi_device *ubi, int vol_id, int lnum)
 	le = ltree_add_entry(ubi, vol_id, lnum);
 	if (IS_ERR(le))
 		return PTR_ERR(le);
-
-	/* Contention, cancel */
-	le->users -= 1;
-	ubi_assert(le->users >= 0);
-	if (le->users == 0) {
-		rb_erase(&le->rb, &ubi->ltree);
-		kfree(le);
-	}
-
-	return 1;
+	return 0;
 }
 
 /**
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

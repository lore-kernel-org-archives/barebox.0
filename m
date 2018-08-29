Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSh-0005UT-Pr
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:44 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C6795A0086D
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:52 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:22 +0200
Message-Id: <1535545212-18871-7-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 06/56] UBI: Set free_count to zero before walking through
 erase list
To: barebox@lists.infradead.org

From: Heiko Schocher <hs@denx.de>

Set free_count to zero before walking through ai->erase list
in wl_init().

Found in U-Boot as U-Boot has no workqueue/threads, it immediately
calls erase_worker(), which increase for each erased block
free_count. Without this patch, free_count gets after
this initialized to zero in wl_init(), so the free_count
variable always has the maybe wrong value 0 in U-Boot.

Signed-off-by: Heiko Schocher <hs@denx.de>
Reviewed-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/wl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index a368bf910806..eb1f24c74807 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -1399,6 +1399,7 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 		INIT_LIST_HEAD(&ubi->pq[i]);
 	ubi->pq_head = 0;
 
+	ubi->free_count = 0;
 	list_for_each_entry_safe(aeb, tmp, &ai->erase, u.list) {
 		e = kmalloc(sizeof(*e), GFP_KERNEL);
 		if (!e)
@@ -1415,7 +1416,6 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 		found_pebs++;
 	}
 
-	ubi->free_count = 0;
 	list_for_each_entry(aeb, &ai->free, u.list) {
 		e = kmalloc(sizeof(*e), GFP_KERNEL);
 		if (!e)
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

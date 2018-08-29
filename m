Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSu-0005d3-Pp
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:58 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4ABBFA00CA7
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:57 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:40 +0200
Message-Id: <1535545212-18871-25-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 24/56] UBI: fastmap: use ubi_rb_for_each_entry() in unmap_peb()
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

Use the ubi_rb_for_each_entry() macro instead of open-coding it.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index b0979af62f18..683ac0d9c4ab 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -318,12 +318,8 @@ static void unmap_peb(struct ubi_attach_info *ai, int pnum)
 	struct rb_node *node, *node2;
 	struct ubi_ainf_peb *aeb;
 
-	for (node = rb_first(&ai->volumes); node; node = rb_next(node)) {
-		av = rb_entry(node, struct ubi_ainf_volume, rb);
-
-		for (node2 = rb_first(&av->root); node2;
-		     node2 = rb_next(node2)) {
-			aeb = rb_entry(node2, struct ubi_ainf_peb, u.rb);
+	ubi_rb_for_each_entry(node, av, &ai->volumes, rb) {
+		ubi_rb_for_each_entry(node2, aeb, &av->root, u.rb) {
 			if (aeb->pnum == pnum) {
 				rb_erase(&aeb->u.rb, &av->root);
 				av->leb_count--;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

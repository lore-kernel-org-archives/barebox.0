Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSy-0005Ut-PG
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:07 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 16FF7A00E43
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:03 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:20:03 +0200
Message-Id: <1535545212-18871-48-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 47/56] ubi: fastmap: Clean up the initialization of pointer p
To: barebox@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

The pointer p is being initialized with one value and a few lines
later being set to a newer replacement value. Clean up the code by
using the latter assignment to p as the initial value. Cleans up
clang warning:

drivers/mtd/ubi/fastmap.c:217:19: warning: Value stored to 'p'
during its initialization is never read

Signed-off-by: Colin Ian King <colin.king@canonical.com>
Reviewed-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index c50684a19401..5f31f2081437 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -148,9 +148,8 @@ static void assign_aeb_to_av(struct ubi_attach_info *ai,
 			     struct ubi_ainf_volume *av)
 {
 	struct ubi_ainf_peb *tmp_aeb;
-	struct rb_node **p = &ai->volumes.rb_node, *parent = NULL;
+	struct rb_node **p = &av->root.rb_node, *parent = NULL;
 
-	p = &av->root.rb_node;
 	while (*p) {
 		parent = *p;
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSh-0005UU-PZ
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:44 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 91280A006EC
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:52 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:21 +0200
Message-Id: <1535545212-18871-6-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 05/56] UBI: Clean up return in ubi_remove_volume()
To: barebox@lists.infradead.org

From: Dan Carpenter <dan.carpenter@oracle.com>

My static checker says that "err" can be uninitialized if
"vol->reserved_pebs" is <= 0.  I don't think that can happen but
returning a literal is cleaner anyway.

Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/vmt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/vmt.c b/drivers/mtd/ubi/vmt.c
index ed043646b8d8..aed51c2fe3b2 100644
--- a/drivers/mtd/ubi/vmt.c
+++ b/drivers/mtd/ubi/vmt.c
@@ -264,7 +264,7 @@ int ubi_remove_volume(struct ubi_volume_desc *desc, int no_vtbl)
 	if (!no_vtbl)
 		self_check_volumes(ubi);
 
-	return err;
+	return 0;
 
 out_err:
 	ubi_err(ubi, "cannot remove volume %d, error %d", vol_id, err);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

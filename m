Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTc-0004xx-A9
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:38 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B7B9CA00B59
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:42 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:48 +0200
Message-Id: <1464335095-35180-56-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
References: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 55/62] UBI: Fix debug message
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

We have to use j instead of i. i is the volume id
and not the block.

Reported-by: Alexander.Block@continental-corporation.com
Signed-off-by: Richard Weinberger <richard@nod.at>
Acked-by: Brian Norris <computersforpeace@gmail.com>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/eba.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index 8747213..a7af247 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -1237,7 +1237,7 @@ int self_check_eba(struct ubi_device *ubi, struct ubi_attach_info *ai_fastmap,
 					continue;
 
 				ubi_err(ubi, "LEB:%i:%i is PEB:%i instead of %i!",
-					vol->vol_id, i, fm_eba[i][j],
+					vol->vol_id, j, fm_eba[i][j],
 					scan_eba[i][j]);
 				ubi_assert(0);
 			}
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

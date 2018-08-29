Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSs-0005Ux-Bn
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:56 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 8E55CA00D58
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:00 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:53 +0200
Message-Id: <1535545212-18871-38-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 37/56] ubi: Fix Fastmap's update_vol()
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Usually Fastmap is free to consider every PEB in one of the pools
as newer than the existing PEB. Since PEBs in a pool are by definition
newer than everything else.
But update_vol() missed the case that a pool can contain more than
one candidate.

Cc: <stable@vger.kernel.org>
Fixes: dbb7d2a88d ("UBI: Add fastmap core")
Signed-off-by: Richard Weinberger <richard@nod.at>
Reviewed-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fix conflict]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index a0b5fe784a6f..bd7abf55b768 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -239,7 +239,7 @@ static int update_vol(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			aeb->pnum = new_aeb->pnum;
 			aeb->copy_flag = new_vh->copy_flag;
 			aeb->scrub = new_aeb->scrub;
-			
+			aeb->sqnum = new_aeb->sqnum;
 			ubi_free_aeb(ai, new_aeb);
 
 		/* new_aeb is older */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

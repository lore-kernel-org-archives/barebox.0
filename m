Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSs-0005Ul-NB
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:56 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id CB1BCA00DB8
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:00 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:54 +0200
Message-Id: <1535545212-18871-39-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 38/56] ubi: fix swapped arguments to call to ubi_alloc_aeb
To: barebox@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

Static analysis by CoverityScan detected the ec and pnum
arguments are in the wrong order on a call to ubi_alloc_aeb.
Swap the order to fix this.

Fixes: 91f4285fe389a27 ("UBI: provide helpers to allocate and free aeb elements")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
Reviewed-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index bd7abf55b768..cf5abef8c2a7 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -222,7 +222,7 @@ static int update_vol(struct ubi_device *ubi, struct ubi_attach_info *ai,
 
 		/* new_aeb is newer */
 		if (cmp_res & 1) {
-			victim = ubi_alloc_aeb(ai, aeb->ec, aeb->pnum);
+			victim = ubi_alloc_aeb(ai, aeb->pnum, aeb->ec);
 			if (!victim)
 				return -ENOMEM;
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

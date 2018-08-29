Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSt-0005Um-Eu
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:58 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 5C23EA00DE8
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:01 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:56 +0200
Message-Id: <1535545212-18871-41-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 40/56] ubi: fastmap: Fix add_vol() return value test in
 ubi_attach_fastmap()
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

Commit e96a8a3bb671 ("UBI: Fastmap: Do not add vol if it already
exists") introduced a bug by changing the possible error codes returned
by add_vol():
- this function no longer returns NULL in case of allocation failure
  but return ERR_PTR(-ENOMEM)
- when a duplicate entry in the volume RB tree is found it returns
  ERR_PTR(-EEXIST) instead of ERR_PTR(-EINVAL)

Fix the tests done on add_vol() return val to match this new behavior.

Fixes: e96a8a3bb671 ("UBI: Fastmap: Do not add vol if it already exists")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Acked-by: Sheng Yong <shengyong1@huawei.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index cf5abef8c2a7..52f24a6be74f 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -643,11 +643,11 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 			     fmvhdr->vol_type,
 			     be32_to_cpu(fmvhdr->last_eb_bytes));
 
-		if (!av)
-			goto fail_bad;
-		if (PTR_ERR(av) == -EINVAL) {
-			ubi_err(ubi, "volume (ID %i) already exists",
-				fmvhdr->vol_id);
+		if (IS_ERR(av)) {
+			if (PTR_ERR(av) == -EEXIST)
+				ubi_err(ubi, "volume (ID %i) already exists",
+					fmvhdr->vol_id);
+
 			goto fail_bad;
 		}
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

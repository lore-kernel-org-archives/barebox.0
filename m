Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSh-0005Um-Pq
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:44 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C266FA00B07
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:53 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:26 +0200
Message-Id: <1535545212-18871-11-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 10/56] ubi: Fix early logging
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

We cannot use ubi_* logging functions before the UBI
object is initialized.

Cc: <stable@vger.kernel.org>
Fixes: 3260870331 ("UBI: Extend UBI layer debug/messaging capabilities")
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fixed minor conflict]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/build.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index d5c3719482cf..ae6181e9d162 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -522,7 +522,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	for (i = 0; i < UBI_MAX_DEVICES; i++) {
 		ubi = ubi_devices[i];
 		if (ubi && mtd == ubi->mtd) {
-			ubi_debug("mtd%d is already attached to ubi%d",
+			pr_err("ubi: mtd%d is already attached to ubi%d",
 				mtd->index, i);
 			return -EEXIST;
 		}
@@ -537,7 +537,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	 * no sense to attach emulated MTD devices, so we prohibit this.
 	 */
 	if (mtd->type == MTD_UBIVOLUME) {
-		ubi_err(ubi, "refuse attaching mtd%d - it is already emulated on top of UBI",
+		pr_err("ubi: refuse attaching mtd%d - it is already emulated on top of UBI",
 			mtd->index);
 		return -EINVAL;
 	}
@@ -548,7 +548,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 			if (!ubi_devices[ubi_num])
 				break;
 		if (ubi_num == UBI_MAX_DEVICES) {
-			ubi_err(ubi, "only %d UBI devices may be created",
+			pr_err("ubi: only %d UBI devices may be created",
 				UBI_MAX_DEVICES);
 			return -ENFILE;
 		}
@@ -558,7 +558,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 
 		/* Make sure ubi_num is not busy */
 		if (ubi_devices[ubi_num]) {
-			ubi_err(ubi, "already exists");
+			pr_err("ubi: ubi%i already exists", ubi_num);
 			return -EEXIST;
 		}
 	}
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSx-0005Uw-OO
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:06 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 50697A00E02
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:02 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:20:00 +0200
Message-Id: <1535545212-18871-45-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 44/56] ubi: pr_err() strings should end with newlines
To: barebox@lists.infradead.org

From: Ben Dooks <ben.dooks@codethink.co.uk>

In ubi_attach_mtd_dev() the pr_err() calls should have their
messgaes terminated with a new-line to avoid other messages
being concatenated onto the end.

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fix conflics]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/build.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 13f39b39c8fb..5917fe67918e 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -522,7 +522,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	for (i = 0; i < UBI_MAX_DEVICES; i++) {
 		ubi = ubi_devices[i];
 		if (ubi && mtd == ubi->mtd) {
-			pr_err("ubi: mtd%d is already attached to ubi%d",
+			pr_err("ubi: mtd%d is already attached to ubi%d\n",
 				mtd->index, i);
 			return -EEXIST;
 		}
@@ -537,7 +537,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	 * no sense to attach emulated MTD devices, so we prohibit this.
 	 */
 	if (mtd->type == MTD_UBIVOLUME) {
-		pr_err("ubi: refuse attaching mtd%d - it is already emulated on top of UBI",
+		pr_err("ubi: refuse attaching mtd%d - it is already emulated on top of UBI\n",
 			mtd->index);
 		return -EINVAL;
 	}
@@ -548,7 +548,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 			if (!ubi_devices[ubi_num])
 				break;
 		if (ubi_num == UBI_MAX_DEVICES) {
-			pr_err("ubi: only %d UBI devices may be created",
+			pr_err("ubi: only %d UBI devices may be created\n",
 				UBI_MAX_DEVICES);
 			return -ENFILE;
 		}
@@ -558,7 +558,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 
 		/* Make sure ubi_num is not busy */
 		if (ubi_devices[ubi_num]) {
-			pr_err("ubi: ubi%i already exists", ubi_num);
+			pr_err("ubi: ubi%i already exists\n", ubi_num);
 			return -EEXIST;
 		}
 	}
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

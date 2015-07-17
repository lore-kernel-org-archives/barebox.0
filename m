Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZG3bO-000535-T2
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 11:14:52 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C6586A002F6
 for <barebox@lists.infradead.org>; Fri, 17 Jul 2015 13:16:10 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 17 Jul 2015 13:13:47 +0200
Message-Id: <1437131633-9590-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 1/7] mtd: core: Check partitions for empty string
To: barebox@lists.infradead.org

Make setting partitions a litte bit more robust.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index fda9034..3bdf441 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -386,6 +386,9 @@ static int mtd_partition_set(struct device_d *dev, struct param_d *p, const char
 	struct mtd_info *mtdpart, *tmp;
 	int ret;
 
+	if (!val)
+		return -EINVAL;
+
 	list_for_each_entry_safe(mtdpart, tmp, &mtd->partitions, partitions_entry) {
 		ret = mtd_del_partition(mtdpart);
 		if (ret)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

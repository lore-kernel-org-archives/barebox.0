Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khnE6-0004yj-Th
 for barebox@lists.infradead.org; Wed, 25 Nov 2020 05:20:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Nov 2020 06:20:10 +0100
Message-Id: <20201125052011.20660-4-s.hauer@pengutronix.de>
In-Reply-To: <20201125052011.20660-1-s.hauer@pengutronix.de>
References: <20201125052011.20660-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] mtd: Add hook to fix up kernel partitions
To: Barebox List <barebox@lists.infradead.org>

Some drivers have special requirements for fixing up the partition
nodes for the kernel. This adds a hook to struct mtd_info that can
be used by drivers to replace the generic fixup with a special one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c      | 30 +++++++++++++++++++++++++++++-
 include/linux/mtd/mtd.h |  2 ++
 2 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index e21c71b816..af33ad665c 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -639,6 +639,34 @@ static int mtd_detect(struct device_d *dev)
 	return ret;
 }
 
+static int mtd_partition_fixup_generic(struct mtd_info *mtd, struct device_node *root)
+{
+	struct cdev *cdev = &mtd->cdev;
+	struct device_node *np, *mtdnp = mtd_get_of_node(mtd);
+	char *name;
+
+	name = of_get_reproducible_name(mtdnp);
+	np = of_find_node_by_reproducible_name(root, name);
+	free(name);
+	if (!np) {
+		dev_err(&mtd->dev, "Cannot find nodepath %s, cannot fixup\n",
+				mtdnp->full_name);
+		return -EINVAL;
+	}
+
+	return of_fixup_partitions(np, cdev);
+}
+
+static int mtd_partition_fixup(struct device_node *root, void *ctx)
+{
+	struct mtd_info *mtd = ctx;
+
+	if (mtd->of_fixup)
+		return mtd->of_fixup(mtd, root);
+
+	return mtd_partition_fixup_generic(mtd, root);
+}
+
 int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 {
 	struct mtddev_hook *hook;
@@ -706,7 +734,7 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 		dev_add_param_string(&mtd->dev, "partitions", mtd_partition_set, mtd_partition_get, &mtd->partition_string, mtd);
 		if (IS_ENABLED(CONFIG_OFDEVICE) && np) {
 			of_parse_partitions(&mtd->cdev, np);
-			ret = of_partitions_register_fixup(&mtd->cdev);
+			ret = of_register_fixup(mtd_partition_fixup, mtd);
 			if (ret)
 				goto err1;
 		}
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 0e2ff4526d..0d977fea25 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -206,6 +206,8 @@ struct mtd_info {
 	int (*_block_markbad) (struct mtd_info *mtd, loff_t ofs);
 	int (*_block_markgood) (struct mtd_info *mtd, loff_t ofs);
 
+	int (*of_fixup)(struct mtd_info *mtd, struct device_node *root);
+
 	/* ECC status information */
 	struct mtd_ecc_stats ecc_stats;
 	/* Subpage shift (NAND) */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

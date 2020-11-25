Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khnEF-00051S-Oc
 for barebox@lists.infradead.org; Wed, 25 Nov 2020 05:20:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Nov 2020 06:20:08 +0100
Message-Id: <20201125052011.20660-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] mtd: Remove set but not used of_path
To: Barebox List <barebox@lists.infradead.org>

struct mtd_info member of_path is set but not used, remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c      | 1 -
 include/linux/mtd/mtd.h | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 1b1ed53a61..e21c71b816 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -706,7 +706,6 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 		dev_add_param_string(&mtd->dev, "partitions", mtd_partition_set, mtd_partition_get, &mtd->partition_string, mtd);
 		if (IS_ENABLED(CONFIG_OFDEVICE) && np) {
 			of_parse_partitions(&mtd->cdev, np);
-			mtd->of_path = xstrdup(np->full_name);
 			ret = of_partitions_register_fixup(&mtd->cdev);
 			if (ret)
 				goto err1;
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index ee37dfd5cb..0e2ff4526d 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -248,7 +248,6 @@ struct mtd_info {
 	struct list_head partitions_entry;
 	char *partition_string;
 
-	char *of_path;
 	unsigned int of_binding;
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

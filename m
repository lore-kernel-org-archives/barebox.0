Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpY2-0003lp-8B
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:23 +0100
Message-Id: <1423731274-9860-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
References: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/17] mtd: nand: remove automatically created bb devices
To: Barebox List <barebox@lists.infradead.org>

the bb devices which are created in add_mtd_device() must be removed
in del_mtd_device(). Also remove deletion of the bb devices in the
mtdparts-add environment file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv/defaultenv-2-base/bin/mtdparts-add |  3 ---
 drivers/mtd/core.c                            |  2 ++
 drivers/mtd/nand/nand-bb.c                    | 16 ++++++++++++----
 include/nand.h                                |  7 +++++--
 4 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/defaultenv/defaultenv-2-base/bin/mtdparts-add b/defaultenv/defaultenv-2-base/bin/mtdparts-add
index 05ab638..f49561c 100644
--- a/defaultenv/defaultenv-2-base/bin/mtdparts-add
+++ b/defaultenv/defaultenv-2-base/bin/mtdparts-add
@@ -30,9 +30,6 @@ if [ -z "${parts}" ]; then
 fi
 
 if [ -e /tmp/mtdparts/${device} ]; then
-	if [ -n "/dev/${device}.*.bb" ]; then
-		nand -d /dev/${device}.*.bb
-	fi
 	delpart /dev/${device}.*
 fi
 
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index f5c03db..813edc5 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -447,6 +447,8 @@ int del_mtd_device (struct mtd_info *mtd)
 			hook->del_mtd_device(mtd, &hook->priv);
 
 	devfs_remove(&mtd->cdev);
+	if (mtd->cdev_bb)
+		mtd_del_bb(mtd);
 	unregister_device(&mtd->class_dev);
 	free(mtd->param_size.value);
 	free(mtd->cdev.name);
diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index 23957c3..539c685 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -307,6 +307,17 @@ err:
 	return ERR_PTR(ret);
 }
 
+void mtd_del_bb(struct mtd_info *mtd)
+{
+	struct cdev *cdev = mtd->cdev_bb;
+	struct nand_bb *bb = container_of(cdev, struct nand_bb, cdev);
+
+	devfs_remove(&bb->cdev);
+	list_del_init(&bb->list);
+	free(bb->name);
+	free(bb);
+}
+
 /**
  * Add a bad block aware device ontop of another (NAND) device
  * @param[in] dev The device to add a partition on
@@ -335,10 +346,7 @@ int dev_remove_bb_dev(const char *name)
 
 	list_for_each_entry_safe(bb, tmp, &bb_list, list) {
 		if (!strcmp(bb->cdev.name, name)) {
-			devfs_remove(&bb->cdev);
-			list_del_init(&bb->list);
-			free(bb->name);
-			free(bb);
+			mtd_del_bb(bb->mtd);
 			return 0;
 		}
 	}
diff --git a/include/nand.h b/include/nand.h
index 1da35d0..fb3b5a1 100644
--- a/include/nand.h
+++ b/include/nand.h
@@ -1,4 +1,3 @@
-
 #ifndef __NAND_H__
 #define __NAND_H__
 
@@ -8,6 +7,7 @@ struct nand_bb;
 int dev_add_bb_dev(const char *filename, const char *name);
 int dev_remove_bb_dev(const char *name);
 struct cdev *mtd_add_bb(struct mtd_info *mtd, const char *name);
+void mtd_del_bb(struct mtd_info *mtd);
 #else
 static inline int dev_add_bb_dev(const char *filename, const char *name) {
 	return 0;
@@ -21,7 +21,10 @@ static inline struct cdev *mtd_add_bb(struct mtd_info *mtd, const char *name)
 {
 	return NULL;
 }
+
+static inline void mtd_del_bb(struct mtd_info *mtd)
+{
+}
 #endif
 
 #endif /* __NAND_H__ */
-
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

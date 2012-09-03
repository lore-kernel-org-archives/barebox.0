Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Pet-0007un-3n
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 05:57:15 +0000
Received: by wibhn17 with SMTP id hn17so2523342wib.0
 for <barebox@lists.infradead.org>; Sun, 02 Sep 2012 22:57:13 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Mon,  3 Sep 2012 07:58:01 +0200
Message-Id: <1346651881-3765-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1346651881-3765-1-git-send-email-alex.aring@gmail.com>
References: <1346651881-3765-1-git-send-email-alex.aring@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] mtd: add private data to mtddev-hook
To: barebox@lists.infradead.org

The mtdoob and mtdraw device don't clean up correctly.
Added a private data element to hold allocated memory.
Fix remove of mtdoob and mtdraw device.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 drivers/mtd/core.c   |  6 ++++--
 drivers/mtd/mtd.h    |  5 +++--
 drivers/mtd/mtdoob.c | 15 ++++++++++++++-
 drivers/mtd/mtdraw.c | 15 ++++++++++++++-
 4 files changed, 35 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 3dcc908..a6132e8 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -248,7 +248,7 @@ int add_mtd_device(struct mtd_info *mtd, char *devname)
 
 	list_for_each_entry(hook, &mtd_register_hooks, hook)
 		if (hook->add_mtd_device)
-			hook->add_mtd_device(mtd, devname);
+			hook->add_mtd_device(mtd, devname, &hook->priv);
 
 	return 0;
 }
@@ -259,7 +259,9 @@ int del_mtd_device (struct mtd_info *mtd)
 
 	list_for_each_entry(hook, &mtd_register_hooks, hook)
 		if (hook->del_mtd_device)
-			hook->del_mtd_device(mtd);
+			hook->del_mtd_device(mtd, &hook->priv);
+
+	devfs_remove(&mtd->cdev);
 	unregister_device(&mtd->class_dev);
 	free(mtd->param_size.value);
 	free(mtd->cdev.name);
diff --git a/drivers/mtd/mtd.h b/drivers/mtd/mtd.h
index c8af6e3..414bd6c 100644
--- a/drivers/mtd/mtd.h
+++ b/drivers/mtd/mtd.h
@@ -25,8 +25,9 @@
  */
 struct mtddev_hook {
 	struct list_head hook;
-	int (*add_mtd_device)(struct mtd_info *mtd, char *devname);
-	int (*del_mtd_device)(struct mtd_info *mtd);
+	int (*add_mtd_device)(struct mtd_info *mtd, char *devname, void **priv);
+	int (*del_mtd_device)(struct mtd_info *mtd, void **priv);
+	void *priv;
 };
 struct cdev;
 
diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index e4dd1a0..c7bf40c 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -69,7 +69,7 @@ static struct file_operations mtd_ops_oob = {
 	.lseek  = dev_lseek_default,
 };
 
-static int add_mtdoob_device(struct mtd_info *mtd, char *devname)
+static int add_mtdoob_device(struct mtd_info *mtd, char *devname, void **priv)
 {
 	struct mtdoob *mtdoob;
 
@@ -80,13 +80,26 @@ static int add_mtdoob_device(struct mtd_info *mtd, char *devname)
 	mtdoob->cdev.priv = mtdoob;
 	mtdoob->cdev.dev = &mtd->class_dev;
 	mtdoob->mtd = mtd;
+	*priv = mtdoob;
 	devfs_create(&mtdoob->cdev);
 
 	return 0;
 }
 
+static int del_mtdoob_device(struct mtd_info *mtd, void **priv)
+{
+	struct mtdoob *mtdoob;
+
+	mtdoob = *priv;
+	devfs_remove(&mtdoob->cdev);
+	free(mtdoob);
+
+	return 0;
+}
+
 static struct mtddev_hook mtdoob_hook = {
 	.add_mtd_device = add_mtdoob_device,
+	.del_mtd_device = del_mtdoob_device,
 };
 
 static int __init register_mtdoob(void)
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 9961a75..16157e9 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -275,7 +275,7 @@ static const struct file_operations mtd_raw_fops = {
 	.lseek		= dev_lseek_default,
 };
 
-static int add_mtdraw_device(struct mtd_info *mtd, char *devname)
+static int add_mtdraw_device(struct mtd_info *mtd, char *devname, void **priv)
 {
 	struct mtdraw *mtdraw;
 
@@ -290,13 +290,26 @@ static int add_mtdraw_device(struct mtd_info *mtd, char *devname)
 	mtdraw->cdev.priv = mtdraw;
 	mtdraw->cdev.dev = &mtd->class_dev;
 	mtdraw->cdev.mtd = mtd;
+	*priv = mtdraw;
 	devfs_create(&mtdraw->cdev);
 
 	return 0;
 }
 
+static int del_mtdraw_device(struct mtd_info *mtd, void **priv)
+{
+	struct mtdraw *mtdraw;
+
+	mtdraw = *priv;
+	devfs_remove(&mtdraw->cdev);
+	free(mtdraw);
+
+	return 0;
+}
+
 static struct mtddev_hook mtdraw_hook = {
 	.add_mtd_device = add_mtdraw_device,
+	.del_mtd_device = del_mtdraw_device,
 };
 
 static int __init register_mtdraw(void)
-- 
1.7.12


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehCFX-0000W0-Nv
 for barebox@lists.infradead.org; Thu, 01 Feb 2018 10:37:49 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu,  1 Feb 2018 11:37:17 +0100
Message-Id: <20180201103717.17429-3-p.zabel@pengutronix.de>
In-Reply-To: <20180201103717.17429-1-p.zabel@pengutronix.de>
References: <20180201103717.17429-1-p.zabel@pengutronix.de>
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
Subject: [PATCH 3/3] fs: add support loop mount offset
To: barebox@lists.infradead.org

When loop mounting, allow to specify an offset into the file, similarly
to the losetup offset option. Multiplicative suffixes are supported.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 fs/devfs-core.c  |  8 ++++----
 fs/fs.c          | 12 +++++++++---
 include/driver.h |  2 +-
 3 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index be56edd18d..ea5887c720 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -464,7 +464,7 @@ static const struct file_operations loop_ops = {
 	.lseek = dev_lseek_default,
 };
 
-struct cdev *cdev_create_loop(const char *path, ulong flags)
+struct cdev *cdev_create_loop(const char *path, ulong flags, loff_t offset)
 {
 	struct cdev *new;
 	struct loop_priv *priv;
@@ -486,15 +486,15 @@ struct cdev *cdev_create_loop(const char *path, ulong flags)
 	new->priv = priv;
 
 	ofs = lseek(priv->fd, 0, SEEK_END);
-	if (ofs < 0) {
+	if (ofs < 0 || ofs <= offset) {
 		free(new);
 		free(priv);
 		return NULL;
 	}
-	lseek(priv->fd, 0, SEEK_SET);
+	lseek(priv->fd, offset, SEEK_SET);
 
 	new->size = ofs;
-	new->offset = 0;
+	new->offset = offset;
 	new->dev = NULL;
 	new->flags = 0;
 
diff --git a/fs/fs.c b/fs/fs.c
index 6f15e93ba9..56e67aac2a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1279,11 +1279,13 @@ static const char *detect_fs(const char *filename, const char *fsoptions)
 	enum filetype type;
 	struct driver_d *drv;
 	struct fs_driver_d *fdrv;
-	bool loop;
+	bool loop = false;
+	unsigned long long offset = 0;
 
 	parseopt_b(fsoptions, "loop", &loop);
+	parseopt_llu_suffix(fsoptions, "offset", &offset);
 	if (loop)
-		type = file_name_detect_type(filename);
+		type = file_name_detect_type_offset(filename, offset);
 	else
 		type = cdev_detect_type(filename);
 
@@ -1302,9 +1304,13 @@ static const char *detect_fs(const char *filename, const char *fsoptions)
 
 int fsdev_open_cdev(struct fs_device_d *fsdev)
 {
+	unsigned long long offset = 0;
+
 	parseopt_b(fsdev->options, "loop", &fsdev->loop);
+	parseopt_llu_suffix(fsdev->options, "offset", &offset);
 	if (fsdev->loop)
-		fsdev->cdev = cdev_create_loop(fsdev->backingstore, O_RDWR);
+		fsdev->cdev = cdev_create_loop(fsdev->backingstore, O_RDWR,
+					       offset);
 	else
 		fsdev->cdev = cdev_open(fsdev->backingstore, O_RDWR);
 	if (!fsdev->cdev)
diff --git a/include/driver.h b/include/driver.h
index e571fbbec5..f37805db17 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -475,7 +475,7 @@ struct cdev *cdev_readlink(struct cdev *cdev);
 struct cdev *cdev_by_device_node(struct device_node *node);
 struct cdev *cdev_by_partuuid(const char *partuuid);
 struct cdev *cdev_open(const char *name, unsigned long flags);
-struct cdev *cdev_create_loop(const char *path, ulong flags);
+struct cdev *cdev_create_loop(const char *path, ulong flags, loff_t offset);
 void cdev_remove_loop(struct cdev *cdev);
 int cdev_do_open(struct cdev *, unsigned long flags);
 void cdev_close(struct cdev *cdev);
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

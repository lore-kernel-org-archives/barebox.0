Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9HqM-0005za-BG
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:11:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:11:50 +0200
Message-Id: <1302531111-29244-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531111-29244-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531111-29244-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] nand bb: switch to cdev operations
To: barebox@lists.infradead.org

The cdev operations are available without the complete file API,
so they are more suitable for internal usage.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nand.c            |    2 +-
 drivers/mtd/nand/nand-bb.c |   65 +++++++++++++++++--------------------------
 2 files changed, 27 insertions(+), 40 deletions(-)

diff --git a/commands/nand.c b/commands/nand.c
index 9a72780..ed55625 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -63,7 +63,7 @@ static int do_nand(struct command *cmdtp, int argc, char *argv[])
 
 	if (command & NAND_ADD) {
 		while (optind < argc) {
-			if (dev_add_bb_dev(argv[optind], NULL))
+			if (dev_add_bb_dev(basename(argv[optind]), NULL))
 				return 1;
 
 			optind++;
diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index 233e974..d71a2b0 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -33,7 +33,8 @@
 #include <libgen.h>
 
 struct nand_bb {
-	char *devname;
+	char cdevname[MAX_DRIVER_NAME];
+	struct cdev *cdev_parent;
 	char *name;
 	int open;
 	int needs_write;
@@ -42,7 +43,6 @@ struct nand_bb {
 
 	size_t raw_size;
 	size_t size;
-	int fd;
 	off_t offset;
 	void *writebuf;
 
@@ -53,12 +53,13 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 	unsigned long offset, ulong flags)
 {
 	struct nand_bb *bb = cdev->priv;
+	struct cdev *parent = bb->cdev_parent;
 	int ret, bytes = 0, now;
 
 	debug("%s %d %d\n", __func__, offset, count);
 
 	while(count) {
-		ret = ioctl(bb->fd, MEMGETBADBLOCK, (void *)bb->offset);
+		ret = cdev_ioctl(parent, MEMGETBADBLOCK, (void *)bb->offset);
 		if (ret < 0)
 			return ret;
 
@@ -70,8 +71,7 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 
 		now = min(count, (size_t)(bb->info.erasesize -
 				(bb->offset % bb->info.erasesize)));
-		lseek(bb->fd, bb->offset, SEEK_SET);
-		ret = read(bb->fd, buf, now);
+		ret = cdev_read(parent, buf, now, bb->offset, 0);
 		if (ret < 0)
 			return ret;
 		buf += now;
@@ -90,11 +90,12 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
 {
 	int ret, now;
+	struct cdev *parent = bb->cdev_parent;
 	void *buf = bb->writebuf;
 	int cur_ofs = bb->offset & ~(BB_WRITEBUF_SIZE - 1);
 
 	while (count) {
-		ret = ioctl(bb->fd, MEMGETBADBLOCK, (void *)cur_ofs);
+		ret = cdev_ioctl(parent, MEMGETBADBLOCK, (void *)cur_ofs);
 		if (ret < 0)
 			return ret;
 
@@ -106,8 +107,7 @@ static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
 		}
 
 		now = min(count, (size_t)(bb->info.erasesize));
-		lseek(bb->fd, cur_ofs, SEEK_SET);
-		ret = write(bb->fd, buf, now);
+		ret = cdev_write(parent, buf, now, cur_ofs, 0);
 		if (ret < 0)
 			return ret;
 		buf += now;
@@ -157,9 +157,7 @@ static int nand_bb_erase(struct cdev *cdev, size_t count, unsigned long offset)
 		return -EINVAL;
 	}
 
-	lseek(bb->fd, 0, SEEK_SET);
-
-	return erase(bb->fd, bb->raw_size, 0);
+	return cdev_erase(bb->cdev_parent, bb->raw_size, 0);
 }
 #endif
 
@@ -198,7 +196,7 @@ static int nand_bb_calc_size(struct nand_bb *bb)
 	int ret;
 
 	while (pos < bb->raw_size) {
-		ret = ioctl(bb->fd, MEMGETBADBLOCK, (void *)pos);
+		ret = cdev_ioctl(bb->cdev_parent, MEMGETBADBLOCK, (void *)pos);
 		if (ret < 0)
 			return ret;
 		if (!ret)
@@ -230,34 +228,25 @@ int dev_add_bb_dev(char *path, const char *name)
 {
 	struct nand_bb *bb;
 	int ret = -ENOMEM;
-	struct stat s;
 
 	bb = xzalloc(sizeof(*bb));
-	bb->devname = asprintf("/dev/%s", basename(path));
-	if (!bb->devname)
-		goto out1;
-
-	if (name)
-		bb->cdev.name = strdup(name);
-	else
-		bb->cdev.name = asprintf("%s.bb", basename(path));
 
-	if (!bb->cdev.name)
-		goto out2;
+	bb->cdev_parent = cdev_open(path, O_RDWR);
+	if (!bb->cdev_parent)
+		goto out1;
 
-	ret = stat(bb->devname, &s);
-	if (ret)
-		goto out3;
+	if (name) {
+		strcpy(bb->cdevname, name);
+	} else {
+		strcpy(bb->cdevname, path);
+		strcat(bb->cdevname, ".bb");
+	}
 
-	bb->raw_size = s.st_size;
+	bb->cdev.name = bb->cdevname;
 
-	bb->fd = open(bb->devname, O_RDWR);
-	if (bb->fd < 0) {
-		ret = -ENODEV;
-		goto out3;
-	}
+	bb->raw_size = bb->cdev_parent->size;
 
-	ret = ioctl(bb->fd, MEMGETINFO, &bb->info);
+	ret = cdev_ioctl(bb->cdev_parent, MEMGETINFO, &bb->info);
 	if (ret)
 		goto out4;
 
@@ -265,16 +254,14 @@ int dev_add_bb_dev(char *path, const char *name)
 	bb->cdev.ops = &nand_bb_ops;
 	bb->cdev.priv = bb;
 
-	devfs_create(&bb->cdev);
+	ret = devfs_create(&bb->cdev);
+	if (ret)
+		goto out4;
 
 	return 0;
 
 out4:
-	close(bb->fd);
-out3:
-	free(bb->cdev.name);
-out2:
-	free(bb->devname);
+	cdev_close(bb->cdev_parent);
 out1:
 	free(bb);
 	return ret;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

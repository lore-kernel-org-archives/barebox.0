Delivery-date: Wed, 01 Oct 2025 10:07:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3rrt-0034Fm-2f
	for lore@lore.pengutronix.de;
	Wed, 01 Oct 2025 10:07:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3rrs-0003VI-7v
	for lore@pengutronix.de; Wed, 01 Oct 2025 10:07:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DoKH/Bu5C+gpm+WskRQFkEnov3abVipq6IwMOtGDPuY=; b=ah4mETtCFO9rxttv5VYJRFpmDF
	5AMqZm/xBUChdGoc4AzASDIuzLEn1ja7TNOFO0GAKmzspfcXBFlijmKucwgQVMIJDl0psgod5Pw49
	XfHO8bXAKpwYfXr8/8JHMa5QOY7nvflzbxz46KXlzYWTeQI/3PYDt84BwkoPqL0mGSqtpfdYY6ns/
	dbLMy0+MXWRJNi+zyQmCc1KYQ/OJ5L5RYzZv1lsEBkJKHBkiXOUUmbysVkTSr21m9J85Y8jbZZLYS
	Zu4Ends9lAIFvIo6GoIANH80pMFJlsPs31aoaRmHYPjU01mNmwrqa+bQKNWXUayhktSr3xvoORWoO
	sz6VfeTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3rrA-00000006ygb-2Gzg;
	Wed, 01 Oct 2025 08:06:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3rr7-00000006yfG-1oLq
	for barebox@lists.infradead.org;
	Wed, 01 Oct 2025 08:06:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3rr5-0003H8-0v; Wed, 01 Oct 2025 10:06:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3rr4-001NZ8-2a;
	Wed, 01 Oct 2025 10:06:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3rr4-00000001kP0-33BI;
	Wed, 01 Oct 2025 10:06:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 01 Oct 2025 10:06:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251001-fs-remove-dev-argument-v1-2-1922aaf65062@pengutronix.de>
References: <20251001-fs-remove-dev-argument-v1-0-1922aaf65062@pengutronix.de>
In-Reply-To: <20251001-fs-remove-dev-argument-v1-0-1922aaf65062@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759305990; l=27127;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=DqPE7SfwGX4KErAgMrPdD/R5CizJONivJryj45myR0Q=;
 b=UCAYmvPUCGDEDPO03NQxofV7CuhXQc1dWbbllctd9IT9Fi+Ox5sf+qr3lhGPcS8UTHk9gmjHk
 zwf1drMtkboD8W3m7Sbw6LMaCyUDb33TaaHNA+fA6+a/8CSrPelwJTb
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_010633_788663_C247FF77 
X-CRM114-Status: GOOD (  21.64  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] fs: move fs_driver operations to struct
 file_operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The fs_driver operations really belong to struct file_operations. Move
them there and clear a long standing TODO item.
For the filesystems using the legacy layer move the file_operations to
the legacy operations.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/9p/v9fs.h           |  2 +-
 fs/9p/vfs_file.c       |  6 ++++++
 fs/9p/vfs_inode_dotl.c |  9 +--------
 fs/bpkfs.c             |  4 ++--
 fs/cramfs/cramfs.c     |  7 ++++++-
 fs/devfs.c             | 20 +++++++++----------
 fs/ext4/ext_barebox.c  |  6 +++++-
 fs/fat/fat.c           | 10 ++++------
 fs/fs.c                | 40 +++++++++++++++++++-------------------
 fs/jffs2/fs.c          | 12 ++++++------
 fs/legacy.c            | 52 ++++++++++++++++++++++++++++++++++++++++++++++++++
 fs/nfs.c               |  8 ++++----
 fs/pstore/fs.c         |  4 ++--
 fs/qemu_fw_cfg.c       | 12 +++++++-----
 fs/ramfs.c             | 11 +++++++----
 fs/ratpfs.c            |  6 +++---
 fs/smhfs.c             |  6 +++---
 fs/squashfs/squashfs.c | 12 ++++++------
 fs/tftp.c              |  8 ++++----
 fs/ubifs/super.c       |  1 +
 fs/ubifs/ubifs.c       |  3 +--
 fs/ubifs/ubifs.h       |  1 +
 fs/uimagefs.c          |  6 +++---
 include/fs.h           | 21 +++++---------------
 include/linux/fs.h     | 20 +++++++++++++++----
 25 files changed, 176 insertions(+), 111 deletions(-)

diff --git a/fs/9p/v9fs.h b/fs/9p/v9fs.h
index 4b90d35209cb396c8ee2dcda2c11911297284611..afe578318c6f568786aa8977fe6acb877188ee7b 100644
--- a/fs/9p/v9fs.h
+++ b/fs/9p/v9fs.h
@@ -133,8 +133,8 @@ extern struct inode *v9fs_fid_iget_dotl(struct super_block *sb,
 						struct p9_fid *fid, bool new);
 
 int v9fs_read(struct file *f, void *buf, size_t insize);
-
 int v9fs_write(struct file *f, const void *buf, size_t insize);
+int v9fs_truncate(struct file *f, loff_t size);
 
 /* other default globals */
 #define V9FS_PORT	564
diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index f99f7f294b96ef6b00a956702a29ea239835d898..a993753e2dede0b1676cd74fd234efc9cdb1e9e8 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -64,4 +64,10 @@ int v9fs_file_open(struct inode *inode, struct file *file)
 const struct file_operations v9fs_file_operations_dotl = {
 	.open = v9fs_file_open,
 	.release = v9fs_dir_release,
+	.read = v9fs_read,
+#ifdef CONFIG_9P_FS_WRITE
+	.write = v9fs_write,
+	.truncate = v9fs_truncate,
+	.flush = v9fs_file_fsync_dotl,
+#endif
 };
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index c8ce3992cf0c5fc47cbab345f0992582297ae001..19b38b349786d603ae2be9ae7ace9e1190d29fa7 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -310,8 +310,7 @@ static int v9fs_vfs_setattr_dotl(struct dentry *dentry, struct iattr *iattr)
 	return 0;
 }
 
-static __maybe_unused int
-v9fs_truncate(struct file *f, loff_t size)
+int v9fs_truncate(struct file *f, loff_t size)
 {
 	struct iattr iattr = {
 		.ia_valid = ATTR_SIZE | ATTR_FILE,
@@ -565,12 +564,6 @@ const struct inode_operations v9fs_symlink_inode_operations_dotl = {
 };
 
 struct fs_driver v9fs_driver = {
-	.read      = v9fs_read,
-#ifdef CONFIG_9P_FS_WRITE
-	.write     = v9fs_write,
-	.truncate  = v9fs_truncate,
-	.flush     = v9fs_file_fsync_dotl,
-#endif
 	.drv = {
 		.probe  = v9fs_mount,
 		.remove = v9fs_umount,
diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 2831666b6ce0482b14f959c13e4f02eb1a9f11ec..5a3e2da2c97df7e1b92554962138289b1d91e675 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -498,11 +498,11 @@ static const struct fs_legacy_ops bpkfs_ops = {
 	.readdir   = bpkfs_readdir,
 	.closedir  = bpkfs_closedir,
 	.stat      = bpkfs_stat,
+	.read      = bpkfs_read,
+	.lseek     = bpkfs_lseek,
 };
 
 static struct fs_driver bpkfs_driver = {
-	.read      = bpkfs_read,
-	.lseek     = bpkfs_lseek,
 	.legacy_ops = &bpkfs_ops,
 	.type = filetype_bpk,
 	.drv = {
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index b20219677bd27aceaa8662749218b2f8ee9d07e4..d66cce8df8cae08138ff892bcce645d316ca71c6 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -198,6 +198,7 @@ static int cramfs_info (struct device *dev)
 static const struct file_operations cramfs_dir_operations;
 static const struct inode_operations cramfs_dir_inode_operations;
 static const struct inode_operations cramfs_symlink_inode_operations;
+static const struct file_operations cramfs_file_operations;
 
 static unsigned long cramino(const struct cramfs_inode *cino, unsigned int offset)
 {
@@ -237,6 +238,7 @@ static struct inode *get_cramfs_inode(struct super_block *sb,
 
 	switch (cramfs_inode->mode & S_IFMT) {
 	case S_IFREG:
+		inode->i_fop = &cramfs_file_operations;
 		break;
 	case S_IFDIR:
 		inode->i_op = &cramfs_dir_inode_operations;
@@ -414,6 +416,10 @@ static const struct file_operations cramfs_dir_operations = {
 	.iterate = cramfs_iterate,
 };
 
+static const struct file_operations cramfs_file_operations = {
+	.read = cramfs_read,
+};
+
 static const struct inode_operations cramfs_dir_inode_operations =
 {
 	.lookup = cramfs_lookup,
@@ -497,7 +503,6 @@ static void cramfs_remove(struct device *dev)
 }
 
 static struct fs_driver cramfs_driver = {
-	.read		= cramfs_read,
 	.drv = {
 		.probe = cramfs_probe,
 		.remove = cramfs_remove,
diff --git a/fs/devfs.c b/fs/devfs.c
index 49f739b864f2dd89a4ade2405c6c5d0121157d0b..15c7a63d3949a5fa7c5ec15f58bc9f4c53b7852b 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -176,6 +176,16 @@ static const struct inode_operations devfs_dir_inode_operations;
 static const struct file_operations devfs_file_operations = {
 	.open = devfs_open,
 	.release = devfs_close,
+	.read = devfs_read,
+	.write = devfs_write,
+	.lseek = devfs_lseek,
+	.flush = devfs_flush,
+	.ioctl = devfs_ioctl,
+	.truncate = devfs_truncate,
+	.erase = devfs_erase,
+	.protect = devfs_protect,
+	.discard_range = devfs_discard_range,
+	.memmap = devfs_memmap,
 };
 
 static int devfs_lookup_revalidate(struct dentry *dentry, unsigned int flags)
@@ -300,16 +310,6 @@ static void devfs_delete(struct device *dev)
 }
 
 static struct fs_driver devfs_driver = {
-	.read      = devfs_read,
-	.write     = devfs_write,
-	.lseek     = devfs_lseek,
-	.flush     = devfs_flush,
-	.ioctl     = devfs_ioctl,
-	.truncate  = devfs_truncate,
-	.erase     = devfs_erase,
-	.protect   = devfs_protect,
-	.discard_range = devfs_discard_range,
-	.memmap    = devfs_memmap,
 	.drv = {
 		.probe  = devfs_probe,
 		.remove = devfs_delete,
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index e626f516b69a2970b5e8d48caea61a9ac1eb4e9c..5bee4853d4fceafa294975ac6013a376bfc87b0f 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -179,6 +179,10 @@ const struct file_operations ext_dir_operations = {
 	.iterate = ext_iterate,
 };
 
+const struct file_operations ext_file_operations = {
+	.read = ext_read,
+};
+
 static const char *ext_get_link(struct dentry *dentry, struct inode *inode)
 {
 	struct ext2fs_node *node = to_ext2_node(inode);
@@ -230,6 +234,7 @@ struct inode *ext_get_inode(struct super_block *sb, int ino)
 		return NULL;
 	case S_IFREG:
 		inode->i_op = &ext_inode_operations;
+		inode->i_fop = &ext_file_operations;
 		break;
 	case S_IFDIR:
 		inode->i_op = &ext_inode_operations;
@@ -299,7 +304,6 @@ static void ext_remove(struct device *dev)
 }
 
 static struct fs_driver ext_driver = {
-	.read      = ext_read,
 	.type      = filetype_ext,
 	.drv = {
 		.probe  = ext_probe,
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 28517c6b90ac3487becc8bf1daffef8b84e10e65..cdca666566d26d06ddf57a68f7217bb9b3117106 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -384,16 +384,14 @@ static const struct fs_legacy_ops fat_ops = {
 	.unlink    = fat_unlink,
 	.mkdir     = fat_mkdir,
 	.rmdir     = fat_rmdir,
+	.write     = fat_write,
+	.truncate  = fat_truncate,
 #endif
+	.read      = fat_read,
+	.lseek     = fat_lseek,
 };
 
 static struct fs_driver fat_driver = {
-	.read      = fat_read,
-	.lseek     = fat_lseek,
-#ifdef CONFIG_FS_FAT_WRITE
-	.write     = fat_write,
-	.truncate  = fat_truncate,
-#endif
 	.legacy_ops = &fat_ops,
 	.type = filetype_fat,
 	.drv = {
diff --git a/fs/fs.c b/fs/fs.c
index 8a90a317382b3dce7c2c60ccc5bb3bc9a528b02b..e2bcd8ea33b2c062e74366bf3825e4a9391ea879 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -372,9 +372,8 @@ static int create(struct dentry *dir, struct dentry *dentry)
 
 static int fsdev_truncate(struct file *f, loff_t length)
 {
-	struct fs_driver *fsdrv = f->fsdev->driver;
-
-	return fsdrv->truncate ? fsdrv->truncate(f, length) : -EROFS;
+	return f->f_inode->i_fop->truncate ?
+		f->f_inode->i_fop->truncate(f, length) : -EROFS;
 }
 
 int ftruncate(int fd, loff_t length)
@@ -408,8 +407,8 @@ int ioctl(int fd, unsigned int request, void *buf)
 
 	fsdrv = f->fsdev->driver;
 
-	if (fsdrv->ioctl)
-		ret = fsdrv->ioctl(f, request, buf);
+	if (f->f_inode->i_fop->ioctl)
+		ret = f->f_inode->i_fop->ioctl(f, request, buf);
 	else
 		ret = -ENOSYS;
 
@@ -437,7 +436,7 @@ static ssize_t __read(struct file *f, void *buf, size_t count)
 	if (!count)
 		return 0;
 
-	ret = fsdrv->read(f, buf, count);
+	ret = f->f_inode->i_fop->read(f, buf, count);
 out:
 	return errno_set(ret);
 }
@@ -483,7 +482,7 @@ static ssize_t __write(struct file *f, const void *buf, size_t count)
 
 	fsdrv = f->fsdev->driver;
 
-	if ((f->f_flags & O_ACCMODE) == O_RDONLY || !fsdrv->write) {
+	if ((f->f_flags & O_ACCMODE) == O_RDONLY || !f->f_inode->i_fop->write) {
 		ret = -EBADF;
 		goto out;
 	}
@@ -505,7 +504,8 @@ static ssize_t __write(struct file *f, const void *buf, size_t count)
 			f->f_size = f->f_pos + count;
 		}
 	}
-	ret = fsdrv->write(f, buf, count);
+
+	ret = f->f_inode->i_fop->write(f, buf, count);
 out:
 	return errno_set(ret);
 }
@@ -554,8 +554,8 @@ int flush(int fd)
 		return -errno;
 
 	fsdrv = f->fsdev->driver;
-	if (fsdrv->flush)
-		ret = fsdrv->flush(f);
+	if (f->f_inode->i_fop->flush)
+		ret = f->f_inode->i_fop->flush(f);
 	else
 		ret = 0;
 
@@ -598,8 +598,8 @@ loff_t lseek(int fd, loff_t offset, int whence)
 	if (f->f_size != FILE_SIZE_STREAM && (pos < 0 || pos > f->f_size))
 		goto out;
 
-	if (fsdrv->lseek) {
-		ret = fsdrv->lseek(f, pos);
+	if (f->f_inode->i_fop->lseek) {
+		ret = f->f_inode->i_fop->lseek(f, pos);
 		if (ret < 0)
 			goto out;
 	}
@@ -635,8 +635,8 @@ int erase(int fd, loff_t count, loff_t offset, enum erase_type type)
 	if (fsdrv != ramfs_driver)
 		assert_command_context();
 
-	if (fsdrv->erase)
-		ret = fsdrv->erase(f, count, offset, type);
+	if (f->f_inode->i_fop->erase)
+		ret = f->f_inode->i_fop->erase(f, count, offset, type);
 	else
 		ret = -ENOSYS;
 
@@ -662,8 +662,8 @@ int protect(int fd, size_t count, loff_t offset, int prot)
 	if (fsdrv != ramfs_driver)
 		assert_command_context();
 
-	if (fsdrv->protect)
-		ret = fsdrv->protect(f, count, offset, prot);
+	if (f->f_inode->i_fop->protect)
+		ret = f->f_inode->i_fop->protect(f, count, offset, prot);
 	else
 		ret = -ENOSYS;
 
@@ -689,8 +689,8 @@ int discard_range(int fd, loff_t count, loff_t offset)
 	if (fsdrv != ramfs_driver)
 		assert_command_context();
 
-	if (fsdrv->discard_range)
-		ret = fsdrv->discard_range(f, count, offset);
+	if (f->f_inode->i_fop->discard_range)
+		ret = f->f_inode->i_fop->discard_range(f, count, offset);
 	else
 		ret = -ENOSYS;
 
@@ -727,8 +727,8 @@ void *memmap(int fd, int flags)
 	if (fsdrv != ramfs_driver)
 		assert_command_context();
 
-	if (fsdrv->memmap)
-		ret = fsdrv->memmap(f, &retp, flags);
+	if (f->f_inode->i_fop->memmap)
+		ret = f->f_inode->i_fop->memmap(f, &retp, flags);
 	else
 		ret = -EINVAL;
 
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 4906d990013b2adc25e3e5702280f75722508497..84f39a0f2a2490c329b7bab9e013730cb6500f98 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -64,11 +64,6 @@ static int jffs2_close(struct inode *inode, struct file *f)
 	return 0;
 }
 
-const struct file_operations jffs2_file_operations = {
-	.open = jffs2_open,
-	.release = jffs2_close,
-};
-
 static int jffs2_get_block(struct jffs2_file *jf, unsigned int pos)
 {
 	struct jffs2_sb_info *c = JFFS2_SB_INFO(jf->inode->i_sb);
@@ -138,6 +133,12 @@ static int jffs2_read(struct file *f, void *buf, size_t insize)
 
 }
 
+const struct file_operations jffs2_file_operations = {
+	.open = jffs2_open,
+	.release = jffs2_close,
+	.read = jffs2_read,
+};
+
 struct inode *jffs2_iget(struct super_block *sb, unsigned long ino)
 {
 	struct jffs2_inode_info *f;
@@ -458,7 +459,6 @@ static void jffs2_remove(struct device *dev)
 
 
 static struct fs_driver jffs2_driver = {
-	.read = jffs2_read,
 	.type = filetype_jffs2,
 	.drv = {
 		.probe  = jffs2_probe,
diff --git a/fs/legacy.c b/fs/legacy.c
index 5cb4ec22fe7903e4c1371eb4d69671a3eeb790a1..7c73ad7c41e47028b28c3185c9387168d157b8f4 100644
--- a/fs/legacy.c
+++ b/fs/legacy.c
@@ -298,6 +298,53 @@ static const char *legacy_get_link(struct dentry *dentry, struct inode *inode)
 	return inode->i_link;
 }
 
+static int legacy_read(struct file *f, void *buf, size_t size)
+{
+	const struct fs_legacy_ops *legacy_ops = f->fsdev->driver->legacy_ops;
+
+	return legacy_ops->read(f, buf, size);
+}
+
+static int legacy_write(struct file *f, const void *buf, size_t size)
+{
+	const struct fs_legacy_ops *legacy_ops = f->fsdev->driver->legacy_ops;
+
+	if (!legacy_ops->write)
+		return -EBADF;
+
+	return legacy_ops->write(f, buf, size);
+}
+
+static int legacy_lseek(struct file *f, loff_t pos)
+{
+	const struct fs_legacy_ops *legacy_ops = f->fsdev->driver->legacy_ops;
+
+	if (!legacy_ops->lseek)
+		return 0;
+
+	return legacy_ops->lseek(f, pos);
+}
+
+static int legacy_ioctl(struct file *f, unsigned int request, void *buf)
+{
+	const struct fs_legacy_ops *legacy_ops = f->fsdev->driver->legacy_ops;
+
+	if (!legacy_ops->ioctl)
+		return -ENOSYS;
+
+	return legacy_ops->ioctl(f, request, buf);
+}
+
+static int legacy_truncate(struct file *f, loff_t size)
+{
+	const struct fs_legacy_ops *legacy_ops = f->fsdev->driver->legacy_ops;
+
+	if (!legacy_ops->truncate)
+		return -EROFS;
+
+	return legacy_ops->truncate(f, size);
+}
+
 static const struct super_operations legacy_s_ops;
 static const struct inode_operations legacy_file_inode_operations;
 
@@ -313,6 +360,11 @@ static const struct inode_operations legacy_dir_inode_operations = {
 static const struct file_operations legacy_file_operations = {
 	.open = legacy_open,
 	.release = legacy_release,
+	.read = legacy_read,
+	.write = legacy_write,
+	.lseek = legacy_lseek,
+	.ioctl = legacy_ioctl,
+	.truncate = legacy_truncate,
 };
 
 static const struct file_operations legacy_dir_operations = {
diff --git a/fs/nfs.c b/fs/nfs.c
index 48589a2183b71fb35db20e4c5ec0ecf66dfd2ef2..9c72d709fb44fa1f4fb60f7aa93bd1733fa50efa 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1321,6 +1321,10 @@ static const struct inode_operations nfs_dir_inode_operations;
 static const struct file_operations nfs_file_operations = {
 	.open      = nfs_open,
 	.release     = nfs_close,
+	.read      = nfs_read,
+	.lseek     = nfs_lseek,
+	.write     = nfs_write,
+	.truncate  = nfs_truncate,
 };
 static const struct inode_operations nfs_symlink_inode_operations = {
 	.get_link = nfs_get_link,
@@ -1554,10 +1558,6 @@ static void nfs_remove(struct device *dev)
 }
 
 static struct fs_driver nfs_driver = {
-	.read      = nfs_read,
-	.lseek     = nfs_lseek,
-	.write     = nfs_write,
-	.truncate  = nfs_truncate,
 	.drv = {
 		.probe  = nfs_probe,
 		.remove = nfs_remove,
diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index 8d18728c73f842f4d7a94274328d027b5b536b69..88951632138a585176cc2fecfd94dabab27f3087 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -282,11 +282,11 @@ static const struct fs_legacy_ops pstore_ops = {
 	.readdir   = pstore_readdir,
 	.closedir  = pstore_closedir,
 	.stat      = pstore_stat,
+	.read      = pstore_read,
+	.lseek     = pstore_lseek,
 };
 
 static struct fs_driver pstore_driver = {
-	.read      = pstore_read,
-	.lseek     = pstore_lseek,
 	.legacy_ops = &pstore_ops,
 	.type = filetype_uimage,
 	.drv = {
diff --git a/fs/qemu_fw_cfg.c b/fs/qemu_fw_cfg.c
index a3cf9a5f8bb01eaf6e5ecac5dc3e11ca61d43932..8e61df1ebf22f8e273fe860105327f0628c017b5 100644
--- a/fs/qemu_fw_cfg.c
+++ b/fs/qemu_fw_cfg.c
@@ -58,9 +58,7 @@ static const struct inode_operations fw_cfg_fs_dir_inode_operations;
 static const struct inode_operations fw_cfg_fs_symlink_inode_operations = {
 	.get_link = fw_cfg_fs_get_link,
 };
-static const struct file_operations fw_cfg_fs_file_operations = {
-	.open = fw_cfg_fs_open
-};
+static const struct file_operations fw_cfg_fs_file_operations;
 static const struct file_operations fw_cfg_fs_dir_operations;
 
 static struct inode *fw_cfg_fs_get_inode(struct inode *iparent,
@@ -337,6 +335,12 @@ static int fw_cfg_fs_write(struct file *f, const void *buf, size_t insize)
 	return fw_cfg_fs_io(f, (void *)buf, insize, false);
 }
 
+static const struct file_operations fw_cfg_fs_file_operations = {
+	.open = fw_cfg_fs_open,
+	.read = fw_cfg_fs_read,
+	.write = fw_cfg_fs_write,
+};
+
 static int fw_cfg_fs_probe(struct device *dev)
 {
 	struct fw_cfg_fs_inode *node;
@@ -390,8 +394,6 @@ static void fw_cfg_fs_remove(struct device *dev)
 }
 
 static struct fs_driver fw_cfg_fs_driver = {
-	.read = fw_cfg_fs_read,
-	.write = fw_cfg_fs_write,
 	.type = filetype_qemu_fw_cfg,
 	.drv = {
 		.probe = fw_cfg_fs_probe,
diff --git a/fs/ramfs.c b/fs/ramfs.c
index 97a5a2425570553cbb3cc62fd96c35beefd6cf6c..d8c754492561e1b0d43c9b87d92b3199c437dc3e 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -395,6 +395,13 @@ static int ramfs_memmap(struct file *f, void **map, int flags)
 	return 0;
 }
 
+static const struct file_operations ramfs_file_operations = {
+	.read      = ramfs_read,
+	.write     = ramfs_write,
+	.memmap    = ramfs_memmap,
+	.truncate  = ramfs_truncate,
+};
+
 static struct inode *ramfs_alloc_inode(struct super_block *sb)
 {
 	struct ramfs_inode *node;
@@ -435,10 +442,6 @@ static int ramfs_probe(struct device *dev)
 }
 
 static struct fs_driver ramfs_driver = {
-	.read      = ramfs_read,
-	.write     = ramfs_write,
-	.memmap    = ramfs_memmap,
-	.truncate  = ramfs_truncate,
 	.drv = {
 		.probe  = ramfs_probe,
 		.name = "ramfs",
diff --git a/fs/ratpfs.c b/fs/ratpfs.c
index ae214214b6b88499418b6986b2790374e89d0127..389f439b58b15c37bcad72ed6c786d8d70784339 100644
--- a/fs/ratpfs.c
+++ b/fs/ratpfs.c
@@ -446,12 +446,12 @@ static const struct fs_legacy_ops ratpfs_ops = {
 	.unlink    = ratpfs_rm,
 	.mkdir     = ratpfs_mkdir,
 	.rmdir     = ratpfs_rm,
-};
-
-static struct fs_driver ratpfs_driver = {
 	.read      = ratpfs_read,
 	.write     = ratpfs_write,
 	.truncate  = ratpfs_truncate,
+};
+
+static struct fs_driver ratpfs_driver = {
 	.legacy_ops = &ratpfs_ops,
 	.drv = {
 		.probe  = ratpfs_probe,
diff --git a/fs/smhfs.c b/fs/smhfs.c
index 736edda14838d61bca2fba9c1aff31653a72bda5..b5ed54b4b7ed847c3d85e8fd829565516df27012 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -142,13 +142,13 @@ static const struct fs_legacy_ops smhfs_ops = {
 	.unlink    = smhfs_rm,
 	.mkdir     = smhfs_mkdir,
 	.rmdir     = smhfs_rm,
-};
-
-static struct fs_driver smhfs_driver = {
 	.read      = smhfs_read,
 	.lseek     = smhfs_lseek,
 	.write     = smhfs_write,
 	.truncate  = smhfs_truncate,
+};
+
+static struct fs_driver smhfs_driver = {
 	.legacy_ops = &smhfs_ops,
 	.drv = {
 		.probe  = smhfs_probe,
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 2e06a30f90902df56e6deb8e8597803db46ff722..e30372627abf47397093dd5bf3c5b2e871ecc631 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -176,11 +176,6 @@ static int squashfs_close(struct inode *inode, struct file *f)
 	return 0;
 }
 
-const struct file_operations squashfs_file_operations = {
-	.open = squashfs_open,
-	.release = squashfs_close,
-};
-
 static int squashfs_read_buf(struct squashfs_page *page, int pos, void **buf)
 {
 	unsigned int data_block = pos / (32 * PAGE_CACHE_SIZE);
@@ -241,8 +236,13 @@ static int squashfs_read(struct file *f, void *buf, size_t insize)
 	return insize;
 }
 
+const struct file_operations squashfs_file_operations = {
+	.open = squashfs_open,
+	.release = squashfs_close,
+	.read = squashfs_read,
+};
+
 static struct fs_driver squashfs_driver = {
-	.read		= squashfs_read,
 	.type		= filetype_squashfs,
 	.drv = {
 		.probe = squashfs_probe,
diff --git a/fs/tftp.c b/fs/tftp.c
index d1d4d55bc15adac7162d41b1677fbff5b85a79e2..a454306b4b5a95f168363fa8c9386dd63577972c 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -945,6 +945,10 @@ static const struct inode_operations tftp_dir_inode_operations;
 static const struct file_operations tftp_file_operations = {
 	.open = tftp_open,
 	.release = tftp_close,
+	.read      = tftp_read,
+	.lseek     = tftp_lseek,
+	.write     = tftp_write,
+	.truncate  = tftp_truncate,
 };
 
 static struct inode *tftp_get_inode(struct super_block *sb, const struct inode *dir,
@@ -1091,10 +1095,6 @@ static void tftp_remove(struct device *dev)
 }
 
 static struct fs_driver tftp_driver = {
-	.read      = tftp_read,
-	.lseek     = tftp_lseek,
-	.write     = tftp_write,
-	.truncate  = tftp_truncate,
 	.drv = {
 		.probe  = tftp_probe,
 		.remove = tftp_remove,
diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 285c40b4c21c5f08ac40b4566e8507261c232eb3..45037b42ea56cc95343a431376c06f7922eda2f2 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -108,6 +108,7 @@ const struct inode_operations ubifs_file_inode_operations;
 const struct file_operations ubifs_file_operations = {
 	.open = ubifs_open,
 	.release = ubifs_close,
+	.read = ubifs_read,
 };
 
 struct inode *ubifs_iget(struct super_block *sb, unsigned long inum)
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index d08612191f75711b3fc3a36be1626a7d3f7b463d..37986acbb238d1e86f8fa6afd5c917e44ccbba86 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -382,7 +382,7 @@ static int ubifs_get_block(struct ubifs_file *uf, unsigned int pos)
 	return 0;
 }
 
-static int ubifs_read(struct file *f, void *buf, size_t insize)
+int ubifs_read(struct file *f, void *buf, size_t insize)
 {
 	struct ubifs_file *uf = f->private_data;
 	unsigned int pos = f->f_pos;
@@ -502,7 +502,6 @@ static void ubifs_remove(struct device *dev)
 }
 
 static struct fs_driver ubifs_driver = {
-	.read      = ubifs_read,
 	.type = filetype_ubifs,
 	.drv = {
 		.probe  = ubifs_probe,
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 4695772355ef40d646e49b7039c18fe918417a0d..aff2a247804ce7b489733d40d5096fb46c5b7c0f 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -2060,6 +2060,7 @@ int ubifs_decompress(const struct ubifs_info *c, const void *buf, int len,
 /* barebox specific */
 int ubifs_open(struct inode *inode, struct file *file);
 int ubifs_close(struct inode *inode, struct file *f);
+int ubifs_read(struct file *f, void *buf, size_t insize);
 void ubifs_umount(struct ubifs_info *c);
 int ubifs_get_super(struct device *dev, struct ubi_volume_desc *ubi,
 		    int silent);
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 3f1f3afa300592d9e2be497d3abd0f542bed3823..0017769446f89c670e21baaa3207ac70c36a72d0 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -522,12 +522,12 @@ static const struct fs_legacy_ops uimagefs_ops = {
 	.readdir   = uimagefs_readdir,
 	.closedir  = uimagefs_closedir,
 	.stat      = uimagefs_stat,
-};
-
-static struct fs_driver uimagefs_driver = {
 	.read      = uimagefs_read,
 	.lseek     = uimagefs_lseek,
 	.ioctl	   = uimagefs_ioctl,
+};
+
+static struct fs_driver uimagefs_driver = {
 	.legacy_ops = &uimagefs_ops,
 	.type = filetype_uimage,
 	.drv = {
diff --git a/include/fs.h b/include/fs.h
index bee247c9be2d30018862e488a4f9dec1d7033270..86442eacddf9f00c6db6bc784dfc6f83e241a655 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -43,22 +43,6 @@ enum erase_type {
 struct fs_driver {
 	int (*probe) (struct device *dev);
 
-	/* Truncate a file to given size */
-	int (*truncate)(struct file *f, loff_t size);
-
-	int (*read)(struct file *f, void *buf, size_t size);
-	int (*write)(struct file *f, const void *buf, size_t size);
-	int (*flush)(struct file *f);
-	int (*lseek)(struct file *f, loff_t pos);
-
-	int (*ioctl)(struct file *f, unsigned int request, void *buf);
-	int (*erase)(struct file *f, loff_t count,
-			loff_t offset, enum erase_type type);
-	int (*protect)(struct file *f, size_t count, loff_t offset, int prot);
-	int (*discard_range)(struct file *f, loff_t count, loff_t offset);
-
-	int (*memmap)(struct file *f, void **map, int flags);
-
 	const struct fs_legacy_ops {
 		int (*open)(struct device *dev, struct file *f, const char *pathname);
 		int (*close)(struct device *dev, struct file *f);
@@ -76,6 +60,11 @@ struct fs_driver {
 		struct dirent* (*readdir)(struct device *dev, struct dir *dir);
 		int (*closedir)(struct device *dev, DIR *dir);
 		int (*stat)(struct device *dev, const char *file, struct stat *stat);
+		int (*read)(struct file *f, void *buf, size_t size);
+		int (*write)(struct file *f, const void *buf, size_t size);
+		int (*lseek)(struct file *f, loff_t pos);
+		int (*ioctl)(struct file *f, unsigned int request, void *buf);
+		int (*truncate)(struct file *f, loff_t size);
 	} *legacy_ops;
 
 	struct driver drv;
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 55e01d386de4a7badac8701ad70cdaf336b5eacc..1e12236bcd85713ccafbc958d884e4c367b0b45b 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -481,14 +481,26 @@ static inline int dir_emit_dots(struct file *file, struct dir_context *ctx)
 	return true;
 }
 
+enum erase_type;
+
 struct file_operations {
 	int (*open) (struct inode *, struct file *);
 	int (*release) (struct inode *, struct file *);
 	int (*iterate) (struct file *, struct dir_context *);
-	/*
-	 * TODO: move the remaining callbacks in struct fs_driver
-	 * here with Linux semantics
-	 */
+	int (*read)(struct file *f, void *buf, size_t size);
+	int (*write)(struct file *f, const void *buf,
+			size_t size);
+	int (*flush)(struct file *f);
+	int (*lseek)(struct file *f, loff_t pos);
+
+	int (*ioctl)(struct file *f, unsigned int request, void *buf);
+	int (*erase)(struct file *f, loff_t count,
+			loff_t offset, enum erase_type type);
+	int (*protect)(struct file *f, size_t count,
+			loff_t offset, int prot);
+	int (*discard_range)(struct file *f, loff_t count, loff_t offset);
+	int (*memmap)(struct file *f, void **map, int flags);
+	int (*truncate)(struct file *f, loff_t size);
 };
 
 void drop_nlink(struct inode *inode);

-- 
2.47.3




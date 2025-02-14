Delivery-date: Fri, 14 Feb 2025 11:02:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tisWJ-002DjQ-06
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:02:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tisWG-0005tA-QY
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:02:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UQZUc1tbQaMyZ1wLfwbvavbE4LKS7MMEQn9TiNcNCfE=; b=pX5nAzU0FYdVZ45W/tO1uiZptR
	D3vAzoTgihyaqKIR0xqe0b+dLJlampLhQtLa1fqe5TGzvgsW3A6ksmmJisw5kdjTYA6PSWHjyht4e
	MEuwjuKHnQFRosn9gZCVPf0uTCN5oRUJ+XLPyxTv2rt028I3C2uyPLnvNmrmlvgpPFzkfHuRh36Dx
	fjLw5dLSiaq4088CL4jchuPYJYQxux8MulbUUYomxIr/Y5pBzph4IdnIU005u8Rls8TjiQrKnE5X8
	WeClYg8a5Px5zOhhiUZhnZtRoJsDf5NRwDXn2eqGnc78ViqHZnzTQt+IF2SOE3KaAhivTV5OG5clq
	aHLHtlWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tisVl-0000000EQJt-2gK8;
	Fri, 14 Feb 2025 10:01:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisMe-0000000EOcz-35QF
	for barebox@bombadil.infradead.org;
	Fri, 14 Feb 2025 09:52:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=UQZUc1tbQaMyZ1wLfwbvavbE4LKS7MMEQn9TiNcNCfE=; b=MVwXj25DtZkw5lzittGMG1tOfD
	YXnc/s3bfZbUaLGDxu9Do0nP2ypKKwLsIzmpfRIvcDCbE49EabXWkfMkAIcJzqjaHbQtTIPaXc3DK
	3YnGcdPd/ycKto73CsOqDtwPIHecWZGZhVP71B3rCsUtf8VJOibxrGHWukHubiVWhgVdnrUq28BkH
	Dj97gycfWJR/7conjQKi0CNFL5y+bFwCsTPZZGqRpghkI+eQC77zmMBWadWYpZqhU9m28o6dhaNS4
	w8ds656X9fCg4uTj19+2SyPzbTNbeEoDOGVOEVC0IOG3Vdn4Aj3ywPL++74pfbhcz61d9TULrSMtD
	LfEToyiQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisMa-00000001Dro-0p8U
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 09:52:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisMZ-0003bS-HL; Fri, 14 Feb 2025 10:51:59 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisMZ-000ta0-0v;
	Fri, 14 Feb 2025 10:51:59 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisMZ-00BxeG-0d;
	Fri, 14 Feb 2025 10:51:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 10:51:55 +0100
Message-Id: <20250214095157.2850839-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_095200_551452_333E0F35 
X-CRM114-Status: GOOD (  18.96  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] fs: move fs_driver open/close into struct file_operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux places open and close (called release) in struct file_operations
and thereby allows implementing them differently depending on inode type.

So far, not being able to do that in barebox didn't bother us much, but
some kernel file systems depend on the directories to be opened before
they are iterated through and barebox will start supporting that in the
later commit.

This would induce breakage in our existing file systems as open so far
was only called for file open. Let's change that by moving open/close
out of fs_driver and implement them only for operations on regular files
for all the existing file systems.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/bpkfs.c             |  4 ++--
 fs/devfs.c             | 12 ++++++------
 fs/efi.c               |  4 ++--
 fs/efivarfs.c          |  4 ++--
 fs/fat/fat.c           |  4 ++--
 fs/fs.c                | 11 ++++-------
 fs/jffs2/fs.c          | 13 +++++++------
 fs/legacy.c            | 36 ++++++++++++++++++++++++++++++++++++
 fs/nfs.c               | 12 ++++++------
 fs/omap4_usbbootfs.c   |  4 ++--
 fs/pstore/fs.c         |  4 ++--
 fs/ratpfs.c            |  4 ++--
 fs/smhfs.c             |  4 ++--
 fs/squashfs/inode.c    |  2 ++
 fs/squashfs/squashfs.c | 14 ++++++++------
 fs/squashfs/squashfs.h |  3 +++
 fs/tftp.c              | 13 +++++++------
 fs/ubifs/super.c       |  5 ++++-
 fs/ubifs/ubifs.c       |  7 ++-----
 fs/ubifs/ubifs.h       |  3 ++-
 fs/uimagefs.c          |  4 ++--
 include/fs.h           |  4 ++--
 include/linux/fs.h     |  2 ++
 23 files changed, 109 insertions(+), 64 deletions(-)

diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index b12c1a8ac25e..26ce73ce6bcf 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -492,6 +492,8 @@ static int bpkfs_probe(struct device *dev)
 }
 
 static const struct fs_legacy_ops bpkfs_ops = {
+	.open      = bpkfs_open,
+	.close     = bpkfs_close,
 	.opendir   = bpkfs_opendir,
 	.readdir   = bpkfs_readdir,
 	.closedir  = bpkfs_closedir,
@@ -499,8 +501,6 @@ static const struct fs_legacy_ops bpkfs_ops = {
 };
 
 static struct fs_driver bpkfs_driver = {
-	.open      = bpkfs_open,
-	.close     = bpkfs_close,
 	.read      = bpkfs_read,
 	.lseek     = bpkfs_lseek,
 	.legacy_ops = &bpkfs_ops,
diff --git a/fs/devfs.c b/fs/devfs.c
index f6db6f716ad1..1bc64676b24d 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -100,9 +100,8 @@ static int devfs_memmap(struct device *_dev, struct file *f, void **map, int fla
 	return cdev_memmap(cdev, map, flags);
 }
 
-static int devfs_open(struct device *_dev, struct file *f, const char *filename)
+static int devfs_open(struct inode *inode, struct file *f)
 {
-	struct inode *inode = f->f_inode;
 	struct devfs_inode *node = container_of(inode, struct devfs_inode, inode);
 	struct cdev *cdev = node->cdev;
 
@@ -113,7 +112,7 @@ static int devfs_open(struct device *_dev, struct file *f, const char *filename)
 	return cdev_open(cdev, f->f_flags);
 }
 
-static int devfs_close(struct device *_dev, struct file *f)
+static int devfs_close(struct inode *inode, struct file *f)
 {
 	struct cdev *cdev = f->private_data;
 
@@ -176,7 +175,10 @@ static int devfs_iterate(struct file *file, struct dir_context *ctx)
 static const struct inode_operations devfs_file_inode_operations;
 static const struct file_operations devfs_dir_operations;
 static const struct inode_operations devfs_dir_inode_operations;
-static const struct file_operations devfs_file_operations;
+static const struct file_operations devfs_file_operations = {
+	.open = devfs_open,
+	.release = devfs_close,
+};
 
 static int devfs_lookup_revalidate(struct dentry *dentry, unsigned int flags)
 {
@@ -303,8 +305,6 @@ static struct fs_driver devfs_driver = {
 	.read      = devfs_read,
 	.write     = devfs_write,
 	.lseek     = devfs_lseek,
-	.open      = devfs_open,
-	.close     = devfs_close,
 	.flush     = devfs_flush,
 	.ioctl     = devfs_ioctl,
 	.truncate  = devfs_truncate,
diff --git a/fs/efi.c b/fs/efi.c
index ed799e59eaae..40f71ff241d3 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -421,6 +421,8 @@ static void efifs_remove(struct device *dev)
 }
 
 static const struct fs_legacy_ops efifs_ops = {
+	.open      = efifs_open,
+	.close     = efifs_close,
 	.create    = efifs_create,
 	.unlink    = efifs_unlink,
 	.mkdir     = efifs_mkdir,
@@ -434,8 +436,6 @@ static const struct fs_legacy_ops efifs_ops = {
 };
 
 static struct fs_driver efifs_driver = {
-	.open      = efifs_open,
-	.close     = efifs_close,
 	.truncate  = efifs_truncate,
 	.read      = efifs_read,
 	.write     = efifs_write,
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 6a765e0e5003..f5217ae91eda 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -346,6 +346,8 @@ static void efivarfs_remove(struct device *dev)
 }
 
 static const struct fs_legacy_ops efivarfs_ops = {
+	.open      = efivarfs_open,
+	.close     = efivarfs_close,
 	.create    = efivars_create,
 	.unlink    = efivars_unlink,
 	.opendir   = efivarfs_opendir,
@@ -355,8 +357,6 @@ static const struct fs_legacy_ops efivarfs_ops = {
 };
 
 static struct fs_driver efivarfs_driver = {
-	.open      = efivarfs_open,
-	.close     = efivarfs_close,
 	.read      = efivarfs_read,
 	.write     = efivarfs_write,
 	.truncate  = efivarfs_truncate,
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 188408e5a0c9..d5eade165f1a 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -374,6 +374,8 @@ static void fat_remove(struct device *dev)
 }
 
 static const struct fs_legacy_ops fat_ops = {
+	.open      = fat_open,
+	.close     = fat_close,
 	.opendir   = fat_opendir,
 	.readdir   = fat_readdir,
 	.closedir  = fat_closedir,
@@ -387,8 +389,6 @@ static const struct fs_legacy_ops fat_ops = {
 };
 
 static struct fs_driver fat_driver = {
-	.open      = fat_open,
-	.close     = fat_close,
 	.read      = fat_read,
 	.lseek     = fat_lseek,
 #ifdef CONFIG_FS_FAT_WRITE
diff --git a/fs/fs.c b/fs/fs.c
index 689dd77cdbf3..96ca60341ea4 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -747,8 +747,8 @@ int close(int fd)
 		if (fsdrv != ramfs_driver)
 			assert_command_context();
 
-		if (fsdrv->close)
-			ret = fsdrv->close(&f->fsdev->dev, f);
+		if (f->f_inode->i_fop->release)
+			ret = f->f_inode->i_fop->release(f->f_inode, f);
 	}
 
 	put_file(f);
@@ -2660,11 +2660,8 @@ int openat(int dirfd, const char *pathname, int flags)
 	if (flags & O_PATH)
 		return file_to_fd(f);
 
-	if (fsdrv->open) {
-		char *pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
-
-		error = fsdrv->open(&fsdev->dev, f, pathname);
-		free(pathname);
+	if (f->f_inode->i_fop->open) {
+		error = f->f_inode->i_fop->open(inode, f);
 		if (error)
 			goto out;
 	}
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index fda2e86d8135..3514b0fb3b5a 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -37,12 +37,10 @@ static inline void i_gid_write(struct inode *inode, gid_t gid)
 	inode->i_gid = gid;
 }
 
-const struct file_operations jffs2_file_operations;
 const struct inode_operations jffs2_file_inode_operations;
 
-static int jffs2_open(struct device *dev, struct file *file, const char *filename)
+static int jffs2_open(struct inode *inode, struct file *file)
 {
-	struct inode *inode = file->f_inode;
 	struct jffs2_file *jf;
 
 	jf = xzalloc(sizeof(*jf));
@@ -56,7 +54,7 @@ static int jffs2_open(struct device *dev, struct file *file, const char *filenam
 	return 0;
 }
 
-static int jffs2_close(struct device *dev, struct file *f)
+static int jffs2_close(struct inode *inode, struct file *f)
 {
 	struct jffs2_file *jf = f->private_data;
 
@@ -66,6 +64,11 @@ static int jffs2_close(struct device *dev, struct file *f)
 	return 0;
 }
 
+const struct file_operations jffs2_file_operations = {
+	.open = jffs2_open,
+	.release = jffs2_close,
+};
+
 static int jffs2_get_block(struct jffs2_file *jf, unsigned int pos)
 {
 	struct jffs2_sb_info *c = JFFS2_SB_INFO(jf->inode->i_sb);
@@ -456,8 +459,6 @@ static void jffs2_remove(struct device *dev)
 
 
 static struct fs_driver jffs2_driver = {
-	.open = jffs2_open,
-	.close = jffs2_close,
 	.read = jffs2_read,
 	.type = filetype_jffs2,
 	.flags     = 0,
diff --git a/fs/legacy.c b/fs/legacy.c
index c1facfd6d708..f0901ce0d461 100644
--- a/fs/legacy.c
+++ b/fs/legacy.c
@@ -78,6 +78,36 @@ static struct dentry *legacy_lookup(struct inode *dir, struct dentry *dentry,
 	return NULL;
 }
 
+static int legacy_open(struct inode *inode, struct file *file)
+{
+	struct super_block *sb = inode->i_sb;
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
+	const struct fs_legacy_ops *legacy_ops = fsdev->driver->legacy_ops;
+	char *pathname;
+	int error;
+
+	if (!legacy_ops->open)
+		return 0;
+
+	pathname = dpath(file->f_dentry, fsdev->vfsmount.mnt_root);
+	error = legacy_ops->open(&file->fsdev->dev, file, pathname);
+	free(pathname);
+
+	return error;
+}
+
+static int legacy_release(struct inode *inode, struct file *file)
+{
+	struct super_block *sb = inode->i_sb;
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
+	const struct fs_legacy_ops *legacy_ops = fsdev->driver->legacy_ops;
+
+	if (!legacy_ops->close)
+		return 0;
+
+	return legacy_ops->close(&file->fsdev->dev, file);
+}
+
 static int legacy_create(struct inode *dir, struct dentry *dentry, umode_t mode)
 {
 	struct super_block *sb = dir->i_sb;
@@ -280,6 +310,11 @@ static const struct inode_operations legacy_dir_inode_operations = {
 	.symlink = legacy_symlink,
 };
 
+static const struct file_operations legacy_file_operations = {
+	.open = legacy_open,
+	.release = legacy_release,
+};
+
 static const struct file_operations legacy_dir_operations = {
 	.iterate = legacy_iterate,
 };
@@ -306,6 +341,7 @@ static struct inode *legacy_get_inode(struct super_block *sb, const struct inode
 	case S_IFCHR:
 	case S_IFBLK:
 		inode->i_op = &legacy_file_inode_operations;
+		inode->i_fop = &legacy_file_operations;
 		break;
 	case S_IFDIR:
 		inode->i_op = &legacy_dir_inode_operations;
diff --git a/fs/nfs.c b/fs/nfs.c
index fb76c205db26..51bf15196c4e 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1157,9 +1157,8 @@ static const char *nfs_get_link(struct dentry *dentry, struct inode *inode)
 	return inode->i_link;
 }
 
-static int nfs_open(struct device *dev, struct file *file, const char *filename)
+static int nfs_open(struct inode *inode, struct file *file)
 {
-	struct inode *inode = file->f_inode;
 	struct nfs_inode *ninode = nfsi(inode);
 	struct nfs_priv *npriv = ninode->npriv;
 	struct file_priv *priv;
@@ -1178,7 +1177,7 @@ static int nfs_open(struct device *dev, struct file *file, const char *filename)
 	return 0;
 }
 
-static int nfs_close(struct device *dev, struct file *file)
+static int nfs_close(struct inode *inode, struct file *file)
 {
 	struct file_priv *priv = file->private_data;
 
@@ -1319,7 +1318,10 @@ static void nfs_destroy_inode(struct inode *inode)
 static const struct inode_operations nfs_file_inode_operations;
 static const struct file_operations nfs_dir_operations;
 static const struct inode_operations nfs_dir_inode_operations;
-static const struct file_operations nfs_file_operations;
+static const struct file_operations nfs_file_operations = {
+	.open      = nfs_open,
+	.release     = nfs_close,
+};
 static const struct inode_operations nfs_symlink_inode_operations = {
 	.get_link = nfs_get_link,
 };
@@ -1549,8 +1551,6 @@ static void nfs_remove(struct device *dev)
 }
 
 static struct fs_driver nfs_driver = {
-	.open      = nfs_open,
-	.close     = nfs_close,
 	.read      = nfs_read,
 	.lseek     = nfs_lseek,
 	.write     = nfs_write,
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 9d8f4d04f9b8..ad40e9b2c5aa 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -151,13 +151,13 @@ static void omap4_usbbootfs_remove(struct device *dev)
 }
 
 static const struct fs_legacy_ops omap4_usbbootfs_ops = {
+	.open    = omap4_usbbootfs_open,
+	.close   = omap4_usbbootfs_close,
 	.opendir = omap4_usbbootfs_opendir,
 	.stat    = omap4_usbbootfs_stat,
 };
 
 static struct fs_driver omap4_usbbootfs_driver = {
-	.open    = omap4_usbbootfs_open,
-	.close   = omap4_usbbootfs_close,
 	.read    = omap4_usbbootfs_read,
 	.legacy_ops = &omap4_usbbootfs_ops,
 	.flags	 = 0,
diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index 24b0fa5c9d9c..157f24aaaf72 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -275,6 +275,8 @@ static int pstore_probe(struct device *dev)
 }
 
 static const struct fs_legacy_ops pstore_ops = {
+	.open      = pstore_open,
+	.close     = pstore_close,
 	.unlink    = pstore_unlink,
 	.opendir   = pstore_opendir,
 	.readdir   = pstore_readdir,
@@ -283,8 +285,6 @@ static const struct fs_legacy_ops pstore_ops = {
 };
 
 static struct fs_driver pstore_driver = {
-	.open      = pstore_open,
-	.close     = pstore_close,
 	.read      = pstore_read,
 	.lseek     = pstore_lseek,
 	.flags     = FS_DRIVER_NO_DEV,
diff --git a/fs/ratpfs.c b/fs/ratpfs.c
index 766291fff216..5a1f8febd219 100644
--- a/fs/ratpfs.c
+++ b/fs/ratpfs.c
@@ -439,6 +439,8 @@ static void ratpfs_remove(struct device __always_unused *dev)
 }
 
 static const struct fs_legacy_ops ratpfs_ops = {
+	.open      = ratpfs_open,
+	.close     = ratpfs_close,
 	.opendir   = ratpfs_opendir,
 	.readdir   = ratpfs_readdir,
 	.closedir  = ratpfs_closedir,
@@ -450,8 +452,6 @@ static const struct fs_legacy_ops ratpfs_ops = {
 };
 
 static struct fs_driver ratpfs_driver = {
-	.open      = ratpfs_open,
-	.close     = ratpfs_close,
 	.read      = ratpfs_read,
 	.write     = ratpfs_write,
 	.truncate  = ratpfs_truncate,
diff --git a/fs/smhfs.c b/fs/smhfs.c
index ed98cd247bd8..425055d98ba8 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -134,6 +134,8 @@ static void smhfs_remove(struct device __always_unused *dev)
 }
 
 static const struct fs_legacy_ops smhfs_ops = {
+	.open      = smhfs_open,
+	.close     = smhfs_close,
 	.opendir   = smhfs_opendir,
 	.stat      = smhfs_stat,
 	.create    = smhfs_create,
@@ -143,8 +145,6 @@ static const struct fs_legacy_ops smhfs_ops = {
 };
 
 static struct fs_driver smhfs_driver = {
-	.open      = smhfs_open,
-	.close     = smhfs_close,
 	.read      = smhfs_read,
 	.lseek     = smhfs_lseek,
 	.write     = smhfs_write,
diff --git a/fs/squashfs/inode.c b/fs/squashfs/inode.c
index f702f6c0a2d9..5128f01486b0 100644
--- a/fs/squashfs/inode.c
+++ b/fs/squashfs/inode.c
@@ -156,6 +156,7 @@ int squashfs_read_inode(struct inode *inode, long long ino)
 
 		inode->i_size = le32_to_cpu(sqsh_ino->file_size);
 		inode->i_op = &squashfs_inode_ops;
+		inode->i_fop = &squashfs_file_operations;
 		inode->i_mode |= S_IFREG;
 		inode->i_blocks = ((inode->i_size - 1) >> 9) + 1;
 		squashfs_i(inode)->fragment_block = frag_blk;
@@ -198,6 +199,7 @@ int squashfs_read_inode(struct inode *inode, long long ino)
 
 		inode->i_size = le64_to_cpu(sqsh_ino->file_size);
 		inode->i_op = &squashfs_inode_ops;
+		inode->i_fop = &squashfs_file_operations;
 		inode->i_mode |= S_IFREG;
 		inode->i_blocks = (inode->i_size -
 				le64_to_cpu(sqsh_ino->sparse) + 511) >> 9;
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index dc4fbf11c46e..5441271e45f1 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -131,9 +131,8 @@ static void squashfs_remove(struct device *dev)
 	squashfs_put_super(sb);
 }
 
-static int squashfs_open(struct device *dev, struct file *file, const char *filename)
+static int squashfs_open(struct inode *inode, struct file *file)
 {
-	struct inode *inode = file->f_inode;
 	struct squashfs_page *page;
 	int i;
 
@@ -142,7 +141,7 @@ static int squashfs_open(struct device *dev, struct file *file, const char *file
 	for (i = 0; i < 32; i++) {
 		page->buf[i] = malloc(PAGE_CACHE_SIZE);
 		if (page->buf[i] == NULL) {
-			dev_err(dev, "error allocation read buffer\n");
+			dev_err(&file->fsdev->dev, "error allocation read buffer\n");
 			goto error;
 		}
 	}
@@ -164,7 +163,7 @@ static int squashfs_open(struct device *dev, struct file *file, const char *file
 	return -ENOMEM;
 }
 
-static int squashfs_close(struct device *dev, struct file *f)
+static int squashfs_close(struct inode *inode, struct file *f)
 {
 	struct squashfs_page *page = f->private_data;
 	int i;
@@ -178,6 +177,11 @@ static int squashfs_close(struct device *dev, struct file *f)
 	return 0;
 }
 
+const struct file_operations squashfs_file_operations = {
+	.open = squashfs_open,
+	.release = squashfs_close,
+};
+
 static int squashfs_read_buf(struct squashfs_page *page, int pos, void **buf)
 {
 	unsigned int data_block = pos / (32 * PAGE_CACHE_SIZE);
@@ -251,8 +255,6 @@ struct squashfs_dir {
 };
 
 static struct fs_driver squashfs_driver = {
-	.open		= squashfs_open,
-	.close		= squashfs_close,
 	.read		= squashfs_read,
 	.type		= filetype_squashfs,
 	.drv = {
diff --git a/fs/squashfs/squashfs.h b/fs/squashfs/squashfs.h
index 1f2fee59d688..205753c51b97 100644
--- a/fs/squashfs/squashfs.h
+++ b/fs/squashfs/squashfs.h
@@ -58,6 +58,9 @@ extern int squashfs_mount(struct fs_device *fsdev,
 			  int silent);
 extern void squashfs_put_super(struct super_block *sb);
 
+/* squashfs.c */
+extern const struct file_operations squashfs_file_operations;
+
 /* block.c */
 extern int squashfs_read_data(struct super_block *, u64, int, u64 *,
 				struct squashfs_page_actor *);
diff --git a/fs/tftp.c b/fs/tftp.c
index 37b7a64fcdba..81b87dfcf9e0 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -765,11 +765,11 @@ static struct file_priv *tftp_do_open(struct device *dev,
 	return ERR_PTR(ret);
 }
 
-static int tftp_open(struct device *dev, struct file *file, const char *filename)
+static int tftp_open(struct inode *inode, struct file *file)
 {
 	struct file_priv *priv;
 
-	priv = tftp_do_open(dev, file->f_flags, file->f_dentry, false);
+	priv = tftp_do_open(&file->fsdev->dev, file->f_flags, file->f_dentry, false);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
@@ -818,7 +818,7 @@ static int tftp_do_close(struct file_priv *priv)
 	return 0;
 }
 
-static int tftp_close(struct device *dev, struct file *f)
+static int tftp_close(struct inode *inode, struct file *f)
 {
 	struct file_priv *priv = f->private_data;
 
@@ -943,7 +943,10 @@ static int tftp_lseek(struct device *dev, struct file *f, loff_t pos)
 
 static const struct inode_operations tftp_file_inode_operations;
 static const struct inode_operations tftp_dir_inode_operations;
-static const struct file_operations tftp_file_operations;
+static const struct file_operations tftp_file_operations = {
+	.open = tftp_open,
+	.release = tftp_close,
+};
 
 static struct inode *tftp_get_inode(struct super_block *sb, const struct inode *dir,
                                      umode_t mode)
@@ -1108,8 +1111,6 @@ static void tftp_remove(struct device *dev)
 }
 
 static struct fs_driver tftp_driver = {
-	.open      = tftp_open,
-	.close     = tftp_close,
 	.read      = tftp_read,
 	.lseek     = tftp_lseek,
 	.write     = tftp_write,
diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 564ac950ebf2..285c40b4c21c 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -105,7 +105,10 @@ static int validate_inode(struct ubifs_info *c, const struct inode *inode)
 }
 
 const struct inode_operations ubifs_file_inode_operations;
-const struct file_operations ubifs_file_operations;
+const struct file_operations ubifs_file_operations = {
+	.open = ubifs_open,
+	.release = ubifs_close,
+};
 
 struct inode *ubifs_iget(struct super_block *sb, unsigned long inum)
 {
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 63dab3c197c3..ef30ae3554f8 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -340,9 +340,8 @@ struct ubifs_file {
 	struct ubifs_data_node *dn;
 };
 
-static int ubifs_open(struct device *dev, struct file *file, const char *filename)
+int ubifs_open(struct inode *inode, struct file *file)
 {
-	struct inode *inode = file->f_inode;
 	struct ubifs_file *uf;
 
 	uf = xzalloc(sizeof(*uf));
@@ -357,7 +356,7 @@ static int ubifs_open(struct device *dev, struct file *file, const char *filenam
 	return 0;
 }
 
-static int ubifs_close(struct device *dev, struct file *f)
+int ubifs_close(struct inode *inode, struct file *f)
 {
 	struct ubifs_file *uf = f->private_data;
 
@@ -503,8 +502,6 @@ static void ubifs_remove(struct device *dev)
 }
 
 static struct fs_driver ubifs_driver = {
-	.open      = ubifs_open,
-	.close     = ubifs_close,
 	.read      = ubifs_read,
 	.type = filetype_ubifs,
 	.flags     = 0,
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 598614efea1e..4695772355ef 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -2058,8 +2058,9 @@ int ubifs_decompress(const struct ubifs_info *c, const void *buf, int len,
 #include "key.h"
 
 /* barebox specific */
+int ubifs_open(struct inode *inode, struct file *file);
+int ubifs_close(struct inode *inode, struct file *f);
 void ubifs_umount(struct ubifs_info *c);
-/* barebox specific */
 int ubifs_get_super(struct device *dev, struct ubi_volume_desc *ubi,
 		    int silent);
 
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index d7993bf9c78e..7ce1a15e0cbe 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -517,6 +517,8 @@ static int uimagefs_probe(struct device *dev)
 }
 
 static const struct fs_legacy_ops uimagefs_ops = {
+	.open      = uimagefs_open,
+	.close     = uimagefs_close,
 	.opendir   = uimagefs_opendir,
 	.readdir   = uimagefs_readdir,
 	.closedir  = uimagefs_closedir,
@@ -524,8 +526,6 @@ static const struct fs_legacy_ops uimagefs_ops = {
 };
 
 static struct fs_driver uimagefs_driver = {
-	.open      = uimagefs_open,
-	.close     = uimagefs_close,
 	.read      = uimagefs_read,
 	.lseek     = uimagefs_lseek,
 	.ioctl	   = uimagefs_ioctl,
diff --git a/include/fs.h b/include/fs.h
index 622c12a2d238..3b8dd93d41d6 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -48,8 +48,6 @@ struct fs_driver {
 	/* Truncate a file to given size */
 	int (*truncate)(struct device *dev, struct file *f, loff_t size);
 
-	int (*open)(struct device *dev, struct file *f, const char *pathname);
-	int (*close)(struct device *dev, struct file *f);
 	int (*read)(struct device *dev, struct file *f, void *buf, size_t size);
 	int (*write)(struct device *dev, struct file *f, const void *buf,
 		     size_t size);
@@ -67,6 +65,8 @@ struct fs_driver {
 	int (*memmap)(struct device *dev, struct file *f, void **map, int flags);
 
 	const struct fs_legacy_ops {
+		int (*open)(struct device *dev, struct file *f, const char *pathname);
+		int (*close)(struct device *dev, struct file *f);
 		/* create a file. The file is guaranteed to not exist */
 		int (*create)(struct device *dev, const char *pathname, mode_t mode);
 		int (*unlink)(struct device *dev, const char *pathname);
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 7694ed5cbe76..28d3146516a6 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -453,6 +453,8 @@ static inline int dir_emit_dots(struct file *file, struct dir_context *ctx)
 }
 
 struct file_operations {
+	int (*open) (struct inode *, struct file *);
+	int (*release) (struct inode *, struct file *);
 	int (*iterate) (struct file *, struct dir_context *);
 	ssize_t (*read) (struct file *, char __user *, size_t, loff_t *);
 	ssize_t (*write) (struct file *, const char __user *, size_t, loff_t *);
-- 
2.39.5




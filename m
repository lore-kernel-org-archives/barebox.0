Delivery-date: Mon, 06 Jan 2025 10:19:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGZ-00HQfY-0V
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:19:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGV-0003XB-Bw
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:19:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TjY5MVYD+nHVnwCYkpY9GnzdyxZ/v8HZu2tcZYnqx2E=; b=vv3031LWPfBumy7/Zrj79OAIVJ
	6iHr6JM0xxOZhlooraHu+oM4qxLtQiSyI0kiXvgqkNVH9EaEbLFr15xxN3y1+om2WCll8p04B//mr
	QEk7c1LG+n1eVJEdUbfDKAUYM5Gj0oYFOLeOANitQCtJnveM2o64ZLfmZtoXwvdrowViIgB4s/Vby
	E6K/clcUMGOv1NoHRlOooyx95J5it46v1j2/iDZrti2D7rxRqH7/zikZznFunCHWkBsxXmZz5PnJJ
	ruohQQ3djClipEZmUJuFPEX7ynTX02sDKyoT3vGhVfLePr3Uo7AjXiXklfNZF6MtbHKhbt+1RR0xs
	X9uoPT9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjFz-00000000du5-1YxU;
	Mon, 06 Jan 2025 09:18:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjFt-00000000dom-1V4S
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:18:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFs-00030l-3Q; Mon, 06 Jan 2025 10:18:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFr-0078qS-0O;
	Mon, 06 Jan 2025 10:18:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFr-00EPYv-2c;
	Mon, 06 Jan 2025 10:18:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jan 2025 10:18:32 +0100
Message-Id: <20250106091835.3434836-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250106091835.3434836-1-a.fatoum@pengutronix.de>
References: <20250106091835.3434836-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011837_700713_01A8CF72 
X-CRM114-Status: GOOD (  16.30  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] fs: collect legacy file system operation in new struct fs_legacy_ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Legacy file systemd already select FS_LEGACY in Kconfig, but when
writing new file systems, it's confusing to have the legacy ops
interleaved with those still used for modern file systems.

Let's move the legacy ops into a substructure, so it's directly evident
that these shouldn't be implemented by new file systems.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/bpkfs.c           | 12 +++++++----
 fs/efi.c             | 18 ++++++++++-------
 fs/efivarfs.c        | 14 ++++++++-----
 fs/fat/fat.c         | 16 ++++++++++-----
 fs/legacy.c          | 47 ++++++++++++++++++++++++++------------------
 fs/omap4_usbbootfs.c |  8 ++++++--
 fs/pstore/fs.c       | 14 ++++++++-----
 fs/ratpfs.c          | 12 +++++++----
 fs/smhfs.c           | 14 ++++++++-----
 fs/uimagefs.c        | 12 +++++++----
 include/fs.h         | 31 +++++++++++++++--------------
 11 files changed, 123 insertions(+), 75 deletions(-)

diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 7b714de66158..e8b15461ccef 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -491,15 +491,19 @@ static int bpkfs_probe(struct device *dev)
 	return ret;
 }
 
+static const struct fs_legacy_ops bpkfs_ops = {
+	.opendir   = bpkfs_opendir,
+	.readdir   = bpkfs_readdir,
+	.closedir  = bpkfs_closedir,
+	.stat      = bpkfs_stat,
+};
+
 static struct fs_driver bpkfs_driver = {
 	.open      = bpkfs_open,
 	.close     = bpkfs_close,
 	.read      = bpkfs_read,
 	.lseek     = bpkfs_lseek,
-	.opendir   = bpkfs_opendir,
-	.readdir   = bpkfs_readdir,
-	.closedir  = bpkfs_closedir,
-	.stat      = bpkfs_stat,
+	.legacy_ops = &bpkfs_ops,
 	.flags     = 0,
 	.type = filetype_bpk,
 	.drv = {
diff --git a/fs/efi.c b/fs/efi.c
index 2125d54ed632..bc762ebb2f9f 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -420,15 +420,9 @@ static void efifs_remove(struct device *dev)
 	free(dev->priv);
 }
 
-static struct fs_driver efifs_driver = {
+static const struct fs_legacy_ops efifs_ops = {
 	.create    = efifs_create,
 	.unlink    = efifs_unlink,
-	.open      = efifs_open,
-	.close     = efifs_close,
-	.truncate  = efifs_truncate,
-	.read      = efifs_read,
-	.write     = efifs_write,
-	.lseek     = efifs_lseek,
 	.mkdir     = efifs_mkdir,
 	.rmdir     = efifs_rmdir,
 	.opendir   = efifs_opendir,
@@ -437,6 +431,16 @@ static struct fs_driver efifs_driver = {
 	.stat      = efifs_stat,
 	.symlink   = efifs_symlink,
 	.readlink  = efifs_readlink,
+};
+
+static struct fs_driver efifs_driver = {
+	.open      = efifs_open,
+	.close     = efifs_close,
+	.truncate  = efifs_truncate,
+	.read      = efifs_read,
+	.write     = efifs_write,
+	.lseek     = efifs_lseek,
+	.legacy_ops = &efifs_ops,
 	.drv = {
 		.probe  = efifs_probe,
 		.remove = efifs_remove,
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index b19931806140..2030bf05d9ee 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -347,18 +347,22 @@ static void efivarfs_remove(struct device *dev)
 	free(priv);
 }
 
-static struct fs_driver efivarfs_driver = {
+static const struct fs_legacy_ops efivarfs_ops = {
 	.create    = efivars_create,
 	.unlink    = efivars_unlink,
+	.opendir   = efivarfs_opendir,
+	.readdir   = efivarfs_readdir,
+	.closedir  = efivarfs_closedir,
+	.stat      = efivarfs_stat,
+};
+
+static struct fs_driver efivarfs_driver = {
 	.open      = efivarfs_open,
 	.close     = efivarfs_close,
 	.read      = efivarfs_read,
 	.write     = efivarfs_write,
 	.truncate  = efivarfs_truncate,
-	.opendir   = efivarfs_opendir,
-	.readdir   = efivarfs_readdir,
-	.closedir  = efivarfs_closedir,
-	.stat      = efivarfs_stat,
+	.legacy_ops = &efivarfs_ops,
 	.drv = {
 		.probe  = efivarfs_probe,
 		.remove = efivarfs_remove,
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index f3c7f9b8630c..f5ad9f07cda9 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -373,11 +373,7 @@ static void fat_remove(struct device *dev)
 	free(dev->priv);
 }
 
-static struct fs_driver fat_driver = {
-	.open      = fat_open,
-	.close     = fat_close,
-	.read      = fat_read,
-	.lseek     = fat_lseek,
+static const struct fs_legacy_ops fat_ops = {
 	.opendir   = fat_opendir,
 	.readdir   = fat_readdir,
 	.closedir  = fat_closedir,
@@ -387,9 +383,19 @@ static struct fs_driver fat_driver = {
 	.unlink    = fat_unlink,
 	.mkdir     = fat_mkdir,
 	.rmdir     = fat_rmdir,
+#endif
+};
+
+static struct fs_driver fat_driver = {
+	.open      = fat_open,
+	.close     = fat_close,
+	.read      = fat_read,
+	.lseek     = fat_lseek,
+#ifdef CONFIG_FS_FAT_WRITE
 	.write     = fat_write,
 	.truncate  = fat_truncate,
 #endif
+	.legacy_ops = &fat_ops,
 	.type = filetype_fat,
 	.flags     = 0,
 	.drv = {
diff --git a/fs/legacy.c b/fs/legacy.c
index 0d4d4d43ebac..c1facfd6d708 100644
--- a/fs/legacy.c
+++ b/fs/legacy.c
@@ -20,6 +20,7 @@ static int legacy_iterate(struct file *file, struct dir_context *ctx)
 	struct inode *dir = d_inode(dentry);
 	struct super_block *sb = dir->i_sb;
 	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
+	const struct fs_legacy_ops *legacy_ops = fsdev->driver->legacy_ops;
 	struct dir *d;
 	struct dirent *dirent;
 	char *pathname;
@@ -28,19 +29,19 @@ static int legacy_iterate(struct file *file, struct dir_context *ctx)
 
 	pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
 
-	d = fsdev->driver->opendir(&fsdev->dev, pathname);
+	d = legacy_ops->opendir(&fsdev->dev, pathname);
 	if (!d)
 		goto out;
 
 	while (1) {
-		dirent = fsdev->driver->readdir(&fsdev->dev, d);
+		dirent = legacy_ops->readdir(&fsdev->dev, d);
 		if (!dirent)
 			break;
 
 		dir_emit(ctx, dirent->d_name, strlen(dirent->d_name), 0, DT_UNKNOWN);
 	}
 
-	fsdev->driver->closedir(&fsdev->dev, d);
+	legacy_ops->closedir(&fsdev->dev, d);
 out:
 	free(pathname);
 
@@ -52,6 +53,7 @@ static struct dentry *legacy_lookup(struct inode *dir, struct dentry *dentry,
 {
 	struct super_block *sb = dir->i_sb;
 	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
+	const struct fs_legacy_ops *legacy_ops = fsdev->driver->legacy_ops;
 	struct inode *inode;
 	char *pathname;
 	struct stat s;
@@ -61,7 +63,7 @@ static struct dentry *legacy_lookup(struct inode *dir, struct dentry *dentry,
 	if (!pathname)
 		return NULL;
 
-	ret = fsdev->driver->stat(&fsdev->dev, pathname, &s);
+	ret = legacy_ops->stat(&fsdev->dev, pathname, &s);
 	if (!ret) {
 		inode = legacy_get_inode(sb, dir, s.st_mode);
 		if (!inode)
@@ -80,16 +82,17 @@ static int legacy_create(struct inode *dir, struct dentry *dentry, umode_t mode)
 {
 	struct super_block *sb = dir->i_sb;
 	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
+	const struct fs_legacy_ops *legacy_ops = fsdev->driver->legacy_ops;
 	struct inode *inode;
 	char *pathname;
 	int ret;
 
-	if (!fsdev->driver->create)
+	if (!legacy_ops->create)
 		return -EROFS;
 
 	pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
 
-	ret = fsdev->driver->create(&fsdev->dev, pathname, mode | S_IFREG);
+	ret = legacy_ops->create(&fsdev->dev, pathname, mode | S_IFREG);
 
 	free(pathname);
 
@@ -107,16 +110,17 @@ static int legacy_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
 {
 	struct super_block *sb = dir->i_sb;
 	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
+	const struct fs_legacy_ops *legacy_ops = fsdev->driver->legacy_ops;
 	struct inode *inode;
 	char *pathname;
 	int ret;
 
-	if (!fsdev->driver->mkdir)
+	if (!legacy_ops->mkdir)
 		return -EROFS;
 
 	pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
 
-	ret = fsdev->driver->mkdir(&fsdev->dev, pathname);
+	ret = legacy_ops->mkdir(&fsdev->dev, pathname);
 
 	free(pathname);
 
@@ -135,16 +139,17 @@ static int legacy_dir_is_empty(struct dentry *dentry)
 	struct inode *dir = d_inode(dentry);
 	struct super_block *sb = dir->i_sb;
 	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
+	const struct fs_legacy_ops *legacy_ops = fsdev->driver->legacy_ops;
 	struct dir *d;
 	struct dirent *dirent;
 	char *pathname;
 
 	pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
 
-	d = fsdev->driver->opendir(&fsdev->dev, pathname);
-	dirent = fsdev->driver->readdir(&fsdev->dev, d);
+	d = legacy_ops->opendir(&fsdev->dev, pathname);
+	dirent = legacy_ops->readdir(&fsdev->dev, d);
 
-	fsdev->driver->closedir(&fsdev->dev, d);
+	legacy_ops->closedir(&fsdev->dev, d);
 
 	free(pathname);
 
@@ -155,10 +160,11 @@ static int legacy_rmdir(struct inode *dir, struct dentry *dentry)
 {
 	struct super_block *sb = dir->i_sb;
 	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
+	const struct fs_legacy_ops *legacy_ops = fsdev->driver->legacy_ops;
 	char *pathname;
 	int ret;
 
-	if (!fsdev->driver->rmdir)
+	if (!legacy_ops->rmdir)
 		return -EROFS;
 
 	if (!legacy_dir_is_empty(dentry))
@@ -166,7 +172,7 @@ static int legacy_rmdir(struct inode *dir, struct dentry *dentry)
 
 	pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
 
-	ret = fsdev->driver->rmdir(&fsdev->dev, pathname);
+	ret = legacy_ops->rmdir(&fsdev->dev, pathname);
 
 	free(pathname);
 
@@ -184,15 +190,16 @@ static int legacy_unlink(struct inode *dir, struct dentry *dentry)
 {
 	struct super_block *sb = dir->i_sb;
 	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
+	const struct fs_legacy_ops *legacy_ops = fsdev->driver->legacy_ops;
 	char *pathname;
 	int ret;
 
-	if (!fsdev->driver->unlink)
+	if (!legacy_ops->unlink)
 		return -EROFS;
 
 	pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
 
-	ret = fsdev->driver->unlink(&fsdev->dev, pathname);
+	ret = legacy_ops->unlink(&fsdev->dev, pathname);
 
 	free(pathname);
 
@@ -210,16 +217,17 @@ static int legacy_symlink(struct inode *dir, struct dentry *dentry,
 {
 	struct super_block *sb = dir->i_sb;
 	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
+	const struct fs_legacy_ops *legacy_ops = fsdev->driver->legacy_ops;
 	struct inode *inode;
 	char *pathname;
 	int ret;
 
-	if (!fsdev->driver->symlink)
+	if (!legacy_ops->symlink)
 		return -ENOSYS;
 
 	pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
 
-	ret = fsdev->driver->symlink(&fsdev->dev, dest, pathname);
+	ret = legacy_ops->symlink(&fsdev->dev, dest, pathname);
 
 	free(pathname);
 
@@ -238,16 +246,17 @@ static const char *legacy_get_link(struct dentry *dentry, struct inode *inode)
 {
 	struct super_block *sb = inode->i_sb;
 	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
+	const struct fs_legacy_ops *legacy_ops = fsdev->driver->legacy_ops;
 	char *pathname;
 	int ret;
 	char link[PATH_MAX] = {};
 
-	if (!fsdev->driver->readlink)
+	if (!legacy_ops->readlink)
 		return ERR_PTR(-ENOSYS);
 
 	pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
 
-	ret = fsdev->driver->readlink(&fsdev->dev, pathname, link, PATH_MAX - 1);
+	ret = legacy_ops->readlink(&fsdev->dev, pathname, link, PATH_MAX - 1);
 
 	free(pathname);
 
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 30392d119253..1692e3bb3390 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -150,12 +150,16 @@ static void omap4_usbbootfs_remove(struct device *dev)
 {
 }
 
+static const struct fs_legacy_ops omap4_usbbootfs_ops = {
+	.opendir = omap4_usbbootfs_opendir,
+	.stat    = omap4_usbbootfs_stat,
+};
+
 static struct fs_driver omap4_usbbootfs_driver = {
 	.open    = omap4_usbbootfs_open,
 	.close   = omap4_usbbootfs_close,
 	.read    = omap4_usbbootfs_read,
-	.opendir = omap4_usbbootfs_opendir,
-	.stat    = omap4_usbbootfs_stat,
+	.legacy_ops = &omap4_usbbootfs_ops,
 	.flags	 = 0,
 	.drv = {
 		.probe	= omap4_usbbootfs_probe,
diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index f11db91582aa..4e62a7300ba1 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -274,17 +274,21 @@ static int pstore_probe(struct device *dev)
 	return 0;
 }
 
-static struct fs_driver pstore_driver = {
-	.open      = pstore_open,
-	.close     = pstore_close,
-	.read      = pstore_read,
-	.lseek     = pstore_lseek,
+static const struct fs_legacy_ops pstore_ops = {
 	.unlink    = pstore_unlink,
 	.opendir   = pstore_opendir,
 	.readdir   = pstore_readdir,
 	.closedir  = pstore_closedir,
 	.stat      = pstore_stat,
+};
+
+static struct fs_driver pstore_driver = {
+	.open      = pstore_open,
+	.close     = pstore_close,
+	.read      = pstore_read,
+	.lseek     = pstore_lseek,
 	.flags     = FS_DRIVER_NO_DEV,
+	.legacy_ops = &pstore_ops,
 	.type = filetype_uimage,
 	.drv = {
 		.probe  = pstore_probe,
diff --git a/fs/ratpfs.c b/fs/ratpfs.c
index 9e85fc596e87..f1b9ed4ed8f2 100644
--- a/fs/ratpfs.c
+++ b/fs/ratpfs.c
@@ -438,10 +438,7 @@ static void ratpfs_remove(struct device __always_unused *dev)
 	barebox_ratp_fs_mount(NULL);
 }
 
-static struct fs_driver ratpfs_driver = {
-	.open      = ratpfs_open,
-	.close     = ratpfs_close,
-	.read      = ratpfs_read,
+static const struct fs_legacy_ops ratpfs_ops = {
 	.opendir   = ratpfs_opendir,
 	.readdir   = ratpfs_readdir,
 	.closedir  = ratpfs_closedir,
@@ -450,8 +447,15 @@ static struct fs_driver ratpfs_driver = {
 	.unlink    = ratpfs_rm,
 	.mkdir     = ratpfs_mkdir,
 	.rmdir     = ratpfs_rm,
+};
+
+static struct fs_driver ratpfs_driver = {
+	.open      = ratpfs_open,
+	.close     = ratpfs_close,
+	.read      = ratpfs_read,
 	.write     = ratpfs_write,
 	.truncate  = ratpfs_truncate,
+	.legacy_ops = &ratpfs_ops,
 	.flags     = FS_DRIVER_NO_DEV,
 	.drv = {
 		.probe  = ratpfs_probe,
diff --git a/fs/smhfs.c b/fs/smhfs.c
index ce027f203e23..f57d1ff9ced3 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -133,19 +133,23 @@ static void smhfs_remove(struct device __always_unused *dev)
 {
 }
 
-static struct fs_driver smhfs_driver = {
-	.open      = smhfs_open,
-	.close     = smhfs_close,
-	.read      = smhfs_read,
-	.lseek     = smhfs_lseek,
+static const struct fs_legacy_ops smhfs_ops = {
 	.opendir   = smhfs_opendir,
 	.stat      = smhfs_stat,
 	.create    = smhfs_create,
 	.unlink    = smhfs_rm,
 	.mkdir     = smhfs_mkdir,
 	.rmdir     = smhfs_rm,
+};
+
+static struct fs_driver smhfs_driver = {
+	.open      = smhfs_open,
+	.close     = smhfs_close,
+	.read      = smhfs_read,
+	.lseek     = smhfs_lseek,
 	.write     = smhfs_write,
 	.truncate  = smhfs_truncate,
+	.legacy_ops = &smhfs_ops,
 	.flags     = FS_DRIVER_NO_DEV,
 	.drv = {
 		.probe  = smhfs_probe,
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 6913685c0cf6..54541fa7710c 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -516,16 +516,20 @@ static int uimagefs_probe(struct device *dev)
 	return ret;
 }
 
+static const struct fs_legacy_ops uimagefs_ops = {
+	.opendir   = uimagefs_opendir,
+	.readdir   = uimagefs_readdir,
+	.closedir  = uimagefs_closedir,
+	.stat      = uimagefs_stat,
+};
+
 static struct fs_driver uimagefs_driver = {
 	.open      = uimagefs_open,
 	.close     = uimagefs_close,
 	.read      = uimagefs_read,
 	.lseek     = uimagefs_lseek,
-	.opendir   = uimagefs_opendir,
-	.readdir   = uimagefs_readdir,
-	.closedir  = uimagefs_closedir,
-	.stat      = uimagefs_stat,
 	.ioctl	   = uimagefs_ioctl,
+	.legacy_ops = &uimagefs_ops,
 	.flags     = 0,
 	.type = filetype_uimage,
 	.drv = {
diff --git a/include/fs.h b/include/fs.h
index f5950a052923..137eb2d2863e 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -63,10 +63,6 @@ enum erase_type {
 struct fs_driver {
 	int (*probe) (struct device *dev);
 
-	/* create a file. The file is guaranteed to not exist */
-	int (*create)(struct device *dev, const char *pathname, mode_t mode);
-	int (*unlink)(struct device *dev, const char *pathname);
-
 	/* Truncate a file to given size */
 	int (*truncate)(struct device *dev, FILE *f, loff_t size);
 
@@ -88,17 +84,22 @@ struct fs_driver {
 
 	int (*memmap)(struct device *dev, FILE *f, void **map, int flags);
 
-	/* legacy */
-	int (*mkdir)(struct device *dev, const char *pathname);
-	int (*rmdir)(struct device *dev, const char *pathname);
-	int (*symlink)(struct device *dev, const char *pathname,
-		       const char *newpath);
-	int (*readlink)(struct device *dev, const char *pathname, char *name,
-			size_t size);
-	struct dir* (*opendir)(struct device *dev, const char *pathname);
-	struct dirent* (*readdir)(struct device *dev, struct dir *dir);
-	int (*closedir)(struct device *dev, DIR *dir);
-	int (*stat)(struct device *dev, const char *file, struct stat *stat);
+	const struct fs_legacy_ops {
+		/* create a file. The file is guaranteed to not exist */
+		int (*create)(struct device *dev, const char *pathname, mode_t mode);
+		int (*unlink)(struct device *dev, const char *pathname);
+
+		int (*mkdir)(struct device *dev, const char *pathname);
+		int (*rmdir)(struct device *dev, const char *pathname);
+		int (*symlink)(struct device *dev, const char *pathname,
+			       const char *newpath);
+		int (*readlink)(struct device *dev, const char *pathname, char *name,
+				size_t size);
+		struct dir* (*opendir)(struct device *dev, const char *pathname);
+		struct dirent* (*readdir)(struct device *dev, struct dir *dir);
+		int (*closedir)(struct device *dev, DIR *dir);
+		int (*stat)(struct device *dev, const char *file, struct stat *stat);
+	} *legacy_ops;
 
 	struct driver drv;
 
-- 
2.39.5




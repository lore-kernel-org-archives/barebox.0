Delivery-date: Wed, 14 Dec 2022 13:37:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5R0Q-003cqH-Us
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 13:37:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5R0O-0002Hy-TW
	for lore@pengutronix.de; Wed, 14 Dec 2022 13:37:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l84tNihR3YgMKk0/TsTbL6M64n2hWMaAjySdyTRUHv8=; b=S2z4lZaMZec33KJ/vPioGszROH
	YTErWaUcLzukP0ZNhmQ5437o1vCMv71/3AaUqhpPNdCyGTajBCU1qHHpFKSz8onK9QxGeSbvCIXBl
	zBGDuCRQ56BDBEX3Vuc825o9XRdrZigJchfA6tlcN5u7uHVKLhPuNRYOuBysi8+4Usapf/LUoow49
	nd26dKC0Yel6EvyNC4YfBNDpeUMHJOLkq81JJC3aLYGnjVW+R6yBmGEpiUif08Bcj48YXqXzhiYkv
	sfFUeVNqcg2SwGV89o+7dMtyF0ghWohcQHFE5ugrXjbGmD38O3KzMaRZ4NNfaD2hf/T0KG6hj9BlI
	ZB+cMpcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Qyy-00GMMi-7U; Wed, 14 Dec 2022 12:35:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Qyi-00GMEz-Lc
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 12:35:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qyh-0001sR-ED; Wed, 14 Dec 2022 13:35:15 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qyg-004TOF-1R; Wed, 14 Dec 2022 13:35:14 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qyg-000nNL-1o; Wed, 14 Dec 2022 13:35:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 14 Dec 2022 13:35:11 +0100
Message-Id: <20221214123512.189688-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221214123512.189688-1-s.hauer@pengutronix.de>
References: <20221214123512.189688-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_043517_079027_F486D64B 
X-CRM114-Status: GOOD (  17.91  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] Rename struct fs_device_d to fs_device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Remove the meaningless '_d' suffix.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mount.c       |  2 +-
 common/blspec.c        |  2 +-
 fs/bpkfs.c             |  2 +-
 fs/cramfs/cramfs.c     | 11 +++++----
 fs/devfs.c             |  2 +-
 fs/efi.c               |  2 +-
 fs/ext4/ext_barebox.c  |  6 ++---
 fs/fat/fat.c           |  2 +-
 fs/fs.c                | 54 +++++++++++++++++++++---------------------
 fs/jffs2/fs.c          |  4 ++--
 fs/jffs2/os-linux.h    |  4 ++--
 fs/jffs2/super.c       |  2 +-
 fs/legacy.c            | 20 ++++++++--------
 fs/nfs.c               |  4 ++--
 fs/ramfs.c             |  2 +-
 fs/ratpfs.c            |  2 +-
 fs/squashfs/squashfs.c |  6 ++---
 fs/squashfs/squashfs.h |  4 ++--
 fs/squashfs/super.c    |  4 ++--
 fs/tftp.c              |  6 ++---
 fs/ubifs/super.c       |  2 +-
 fs/ubifs/ubifs.c       |  5 ++--
 fs/ubootvarfs.c        |  8 +++----
 fs/uimagefs.c          |  2 +-
 include/fs.h           | 12 +++++-----
 25 files changed, 87 insertions(+), 83 deletions(-)

diff --git a/commands/mount.c b/commands/mount.c
index 966807a1f4..9684edf7c5 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -36,7 +36,7 @@ static int do_mount(int argc, char *argv[])
 	}
 
 	if (argc == optind) {
-		struct fs_device_d *fsdev;
+		struct fs_device *fsdev;
 
 		for_each_fs_device(fsdev) {
 			printf("%s on %s type %s\n",
diff --git a/common/blspec.c b/common/blspec.c
index e023259bac..c9380a306f 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -316,7 +316,7 @@ static int blspec_have_entry(struct bootentries *bootentries, const char *path)
  */
 static const char *nfs_find_mountpath(const char *nfshostpath)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 
 	for_each_fs_device(fsdev) {
 		if (fsdev->backingstore && !strcmp(fsdev->backingstore, nfshostpath))
diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index bab989c4c0..6e22a5ebec 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -353,7 +353,7 @@ static void bpkfs_remove(struct device *dev)
 
 static int bpkfs_probe(struct device *dev)
 {
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct bpkfs_handle *priv;
 	struct bpkfs_header *header;
 	struct bpkfs_data_header data_header;
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 6da8757888..4322bbffd4 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -118,7 +118,8 @@ static int cramfs_read_file(struct inode *inode, unsigned long offset,
 {
 	struct cramfs_inode_info *info = to_cramfs_inode_info(inode);
 	struct cramfs_inode *cramfs_inode = &info->inode;
-	struct fs_device_d *fsdev = container_of(inode->i_sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(inode->i_sb, struct fs_device,
+					       sb);
 	struct cramfs_priv *priv = fsdev->dev.priv;
 	unsigned int blocknr;
 	int outsize = 0;
@@ -274,7 +275,8 @@ static struct dentry *cramfs_lookup(struct inode *dir, struct dentry *dentry,
 	struct cramfs_inode *de;
 	unsigned int offset = 0;
 	struct inode *inode = NULL;
-	struct fs_device_d *fsdev = container_of(dir->i_sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(dir->i_sb, struct fs_device,
+					       sb);
 	struct cramfs_priv *priv = fsdev->dev.priv;
 
 	de = xmalloc(sizeof(*de) + CRAMFS_MAXPATHLEN);
@@ -346,7 +348,8 @@ static int cramfs_iterate(struct file *file, struct dir_context *ctx)
 {
 	struct dentry *dentry = file->f_path.dentry;
 	struct inode *dir = d_inode(dentry);
-	struct fs_device_d *fsdev = container_of(dir->i_sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(dir->i_sb, struct fs_device,
+					       sb);
 	struct cramfs_priv *priv = fsdev->dev.priv;
 	char *buf;
 	unsigned int offset;
@@ -441,7 +444,7 @@ static const struct super_operations cramfs_ops = {
 
 static int cramfs_probe(struct device *dev)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 	struct cramfs_priv *priv;
 	int ret;
 	struct super_block *sb;
diff --git a/fs/devfs.c b/fs/devfs.c
index 08ce8b7bdd..eaee51c375 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -298,7 +298,7 @@ static const struct super_operations devfs_ops = {
 static int devfs_probe(struct device *dev)
 {
 	struct inode *inode;
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct super_block *sb = &fsdev->sb;
 
 	sb->s_op = &devfs_ops;
diff --git a/fs/efi.c b/fs/efi.c
index 4afd139623..12275e4a85 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -451,7 +451,7 @@ static int efifs_readlink(struct device *dev, const char *pathname,
 
 static int efifs_probe(struct device *dev)
 {
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct efifs_priv *priv;
 	efi_status_t efiret;
 	struct efi_file_handle *file;
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 9e91288b8e..e0b5951e86 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -58,7 +58,7 @@ static int ext_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 
 static struct inode *ext_alloc_inode(struct super_block *sb)
 {
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	struct ext_filesystem *fs = fsdev->dev.priv;
 	struct ext2fs_node *node;
 
@@ -209,7 +209,7 @@ struct inode *ext_get_inode(struct super_block *sb, int ino)
 {
 	struct inode *inode;
 	struct ext2fs_node *node;
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	struct ext_filesystem *fs = fsdev->dev.priv;
 	int ret;
 
@@ -251,7 +251,7 @@ struct inode *ext_get_inode(struct super_block *sb, int ino)
 
 static int ext_probe(struct device *dev)
 {
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	int ret;
 	struct ext_filesystem *fs;
 	struct super_block *sb = &fsdev->sb;
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index b9c0a6e7fa..79c7d26ab7 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -342,7 +342,7 @@ static int fat_stat(struct device *dev, const char *filename, struct stat *s)
 
 static int fat_probe(struct device *dev)
 {
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct fat_priv *priv = xzalloc(sizeof(struct fat_priv));
 	int ret;
 
diff --git a/fs/fs.c b/fs/fs.c
index 52751fe37b..0e1e9b0dd0 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -111,12 +111,12 @@ void cdev_print(const struct cdev *cdev)
 }
 EXPORT_SYMBOL(cdev_print);
 
-static struct fs_device_d *get_fsdevice_by_path(const char *path);
+static struct fs_device *get_fsdevice_by_path(const char *path);
 
 void stat_print(const char *filename, const struct stat *st)
 {
 	struct block_device *bdev = NULL;
-	struct fs_device_d *fdev;
+	struct fs_device *fdev;
 	struct cdev *cdev = NULL;
 	const char *type = NULL;
 	char modestr[11];
@@ -222,7 +222,7 @@ static void mntput(struct vfsmount *mnt)
 
 static struct vfsmount *lookup_mnt(struct path *path)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 
 	for_each_fs_device(fsdev) {
 		if (path->dentry == fsdev->vfsmount.mountpoint) {
@@ -240,7 +240,7 @@ static struct vfsmount *lookup_mnt(struct path *path)
  */
 struct cdev *get_cdev_by_mountpath(const char *path)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 
 	fsdev = get_fsdevice_by_path(path);
 
@@ -249,7 +249,7 @@ struct cdev *get_cdev_by_mountpath(const char *path)
 
 char *get_mounted_path(const char *path)
 {
-	struct fs_device_d *fdev;
+	struct fs_device *fdev;
 
 	fdev = get_fsdevice_by_path(path);
 
@@ -733,7 +733,7 @@ static int fs_match(struct device *dev, struct driver *drv)
 
 static int fs_probe(struct device *dev)
 {
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct driver *drv = dev->driver;
 	struct fs_driver_d *fsdrv = container_of(drv, struct fs_driver_d, drv);
 	int ret;
@@ -793,7 +793,7 @@ static void destroy_inode(struct inode *inode)
 
 static void fs_remove(struct device *dev)
 {
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct super_block *sb = &fsdev->sb;
 	struct inode *inode, *tmp;
 	struct path path;
@@ -887,7 +887,7 @@ const char *fs_detect(const char *filename, const char *fsoptions)
 	return NULL;
 }
 
-int fsdev_open_cdev(struct fs_device_d *fsdev)
+int fsdev_open_cdev(struct fs_device *fsdev)
 {
 	unsigned long long offset = 0;
 	struct path path = {};
@@ -925,7 +925,7 @@ static void init_super(struct super_block *sb)
 	INIT_LIST_HEAD(&sb->s_inodes);
 }
 
-static int fsdev_umount(struct fs_device_d *fsdev)
+static int fsdev_umount(struct fs_device *fsdev)
 {
 	int ret;
 
@@ -948,8 +948,8 @@ static int fsdev_umount(struct fs_device_d *fsdev)
  */
 int umount_by_cdev(struct cdev *cdev)
 {
-	struct fs_device_d *fs;
-	struct fs_device_d *fs_tmp;
+	struct fs_device *fs;
+	struct fs_device *fs_tmp;
 	int first_error = 0;
 
 	for_each_fs_device_safe(fs_tmp, fs) {
@@ -1058,7 +1058,7 @@ EXPORT_SYMBOL(fstat);
  */
 const char *cdev_get_mount_path(struct cdev *cdev)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 
 	for_each_fs_device(fsdev) {
 		if (fsdev->cdev && fsdev->cdev == cdev)
@@ -1158,7 +1158,7 @@ void mount_all(void)
 	}
 }
 
-void fsdev_set_linux_rootarg(struct fs_device_d *fsdev, const char *str)
+void fsdev_set_linux_rootarg(struct fs_device *fsdev, const char *str)
 {
 	fsdev->linux_rootarg = xstrdup(str);
 
@@ -1175,7 +1175,7 @@ void fsdev_set_linux_rootarg(struct fs_device_d *fsdev, const char *str)
  */
 char *path_get_linux_rootarg(const char *path)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 	const char *str;
 
 	fsdev = get_fsdevice_by_path(path);
@@ -1199,7 +1199,7 @@ char *path_get_linux_rootarg(const char *path)
  */
 bool __is_tftp_fs(const char *path)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 
 	fsdev = get_fsdevice_by_path(path);
 	if (!fsdev)
@@ -2026,18 +2026,18 @@ static void putname(struct filename *name)
 	free(name);
 }
 
-static struct fs_device_d *get_fsdevice_by_dentry(struct dentry *dentry)
+static struct fs_device *get_fsdevice_by_dentry(struct dentry *dentry)
 {
 	struct super_block *sb;
 
 	sb = dentry->d_sb;
 
-	return container_of(sb, struct fs_device_d, sb);
+	return container_of(sb, struct fs_device, sb);
 }
 
 static bool dentry_is_tftp(struct dentry *dentry)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 
 	fsdev = get_fsdevice_by_dentry(dentry);
 	if (!fsdev)
@@ -2350,9 +2350,9 @@ static int filename_lookup(struct filename *name, unsigned flags,
 	return err;
 }
 
-static struct fs_device_d *get_fsdevice_by_path(const char *pathname)
+static struct fs_device *get_fsdevice_by_path(const char *pathname)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 	struct path path;
 	int ret;
 
@@ -2490,7 +2490,7 @@ EXPORT_SYMBOL(rmdir);
 
 int open(const char *pathname, int flags, ...)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 	struct fs_driver_d *fsdrv;
 	struct super_block *sb;
 	FILE *f;
@@ -2579,7 +2579,7 @@ int open(const char *pathname, int flags, ...)
 	f->size = inode->i_size;
 
 	sb = inode->i_sb;
-	fsdev = container_of(sb, struct fs_device_d, sb);
+	fsdev = container_of(sb, struct fs_device, sb);
 	fsdrv = fsdev->driver;
 
 	f->fsdev = fsdev;
@@ -2870,7 +2870,7 @@ static char *__dpath(struct dentry *dentry, struct dentry *root)
 		return NULL;
 
 	while (IS_ROOT(dentry)) {
-		struct fs_device_d *fsdev;
+		struct fs_device *fsdev;
 
 		for_each_fs_device(fsdev) {
 			if (dentry == fsdev->vfsmount.mnt_root) {
@@ -3068,7 +3068,7 @@ char *cdev_get_linux_rootarg(const struct cdev *cdev)
 int mount(const char *device, const char *fsname, const char *pathname,
 		const char *fsoptions)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 	int ret;
 	struct path path = {};
 
@@ -3105,7 +3105,7 @@ int mount(const char *device, const char *fsname, const char *pathname,
 		goto out;
 	}
 
-	fsdev = xzalloc(sizeof(struct fs_device_d));
+	fsdev = xzalloc(sizeof(struct fs_device));
 	fsdev->backingstore = xstrdup(device);
 	dev_set_name(&fsdev->dev, fsname);
 	fsdev->dev.id = get_free_deviceid(fsdev->dev.name);
@@ -3175,7 +3175,7 @@ EXPORT_SYMBOL(mount);
 
 int umount(const char *pathname)
 {
-	struct fs_device_d *fsdev = NULL, *f;
+	struct fs_device *fsdev = NULL, *f;
 	struct path path = {};
 	int ret;
 
@@ -3413,7 +3413,7 @@ BAREBOX_CMD_END
 
 static struct dentry *debug_follow_mount(struct dentry *dentry)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 	unsigned managed = dentry->d_flags;
 
 	if (managed & DCACHE_MOUNTED) {
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 3a56094b3c..8b526f7b7f 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -403,7 +403,7 @@ static int jffs2_probe_cnt;
 
 static int jffs2_probe(struct device *dev)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 	struct super_block *sb;
 	struct jffs2_sb_info *ctx;
 	int ret;
@@ -450,7 +450,7 @@ err_out:
 
 static void jffs2_remove(struct device *dev)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 	struct super_block *sb;
 
 	fsdev = dev_to_fs_device(dev);
diff --git a/fs/jffs2/os-linux.h b/fs/jffs2/os-linux.h
index 3f6af90582..29915715bb 100644
--- a/fs/jffs2/os-linux.h
+++ b/fs/jffs2/os-linux.h
@@ -17,7 +17,7 @@
 
 struct kstatfs;
 struct kvec;
-struct fs_device_d;
+struct fs_device;
 
 #define JFFS2_BLOCK_SIZE	PAGE_SIZE
 
@@ -180,7 +180,7 @@ struct jffs2_inode_info *jffs2_gc_fetch_inode(struct jffs2_sb_info *c,
 void jffs2_flash_cleanup(struct jffs2_sb_info *c);
 
 /* super.c */
-int jffs2_fill_super(struct fs_device_d *fsdev, int silent);
+int jffs2_fill_super(struct fs_device *fsdev, int silent);
 
 /* writev.c */
 int jffs2_flash_direct_writev(struct jffs2_sb_info *c, const struct kvec *vecs,
diff --git a/fs/jffs2/super.c b/fs/jffs2/super.c
index 6001be8e10..37b3f328c6 100644
--- a/fs/jffs2/super.c
+++ b/fs/jffs2/super.c
@@ -68,7 +68,7 @@ static const struct super_operations jffs2_super_operations =
 /*
  * fill in the superblock
  */
-int jffs2_fill_super(struct fs_device_d *fsdev, int silent)
+int jffs2_fill_super(struct fs_device *fsdev, int silent)
 {
 	struct super_block *sb = &fsdev->sb;
 	struct jffs2_sb_info *c = sb->s_fs_info;
diff --git a/fs/legacy.c b/fs/legacy.c
index 779f546294..7e886e7ae9 100644
--- a/fs/legacy.c
+++ b/fs/legacy.c
@@ -19,7 +19,7 @@ static int legacy_iterate(struct file *file, struct dir_context *ctx)
 	struct dentry *dentry = file->f_path.dentry;
 	struct inode *dir = d_inode(dentry);
 	struct super_block *sb = dir->i_sb;
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	struct dir *d;
 	struct dirent *dirent;
 	char *pathname;
@@ -48,7 +48,7 @@ static struct dentry *legacy_lookup(struct inode *dir, struct dentry *dentry,
 				    unsigned int flags)
 {
 	struct super_block *sb = dir->i_sb;
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	struct inode *inode;
 	char *pathname;
 	struct stat s;
@@ -72,7 +72,7 @@ static struct dentry *legacy_lookup(struct inode *dir, struct dentry *dentry,
 static int legacy_create(struct inode *dir, struct dentry *dentry, umode_t mode)
 {
 	struct super_block *sb = dir->i_sb;
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	struct inode *inode;
 	char *pathname;
 	int ret;
@@ -99,7 +99,7 @@ static int legacy_create(struct inode *dir, struct dentry *dentry, umode_t mode)
 static int legacy_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
 {
 	struct super_block *sb = dir->i_sb;
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	struct inode *inode;
 	char *pathname;
 	int ret;
@@ -127,7 +127,7 @@ static int legacy_dir_is_empty(struct dentry *dentry)
 {
 	struct inode *dir = d_inode(dentry);
 	struct super_block *sb = dir->i_sb;
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	struct dir *d;
 	struct dirent *dirent;
 	char *pathname;
@@ -147,7 +147,7 @@ static int legacy_dir_is_empty(struct dentry *dentry)
 static int legacy_rmdir(struct inode *dir, struct dentry *dentry)
 {
 	struct super_block *sb = dir->i_sb;
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	char *pathname;
 	int ret;
 
@@ -176,7 +176,7 @@ static int legacy_rmdir(struct inode *dir, struct dentry *dentry)
 static int legacy_unlink(struct inode *dir, struct dentry *dentry)
 {
 	struct super_block *sb = dir->i_sb;
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	char *pathname;
 	int ret;
 
@@ -202,7 +202,7 @@ static int legacy_symlink(struct inode *dir, struct dentry *dentry,
 			  const char *dest)
 {
 	struct super_block *sb = dir->i_sb;
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	struct inode *inode;
 	char *pathname;
 	int ret;
@@ -230,7 +230,7 @@ static int legacy_symlink(struct inode *dir, struct dentry *dentry,
 static const char *legacy_get_link(struct dentry *dentry, struct inode *inode)
 {
 	struct super_block *sb = inode->i_sb;
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	char *pathname;
 	int ret;
 	char link[PATH_MAX] = {};
@@ -304,7 +304,7 @@ static struct inode *legacy_get_inode(struct super_block *sb, const struct inode
 	return inode;
 }
 
-int fs_init_legacy(struct fs_device_d *fsdev)
+int fs_init_legacy(struct fs_device *fsdev)
 {
 	struct inode *inode;
 
diff --git a/fs/nfs.c b/fs/nfs.c
index 5a1b7b6531..1b38923ce0 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1386,7 +1386,7 @@ static const struct super_operations nfs_ops = {
 
 static char *rootnfsopts;
 
-static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
+static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device *fsdev)
 {
 	char *str, *tmp;
 	const char *bootargs;
@@ -1421,7 +1421,7 @@ static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
 
 static int nfs_probe(struct device *dev)
 {
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct nfs_priv *npriv = xzalloc(sizeof(struct nfs_priv));
 	struct super_block *sb = &fsdev->sb;
 	char *tmp = xstrdup(fsdev->backingstore);
diff --git a/fs/ramfs.c b/fs/ramfs.c
index 127ff7de82..9e1f22c152 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -435,7 +435,7 @@ static const struct super_operations ramfs_ops = {
 static int ramfs_probe(struct device *dev)
 {
 	struct inode *inode;
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct super_block *sb = &fsdev->sb;
 
 	sb->s_op = &ramfs_ops;
diff --git a/fs/ratpfs.c b/fs/ratpfs.c
index 684bc68f74..8432198ebd 100644
--- a/fs/ratpfs.c
+++ b/fs/ratpfs.c
@@ -401,7 +401,7 @@ static int ratpfs_probe(struct device *dev)
 	struct ratp_bb_pkt *pkt_tx = xzalloc(sizeof(*pkt_tx) + len_tx);
 	struct ratp_bb_pkt *pkt_rx = NULL;
 	int ret;
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 
 	pr_debug("%s\n", __func__);
 
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 96531be0f6..17663d8976 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -41,7 +41,7 @@ char *squashfs_devread(struct squashfs_sb_info *fs, int byte_offset,
 	return buf;
 }
 
-static void squashfs_set_rootarg(struct fs_device_d *fsdev)
+static void squashfs_set_rootarg(struct fs_device *fsdev)
 {
 	struct ubi_volume_desc *ubi_vol;
 	struct ubi_volume_info vi = {};
@@ -92,7 +92,7 @@ static const struct super_operations squashfs_super_ops = {
 
 static int squashfs_probe(struct device *dev)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 	int ret;
 	struct super_block *sb;
 
@@ -122,7 +122,7 @@ err_out:
 
 static void squashfs_remove(struct device *dev)
 {
-	struct fs_device_d *fsdev;
+	struct fs_device *fsdev;
 	struct super_block *sb;
 
 	fsdev = dev_to_fs_device(dev);
diff --git a/fs/squashfs/squashfs.h b/fs/squashfs/squashfs.h
index 9ddcfbf1c2..d22e83dc3c 100644
--- a/fs/squashfs/squashfs.h
+++ b/fs/squashfs/squashfs.h
@@ -54,8 +54,8 @@ static inline struct squashfs_page *squashfs_page(struct page *page)
 
 char *squashfs_devread(struct squashfs_sb_info *fs, int byte_offset,
 		int byte_len);
-extern int squashfs_mount(struct fs_device_d *fsdev,
-		int silent);
+extern int squashfs_mount(struct fs_device *fsdev,
+			  int silent);
 extern void squashfs_put_super(struct super_block *sb);
 
 /* block.c */
diff --git a/fs/squashfs/super.c b/fs/squashfs/super.c
index 35df3a0307..2e34c0e540 100644
--- a/fs/squashfs/super.c
+++ b/fs/squashfs/super.c
@@ -91,7 +91,7 @@ void squashfs_put_super(struct super_block *sb)
 static int squashfs_fill_super(struct super_block *sb, void *data, int silent)
 {
 	struct squashfs_sb_info *msblk;
-	struct fs_device_d *fsdev = (struct fs_device_d *)data;
+	struct fs_device *fsdev = (struct fs_device *)data;
 	struct squashfs_super_block *sblk = NULL;
 	struct inode *root;
 	long long root_inode;
@@ -321,7 +321,7 @@ failed_mount:
 }
 
 
-int squashfs_mount(struct fs_device_d *fsdev, int silent)
+int squashfs_mount(struct fs_device *fsdev, int silent)
 {
 	struct super_block *sb = &fsdev->sb;
 
diff --git a/fs/tftp.c b/fs/tftp.c
index e41b5da4c0..6509d97d7e 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -651,7 +651,7 @@ static struct file_priv *tftp_do_open(struct device *dev,
 				      int accmode, struct dentry *dentry,
 				      bool is_getattr)
 {
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct file_priv *priv;
 	struct tftp_priv *tpriv = dev->priv;
 	int ret;
@@ -980,7 +980,7 @@ static struct dentry *tftp_lookup(struct inode *dir, struct dentry *dentry,
 			    unsigned int flags)
 {
 	struct super_block *sb = dir->i_sb;
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	struct inode *inode;
 	struct file_priv *priv;
 	loff_t filesize;
@@ -1017,7 +1017,7 @@ static const struct super_operations tftp_ops;
 
 static int tftp_probe(struct device *dev)
 {
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct tftp_priv *priv = xzalloc(sizeof(struct tftp_priv));
 	struct super_block *sb = &fsdev->sb;
 	struct inode *inode;
diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 37d5584454..564ac950eb 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -1210,7 +1210,7 @@ late_initcall(ubifs_init);
 int ubifs_get_super(struct device *dev, struct ubi_volume_desc *ubi,
 		    int silent)
 {
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct super_block *sb;
 	struct ubifs_info *c;
 	int err;
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 95d5dbaff8..8a190309aa 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -431,7 +431,8 @@ static int ubifs_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 	return insize;
 }
 
-static void ubifs_set_rootarg(struct ubifs_priv *priv, struct fs_device_d *fsdev)
+static void ubifs_set_rootarg(struct ubifs_priv *priv,
+			      struct fs_device *fsdev)
 {
 	struct ubi_volume_info vi = {};
 	struct ubi_device_info di = {};
@@ -453,7 +454,7 @@ static void ubifs_set_rootarg(struct ubifs_priv *priv, struct fs_device_d *fsdev
 
 static int ubifs_probe(struct device *dev)
 {
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct ubifs_priv *priv = xzalloc(sizeof(struct ubifs_priv));
 	int ret;
 
diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
index b70ad99e07..2559cfd111 100644
--- a/fs/ubootvarfs.c
+++ b/fs/ubootvarfs.c
@@ -148,7 +148,7 @@ static struct dentry *ubootvarfs_lookup(struct inode *dir,
 					unsigned int flags)
 {
 	struct super_block *sb = dir->i_sb;
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	struct ubootvarfs_data *data = fsdev->dev.priv;
 	struct ubootvarfs_var *var;
 	struct inode *inode;
@@ -269,7 +269,7 @@ static int ubootvarfs_create(struct inode *dir, struct dentry *dentry,
 			     umode_t mode)
 {
 	struct super_block *sb = dir->i_sb;
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	struct ubootvarfs_data *data = fsdev->dev.priv;
 	struct inode *inode;
 	struct ubootvarfs_var *var;
@@ -311,7 +311,7 @@ static const struct inode_operations ubootvarfs_dir_inode_operations = {
 static struct inode *ubootvarfs_alloc_inode(struct super_block *sb)
 {
 	struct ubootvarfs_inode *node;
-	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	struct ubootvarfs_data *data = fsdev->dev.priv;
 
 	node = xzalloc(sizeof(*node));
@@ -427,7 +427,7 @@ static int ubootvarfs_probe(struct device *dev)
 {
 	struct inode *inode;
 	struct ubootvarfs_data *data = xzalloc(sizeof(*data));
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct super_block *sb = &fsdev->sb;
 	struct stat s;
 	void *map;
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 0b7fed0f63..4e98d82f38 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -497,7 +497,7 @@ err_out:
 
 static int uimagefs_probe(struct device *dev)
 {
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct uimagefs_handle *priv;
 	int ret = 0;
 
diff --git a/include/fs.h b/include/fs.h
index 3c63158602..e792c9e9ba 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -20,7 +20,7 @@ struct node_d;
 struct stat;
 
 typedef struct filep {
-	struct fs_device_d *fsdev; /* The device this FILE belongs to              */
+	struct fs_device *fsdev; /* The device this FILE belongs to              */
 	char *path;
 	loff_t pos;            /* current position in stream                   */
 #define FILE_SIZE_STREAM	((loff_t) -1)
@@ -86,14 +86,14 @@ struct fs_driver_d {
 	unsigned long flags;
 };
 
-#define dev_to_fs_device(d) container_of(d, struct fs_device_d, dev)
+#define dev_to_fs_device(d) container_of(d, struct fs_device, dev)
 
 extern struct list_head fs_device_list;
 #define for_each_fs_device(f) list_for_each_entry(f, &fs_device_list, list)
 #define for_each_fs_device_safe(tmp, f) list_for_each_entry_safe(f, tmp, &fs_device_list, list)
 extern struct bus_type fs_bus;
 
-struct fs_device_d {
+struct fs_device {
 	char *backingstore; /* the device we are associated with */
 	struct device dev; /* our own device */
 
@@ -164,14 +164,14 @@ void automount_remove(const char *_path);
 int automount_add(const char *path, const char *cmd);
 void automount_print(void);
 
-int fs_init_legacy(struct fs_device_d *fsdev);
-int fsdev_open_cdev(struct fs_device_d *fsdev);
+int fs_init_legacy(struct fs_device *fsdev);
+int fsdev_open_cdev(struct fs_device *fsdev);
 const char *cdev_get_mount_path(struct cdev *cdev);
 const char *cdev_mount_default(struct cdev *cdev, const char *fsoptions);
 const char *cdev_mount(struct cdev *cdev);
 void mount_all(void);
 
-void fsdev_set_linux_rootarg(struct fs_device_d *fsdev, const char *str);
+void fsdev_set_linux_rootarg(struct fs_device *fsdev, const char *str);
 char *path_get_linux_rootarg(const char *path);
 char *cdev_get_linux_rootarg(const struct cdev *cdev);
 
-- 
2.30.2




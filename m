Delivery-date: Tue, 09 Dec 2025 13:52:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCL-009YtK-1D
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 13:52:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCK-0001Hl-E5
	for lore@pengutronix.de; Tue, 09 Dec 2025 13:52:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eT+6jGgk1/iYBWPr1rb5ldDU1k29He3w5uLThz22kq4=; b=LOwIJgnyHudF81zs+ufnb3lIf3
	RH4VXP9e2dbLqrzWaSt83vHCqkI048864POuF1HTqdt8gdLSr570cxkFmfaCjq4e40/rkqjgyj7xs
	lulKpcFPkFrPN23rpJ7jlgVdJHhWPClb2hRUgctfPjntyyTO3jlDYFJB2gpflkTuUzoDYbETf0tTY
	goVjcqpQbXcWhkmKDeMapZwAeHshvprRAiszw0NTjHvuzcIlH/5BYjGjhhki8e91Z4y6Se4xPh/FH
	bFIJnci823TbC7SoLjnIAfE1JJLLlbp1GPeTGTvNWQbo2cAUhlGoETfVpONsTF++qckwWV/nd8EA9
	WbSRSqGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBk-0000000EHLc-1Fb4;
	Tue, 09 Dec 2025 12:51:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBd-0000000EHHQ-27NO
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 12:51:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000ow-HF; Tue, 09 Dec 2025 13:51:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-004muh-0R;
	Tue, 09 Dec 2025 13:51:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000000HSGm-03YW;
	Tue, 09 Dec 2025 13:51:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 09 Dec 2025 13:51:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-devfs-v2-8-62ae16698cff@pengutronix.de>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765284682; l=7109;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=fygH7amfVmrMsEceqTut3mSZMTMd+WktmW/MH/4JuLU=;
 b=mfKD/oK0agGtqnUMpt6WfQMp1C7Vkvrs9GlO3aor/wwUaCaMhqPyMlpHQf7UMY9+s1ko5AUvT
 kveQ8Qr5Q5vBG9jhRc3D+Obojnp44A7HsGMSSSD0ZP+RWj0LyC6oiIk
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_045125_723649_7E2C6431 
X-CRM114-Status: GOOD (  16.49  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/13] fs: retire devfs as filesystem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Switch over to device special files for implementing devfs. With this we
can drop the current devfs implementation as a filesystem driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c |   2 +-
 fs/devfs-core.c  |  35 +++++++++++
 fs/devfs.c       | 174 +------------------------------------------------------
 include/driver.h |   1 +
 4 files changed, 39 insertions(+), 173 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index dfea8394fdee67f53cb608aea882d20151cc9c61..ba3bb79c861aaa9268121ee6868399fcce8ec36c 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -60,7 +60,7 @@ static int mount_root(void)
 	mkdir("/dev", 0);
 	mkdir("/tmp", 0);
 	mkdir("/mnt", 0);
-	mount("none", "devfs", "/dev", NULL);
+	devfs_init();
 
 	if (IS_ENABLED(CONFIG_FS_EFIVARFS) && efi_is_payload()) {
 		mkdir("/efivars", 0);
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 467aa51c858a8bde6ab4e17cc4c838b989606486..3a5667b9f723fa718453bdc58827f4b760f3565a 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -458,6 +458,39 @@ static void cdev_free(struct cdev *cdev)
 	free(cdev);
 }
 
+static bool devfs_initialized;
+
+static void devfs_mknod(struct cdev *cdev)
+{
+	char *path;
+	int ret;
+
+	if (!devfs_initialized)
+		return;
+
+	path = xasprintf("/dev/%s", cdev->name);
+
+	if (cdev->link)
+		ret = symlink(cdev->link->name, path);
+	else
+		ret = mknod(path, S_IFCHR | 0600, cdev->name);
+
+	free(path);
+
+	if (ret)
+		pr_err("Failed to create /dev/%s: %pe\n", cdev->name, ERR_PTR(ret));
+}
+
+void devfs_init(void)
+{
+	struct cdev *cdev;
+
+	devfs_initialized = true;
+
+	for_each_cdev(cdev)
+		devfs_mknod(cdev);
+}
+
 int devfs_create(struct cdev *new)
 {
 	struct cdev *cdev;
@@ -479,6 +512,8 @@ int devfs_create(struct cdev *new)
 	if (new->link)
 		list_add_tail(&new->link_entry, &new->link->links);
 
+	devfs_mknod(new);
+
 	return 0;
 }
 
diff --git a/fs/devfs.c b/fs/devfs.c
index a48c6452697b47cbd3ffc6f993230e7993e565fe..061fbf5d2ffe11671c13ee5bd2cc315c378bb86f 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -29,6 +29,7 @@
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/mtd-abi.h>
 #include <block.h>
+#include <stringlist.h>
 
 struct devfs_inode {
 	struct inode inode;
@@ -143,41 +144,6 @@ static int devfs_truncate(struct file *f, loff_t size)
 	return cdev_truncate(cdev, size);
 }
 
-static struct inode *devfs_alloc_inode(struct super_block *sb)
-{
-	struct devfs_inode *node;
-
-	node = xzalloc(sizeof(*node));
-	if (!node)
-		return NULL;
-
-	return &node->inode;
-}
-
-static void devfs_destroy_inode(struct inode *inode)
-{
-	struct devfs_inode *node = container_of(inode, struct devfs_inode, inode);
-
-	free(node);
-}
-
-static int devfs_iterate(struct file *file, struct dir_context *ctx)
-{
-	struct cdev *cdev;
-
-	dir_emit_dots(file, ctx);
-
-	for_each_cdev(cdev) {
-		dir_emit(ctx, cdev->name, strlen(cdev->name),
-				1 /* FIXME */, DT_REG);
-	}
-
-        return 0;
-}
-
-static const struct inode_operations devfs_file_inode_operations;
-static const struct file_operations devfs_dir_operations;
-static const struct inode_operations devfs_dir_inode_operations;
 static const struct file_operations devfs_file_operations = {
 	.open = devfs_open,
 	.release = devfs_close,
@@ -197,141 +163,5 @@ void init_special_inode(struct inode *inode, umode_t mode, const char *cdevname)
 {
 	inode->i_mode = mode;
 	inode->i_fop = &devfs_file_operations;
-	inode->cdevname = strdup(cdevname);
-}
-
-static int devfs_lookup_revalidate(struct dentry *dentry, unsigned int flags)
-{
-	struct devfs_inode *dinode;
-	struct inode *inode;
-	struct cdev *cdev;
-
-	cdev = cdev_by_name(dentry->name);
-	if (!cdev)
-		return -ENOENT;
-
-	inode = d_inode(dentry);
-	if (!inode)
-		return 0;
-
-	dinode = container_of(inode, struct devfs_inode, inode);
-
-	if (dinode->cdev != cdev)
-		return 0;
-
-	return 1;
+	inode->cdevname = xstrdup(cdevname);
 }
-
-static const struct dentry_operations devfs_dentry_operations = {
-	.d_revalidate = devfs_lookup_revalidate,
-};
-
-static struct inode *devfs_get_inode(struct super_block *sb, const struct inode *dir,
-                                     umode_t mode)
-{
-	struct inode *inode = new_inode(sb);
-
-	if (!inode)
-		return NULL;
-
-	inode->i_ino = get_next_ino();
-	inode->i_mode = mode;
-
-	switch (mode & S_IFMT) {
-	default:
-		return NULL;
-	case S_IFCHR:
-	case S_IFBLK:
-		inode->i_op = &devfs_file_inode_operations;
-		inode->i_fop = &devfs_file_operations;
-		break;
-	case S_IFDIR:
-		inode->i_op = &devfs_dir_inode_operations;
-		inode->i_fop = &devfs_dir_operations;
-		inc_nlink(inode);
-		break;
-	}
-
-	return inode;
-}
-
-static struct dentry *devfs_lookup(struct inode *dir, struct dentry *dentry,
-				   unsigned int flags)
-{
-	struct devfs_inode *dinode;
-	struct inode *inode;
-	struct cdev *cdev;
-	umode_t mode;
-
-	cdev = cdev_by_name(dentry->name);
-	if (!cdev)
-		return ERR_PTR(-ENOENT);
-
-	mode = cdev_get_block_device(cdev) ? S_IFBLK : S_IFCHR;
-
-	inode = devfs_get_inode(dir->i_sb, dir, mode);
-	if (!inode)
-		return ERR_PTR(-ENOMEM);
-
-	if (cdev->ops->write)
-		inode->i_mode |= S_IWUSR;
-	if (cdev->ops->read)
-		inode->i_mode |= S_IRUSR;
-
-	dinode = container_of(inode, struct devfs_inode, inode);
-
-	inode->i_size = cdev->size;
-	dinode->cdev = cdev;
-
-	d_add(dentry, inode);
-
-	return NULL;
-}
-
-static const struct file_operations devfs_dir_operations = {
-	.iterate = devfs_iterate,
-};
-
-static const struct inode_operations devfs_dir_inode_operations =
-{
-	.lookup = devfs_lookup,
-};
-
-static const struct super_operations devfs_ops = {
-	.alloc_inode = devfs_alloc_inode,
-	.destroy_inode = devfs_destroy_inode,
-};
-
-static int devfs_probe(struct device *dev)
-{
-	struct inode *inode;
-	struct fs_device *fsdev = dev_to_fs_device(dev);
-	struct super_block *sb = &fsdev->sb;
-
-	sb->s_op = &devfs_ops;
-	sb->s_d_op = &devfs_dentry_operations;
-
-	inode = devfs_get_inode(sb, NULL, S_IFDIR);
-	sb->s_root = d_make_root(inode);
-
-	return 0;
-}
-
-static void devfs_delete(struct device *dev)
-{
-}
-
-static struct fs_driver devfs_driver = {
-	.drv = {
-		.probe  = devfs_probe,
-		.remove = devfs_delete,
-		.name = "devfs",
-	}
-};
-
-static int devfs_init(void)
-{
-	return register_fs_driver(&devfs_driver);
-}
-
-coredevice_initcall(devfs_init);
diff --git a/include/driver.h b/include/driver.h
index 0c7a75b3d5632fdbde65ac52667e3bdee325dcf2..802917f1c20727272364d094552e4e5b40a6165b 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -459,6 +459,7 @@ static inline const char *cdev_name(struct cdev *cdev)
 	return cdev ? cdev->name : NULL;
 }
 
+void devfs_init(void);
 int devfs_create(struct cdev *);
 int devfs_create_link(struct cdev *, const char *name);
 int devfs_create_link_node(struct cdev *cdev, const char *name,

-- 
2.47.3




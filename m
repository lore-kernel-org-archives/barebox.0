Delivery-date: Fri, 28 Nov 2025 16:05:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP024-005p2W-0R
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 16:05:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP023-0002L4-0Q
	for lore@pengutronix.de; Fri, 28 Nov 2025 16:05:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=it+RG5VasdVYB8VbmP+wRHKFEdIat2JxP3mkbBeOhKo=; b=KOz99K9unv0e29UqF3LB3A/Y5e
	XWw4mDO19UPEhhhqQDoIw9SrYuIa9VkKAem5kqI5eyXDDVFEC/IqqiIZeCeIghgzh8Z1YFSGAwG7C
	cGuZSGKXhOH4BdBtNzI3mcTtSDYPVCrL967aJy1XnSBo8ZAyJzGc6+SXEmi4GU1DEm9SdSwti+OhZ
	fcHMKgHe6pH4vaEfK8C+5UN7p8/kxue+t/pWxUMkKCKENYrOxrr3d3+Nr3n4ikkZ/PtLzyUOvNbom
	jnKbQcLKautuy7HqhGGaYQ9K+KI3bNlbZ941HSbkmlqwJAMQoNTDe1yyQCptc/FeyZ2NyMajnq06i
	Hw4yG+Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP01c-00000000ZJf-2x7J;
	Fri, 28 Nov 2025 15:04:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP01X-00000000ZGg-0WRi
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 15:04:41 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vP01U-00023c-6Q; Fri, 28 Nov 2025 16:04:36 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 15:59:01 +0100
Message-ID: <20251128150434.3842713-3-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128150434.3842713-1-f.pflug@pengutronix.de>
References: <20251127143052.3114915-1-f.pflug@pengutronix.de>
 <20251128150434.3842713-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_070439_473067_A401EF48 
X-CRM114-Status: GOOD (  23.78  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] fs: split rootargs into root and options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The rootargs argument (root=/dev/etc rootwait) can be split into the
root and options parts, which makes it easier to manipulate them both
independently. This changes tries to be as backward compatible as
possible and does not change the behaviour of the get functions, but
introduces new ones to get both items seperatly.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
* Added space arount rst
* moved asterisk next to identifier
* added newline before brace
* made return-type -ENOSYS (not that it really matters, as the function
  will be deleted in the next commit)
* fixed return value for inline wihtout CONFIG_BLOCK

 .../migration-guides/migration-master.rst     | 18 ++++++
 common/block.c                                | 43 +++++++++-----
 fs/9p/vfs_super.c                             |  6 +-
 fs/fs.c                                       | 59 ++++++++++++++-----
 fs/nfs.c                                      |  4 +-
 fs/squashfs/squashfs.c                        | 13 ++--
 fs/ubifs/ubifs.c                              | 12 ++--
 include/block.h                               |  5 ++
 include/bootargs.h                            |  2 +
 include/fs.h                                  |  6 +-
 10 files changed, 120 insertions(+), 48 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-master.rst

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
new file mode 100644
index 0000000000..3b20dc1e4e
--- /dev/null
+++ b/Documentation/migration-guides/migration-master.rst
@@ -0,0 +1,18 @@
+Filesystems
+-----------
+
+``{linux.bootargs}`` is replaced with ``root={linux.bootargs.root} {linux.bootargs.rootopts}``
+
+The variable linux.bootargs has been replaced by the two variables
+linux.bootargs.root and linux.bootargs.rootopts, splitting the previous bootargs
+into three parts. A nonexistent fixed "root=", then the root filesystem and then
+additional optional params for this particular filesystem.
+
+for example the previous::
+
+    linux.bootargs="root=/dev/nfs nfsroot=192.168.1.1:/rootfs"
+
+becomes::
+
+    linux.bootargs.root="/dev/nfs"
+    linux.bootargs.rootopts="nfsroot=192.168.1.1:/rootfs"
diff --git a/common/block.c b/common/block.c
index 07c4d5d504..345adad722 100644
--- a/common/block.c
+++ b/common/block.c
@@ -584,34 +584,45 @@ const char *blk_type_str(enum blk_type type)
 	}
 }
 
-char *cdev_get_linux_rootarg(const struct cdev *partcdev)
+int cdev_get_linux_root_and_opts(const struct cdev *partcdev, char **root, char **rootopts)
 {
+
 	const struct cdev *cdevm;
 	struct block_device *blk;
-	char *rootarg = NULL;
+	char *root_local = NULL;
 
 	if (!partcdev)
-		return NULL;
+		return -EINVAL;
 
 	cdevm = partcdev->master ?: partcdev;
 	blk = cdev_get_block_device(cdevm);
 	if (!blk)
-		return NULL;
+		return -EINVAL;
 
-	if (blk->ops->get_root) {
-		char *root = NULL;
-		root = blk->ops->get_root(blk, partcdev);
-		if (root) {
-			rootarg = basprintf("root=%s", root);
-			free(root);
-		}
-	}
-	if (!rootarg && partcdev->partuuid[0] != 0)
-		rootarg = basprintf("root=PARTUUID=%s", partcdev->partuuid);
+	if (blk->ops->get_root)
+		root_local = blk->ops->get_root(blk, partcdev);
+	if (!root_local && partcdev->partuuid[0] != 0)
+		root_local = xasprintf("PARTUUID=%s", partcdev->partuuid);
+
+	if (!root_local)
+		return -ENODEV;
 
 	if (IS_ENABLED(CONFIG_ROOTWAIT_BOOTARG) && blk->rootwait)
-		rootarg = linux_bootargs_append_rootwait(rootarg);
+		*rootopts = xasprintf("rootwait=%d", linux_rootwait_secs);
 
-	return rootarg;
+	*root = root_local;
+	return 0;
 }
 
+char *cdev_get_linux_rootarg(const struct cdev *partcdev)
+{
+	int err;
+	char *root = NULL;
+	char *rootopts = NULL;
+
+	err = cdev_get_linux_root_and_opts(partcdev, &root, &rootopts);
+	if (err)
+		return NULL;
+
+	return format_root_bootarg("root", root, rootopts);
+}
diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
index 6a451d9ef5..efc9a9193d 100644
--- a/fs/9p/vfs_super.c
+++ b/fs/9p/vfs_super.c
@@ -70,11 +70,11 @@ static void v9fs_set_rootarg(struct v9fs_session_info *v9ses,
 	trans = v9ses->clnt->trans_mod->name;
 	path = v9ses->aname;
 
-	str = basprintf("root=%s rootfstype=9p rootflags=trans=%s,msize=%d,"
+	str = basprintf("rootfstype=9p rootflags=trans=%s,msize=%d,"
 			"cache=loose,uname=%s,dfltuid=0,dfltgid=0,aname=%s",
-			tag, trans, v9ses->clnt->msize, tag, path);
+			trans, v9ses->clnt->msize, tag, path);
 
-	fsdev_set_linux_rootarg(fsdev, str);
+	fsdev_set_linux_root_options(fsdev, tag, str);
 
 	free(str);
 }
diff --git a/fs/fs.c b/fs/fs.c
index 528299e039..0f27879395 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -14,6 +14,7 @@
  *
  */
 
+#include <bootargs.h>
 #include <common.h>
 #include <command.h>
 #include <fs.h>
@@ -1226,12 +1227,34 @@ void mount_all(void)
 	}
 }
 
-void fsdev_set_linux_rootarg(struct fs_device *fsdev, const char *str)
+void fsdev_set_linux_root_options(struct fs_device *fsdev, const char *root, const char *rootopts)
 {
-	fsdev->linux_rootarg = xstrdup(str);
+	fsdev->linux_root = xstrdup(root);
+	fsdev->linux_rootopts = xstrdup(rootopts);
 
-	dev_add_param_fixed(&fsdev->dev, "linux.bootargs",
-			    "%s", fsdev->linux_rootarg);
+	dev_add_param_fixed(&fsdev->dev, "linux.bootargs.root",
+			    "%s", fsdev->linux_root);
+	dev_add_param_fixed(&fsdev->dev, "linux.bootargs.rootopts",
+			    "%s", fsdev->linux_rootopts);
+}
+
+void fsdev_get_linux_root_options(struct fs_device *fsdev, char **root, char **rootopts)
+{
+	if (fsdev) {
+		*root = dev_get_param(&fsdev->dev, "linux.bootargs.root");
+		*rootopts = dev_get_param(&fsdev->dev, "linux.bootargs.rootopts");
+	}
+}
+
+char *format_root_bootarg(const char *root_arg, char *root, char *rootopts) {
+	char *bootarg;
+	if (rootopts)
+		bootarg = xasprintf("%s=%s %s", root_arg, root, rootopts);
+	else
+		bootarg = xasprintf("%s=%s", root_arg, root);
+	free(root);
+	free(rootopts);
+	return bootarg;
 }
 
 /**
@@ -1245,17 +1268,19 @@ void fsdev_set_linux_rootarg(struct fs_device *fsdev, const char *str)
 char *path_get_linux_rootarg(const char *path)
 {
 	struct fs_device *fsdev;
-	const char *str;
+	char *root = NULL;
+	char *rootopts = NULL;
 
 	fsdev = get_fsdevice_by_path(AT_FDCWD, path);
 	if (!fsdev)
-		return ERR_PTR(-EINVAL);
-
-	str = dev_get_param(&fsdev->dev, "linux.bootargs");
-	if (!str)
 		return ERR_PTR(-ENOSYS);
 
-	return xstrdup(str);
+	fsdev_get_linux_root_options(fsdev, &root, &rootopts);
+
+	if (!root)
+		return ERR_PTR(-ENOSYS);
+
+	return format_root_bootarg("root", root, rootopts);
 }
 
 /**
@@ -3249,12 +3274,16 @@ int mount(const char *device, const char *fsname, const char *pathname,
 
 	fsdev->vfsmount.mnt_root = fsdev->sb.s_root;
 
-	if (!fsdev->linux_rootarg) {
-		char *str;
+	if (!fsdev->linux_root) {
+		char *root = NULL;
+		char *rootopts = NULL;
 
-		str = cdev_get_linux_rootarg(fsdev->cdev);
-		if (str)
-			fsdev_set_linux_rootarg(fsdev, str);
+		ret = cdev_get_linux_root_and_opts(fsdev->cdev, &root, &rootopts);
+		if (ret == 0) {
+			fsdev_set_linux_root_options(fsdev, root, rootopts);
+			free(root);
+			free(rootopts);
+		}
 	}
 
 	path_put(&path);
diff --git a/fs/nfs.c b/fs/nfs.c
index 5c2476cd88..0b40c56ff3 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1558,7 +1558,7 @@ static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device *fsdev)
 	char *str, *tmp;
 	const char *bootargs;
 
-	str = basprintf("root=/dev/nfs nfsroot=%pI4:%s%s%s", &npriv->server, npriv->path,
+	str = basprintf("nfsroot=%pI4:%s%s%s", &npriv->server, npriv->path,
 			  rootnfsopts[0] ? "," : "", rootnfsopts);
 
 	/* forward specific mount options on demand */
@@ -1584,7 +1584,7 @@ static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device *fsdev)
 	if (IS_ENABLED(CONFIG_ROOTWAIT_BOOTARG))
 		str = linux_bootargs_append_rootwait(str);
 
-	fsdev_set_linux_rootarg(fsdev, str);
+	fsdev_set_linux_root_options(fsdev, "/dev/nfs", str);
 
 	free(str);
 }
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index e30372627a..365aa1f219 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -46,7 +46,8 @@ static void squashfs_set_rootarg(struct fs_device *fsdev)
 	struct ubi_volume_info vi = {};
 	struct ubi_device_info di = {};
 	struct mtd_info *mtd;
-	char *str;
+	char *root;
+	char *rootopts;
 
 	if (!IS_ENABLED(CONFIG_MTD_UBI))
 		return;
@@ -60,12 +61,14 @@ static void squashfs_set_rootarg(struct fs_device *fsdev)
 	ubi_get_device_info(vi.ubi_num, &di);
 	mtd = di.mtd;
 
-	str = basprintf("root=/dev/ubiblock%d_%d ubi.mtd=%s ubi.block=%d,%d rootfstype=squashfs",
-			vi.ubi_num, vi.vol_id, mtd->cdev.partname, vi.ubi_num, vi.vol_id);
+	root = basprintf("/dev/ubiblock%d_%d", vi.ubi_num, vi.vol_id);
+	rootopts = basprintf("ubi.mtd=%s ubi.block=%d,%d rootfstype=squashfs",
+			mtd->cdev.partname, vi.ubi_num, vi.vol_id);
 
-	fsdev_set_linux_rootarg(fsdev, str);
+	fsdev_set_linux_root_options(fsdev, root, rootopts);
 
-	free(str);
+	free(root);
+	free(rootopts);
 }
 
 static struct inode *squashfs_alloc_inode(struct super_block *sb)
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 37986acbb2..9cc35fa273 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -435,19 +435,21 @@ static void ubifs_set_rootarg(struct ubifs_priv *priv,
 	struct ubi_volume_info vi = {};
 	struct ubi_device_info di = {};
 	struct mtd_info *mtd;
-	char *str;
+	char *root;
+	char *rootopts;
 
 	ubi_get_volume_info(priv->ubi, &vi);
 	ubi_get_device_info(vi.ubi_num, &di);
 
 	mtd = di.mtd;
 
-	str = basprintf("root=ubi0:%s ubi.mtd=%s rootfstype=ubifs",
-			  vi.name, mtd->cdev.partname);
+	root = basprintf("ubi0:%s", vi.name);
+	rootopts = basprintf("ubi.mtd=%s rootfstype=ubifs", mtd->cdev.partname);
 
-	fsdev_set_linux_rootarg(fsdev, str);
+	fsdev_set_linux_root_options(fsdev, root, rootopts);
 
-	free(str);
+	free(root);
+	free(rootopts);
 }
 
 static int ubifs_probe(struct device *dev)
diff --git a/include/block.h b/include/block.h
index b277f590e4..cbab04095d 100644
--- a/include/block.h
+++ b/include/block.h
@@ -85,6 +85,7 @@ static inline int block_flush(struct block_device *blk)
 #ifdef CONFIG_BLOCK
 unsigned file_list_add_blockdevs(struct file_list *files);
 char *cdev_get_linux_rootarg(const struct cdev *partcdev);
+int cdev_get_linux_root_and_opts(const struct cdev *partcdev, char** root, char** rootopts);
 #else
 static inline unsigned file_list_add_blockdevs(struct file_list *files)
 {
@@ -94,6 +95,10 @@ static inline char *cdev_get_linux_rootarg(const struct cdev *partcdev)
 {
 	return NULL;
 }
+static inline int cdev_get_linux_root_and_opts(const struct cdev *partcdev, char** root, char** rootopts)
+{
+	return -ENOSYS;
+}
 #endif
 
 static inline bool cdev_is_block_device(const struct cdev *cdev)
diff --git a/include/bootargs.h b/include/bootargs.h
index 1cf88bd380..6cb61750d1 100644
--- a/include/bootargs.h
+++ b/include/bootargs.h
@@ -26,4 +26,6 @@ static inline char *linux_bootargs_append_rootwait(char *rootarg)
 }
 #endif
 
+char *format_root_bootarg(const char *root_arg, char *root, char *rootopts);
+
 #endif /* __BOOTARGS_H */
diff --git a/include/fs.h b/include/fs.h
index 98c482bbf2..c50437d609 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -90,7 +90,8 @@ struct fs_device {
 	char *path;
 	struct list_head list;
 	char *options;
-	char *linux_rootarg;
+	char *linux_root;
+	char *linux_rootopts;
 
 	struct super_block sb;
 
@@ -159,7 +160,8 @@ const char *cdev_mount_default(struct cdev *cdev, const char *fsoptions);
 const char *cdev_mount(struct cdev *cdev);
 void mount_all(void);
 
-void fsdev_set_linux_rootarg(struct fs_device *fsdev, const char *str);
+void fsdev_set_linux_root_options(struct fs_device *fsdev, const char *root, const char* rootopts);
+void fsdev_get_linux_root_options(struct fs_device *fsdev, char **root, char **rootopts);
 char *path_get_linux_rootarg(const char *path);
 
 static inline const char *devpath_to_name(const char *devpath)
-- 
2.47.3




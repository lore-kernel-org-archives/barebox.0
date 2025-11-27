Delivery-date: Thu, 27 Nov 2025 10:20:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAZ-005NXo-0C
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 10:20:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAX-0003Ww-LE
	for lore@pengutronix.de; Thu, 27 Nov 2025 10:20:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qH3/VztdkGTZzVE03Y4xq6Meuy4PSVPqXSf9aesADNs=; b=f2XYQcHWIOveBDQLE6bloq+cUf
	/533UZzi47uISM7CBczXDtgwVgGH3L2nN9M1WkUmzRQSt9U/UU6Yzq3orDYijMbl0cpxsCt+xDIVs
	U96Ix78wgkiGO3OdpTtWAIYMuHjAl/UIROBLcWMufiD9MprNlB14RCFnW50PlrBUeiiPyDrHO5Vwi
	CwYl+axEPNpVn8uV63ds7meElBe5q6E4L2x/Fe+b/CTBpb/vEsFjTpWKdudaX6W0fcPaOmHULahic
	qBGjr8BqBju1VJuD3DZu1SetwVD2Pp8zr16xMfAorawESOgvphquvYSa8uVLFuRvGNiOQ5KKHAQdA
	VSezVodg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYA6-0000000GGoS-1S9f;
	Thu, 27 Nov 2025 09:19:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYA3-0000000GGkY-3NqM
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 09:19:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00035J-Cl; Thu, 27 Nov 2025 10:19:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9t-002lPB-30;
	Thu, 27 Nov 2025 10:19:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00000000tc4-19N3;
	Thu, 27 Nov 2025 10:19:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2025 10:19:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-devfs-v1-1-4aff12818757@pengutronix.de>
References: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
In-Reply-To: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764235165; l=5210;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=DhTMynZtMSAUzjBPuuRxsoFMcC/kR82JRunzdJGqgKE=;
 b=PCQQOua3KwOncnqOEbEOvFZSyqr0uVHJYY/+vpmn3hN6U/yRyddbAuqCcqhgRvLVRNE8nm2kj
 MftcLeCrJdjBW477Rq/exKlMOToLQNAhkr7CXc1s7iSyQHyBg453Tiy
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_011935_855418_01F785A8 
X-CRM114-Status: GOOD (  14.80  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/10] fs: implement mknod
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This implements mknod for the barebox VFS. Use the cdevname for
connecting a device special node with a cdev. In Linux this is done with
major/minor numbers which shouldn't be necessary for barebox as we do
not intend to mount filesystems which contain device special nodes, but
instead create them in ramfs. If a mounted filesystem contains special
nodes then these won't work with barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs.c         | 13 +++++++++++++
 fs/fs.c            | 35 +++++++++++++++++++++++++++++++++++
 include/fcntl.h    |  6 ++++++
 include/linux/fs.h | 13 +++++++++++++
 4 files changed, 67 insertions(+)

diff --git a/fs/devfs.c b/fs/devfs.c
index 15c7a63d3949a5fa7c5ec15f58bc9f4c53b7852b..be3272be49e66eb843823b3ff664a1565f326790 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -103,6 +103,12 @@ static int devfs_open(struct inode *inode, struct file *f)
 	struct devfs_inode *node = container_of(inode, struct devfs_inode, inode);
 	struct cdev *cdev = node->cdev;
 
+	if (inode->cdevname) {
+		cdev = cdev_by_name(inode->cdevname);
+		if (!cdev)
+			return -ENOENT;
+	}
+
 	f->f_size = cdev->flags & DEVFS_IS_CHARACTER_DEV ?
 			FILE_SIZE_STREAM : cdev->size;
 	f->private_data = cdev;
@@ -188,6 +194,13 @@ static const struct file_operations devfs_file_operations = {
 	.memmap = devfs_memmap,
 };
 
+void init_special_inode(struct inode *inode, umode_t mode, const char *cdevname)
+{
+	inode->i_mode = mode;
+	inode->i_fop = &devfs_file_operations;
+	inode->cdevname = strdup(cdevname);
+}
+
 static int devfs_lookup_revalidate(struct dentry *dentry, unsigned int flags)
 {
 	struct devfs_inode *dinode;
diff --git a/fs/fs.c b/fs/fs.c
index 528299e039d2d73b76c363b7ece32b6255d925f1..bfcfadff7fa76de17c68a0dca4843aa02cb62b6d 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -826,6 +826,8 @@ static int dentry_delete_subtree(struct super_block *sb, struct dentry *parent)
 
 static void destroy_inode(struct inode *inode)
 {
+	free(inode->cdevname);
+
 	if (inode->i_sb->s_op->destroy_inode)
 		inode->i_sb->s_op->destroy_inode(inode);
 	else
@@ -2745,6 +2747,39 @@ int openat(int dirfd, const char *pathname, int flags)
 }
 EXPORT_SYMBOL(openat);
 
+static int vfs_mknod(struct inode *dir, struct dentry *dentry, umode_t mode,
+		     const char *cdevname)
+{
+	int error;
+
+	if (!dir->i_op->mknod)
+		return -EPERM;
+
+	error = dir->i_op->mknod(dir, dentry, mode, cdevname);
+
+	return error;
+}
+
+int mknodat(int dirfd, const char *pathname, mode_t mode, const char *devname)
+{
+	struct dentry *dentry;
+	struct path path;
+	int error;
+
+	dentry = filename_create(dirfd, getname(pathname), &path, 0);
+	if (IS_ERR(dentry)) {
+		error = PTR_ERR(dentry);
+		goto out;
+	}
+
+	error = vfs_mknod(path.dentry->d_inode, dentry, mode, devname);
+
+	dput(dentry);
+	path_put(&path);
+out:
+	return errno_set(error);
+}
+
 int unlinkat(int dirfd, const char *pathname, int flags)
 {
 	int ret;
diff --git a/include/fcntl.h b/include/fcntl.h
index db7926ee25fbe14607063d420697964801cd8321..57c01002cc9290bfae53f3b5be5615eda874c720 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -46,6 +46,8 @@ static inline int openat(int dirfd, const char *pathname, int flags, ...)
 }
 #endif
 
+int mknodat(int dirfd, const char *pathname, mode_t mode, const char *devname);
+
 static inline int open(const char *pathname, int flags, ...)
 {
 	return openat(AT_FDCWD, pathname, flags);
@@ -56,4 +58,8 @@ static inline int creat(const char *pathname, mode_t mode)
 	return open(pathname, O_CREAT | O_WRONLY | O_TRUNC);
 }
 
+static inline int mknod(const char *pathname, mode_t mode, const char *devname)
+{
+	return mknodat(AT_FDCWD, pathname, mode, devname);
+}
 #endif /* __FCNTL_H */
diff --git a/include/linux/fs.h b/include/linux/fs.h
index ed4332c79d496b18b37b120b6008e1e474316e76..f6b8f6a8e08b7e56716005453d6f9c4488ba853f 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -149,6 +149,8 @@ struct inode {
 
 	char			*i_link;
 
+	char			*cdevname;
+
 	void			*i_private; /* fs or device private pointer */
 };
 
@@ -429,6 +431,16 @@ void ihold(struct inode *inode);
 void inc_nlink(struct inode *inode);
 void clear_nlink(struct inode *inode);
 void set_nlink(struct inode *inode, unsigned int nlink);
+#ifdef CONFIG_FS_DEVFS
+void init_special_inode(struct inode *inode, umode_t mode, const char *cdevname);
+#else
+static inline void init_special_inode(struct inode *inode, umode_t mode,
+				      const char *cdevname)
+{
+}
+#endif
+
+struct cdev;
 
 struct inode_operations {
 	struct dentry * (*lookup) (struct inode *,struct dentry *, unsigned int);
@@ -436,6 +448,7 @@ struct inode_operations {
 	const char *(*get_link) (struct dentry *dentry, struct inode *inode);
 
 	int (*create) (struct inode *,struct dentry *, umode_t);
+	int (*mknod) (struct inode *,struct dentry *, umode_t, const char *name);
 	int (*link) (struct dentry *,struct inode *,struct dentry *);
 	int (*unlink) (struct inode *,struct dentry *);
 	int (*symlink) (struct inode *,struct dentry *,const char *);

-- 
2.47.3




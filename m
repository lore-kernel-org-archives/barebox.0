Delivery-date: Tue, 09 Dec 2025 13:52:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCJ-009Ysc-1w
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 13:52:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCG-0001Dq-5Y
	for lore@pengutronix.de; Tue, 09 Dec 2025 13:52:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gctNBWlJKziqZLTwTbT2McTxxdXXzGC6Ce3lyB/yVyI=; b=IHwRTjbf/kWKMCKu9ivbGYkf/S
	zxAqnXFwvMHhB2w3X53qOrtO+4toDruvO2pDhH4F+VkU/k/ONDywbezGQVtdLfskYToCYUC1wxdbQ
	xvupGwcwnFYfx5fFUKb3I3XHftTTA9iYhfOvfDFAXWLOX+PpoKM625ZLaVtOykH08lImyX8RqgDtI
	s0iKFDTjPMXqPvvwWf8vVl0H1XTllF1EL/vPF0zcbAxgdBmhpsz6Wt8+Rfn4Q5pjNmRg4OnMHwYns
	SpTgawJzn3UKs/j9xrUvmqf3xcL+wG6KEME8ktiWy2KhRhCSsuu/VAAMgmNx9dYjjSfBtXtylqKvE
	o+tUUrSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBj-0000000EHKW-0HY9;
	Tue, 09 Dec 2025 12:51:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBd-0000000EHHP-26WL
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 12:51:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000ou-GE; Tue, 09 Dec 2025 13:51:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-004muc-0P;
	Tue, 09 Dec 2025 13:51:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBa-0000000HSGm-49Tk;
	Tue, 09 Dec 2025 13:51:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 09 Dec 2025 13:51:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-devfs-v2-3-62ae16698cff@pengutronix.de>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765284682; l=5210;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=xkPWqy5lGobSn/HQYibhbI/YgTytXnx6EWZXoBYUGJQ=;
 b=CwL5xUY/TCnfSXuxmrl2u5vLlLegWXFe2NSMW2n2slNlkiyzC4PdJJsylu8nCudZVcPhfTr7m
 NimcxvMV8XGAm/BAi3R33t1lbWzSjjir8a02zUVUWrNSd1zmx/G1+/C
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_045125_582484_9C7FD1C6 
X-CRM114-Status: GOOD (  14.76  )
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
Subject: [PATCH v2 03/13] fs: implement mknod
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
index d884726187dd526213f8b51a68a2e0db1bb50e58..45bf89653c7c2e4e9546f1d41f79a6389e0b796d 100644
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
@@ -2747,6 +2749,39 @@ int openat(int dirfd, const char *pathname, int flags)
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




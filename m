Delivery-date: Wed, 03 Jan 2024 20:47:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Co-002V54-2A
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 20:47:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Cm-0004Fs-PU
	for lore@pengutronix.de; Wed, 03 Jan 2024 20:47:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HdcFRUNOccQ3Yj1OUpMF7ecnjiUXMtUjI686ZrbxSLc=; b=nZv70J2vr+dCKc5NcbPZaBF/DH
	IdrjyN6+AnLpi5hfeZEXCTRlGU/p/TxBJNTx3G/vt/K4uuYfAJB5WDBBILjd9n8oaS35g4LFg8HhQ
	MdIRZquEI+Poj3qh2h8UQvzSJMUl/9SGxDcrcrV59xjNyZ8BKDMurtxeMsRUEHt5c+NfU6VIzDLLK
	ogZv5OQXrd3mQKl/zEImFZByy1llY2Suseb8qO4j+7A9ME+hr+7io/f04UE/Wc+dscYwRj5kqzSZ8
	gLoq5LH590LoV2oyTvHSoJpf+UPMi8WaBzsFB1Uvp4wdFYBP+qHR1RKUSQIzt2P35Pj+5WwALNCuD
	khxpJnUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL7BX-00Bw7d-0k;
	Wed, 03 Jan 2024 19:45:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL615-00Bh9Z-20
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=HdcFRUNOccQ3Yj1OUpMF7ecnjiUXMtUjI686ZrbxSLc=; b=gyj/hF8EDDSKggNgDDx7OOv8qr
	eTFwEhkUnkUA7v1vfMOppkUm22d+i3Jwwdiu8oWkMg6lFEy7E/cl+vZ7VkBnPbi4MfDfQvw+E/EfY
	sQmnx9jHcmHS+jlYuoOLTKcaxpK1no/Cu7IzcIWOyMNAYa8Sip/4IIF10PeCqXSu/9+jIakiA8VRX
	RCH2egRxWeoI/cAYw6cmaRR/9pWTI+WomlA2txwJlu9yjavJA1tytiqLTMXlz6ZRpXM3UxKVA7+T7
	iTa56HdgdkCAe9SLXZsDhFQJXZCGnwo/uctBD1Zd2OiyYkntdVETvXghjms6FKEmhEKGBPfN8sUl6
	dCAEHKLA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL610-005eC5-34
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:30:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-0001SW-VC; Wed, 03 Jan 2024 19:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000Ath-IO; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-1i;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:55 +0100
Message-Id: <20240103181312.409668-36-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 035/112] fs: implement openat and friends
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The EFI file system API takes as handle an arbitrary file within the
volume. Directory iteration should happen relative to that file, which
lends itself well to mapping this to openat and friends.

Add support for these to barebox in preparation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/readlink.c |   2 +-
 fs/fs.c             | 140 +++++++++++++++++++++++++-------------------
 include/fcntl.h     |  14 ++++-
 include/fs.h        |   2 +-
 include/sys/stat.h  |   8 ++-
 include/unistd.h    |  35 +++++++++--
 6 files changed, 132 insertions(+), 69 deletions(-)

diff --git a/commands/readlink.c b/commands/readlink.c
index 81ad25c733ab..55f8249028e1 100644
--- a/commands/readlink.c
+++ b/commands/readlink.c
@@ -31,7 +31,7 @@ static int do_readlink(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	if (canonicalize) {
-		char *buf = canonicalize_path(argv[optind]);
+		char *buf = canonicalize_path(AT_FDCWD, argv[optind]);
 		struct stat s;
 
 		if (!buf)
diff --git a/fs/fs.c b/fs/fs.c
index bf527f1b2d9b..6b71440318af 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -130,10 +130,11 @@ void cdev_print(const struct cdev *cdev)
 }
 EXPORT_SYMBOL(cdev_print);
 
-static struct fs_device *get_fsdevice_by_path(const char *path);
+static struct fs_device *get_fsdevice_by_path(int dirfd, const char *path);
 
 void stat_print(const char *filename, const struct stat *st)
 {
+	int dirfd = AT_FDCWD;
 	struct block_device *bdev = NULL;
 	struct fs_device *fdev;
 	struct cdev *cdev = NULL;
@@ -156,7 +157,7 @@ void stat_print(const char *filename, const struct stat *st)
 	if (st->st_mode & S_IFCHR) {
 		char *path;
 
-		path = canonicalize_path(filename);
+		path = canonicalize_path(dirfd, filename);
 		if (path) {
 			const char *devicefile = devpath_to_name(path);
 			struct cdev *lcdev;
@@ -198,7 +199,7 @@ void stat_print(const char *filename, const struct stat *st)
 	if (type)
 		printf("  %s%s", typeprefix, type);
 
-	fdev = get_fsdevice_by_path(filename);
+	fdev = get_fsdevice_by_path(dirfd, filename);
 
 	printf("\nDevice: %s\tInode: %lu\n",
 	       fdev ? dev_name(&fdev->dev) : "<unknown>",
@@ -235,7 +236,7 @@ postcore_initcall(init_fs);
 
 struct filename;
 
-static int filename_lookup(struct filename *name, unsigned flags,
+static int filename_lookup(int dirfd, struct filename *name, unsigned flags,
 			   struct path *path);;
 static struct filename *getname(const char *filename);
 static void path_put(const struct path *path);
@@ -282,7 +283,7 @@ struct cdev *get_cdev_by_mountpath(const char *path)
 {
 	struct fs_device *fsdev;
 
-	fsdev = get_fsdevice_by_path(path);
+	fsdev = get_fsdevice_by_path(AT_FDCWD, path);
 	if (!fsdev)
 		return NULL;
 
@@ -293,7 +294,7 @@ char *get_mounted_path(const char *path)
 {
 	struct fs_device *fdev;
 
-	fdev = get_fsdevice_by_path(path);
+	fdev = get_fsdevice_by_path(AT_FDCWD, path);
 	if (!fdev)
 		return NULL;
 
@@ -828,7 +829,7 @@ static void fs_remove(struct device *dev)
 	if (fsdev->loop && fsdev->cdev) {
 		cdev_remove_loop(fsdev->cdev);
 
-		ret = filename_lookup(getname(fsdev->backingstore),
+		ret = filename_lookup(AT_FDCWD, getname(fsdev->backingstore),
 				      LOOKUP_FOLLOW, &path);
 		if (!ret) {
 			mntput(path.mnt);
@@ -912,7 +913,7 @@ int fsdev_open_cdev(struct fs_device *fsdev)
 	parseopt_b(fsdev->options, "loop", &fsdev->loop);
 	parseopt_llu_suffix(fsdev->options, "offset", &offset);
 	if (fsdev->loop) {
-		ret = filename_lookup(getname(fsdev->backingstore),
+		ret = filename_lookup(AT_FDCWD, getname(fsdev->backingstore),
 				      LOOKUP_FOLLOW, &path);
 		if (ret)
 			return ret;
@@ -1194,7 +1195,7 @@ char *path_get_linux_rootarg(const char *path)
 	struct fs_device *fsdev;
 	const char *str;
 
-	fsdev = get_fsdevice_by_path(path);
+	fsdev = get_fsdevice_by_path(AT_FDCWD, path);
 	if (!fsdev)
 		return ERR_PTR(-EINVAL);
 
@@ -1217,7 +1218,7 @@ bool __is_tftp_fs(const char *path)
 {
 	struct fs_device *fsdev;
 
-	fsdev = get_fsdevice_by_path(path);
+	fsdev = get_fsdevice_by_path(AT_FDCWD, path);
 	if (!fsdev)
 		return false;
 
@@ -2156,9 +2157,10 @@ static int link_path_walk(const char *name, struct nameidata *nd)
 	}
 }
 
-static const char *path_init(struct nameidata *nd, unsigned flags)
+static const char *path_init(int dirfd, struct nameidata *nd, unsigned flags)
 {
 	const char *s = nd->name->name;
+	FILE *f = NULL;
 
 	nd->last_type = LAST_ROOT; /* if there are only slashes... */
 	nd->flags = flags | LOOKUP_JUMPED | LOOKUP_PARENT;
@@ -2167,12 +2169,23 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 	nd->path.mnt = NULL;
 	nd->path.dentry = NULL;
 
+	/* We don't check for error here yet, as POSIX allows checking
+	 * whether paths are absolute with openat(-1, path, O_PATH)
+	 */
+	if (dirfd != AT_FDCWD)
+		f = fd_to_file(dirfd);
+
 	if (*s == '/') {
 		get_root(&nd->path);
-		return s;
-	} else {
+	} else if (dirfd == AT_FDCWD) {
 		get_pwd(&nd->path);
-		return s;
+	} else {
+		if (IS_ERR(f))
+			return ERR_CAST(f);
+
+		nd->path.mnt = &f->fsdev->vfsmount;
+		nd->path.dentry = f->dentry;
+		follow_mount(&nd->path);
 	}
 
 	return s;
@@ -2210,10 +2223,10 @@ static void terminate_walk(struct nameidata *nd)
 }
 
 /* Returns 0 and nd will be valid on success; Retuns error, otherwise. */
-static int path_parentat(struct nameidata *nd, unsigned flags,
+static int path_parentat(int dirfd, struct nameidata *nd, unsigned flags,
 				struct path *parent)
 {
-	const char *s = path_init(nd, flags);
+	const char *s = path_init(dirfd, nd, flags);
 	int err;
 
 	if (IS_ERR(s))
@@ -2229,7 +2242,8 @@ static int path_parentat(struct nameidata *nd, unsigned flags,
 	return err;
 }
 
-static struct filename *filename_parentat(struct filename *name,
+static struct filename *filename_parentat(int dirfd,
+				struct filename *name,
 				unsigned int flags, struct path *parent,
 				struct qstr *last, int *type)
 {
@@ -2241,7 +2255,7 @@ static struct filename *filename_parentat(struct filename *name,
 
 	set_nameidata(&nd, name);
 
-	retval = path_parentat(&nd, flags, parent);
+	retval = path_parentat(dirfd, &nd, flags, parent);
 	if (likely(!retval)) {
 		*last = nd.last;
 		*type = nd.last_type;
@@ -2253,7 +2267,7 @@ static struct filename *filename_parentat(struct filename *name,
 	return name;
 }
 
-static struct dentry *filename_create(struct filename *name,
+static struct dentry *filename_create(int dirfd, struct filename *name,
 				struct path *path, unsigned int lookup_flags)
 {
 	struct dentry *dentry = ERR_PTR(-EEXIST);
@@ -2262,7 +2276,7 @@ static struct dentry *filename_create(struct filename *name,
 	int error;
 	bool is_dir = (lookup_flags & LOOKUP_DIRECTORY);
 
-	name = filename_parentat(name, 0, path, &last, &type);
+	name = filename_parentat(dirfd, name, 0, path, &last, &type);
 	if (IS_ERR(name))
 		return ERR_CAST(name);
 
@@ -2306,7 +2320,7 @@ static struct dentry *filename_create(struct filename *name,
 	return dentry;
 }
 
-static int filename_lookup(struct filename *name, unsigned flags,
+static int filename_lookup(int dirfd, struct filename *name, unsigned flags,
 			   struct path *path)
 {
 	int err;
@@ -2318,7 +2332,7 @@ static int filename_lookup(struct filename *name, unsigned flags,
 
 	set_nameidata(&nd, name);
 
-	s = path_init(&nd, flags);
+	s = path_init(dirfd, &nd, flags);
 	if (IS_ERR(s))
 		return PTR_ERR(s);
 
@@ -2345,13 +2359,13 @@ static int filename_lookup(struct filename *name, unsigned flags,
 	return err;
 }
 
-static struct fs_device *get_fsdevice_by_path(const char *pathname)
+static struct fs_device *get_fsdevice_by_path(int dirfd, const char *pathname)
 {
 	struct fs_device *fsdev;
 	struct path path;
 	int ret;
 
-	ret = filename_lookup(getname(pathname), 0, &path);
+	ret = filename_lookup(dirfd, getname(pathname), 0, &path);
 	if (ret)
 		return NULL;
 
@@ -2403,14 +2417,14 @@ static int vfs_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
 /* libfs.c */
 
 /* ---------------------------------------------------------------- */
-int mkdir (const char *pathname, mode_t mode)
+int mkdirat(int dirfd, const char *pathname, mode_t mode)
 {
 	struct dentry *dentry;
 	struct path path;
 	int error;
 	unsigned int lookup_flags = LOOKUP_DIRECTORY;
 
-	dentry = filename_create(getname(pathname), &path, lookup_flags);
+	dentry = filename_create(dirfd, getname(pathname), &path, lookup_flags);
 	if (IS_ERR(dentry)) {
 		error = PTR_ERR(dentry);
 		goto out;
@@ -2423,9 +2437,9 @@ int mkdir (const char *pathname, mode_t mode)
 out:
 	return errno_set(error);
 }
-EXPORT_SYMBOL(mkdir);
+EXPORT_SYMBOL(mkdirat);
 
-int rmdir (const char *pathname)
+static int rmdirat(int dirfd, const char *pathname)
 {
 	int error = 0;
 	struct filename *name;
@@ -2434,7 +2448,7 @@ int rmdir (const char *pathname)
 	struct qstr last;
 	int type;
 
-	name = filename_parentat(getname(pathname), 0,
+	name = filename_parentat(dirfd, getname(pathname), 0,
 				&path, &last, &type);
 	if (IS_ERR(name))
 		return PTR_ERR(name);
@@ -2475,9 +2489,8 @@ int rmdir (const char *pathname)
 
 	return errno_set(error);
 }
-EXPORT_SYMBOL(rmdir);
 
-int open(const char *pathname, int flags, ...)
+int openat(int dirfd, const char *pathname, int flags)
 {
 	struct fs_device *fsdev;
 	struct fs_driver *fsdrv;
@@ -2491,7 +2504,7 @@ int open(const char *pathname, int flags, ...)
 	struct filename *filename;
 
 	if (flags & O_TMPFILE) {
-		fsdev = get_fsdevice_by_path(pathname);
+		fsdev = get_fsdevice_by_path(dirfd, pathname);
 		if (!fsdev) {
 			errno = ENOENT;
 			return -errno;
@@ -2525,7 +2538,7 @@ int open(const char *pathname, int flags, ...)
 
 	set_nameidata(&nd, filename);
 
-	s = path_init(&nd, LOOKUP_FOLLOW);
+	s = path_init(dirfd, &nd, LOOKUP_FOLLOW);
 	if (IS_ERR(s))
 		return PTR_ERR(s);
 
@@ -2592,7 +2605,7 @@ int open(const char *pathname, int flags, ...)
 		goto out1;
 	}
 
-	f->path = xstrdup(pathname);
+	f->path = dpath(dentry, d_root);
 	f->dentry = dentry;
 	f->f_inode = iget(inode);
 	f->flags = flags;
@@ -2631,7 +2644,7 @@ int open(const char *pathname, int flags, ...)
 out1:
 	return errno_set(error);
 }
-EXPORT_SYMBOL(open);
+EXPORT_SYMBOL(openat);
 
 static const char *fd_getpath(int fd)
 {
@@ -2647,14 +2660,19 @@ static const char *fd_getpath(int fd)
 	return f->path;
 }
 
-int unlink(const char *pathname)
+int unlinkat(int dirfd, const char *pathname, int flags)
 {
 	int ret;
 	struct dentry *dentry;
 	struct inode *inode;
 	struct path path;
 
-	ret = filename_lookup(getname(pathname), 0, &path);
+	if (flags == AT_REMOVEDIR)
+		return rmdirat(dirfd, pathname);
+	if (flags)
+		return -EINVAL;
+
+	ret = filename_lookup(dirfd, getname(pathname), 0, &path);
 	if (ret)
 		goto out;
 
@@ -2683,7 +2701,7 @@ int unlink(const char *pathname)
 out:
 	return errno_set(ret);
 }
-EXPORT_SYMBOL(unlink);
+EXPORT_SYMBOL(unlinkat);
 
 static int vfs_symlink(struct inode *dir, struct dentry *dentry, const char *oldname)
 {
@@ -2700,7 +2718,7 @@ int symlink(const char *pathname, const char *newpath)
 	int error;
 	unsigned int lookup_flags = LOOKUP_DIRECTORY;
 
-	dentry = filename_create(getname(newpath), &path, lookup_flags);
+	dentry = filename_create(AT_FDCWD, getname(newpath), &path, lookup_flags);
 	if (IS_ERR(dentry)) {
 		error = PTR_ERR(dentry);
 		goto out;
@@ -2757,7 +2775,7 @@ DIR *opendir(const char *pathname)
 	DIR *d;
 	struct path path = {};
 
-	ret = filename_lookup(getname(pathname),
+	ret = filename_lookup(AT_FDCWD, getname(pathname),
 			      LOOKUP_FOLLOW | LOOKUP_DIRECTORY, &path);
 	if (ret)
 		goto out;
@@ -2844,7 +2862,7 @@ int rewinddir(DIR *dir)
 }
 EXPORT_SYMBOL(rewinddir);
 
-int readlink(const char *pathname, char *buf, size_t bufsiz)
+int readlinkat(int dirfd, const char *pathname, char *buf, size_t bufsiz)
 {
 	int ret;
 	struct dentry *dentry;
@@ -2852,7 +2870,7 @@ int readlink(const char *pathname, char *buf, size_t bufsiz)
 	const char *link;
 	struct path path = {};
 
-	ret = filename_lookup(getname(pathname), 0, &path);
+	ret = filename_lookup(dirfd, getname(pathname), 0, &path);
 	if (ret)
 		goto out;
 
@@ -2884,16 +2902,16 @@ int readlink(const char *pathname, char *buf, size_t bufsiz)
 out:
 	return errno_set(ret);
 }
-EXPORT_SYMBOL(readlink);
+EXPORT_SYMBOL(readlinkat);
 
-static int stat_filename(const char *filename, struct stat *s, unsigned int flags)
+static int stat_filename(int dirfd, const char *filename, struct stat *s, unsigned int flags)
 {
 	int ret;
 	struct dentry *dentry;
 	struct inode *inode;
 	struct path path = {};
 
-	ret = filename_lookup(getname(filename), flags, &path);
+	ret = filename_lookup(dirfd, getname(filename), flags, &path);
 	if (ret)
 		goto out;
 
@@ -2915,17 +2933,17 @@ static int stat_filename(const char *filename, struct stat *s, unsigned int flag
 	return errno_set(ret);
 }
 
-int stat(const char *filename, struct stat *s)
+int statat(int dirfd, const char *filename, struct stat *s)
 {
-	return stat_filename(filename, s, LOOKUP_FOLLOW);
+	return stat_filename(dirfd, filename, s, LOOKUP_FOLLOW);
 }
-EXPORT_SYMBOL(stat);
+EXPORT_SYMBOL(statat);
 
-int lstat(const char *filename, struct stat *s)
+int lstatat(int dirfd, const char *filename, struct stat *s)
 {
-	return stat_filename(filename, s, 0);
+	return stat_filename(dirfd, filename, s, 0);
 }
-EXPORT_SYMBOL(lstat);
+EXPORT_SYMBOL(lstatat);
 
 static char *__dpath(struct dentry *dentry, struct dentry *root)
 {
@@ -2981,6 +2999,8 @@ char *dpath(struct dentry *dentry, struct dentry *root)
 
 /**
  * canonicalize_path - resolve links in path
+ *
+ * @dirfd: directory file descriptor to look up relative to
  * @pathname: The input path
  *
  * This function resolves all links in @pathname and returns
@@ -2988,13 +3008,13 @@ char *dpath(struct dentry *dentry, struct dentry *root)
  *
  * Return: Path with links resolved. Allocated, must be freed after use.
  */
-char *canonicalize_path(const char *pathname)
+char *canonicalize_path(int dirfd, const char *pathname)
 {
 	char *res = NULL;
 	struct path path;
 	int ret;
 
-	ret = filename_lookup(getname(pathname), LOOKUP_FOLLOW, &path);
+	ret = filename_lookup(dirfd, getname(pathname), LOOKUP_FOLLOW, &path);
 	if (ret)
 		goto out;
 
@@ -3016,7 +3036,7 @@ int chdir(const char *pathname)
 	struct path path;
 	int ret;
 
-	ret = filename_lookup(getname(pathname), LOOKUP_FOLLOW | LOOKUP_DIRECTORY, &path);
+	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW | LOOKUP_DIRECTORY, &path);
 	if (ret)
 		goto out;
 
@@ -3135,7 +3155,7 @@ int mount(const char *device, const char *fsname, const char *pathname,
 	struct path path = {};
 
 	if (d_root) {
-		ret = filename_lookup(getname(pathname), LOOKUP_FOLLOW, &path);
+		ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
 		if (ret)
 			goto out;
 
@@ -3242,7 +3262,7 @@ int umount(const char *pathname)
 	struct path path = {};
 	int ret;
 
-	ret = filename_lookup(getname(pathname), LOOKUP_FOLLOW, &path);
+	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
 	if (ret)
 		return ret;
 
@@ -3313,7 +3333,7 @@ void automount_remove(const char *pathname)
 	struct path path;
 	int ret;
 
-	ret = filename_lookup(getname(pathname), LOOKUP_FOLLOW, &path);
+	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
 	if (ret)
 		return;
 
@@ -3329,7 +3349,7 @@ int automount_add(const char *pathname, const char *cmd)
 	struct path path;
 	int ret;
 
-	ret = filename_lookup(getname(pathname), LOOKUP_FOLLOW, &path);
+	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
 	if (ret)
 		return ret;
 
@@ -3441,14 +3461,14 @@ static int do_lookup_dentry(int argc, char *argv[])
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
-	ret = filename_lookup(getname(argv[1]), 0, &path);
+	ret = filename_lookup(AT_FDCWD, getname(argv[1]), 0, &path);
 	if (ret) {
 		printf("Cannot lookup path \"%s\": %s\n",
 		       argv[1], strerror(-ret));
 		return 1;
 	}
 
-	canon = canonicalize_path(argv[1]);
+	canon = canonicalize_path(AT_FDCWD, argv[1]);
 
 	printf("path \"%s\":\n", argv[1]);
 	printf("dentry: 0x%p\n", path.dentry);
diff --git a/include/fcntl.h b/include/fcntl.h
index 06289abc4376..a6ed50b92eaf 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -4,6 +4,13 @@
 
 #include <linux/types.h>
 
+#define AT_FDCWD		-100    /* Special value used to indicate
+                                           openat should use the current
+                                           working directory. */
+
+#define AT_REMOVEDIR		0x200   /* Remove directory instead of
+                                           unlinking file.  */
+
 /* open/fcntl - O_SYNC is only implemented on blocks devices and on files
    located on an ext2 file system */
 #define O_ACCMODE	00000003
@@ -28,7 +35,12 @@
 #define O_RWSIZE_4	004000000
 #define O_RWSIZE_8	010000000
 
-int open(const char *pathname, int flags, ...);
+int openat(int dirfd, const char *pathname, int flags);
+
+static inline int open(const char *pathname, int flags, ...)
+{
+	return openat(AT_FDCWD, pathname, flags);
+}
 
 static inline int creat(const char *pathname, mode_t mode)
 {
diff --git a/include/fs.h b/include/fs.h
index a61982e59ade..c4af8659b0d3 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -150,7 +150,7 @@ char *mkmodestr(unsigned long mode, char *str);
 void stat_print(const char *filename, const struct stat *st);
 void cdev_print(const struct cdev *cdev);
 
-char *canonicalize_path(const char *pathname);
+char *canonicalize_path(int dirfd, const char *pathname);
 
 char *get_mounted_path(const char *path);
 
diff --git a/include/sys/stat.h b/include/sys/stat.h
index 0dd43d1f02c8..7af49a1d3ccc 100644
--- a/include/sys/stat.h
+++ b/include/sys/stat.h
@@ -5,7 +5,13 @@
 
 #include <linux/types.h>
 #include <linux/stat.h>
+#include <fcntl.h>
 
-int mkdir (const char *pathname, mode_t mode);
+int mkdirat(int dirfd, const char *pathname, mode_t mode);
+
+static inline int mkdir(const char *pathname, mode_t mode)
+{
+	return mkdirat(AT_FDCWD, pathname, mode);
+}
 
 #endif /* __STAT_H */
diff --git a/include/unistd.h b/include/unistd.h
index f7fe737d002b..b78acbfd737a 100644
--- a/include/unistd.h
+++ b/include/unistd.h
@@ -3,26 +3,51 @@
 #define __UNISTD_H
 
 #include <linux/types.h>
+#include <fcntl.h>
 
 struct stat;
 
-int unlink(const char *pathname);
+int unlinkat(int dirfd, const char *pathname, int flags);
 int close(int fd);
-int lstat(const char *filename, struct stat *s);
-int stat(const char *filename, struct stat *s);
+int lstatat(int dirfd, const char *filename, struct stat *s);
+int statat(int dirfd, const char *filename, struct stat *s);
 int fstat(int fd, struct stat *s);
 ssize_t read(int fd, void *buf, size_t count);
 ssize_t pread(int fd, void *buf, size_t count, loff_t offset);
 ssize_t write(int fd, const void *buf, size_t count);
 ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset);
 loff_t lseek(int fildes, loff_t offset, int whence);
-int rmdir (const char *pathname);
 int symlink(const char *pathname, const char *newpath);
-int readlink(const char *path, char *buf, size_t bufsiz);
+int readlinkat(int dirfd, const char *path, char *buf, size_t bufsiz);
 int chdir(const char *pathname);
 char *pushd(const char *dir);
 int popd(char *dir);
 const char *getcwd(void);
 int ftruncate(int fd, loff_t length);
 
+static inline int unlink(const char *pathname)
+{
+	return unlinkat(AT_FDCWD, pathname, 0);
+}
+
+static inline int lstat(const char *filename, struct stat *s)
+{
+	return lstatat(AT_FDCWD, filename, s);
+}
+
+static inline int stat(const char *filename, struct stat *s)
+{
+	return statat(AT_FDCWD, filename, s);
+}
+
+static inline int rmdir(const char *pathname)
+{
+	return unlinkat(AT_FDCWD, pathname, AT_REMOVEDIR);
+}
+
+static inline int readlink(const char *path, char *buf, size_t bufsiz)
+{
+	return readlinkat(AT_FDCWD, path, buf, bufsiz);
+}
+
 #endif /* __UNISTD_H */
-- 
2.39.2




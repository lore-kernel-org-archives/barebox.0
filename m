Delivery-date: Mon, 22 Nov 2021 09:49:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp51O-0003Ps-Bg
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:49:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp51M-0000EE-6F
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:49:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVsNaN0PI4trIpt2pzwPrwOHt3Wdz6ry5+T5vcfjjx4=; b=WnUp/3Zf/8Xz79
	urK+klP9WlHkTSkygN7W8mWVr7DXEep/0oz414EQQaxnrZjxkiGXb1snxhU7j2lEhDCC/QER+nq68
	2WzLflTRUjp4OU6UZ1JHSZuFUOCXng1MS/p3yTyB0mtgVNwpBsSs9EG6PYT3KNsDM3Ge7xyioTtN2
	FwJz60C+fQqDR0vSq59skV3kqVvhaU8cmDNxY+WCb/t2NO3TpW5726KocFwspdUgaEGs8g3Gb1eEP
	vHyMHa9QqwSBcs9b1Bdxc4TBupboB26qHhjzRJw0kN/6xpNVrPb1L4dRMDC6KzOPRxAYi5o+CtTOm
	k5vlFLF4dUbS5Kkr40rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp4zo-00FLIM-L4; Mon, 22 Nov 2021 08:48:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zD-00FKyq-Cc
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-0007wC-TW; Mon, 22 Nov 2021 09:47:35 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00AteV-8f; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:03 +0100
Message-Id: <20211122084732.2597109-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004739_624418_69CA0251 
X-CRM114-Status: GOOD (  17.67  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/30] fs: remove useless AT_FDCWD references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All name lookups by barebox are AT_FDCWD and there are no dirfd support
that could be used in its place, so just remove that parameter altogether
from the FS functions.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c               | 56 +++++++++++++++++++++----------------------
 include/linux/namei.h |  4 ----
 2 files changed, 27 insertions(+), 33 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index e6fd57b8ac97..7da3a050c1cb 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -92,7 +92,7 @@ postcore_initcall(init_fs);
 struct filename;
 
 static struct fs_device_d *get_fsdevice_by_path(const char *path);
-static int filename_lookup(int dfd, struct filename *name, unsigned flags,
+static int filename_lookup(struct filename *name, unsigned flags,
 			   struct path *path);;
 static struct filename *getname(const char *filename);
 static void path_put(const struct path *path);
@@ -710,7 +710,7 @@ static void fs_remove(struct device_d *dev)
 	if (fsdev->loop && fsdev->cdev) {
 		cdev_remove_loop(fsdev->cdev);
 
-		ret = filename_lookup(AT_FDCWD, getname(fsdev->backingstore),
+		ret = filename_lookup(getname(fsdev->backingstore),
 				      LOOKUP_FOLLOW, &path);
 		if (!ret) {
 			mntput(path.mnt);
@@ -793,7 +793,7 @@ int fsdev_open_cdev(struct fs_device_d *fsdev)
 	parseopt_b(fsdev->options, "loop", &fsdev->loop);
 	parseopt_llu_suffix(fsdev->options, "offset", &offset);
 	if (fsdev->loop) {
-		ret = filename_lookup(AT_FDCWD, getname(fsdev->backingstore),
+		ret = filename_lookup(getname(fsdev->backingstore),
 				      LOOKUP_FOLLOW, &path);
 		if (ret)
 			return ret;
@@ -1467,7 +1467,6 @@ struct nameidata {
 	struct nameidata *saved;
 	struct inode	*link_inode;
 	unsigned	root_seq;
-	int		dfd;
 };
 
 struct filename {
@@ -1475,10 +1474,9 @@ struct filename {
 	int refcnt;
 };
 
-static void set_nameidata(struct nameidata *p, int dfd, struct filename *name)
+static void set_nameidata(struct nameidata *p, struct filename *name)
 {
 	p->stack = p->internal;
-	p->dfd = dfd;
 	p->name = name;
 	p->total_link_count = 0;
 }
@@ -2041,7 +2039,7 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 	if (*s == '/') {
 		get_root(&nd->path);
 		return s;
-	} else if (nd->dfd == AT_FDCWD) {
+	} else {
 		get_pwd(&nd->path);
 		nd->inode = nd->path.dentry->d_inode;
 		return s;
@@ -2101,7 +2099,7 @@ static int path_parentat(struct nameidata *nd, unsigned flags,
 	return err;
 }
 
-static struct filename *filename_parentat(int dfd, struct filename *name,
+static struct filename *filename_parentat(struct filename *name,
 				unsigned int flags, struct path *parent,
 				struct qstr *last, int *type)
 {
@@ -2111,7 +2109,7 @@ static struct filename *filename_parentat(int dfd, struct filename *name,
 	if (IS_ERR(name))
 		return name;
 
-	set_nameidata(&nd, dfd, name);
+	set_nameidata(&nd, name);
 
 	retval = path_parentat(&nd, flags, parent);
 	if (likely(!retval)) {
@@ -2125,7 +2123,7 @@ static struct filename *filename_parentat(int dfd, struct filename *name,
 	return name;
 }
 
-static struct dentry *filename_create(int dfd, struct filename *name,
+static struct dentry *filename_create(struct filename *name,
 				struct path *path, unsigned int lookup_flags)
 {
 	struct dentry *dentry = ERR_PTR(-EEXIST);
@@ -2140,7 +2138,7 @@ static struct dentry *filename_create(int dfd, struct filename *name,
 	 */
 	lookup_flags &= LOOKUP_REVAL;
 
-	name = filename_parentat(dfd, name, 0, path, &last, &type);
+	name = filename_parentat(name, 0, path, &last, &type);
 	if (IS_ERR(name))
 		return ERR_CAST(name);
 
@@ -2185,7 +2183,7 @@ out:
 	return dentry;
 }
 
-static int filename_lookup(int dfd, struct filename *name, unsigned flags,
+static int filename_lookup(struct filename *name, unsigned flags,
 			   struct path *path)
 {
 	int err;
@@ -2195,7 +2193,7 @@ static int filename_lookup(int dfd, struct filename *name, unsigned flags,
 	if (IS_ERR(name))
 		return PTR_ERR(name);
 
-	set_nameidata(&nd, dfd, name);
+	set_nameidata(&nd, name);
 
 	s = path_init(&nd, flags);
 
@@ -2228,7 +2226,7 @@ static struct fs_device_d *get_fsdevice_by_path(const char *pathname)
 	struct path path;
 	int ret;
 
-	ret = filename_lookup(AT_FDCWD, getname(pathname), 0, &path);
+	ret = filename_lookup(getname(pathname), 0, &path);
 	if (ret)
 		return NULL;
 
@@ -2287,7 +2285,7 @@ int mkdir (const char *pathname, mode_t mode)
 	int error;
 	unsigned int lookup_flags = LOOKUP_DIRECTORY;
 
-	dentry = filename_create(AT_FDCWD, getname(pathname), &path, lookup_flags);
+	dentry = filename_create(getname(pathname), &path, lookup_flags);
 	if (IS_ERR(dentry)) {
 		error = PTR_ERR(dentry);
 		goto out;
@@ -2314,7 +2312,7 @@ int rmdir (const char *pathname)
 	struct qstr last;
 	int type;
 
-	name = filename_parentat(AT_FDCWD, getname(pathname), 0,
+	name = filename_parentat(getname(pathname), 0,
 				&path, &last, &type);
 	if (IS_ERR(name))
 		return PTR_ERR(name);
@@ -2377,7 +2375,7 @@ int open(const char *pathname, int flags, ...)
 	if (IS_ERR(filename))
 		return PTR_ERR(filename);
 
-	set_nameidata(&nd, AT_FDCWD, filename);
+	set_nameidata(&nd, filename);
 
 	s = path_init(&nd, LOOKUP_FOLLOW);
 
@@ -2495,7 +2493,7 @@ int unlink(const char *pathname)
 	struct inode *inode;
 	struct path path;
 
-	ret = filename_lookup(AT_FDCWD, getname(pathname), 0, &path);
+	ret = filename_lookup(getname(pathname), 0, &path);
 	if (ret)
 		goto out;
 
@@ -2543,7 +2541,7 @@ int symlink(const char *pathname, const char *newpath)
 	int error;
 	unsigned int lookup_flags = LOOKUP_DIRECTORY;
 
-	dentry = filename_create(AT_FDCWD, getname(newpath), &path, lookup_flags);
+	dentry = filename_create(getname(newpath), &path, lookup_flags);
 	if (IS_ERR(dentry)) {
 		error = PTR_ERR(dentry);
 		goto out;
@@ -2583,7 +2581,7 @@ DIR *opendir(const char *pathname)
 		},
 	};
 
-	ret = filename_lookup(AT_FDCWD, getname(pathname),
+	ret = filename_lookup(getname(pathname),
 			      LOOKUP_FOLLOW | LOOKUP_DIRECTORY, &path);
 	if (ret)
 		goto out;
@@ -2651,7 +2649,7 @@ int readlink(const char *pathname, char *buf, size_t bufsiz)
 	const char *link;
 	struct path path = {};
 
-	ret = filename_lookup(AT_FDCWD, getname(pathname), 0, &path);
+	ret = filename_lookup(getname(pathname), 0, &path);
 	if (ret)
 		goto out;
 
@@ -2695,7 +2693,7 @@ static int stat_filename(const char *filename, struct stat *s, unsigned int flag
 	struct inode *inode;
 	struct path path = {};
 
-	ret = filename_lookup(AT_FDCWD, getname(filename), flags, &path);
+	ret = filename_lookup(getname(filename), flags, &path);
 	if (ret)
 		goto out;
 
@@ -2799,7 +2797,7 @@ char *canonicalize_path(const char *pathname)
 	struct path path;
 	int ret;
 
-	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
+	ret = filename_lookup(getname(pathname), LOOKUP_FOLLOW, &path);
 	if (ret)
 		goto out;
 
@@ -2823,7 +2821,7 @@ int chdir(const char *pathname)
 	struct path path;
 	int ret;
 
-	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW | LOOKUP_DIRECTORY, &path);
+	ret = filename_lookup(getname(pathname), LOOKUP_FOLLOW | LOOKUP_DIRECTORY, &path);
 	if (ret)
 		goto out;
 
@@ -2888,7 +2886,7 @@ int mount(const char *device, const char *fsname, const char *pathname,
 	struct path path = {};
 
 	if (d_root) {
-		ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
+		ret = filename_lookup(getname(pathname), LOOKUP_FOLLOW, &path);
 		if (ret)
 			goto out;
 
@@ -3001,7 +2999,7 @@ int umount(const char *pathname)
 	struct path path = {};
 	int ret;
 
-	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
+	ret = filename_lookup(getname(pathname), LOOKUP_FOLLOW, &path);
 	if (ret)
 		return ret;
 
@@ -3074,7 +3072,7 @@ void automount_remove(const char *pathname)
 	struct path path;
 	int ret;
 
-	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
+	ret = filename_lookup(getname(pathname), LOOKUP_FOLLOW, &path);
 	if (ret)
 		return;
 
@@ -3090,7 +3088,7 @@ int automount_add(const char *pathname, const char *cmd)
 	struct path path;
 	int ret;
 
-	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
+	ret = filename_lookup(getname(pathname), LOOKUP_FOLLOW, &path);
 	if (ret)
 		return ret;
 
@@ -3199,7 +3197,7 @@ static int do_lookup_dentry(int argc, char *argv[])
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
-	ret = filename_lookup(AT_FDCWD, getname(argv[1]), 0, &path);
+	ret = filename_lookup(getname(argv[1]), 0, &path);
 	if (ret) {
 		printf("Cannot lookup path \"%s\": %s\n",
 		       argv[1], strerror(-ret));
diff --git a/include/linux/namei.h b/include/linux/namei.h
index 8ed7f8a1cdac..9f6e568591af 100644
--- a/include/linux/namei.h
+++ b/include/linux/namei.h
@@ -45,8 +45,4 @@ enum {LAST_NORM, LAST_ROOT, LAST_DOT, LAST_DOTDOT, LAST_BIND};
 #define LOOKUP_EMPTY		0x4000
 #define LOOKUP_DOWN		0x8000
 
-#define AT_FDCWD                -100    /* Special value used to indicate
-                                           openat should use the current
-                                           working directory. */
-
 #endif /* _LINUX_NAMEI_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


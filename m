Delivery-date: Thu, 20 Mar 2025 06:20:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Ks-001l5u-2R
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:20:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Kr-0003fQ-4C
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:20:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8lUZ2yrLFOFsP/NAzdcD+49ic1LXkot59Ib5U0EmKHA=; b=c1Onj2ADNFuLlc3USkLfSaokJw
	eDxRPQNHR+OCZJO/zaPrwS+QPpVMw29Rf0u7+PqKrbZZ/GockgbqW3Zq+q8MtOzdGPM686kzeIRVc
	jeKf2efs11VSF3tJyeb7mYh1Ey/zB8y8eh2qKc2xm9/Aij/9aqkC0mI0FBEAJ4Oed5FQY165wIGGe
	uZcWL/PSobJXtbYm8GJ6F9KDv+YrqN0f2Tlo9qP0nz878COozu7raSCK6oGRIBHMLqFTV3mnrFip+
	PMfoN6fpQyImBzbo2gbdLmasInilhJvXod7e7tp+L8Wf0HhSSxlnppTt7Jy1K+TKKo9DIs8QQX96A
	KBQTQNKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KR-0000000BCWC-2MBl;
	Thu, 20 Mar 2025 05:20:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KL-0000000BCS5-3wXz
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:20:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-0003Dy-NE; Thu, 20 Mar 2025 06:20:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-000hvL-0H;
	Thu, 20 Mar 2025 06:20:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-007GGZ-1M;
	Thu, 20 Mar 2025 06:20:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:20:16 +0100
Message-Id: <20250320052019.1726331-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
References: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_222021_988106_06E36167 
X-CRM114-Status: GOOD (  18.42  )
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
Subject: [PATCH 3/6] fs: implement opendir in terms of fdopendir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While struct filep (FILE) and struct file have been merged, we still
have two different ways the files are created: Regularly in open and
irregularly in an incomplete manner inside opendir.

This breaks file systems that expect the struct file passed to iterate
to have been opened before.

To allow porting such filesystems more easily, let's go all in on
directory FDs and implement opendir using it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c          | 114 +++++++++++++++--------------------------------
 include/dirent.h |   2 -
 2 files changed, 35 insertions(+), 81 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index fd5818c36c20..0c698981227f 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2660,20 +2660,6 @@ int openat(int dirfd, const char *pathname, int flags)
 }
 EXPORT_SYMBOL(openat);
 
-static const char *fd_getpath(int fd)
-{
-	struct file *f;
-
-	if (fd < 0)
-		return ERR_PTR(errno_set(fd));
-
-	f = fd_to_file(fd, true);
-	if (IS_ERR(f))
-		return ERR_CAST(f);
-
-	return f->path;
-}
-
 int unlinkat(int dirfd, const char *pathname, int flags)
 {
 	int ret;
@@ -2758,107 +2744,77 @@ static void __release_dir(DIR *d)
 static int __opendir(DIR *d)
 {
 	int ret;
-	struct file file = {};
-	struct path *path = &d->path;
-	struct dentry *dir = path->dentry;
+	struct file *file = fd_to_file(d->fd, true);
 	struct readdir_callback rd = {
 		.ctx = {
 			.actor = fillonedir,
 		},
 	};
 
-	file.f_path.dentry = dir;
-	file.f_inode = d_inode(dir);
-	file.f_op = dir->d_inode->i_fop;
-
 	INIT_LIST_HEAD(&d->entries);
 	rd.dir = d;
 
-	ret = file.f_op->iterate(&file, &rd.ctx);
+	ret = file->f_inode->i_fop->iterate(file, &rd.ctx);
 	if (ret)
 		__release_dir(d);
 
 	return ret;
 }
 
-DIR *opendir(const char *pathname)
-{
-	int ret;
-	struct dentry *dir;
-	struct inode *inode;
-	DIR *d;
-	struct path path = {};
-
-	ret = filename_lookup(AT_FDCWD, getname(pathname),
-			      LOOKUP_FOLLOW | LOOKUP_DIRECTORY, &path);
-	if (ret)
-		goto out;
-
-	dir = path.dentry;
-
-	if (d_is_negative(dir)) {
-		ret = -ENOENT;
-		goto out_put;
-	}
-
-	inode = d_inode(dir);
-
-	if (!S_ISDIR(inode->i_mode)) {
-		ret = -ENOTDIR;
-		goto out_put;
-	}
-
-	d = xzalloc(sizeof(*d));
-	d->path = path;
-	d->fd = -ENOENT;
-
-	ret = __opendir(d);
-	if (ret)
-		goto out_free;
-
-	return d;
-
-out_free:
-	free(d);
-out_put:
-	path_put(&path);
-out:
-	errno_set(ret);
-
-	return NULL;
-}
-EXPORT_SYMBOL(opendir);
-
 DIR *fdopendir(int fd)
 {
-	const char *path;
+	struct stat st;
 	DIR *dir;
+	int ret;
 
-	path = fd_getpath(fd);
-	if (IS_ERR(path))
+	ret = fstat(fd, &st);
+	if (ret)
 		return NULL;
 
-	dir = opendir(path);
-	if (!dir)
-		return NULL;
+	if (!S_ISDIR(st.st_mode)) {
+		ret = -ENOTDIR;
+		goto err;
+	}
+
+	dir = xzalloc(sizeof(*dir));
 
 	/* we intentionally don't increment the reference count,
 	 * as POSIX specifies that fd ownership is transferred
 	 */
 	dir->fd = fd;
+
+	ret = __opendir(dir);
+	if (ret)
+		goto err;
+
 	return dir;
+err:
+	errno_set(ret);
+	return NULL;
 }
 EXPORT_SYMBOL(fdopendir);
 
+DIR *opendir(const char *pathname)
+{
+	int fd;
+
+	fd = open(pathname, O_DIRECTORY);
+	if (fd < 0) {
+		errno_set(fd);
+		return NULL;
+	}
+
+	return fdopendir(fd);
+}
+EXPORT_SYMBOL(opendir);
+
 int closedir(DIR *dir)
 {
 	if (!dir)
 		return errno_set(-EBADF);
 
-	path_put(&dir->path);
 	__release_dir(dir);
-	if (dir->fd >= 0)
-		close(dir->fd);
+	close(dir->fd);
 	free(dir);
 
 	return 0;
diff --git a/include/dirent.h b/include/dirent.h
index 4f7ff2a5f91f..f74541d83d26 100644
--- a/include/dirent.h
+++ b/include/dirent.h
@@ -3,7 +3,6 @@
 #define __DIRENT_H
 
 #include <linux/list.h>
-#include <linux/path.h>
 
 struct dirent {
 	char d_name[256];
@@ -15,7 +14,6 @@ typedef struct dir {
 	struct dirent d;
 	void *priv; /* private data for the fs driver */
 	int fd;
-	struct path path;
 	struct list_head entries;
 } DIR;
 
-- 
2.39.5




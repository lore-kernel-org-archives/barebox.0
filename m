Delivery-date: Wed, 03 Jan 2024 19:14:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL5lR-002LwZ-2G
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:14:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL5lQ-0005LL-9B
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:14:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CNP8ZvijocFSTxvubjPDPyGVknYsmq2+hkvOixtsarw=; b=2aC5B71c+gQ2ljeylnqwjJw2VJ
	GQ250GbtYccJOTCd6IFR97Ha6T98WSxBW+//45+kQ3us9Oo8nmxCN82FCTvS9lGWYpNG1NSpOgYog
	O6ceTW0Ee4XfjBG1sSe3UMrvEI1gBtF1ssNEyU8Ndzmv2C7W3WoiX+ooso4P6zne8xtV4+BoJtKfI
	SC2U/nyp3GsuybaWTvc4YnFoVGEWGD1kaVVw7uiHBK5FZL1rGaqZAxSoB0RpXcyHntw4lXL2g92Xp
	044xwcF9r4eL70ZR6WSvcouwX3Gwn7QfdCY0JeeNsi09iyq/B5GAAJ6mHgRmmzaZ7O/TsKHsRKjkL
	YdgfzKAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5kK-00Be1V-0T;
	Wed, 03 Jan 2024 18:13:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5k3-00BdsE-2n
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:13:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-0004f4-Iv; Wed, 03 Jan 2024 19:13:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-000Apm-5y; Wed, 03 Jan 2024 19:13:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-0K;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:23 +0100
Message-Id: <20240103181312.409668-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_101324_074158_8A536D47 
X-CRM114-Status: GOOD (  16.93  )
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
Subject: [PATCH 003/112] treewide: add errno_set helper for returning positive error code in errno
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have this sequence at multiple places: Check a return value for being
below zero and if so, turn it positive and store into errno.

Instead of opencoding it everywhere, add a helper to encapsulate this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c         | 112 ++++++++++++------------------------------------
 include/errno.h |   7 +++
 lib/libfile.c   |  15 +++----
 lib/parameter.c |  22 ++++------
 4 files changed, 48 insertions(+), 108 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 68e7873e9c54..4b64f6fcf1df 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -365,10 +365,8 @@ int ftruncate(int fd, loff_t length)
 		return 0;
 
 	ret = fsdev_truncate(&f->fsdev->dev, f, length);
-	if (ret) {
-		errno = -ret;
-		return ret;
-	}
+	if (ret)
+		return errno_set(ret);
 
 	f->size = length;
 	f->f_inode->i_size = f->size;
@@ -391,9 +389,8 @@ int ioctl(int fd, int request, void *buf)
 		ret = fsdrv->ioctl(&f->fsdev->dev, f, request, buf);
 	else
 		ret = -ENOSYS;
-	if (ret)
-		errno = -ret;
-	return ret;
+
+	return errno_set(ret);
 }
 
 static ssize_t __read(FILE *f, void *buf, size_t count)
@@ -419,9 +416,7 @@ static ssize_t __read(FILE *f, void *buf, size_t count)
 
 	ret = fsdrv->read(&f->fsdev->dev, f, buf, count);
 out:
-	if (ret < 0)
-		errno = -ret;
-	return ret;
+	return errno_set(ret);
 }
 
 ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
@@ -490,9 +485,7 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 	}
 	ret = fsdrv->write(&f->fsdev->dev, f, buf, count);
 out:
-	if (ret < 0)
-		errno = -ret;
-	return ret;
+	return errno_set(ret);
 }
 
 ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset)
@@ -544,10 +537,7 @@ int flush(int fd)
 	else
 		ret = 0;
 
-	if (ret)
-		errno = -ret;
-
-	return ret;
+	return errno_set(ret);
 }
 
 loff_t lseek(int fd, loff_t offset, int whence)
@@ -597,8 +587,7 @@ loff_t lseek(int fd, loff_t offset, int whence)
 	return pos;
 
 out:
-	if (ret)
-		errno = -ret;
+	errno_set(ret);
 
 	return -1;
 }
@@ -629,10 +618,7 @@ int erase(int fd, loff_t count, loff_t offset)
 	else
 		ret = -ENOSYS;
 
-	if (ret)
-		errno = -ret;
-
-	return ret;
+	return errno_set(ret);
 }
 EXPORT_SYMBOL(erase);
 
@@ -659,10 +645,7 @@ int protect(int fd, size_t count, loff_t offset, int prot)
 	else
 		ret = -ENOSYS;
 
-	if (ret)
-		errno = -ret;
-
-	return ret;
+	return errno_set(ret);
 }
 EXPORT_SYMBOL(protect);
 
@@ -689,10 +672,7 @@ int discard_range(int fd, loff_t count, loff_t offset)
 	else
 		ret = -ENOSYS;
 
-	if (ret)
-		errno = -ret;
-
-	return ret;
+	return errno_set(ret);
 }
 
 int protect_file(const char *file, int prot)
@@ -730,9 +710,7 @@ void *memmap(int fd, int flags)
 	else
 		ret = -EINVAL;
 
-	if (ret)
-		errno = -ret;
-
+	errno_set(ret);
 	return retp;
 }
 EXPORT_SYMBOL(memmap);
@@ -756,10 +734,7 @@ int close(int fd)
 
 	put_file(f);
 
-	if (ret)
-		errno = -ret;
-
-	return ret;
+	return errno_set(ret);
 }
 EXPORT_SYMBOL(close);
 
@@ -2464,10 +2439,7 @@ int mkdir (const char *pathname, mode_t mode)
 	dput(dentry);
 	path_put(&path);
 out:
-	if (error)
-		errno = -error;
-
-	return error;
+	return errno_set(error);
 }
 EXPORT_SYMBOL(mkdir);
 
@@ -2519,10 +2491,7 @@ int rmdir (const char *pathname)
 	path_put(&path);
 	putname(name);
 
-	if (error)
-		errno = -error;
-
-	return error;
+	return errno_set(error);
 }
 EXPORT_SYMBOL(rmdir);
 
@@ -2676,10 +2645,7 @@ int open(const char *pathname, int flags, ...)
 out:
 	put_file(f);
 out1:
-
-	if (error)
-		errno = -error;
-	return error;
+	return errno_set(error);
 }
 EXPORT_SYMBOL(open);
 
@@ -2717,9 +2683,7 @@ int unlink(const char *pathname)
 out_put:
 	path_put(&path);
 out:
-	if (ret)
-		errno = -ret;
-	return ret;
+	return errno_set(ret);
 }
 EXPORT_SYMBOL(unlink);
 
@@ -2746,10 +2710,7 @@ int symlink(const char *pathname, const char *newpath)
 
 	error = vfs_symlink(path.dentry->d_inode, dentry, pathname);
 out:
-	if (error)
-		errno = -error;
-
-	return error;
+	return errno_set(error);
 }
 EXPORT_SYMBOL(symlink);
 
@@ -2819,7 +2780,7 @@ DIR *opendir(const char *pathname)
 out_put:
 	path_put(&path);
 out:
-	errno = -ret;
+	errno_set(ret);
 
 	return NULL;
 }
@@ -2827,10 +2788,8 @@ EXPORT_SYMBOL(opendir);
 
 int closedir(DIR *dir)
 {
-	if (!dir) {
-		errno = EBADF;
-		return -EBADF;
-	}
+	if (!dir)
+		return errno_set(-EBADF);
 
 	release_dir(dir);
 
@@ -2876,10 +2835,7 @@ int readlink(const char *pathname, char *buf, size_t bufsiz)
 out_put:
 	path_put(&path);
 out:
-	if (ret)
-		errno = -ret;
-
-	return ret;
+	return errno_set(ret);
 }
 EXPORT_SYMBOL(readlink);
 
@@ -2909,10 +2865,7 @@ static int stat_filename(const char *filename, struct stat *s, unsigned int flag
 out_put:
 	path_put(&path);
 out:
-	if (ret)
-		errno = -ret;
-
-	return ret;
+	return errno_set(ret);
 }
 
 int stat(const char *filename, struct stat *s)
@@ -3000,9 +2953,7 @@ char *canonicalize_path(const char *pathname)
 
 	res = dpath(path.dentry, d_root);
 out:
-	if (ret)
-		errno = -ret;
-
+	errno_set(ret);
 	return res;
 }
 
@@ -3036,10 +2987,7 @@ int chdir(const char *pathname)
 	ret = 0;
 
 out:
-	if (ret)
-		errno = -ret;
-
-	return ret;
+	return errno_set(ret);
 }
 EXPORT_SYMBOL(chdir);
 
@@ -3234,9 +3182,7 @@ int mount(const char *device, const char *fsname, const char *pathname,
 out:
 	path_put(&path);
 
-	errno = -ret;
-
-	return ret;
+	return errno_set(ret);
 }
 EXPORT_SYMBOL(mount);
 
@@ -3273,10 +3219,8 @@ int umount(const char *pathname)
 		}
 	}
 
-	if (!fsdev) {
-		errno = EFAULT;
-		return -EFAULT;
-	}
+	if (!fsdev)
+		return errno_set(-EFAULT);
 
 	return fsdev_umount(fsdev);
 }
diff --git a/include/errno.h b/include/errno.h
index 6ec7af4d7e9f..12e526a0d7ed 100644
--- a/include/errno.h
+++ b/include/errno.h
@@ -10,4 +10,11 @@ extern int errno;
 void perror(const char *s);
 const char *strerror(int errnum);
 
+static inline int errno_set(int err)
+{
+	if (err < 0)
+		errno = -err;
+	return err;
+}
+
 #endif /* __ERRNO_H */
diff --git a/lib/libfile.c b/lib/libfile.c
index 72a2fc79c721..185c7af721b5 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -33,10 +33,8 @@ int pwrite_full(int fd, const void *buf, size_t size, loff_t offset)
 
 	while (size) {
 		now = pwrite(fd, buf, size, offset);
-		if (now == 0) {
-			errno = ENOSPC;
-			return -errno;
-		}
+		if (now == 0)
+			return errno_set(-ENOSPC);
 		if (now < 0)
 			return now;
 		size -= now;
@@ -61,10 +59,8 @@ int write_full(int fd, const void *buf, size_t size)
 
 	while (size) {
 		now = write(fd, buf, size);
-		if (now == 0) {
-			errno = ENOSPC;
-			return -errno;
-		}
+		if (now == 0)
+			return errno_set(-ENOSPC);
 		if (now < 0)
 			return now;
 		size -= now;
@@ -240,8 +236,7 @@ int read_file_2(const char *filename, size_t *size, void **outbuf,
 	/* ensure wchar_t nul termination */
 	buf = calloc(ALIGN(read_size, 2) + 2, 1);
 	if (!buf) {
-		ret = -ENOMEM;
-		errno = ENOMEM;
+		ret = errno_set(-ENOMEM);
 		goto err_out;
 	}
 
diff --git a/lib/parameter.c b/lib/parameter.c
index aac33e3a1940..c2b8536ee93f 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -90,28 +90,22 @@ int dev_set_param(struct device *dev, const char *name, const char *val)
 	struct param_d *param;
 	int ret;
 
-	if (!dev) {
-		errno = ENODEV;
-		return -ENODEV;
-	}
+	if (!dev)
+		return errno_set(-ENODEV);
 
 	param = get_param_by_name(dev, name);
 
-	if (!param) {
-		errno = EINVAL;
-		return -EINVAL;
-	}
+	if (!param)
+		return errno_set(-EINVAL);
 
-	if (param->flags & PARAM_FLAG_RO) {
-		errno = EACCES;
-		return -EACCES;
-	}
+	if (param->flags & PARAM_FLAG_RO)
+		return errno_set(-EACCES);
 
 	ret = param->set(dev, param, val);
 	if (ret)
-		errno = -ret;
+		return errno_set(ret);
 
-	return ret;
+	return 0;
 }
 
 /**
-- 
2.39.2




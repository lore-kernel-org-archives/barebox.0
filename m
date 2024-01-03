Delivery-date: Wed, 03 Jan 2024 19:36:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66m-002OGF-0h
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66f-00089h-EE
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kv6tOglKiVOF61hdIEVaHGgfKPrOQ8lLPFoKfv5+YC4=; b=KrgEI7qJdGwVPi9eYo0SGxYreF
	oAeyX155EGIZw/zcY1n9jT+C3svDP/H4+2G8leFY8nU7cuu6OPQMQIVqvAWvi8cLYKs1GOGINzur7
	569kHsviOHnG7IulGSXrbjPpRIOvOURTMNvbr8ceWxgun9mczgxOGHnRogDkLlEP1k2Y3r3+YGwGC
	IVAiSiPgRZviPsz5+02JMaoCKyDHY1l6wzDSvhe1x5qOnhIxeuSQrL3igsU26eH2O2twEDoJWHybz
	TKhYI0zTMt9W2fO51BF8zOgJ7XTOf972FWZtRRuoyhZIiH90gMQHpSX+3RZ7qMM3iSpi8JdYZJHPj
	yJCBHLHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL650-00Blkc-1j;
	Wed, 03 Jan 2024 18:35:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61N-00BhRv-32
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Kv6tOglKiVOF61hdIEVaHGgfKPrOQ8lLPFoKfv5+YC4=; b=vCmo5jIKsb8sPsBSonxVezz8Y6
	xSc1wYF+p0EoAv0K9ZEjxv0tyGXACahdk1YDj1SZyFUhBq1omBA1u8e6EBWR3qmCCjbu4ErFpgmqH
	Fx59yxfMXA+ypIKB8y2vo8SM/c5UNfrqyOwXdlrTIpSRzIA0m/4YWfu2yAnVWviqYqosePNYf3yPu
	0IL9wCbfPrg9/tDWDzyAj9I4lns7Y11uQ0pHkLpILynAZ4WdIlBYFLbwvbr83p0b2Doi39MhS4Im8
	ereeSGyvLn/PkoS26n/zO/e+Mo5LhQuNtqhb6pTXGhPhuf/9M+808p/uv1ueWUWF28odkR8GhgpNR
	ekMKpZyQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61D-00DIm5-Fe
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-0001Wp-Au; Wed, 03 Jan 2024 19:30:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-000Av9-Tl; Wed, 03 Jan 2024 19:30:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-1s;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:56 +0100
Message-Id: <20240103181312.409668-37-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183109_989766_39D8C320 
X-CRM114-Status: GOOD (  16.40  )
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
Subject: [PATCH 036/112] fs: implement O_PATH
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use with the newly added openat and friends API, add O_PATH file
descriptors that are not usable for doing actual I/O, but only for use
as dirfd.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c         | 58 +++++++++++++++++++++++++++++--------------------
 include/fcntl.h |  1 +
 2 files changed, 35 insertions(+), 24 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 6b71440318af..54f38aa2e63b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -325,12 +325,16 @@ static void put_file(FILE *f)
 	dput(f->dentry);
 }
 
-static FILE *fd_to_file(int fd)
+static FILE *fd_to_file(int fd, bool allow_pathonly)
 {
 	if (fd < 0 || fd >= MAX_FILES || !files[fd].in_use) {
 		errno = EBADF;
 		return ERR_PTR(-errno);
 	}
+	if (!allow_pathonly && (files[fd].flags & O_PATH)) {
+		errno = EINVAL;
+		return ERR_PTR(-errno);
+	}
 
 	return &files[fd];
 }
@@ -359,7 +363,7 @@ static int fsdev_truncate(struct device *dev, FILE *f, loff_t length)
 
 int ftruncate(int fd, loff_t length)
 {
-	FILE *f = fd_to_file(fd);
+	FILE *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -381,7 +385,7 @@ int ftruncate(int fd, loff_t length)
 int ioctl(int fd, int request, void *buf)
 {
 	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd);
+	FILE *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -426,7 +430,7 @@ static ssize_t __read(FILE *f, void *buf, size_t count)
 ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
 {
 	loff_t pos;
-	FILE *f = fd_to_file(fd);
+	FILE *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -443,7 +447,7 @@ EXPORT_SYMBOL(pread);
 
 ssize_t read(int fd, void *buf, size_t count)
 {
-	FILE *f = fd_to_file(fd);
+	FILE *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -495,7 +499,7 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset)
 {
 	loff_t pos;
-	FILE *f = fd_to_file(fd);
+	FILE *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -512,7 +516,7 @@ EXPORT_SYMBOL(pwrite);
 
 ssize_t write(int fd, const void *buf, size_t count)
 {
-	FILE *f = fd_to_file(fd);
+	FILE *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -529,7 +533,7 @@ EXPORT_SYMBOL(write);
 int flush(int fd)
 {
 	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd);
+	FILE *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -547,7 +551,7 @@ int flush(int fd)
 loff_t lseek(int fd, loff_t offset, int whence)
 {
 	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd);
+	FILE *f = fd_to_file(fd, false);
 	loff_t pos;
 	int ret;
 
@@ -600,7 +604,7 @@ EXPORT_SYMBOL(lseek);
 int erase(int fd, loff_t count, loff_t offset)
 {
 	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd);
+	FILE *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -629,7 +633,7 @@ EXPORT_SYMBOL(erase);
 int protect(int fd, size_t count, loff_t offset, int prot)
 {
 	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd);
+	FILE *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -656,7 +660,7 @@ EXPORT_SYMBOL(protect);
 int discard_range(int fd, loff_t count, loff_t offset)
 {
 	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd);
+	FILE *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -697,7 +701,7 @@ int protect_file(const char *file, int prot)
 void *memmap(int fd, int flags)
 {
 	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd);
+	FILE *f = fd_to_file(fd, false);
 	void *retp = MAP_FAILED;
 	int ret;
 
@@ -721,20 +725,23 @@ EXPORT_SYMBOL(memmap);
 
 int close(int fd)
 {
-	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd);
+	FILE *f = fd_to_file(fd, true);
 	int ret = 0;
 
 	if (IS_ERR(f))
 		return -errno;
 
-	fsdrv = f->fsdev->driver;
+	if (!(f->flags & O_PATH)) {
+		struct fs_driver *fsdrv;
 
-	if (fsdrv != ramfs_driver)
-		assert_command_context();
+		fsdrv = f->fsdev->driver;
 
-	if (fsdrv->close)
-		ret = fsdrv->close(&f->fsdev->dev, f);
+		if (fsdrv != ramfs_driver)
+			assert_command_context();
+
+		if (fsdrv->close)
+			ret = fsdrv->close(&f->fsdev->dev, f);
+	}
 
 	put_file(f);
 
@@ -1056,7 +1063,7 @@ static void stat_inode(struct inode *inode, struct stat *s)
 
 int fstat(int fd, struct stat *s)
 {
-	FILE *f = fd_to_file(fd);
+	FILE *f = fd_to_file(fd, true);
 
 	if (IS_ERR(f))
 		return -errno;
@@ -2173,7 +2180,7 @@ static const char *path_init(int dirfd, struct nameidata *nd, unsigned flags)
 	 * whether paths are absolute with openat(-1, path, O_PATH)
 	 */
 	if (dirfd != AT_FDCWD)
-		f = fd_to_file(dirfd);
+		f = fd_to_file(dirfd, true);
 
 	if (*s == '/') {
 		get_root(&nd->path);
@@ -2590,7 +2597,7 @@ int openat(int dirfd, const char *pathname, int flags)
 			error = -ENOENT;
 			goto out1;
 		}
-	} else {
+	} else if (!(flags & O_PATH)) {
 		if (d_is_dir(dentry) && !dentry_is_tftp(dentry)) {
 			error = -EISDIR;
 			goto out1;
@@ -2617,6 +2624,9 @@ int openat(int dirfd, const char *pathname, int flags)
 
 	f->fsdev = fsdev;
 
+	if (flags & O_PATH)
+		return f->no;
+
 	if (fsdrv->open) {
 		char *pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
 
@@ -2653,7 +2663,7 @@ static const char *fd_getpath(int fd)
 	if (fd < 0)
 		return ERR_PTR(errno_set(fd));
 
-	f = fd_to_file(fd);
+	f = fd_to_file(fd, true);
 	if (IS_ERR(f))
 		return ERR_CAST(f);
 
diff --git a/include/fcntl.h b/include/fcntl.h
index a6ed50b92eaf..a3f5d96cd0ac 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -23,6 +23,7 @@
 #define O_APPEND	00002000
 #define O_DIRECTORY	00200000	/* must be a directory */
 #define O_NOFOLLOW	00400000	/* don't follow links */
+#define O_PATH		02000000	/* open as path */
 #define __O_TMPFILE	020000000
 
 #define O_TMPFILE       (__O_TMPFILE | O_DIRECTORY)
-- 
2.39.2




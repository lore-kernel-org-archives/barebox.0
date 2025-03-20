Delivery-date: Thu, 20 Mar 2025 06:20:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Kr-001l59-0f
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:20:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Kp-0003dz-QV
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:20:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sU7bAuMcUFQyYfO4FbhtPesb4lOObvXYqXv8c010FuY=; b=BLoUOSMHuxrHCwiZJkaOn4ntex
	NYx5uhf55EbutW0Wvo6ZhEuCyYvlwBI8JQXU4deBFldLySiHZQhlQa1q/LH0A6Mcs35f6iaL07GaW
	pHQP3ZoFa8PgJilarppw3bHBZ3zHqP7ACHr6eMiaFLLtErTTXvyBQ1wMYVjw0lsq9mvd3pSUiyDgy
	cQtnc1qFcUE4yN0GloLguZT/NNAthMx2nfaG6WBim9mdd9rBVoMFlNMQ6vJyo2T2WhjTL9FIinh7Z
	NeVB+I/5RK7lSvOvgNGVvYv3hijzXnrU0rxpZVYHJPnoSqtELeIkR3uT7hv180KdMCtG/ihcVeZlS
	WzkGQWMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KQ-0000000BCVE-1etA;
	Thu, 20 Mar 2025 05:20:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KL-0000000BCS6-3yTG
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:20:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-0003Dx-LV; Thu, 20 Mar 2025 06:20:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-000hvI-09;
	Thu, 20 Mar 2025 06:20:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-007GGZ-1C;
	Thu, 20 Mar 2025 06:20:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:20:15 +0100
Message-Id: <20250320052019.1726331-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
References: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_222021_984286_B5C4D026 
X-CRM114-Status: GOOD (  17.18  )
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
Subject: [PATCH 2/6] fs: implement O_DIRECTORY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already had O_DIRECTORY defined, but only used it as one of the
bits for O_TMPFILE.

Fix the O_TMPFILE branch, so it checks both bits and implement
O_DIRECTORY, so it causes an error when opening a file that's not
a directory.

This is useful for use with openat.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/stat.c   |  2 +-
 fs/fs.c           | 32 ++++++++++++++++++++++----------
 test/self/dirfd.c |  6 +++---
 3 files changed, 26 insertions(+), 14 deletions(-)

diff --git a/commands/stat.c b/commands/stat.c
index 10662005cdda..8a96bf77b0f1 100644
--- a/commands/stat.c
+++ b/commands/stat.c
@@ -26,7 +26,7 @@ static int do_stat(int argc, char *argv[])
 			extra_flags |= O_CHROOT;
 			fallthrough;
 		case 'c':
-			dirfd = open(optarg, O_PATH | extra_flags);
+			dirfd = open(optarg, O_PATH | O_DIRECTORY | extra_flags);
 			if (dirfd < 0)
 				return dirfd;
 			break;
diff --git a/fs/fs.c b/fs/fs.c
index 1766719c567a..fd5818c36c20 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -337,16 +337,23 @@ static void put_file(struct file *f)
 
 static struct file *fd_to_file(int fd, bool o_path_ok)
 {
-	if (fd < 0 || fd >= MAX_FILES || !files[fd].fsdev) {
-		errno = EBADF;
-		return ERR_PTR(-errno);
-	}
-	if (!o_path_ok && (files[fd].f_flags & O_PATH)) {
-		errno = EINVAL;
-		return ERR_PTR(-errno);
+	int err = -EBADF;
+	unsigned flimits;
+
+	if (fd < 0 || fd >= MAX_FILES || !files[fd].fsdev)
+		goto err;
+
+	flimits = files[fd].f_flags & (O_PATH | O_DIRECTORY);
+	if (!o_path_ok && flimits) {
+		if (flimits & O_DIRECTORY)
+			err = -EBADF;
+		goto err;
 	}
 
 	return &files[fd];
+err:
+	errno = -err;
+	return ERR_PTR(err);
 }
 
 static int create(struct dentry *dir, struct dentry *dentry)
@@ -2545,7 +2552,7 @@ int openat(int dirfd, const char *pathname, int flags)
 	struct dentry *dentry = NULL;
 	struct path path;
 
-	if (flags & O_TMPFILE) {
+	if ((flags & O_TMPFILE) == O_TMPFILE) {
 		fsdev = get_fsdevice_by_path(dirfd, pathname);
 		if (!fsdev) {
 			errno = ENOENT;
@@ -2596,11 +2603,16 @@ int openat(int dirfd, const char *pathname, int flags)
 			error = -ENOENT;
 			goto out1;
 		}
-	} else if (!(flags & O_PATH)) {
-		if (d_is_dir(dentry) && !dentry_is_tftp(dentry)) {
+	} else if (d_is_dir(dentry)) {
+		if (!(flags & (O_PATH | O_DIRECTORY)) && !dentry_is_tftp(dentry)) {
 			error = -EISDIR;
 			goto out1;
 		}
+
+		flags |= O_DIRECTORY;
+	} else if (flags & O_DIRECTORY) {
+		error = -ENOTDIR;
+		goto out1;
 	}
 
 	inode = d_inode(dentry);
diff --git a/test/self/dirfd.c b/test/self/dirfd.c
index 20b54258715a..1f9b375e84ff 100644
--- a/test/self/dirfd.c
+++ b/test/self/dirfd.c
@@ -99,8 +99,8 @@ static void test_dirfd(void)
 {
 	int fd;
 
-	fd = open("/", O_PATH);
-	if (expect(fd < 0, false, "open(/, O_PATH) = %d", fd))
+	fd = open("/", O_PATH | O_DIRECTORY);
+	if (expect(fd < 0, false, "open(/, O_PATH | O_DIRECTORY) = %d", fd))
 		close(fd);
 
 #define B(dot, dotdot, zero, dev) 0b##dev##zero##dotdot##dot
@@ -119,7 +119,7 @@ static void test_dirfd(void)
 	do_test_dirfd("AT_FDCWD", AT_FDCWD,
 		      B(110,110,000,111), B(111,110,111,000),
 		      B(110,110,000,111), B(110,110,000,111));
-	do_test_dirfd("/dev", open("/dev", O_PATH),
+	do_test_dirfd("/dev", open("/dev", O_PATH | O_DIRECTORY),
 		      B(111,110,111,000), B(111,110,111,000),
 		      B(110,110,000,111), B(110,110,000,111));
 	do_test_dirfd("/dev O_CHROOT", open("/dev", O_PATH | O_CHROOT),
-- 
2.39.5




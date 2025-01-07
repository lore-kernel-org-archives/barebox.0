Delivery-date: Tue, 07 Jan 2025 09:03:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4Yz-000Eot-25
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 09:03:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4YY-0001kq-Nz
	for lore@pengutronix.de; Tue, 07 Jan 2025 09:03:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vh9Yg4bAq9gD/eR4DpIt+GG4klTOQ07eEYmoVX/XGVE=; b=sVvBAAlcMWLpr8sBBsmLcu0Vtj
	crhXbqdWSUOfA4YIVWxVKd6qNsBomMNRBjtIgqdVQp87c3p8th9pkpbguclWwLXNCBcF7o4w/JPdV
	nX7zluJYuMkgLSwE8IRnnmhv1BD5C62TaS/V0ZCT2gfLPtV+RsEZKjHhYxgajDm+OFfVAWykvRsey
	tIMHsKB/nPdCZ+ybSbtBFNA3PGOgI+Vp1vo3FCpW1nOHDEaHQcbg2FJX32CGZl6z7Apw3QlD1iRL2
	d104JR+A+oz95gzdbhigRn3/4JVt39F0weV4BpDpCxmyBZf6ctxMQFmk0sFvHQUthTj6xMFfr4Imx
	TQVSIifA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4XI-00000003q0P-1uVK;
	Tue, 07 Jan 2025 08:02:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4VI-00000003pVH-21TE
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 07:59:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VH-0000rO-8E; Tue, 07 Jan 2025 08:59:55 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VG-007Iqc-0r;
	Tue, 07 Jan 2025 08:59:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VG-00Bv76-32;
	Tue, 07 Jan 2025 08:59:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Jan 2025 08:59:34 +0100
Message-Id: <20250107075939.2841119-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
References: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_235956_525568_7F451FB1 
X-CRM114-Status: GOOD (  14.86  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/8] fs: retire FILE.in_use member
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upstream struct file doesn't have an in_use member. As we already
have an fsdev member in struct filep, we can just use that to mark that
the file descriptor is already in use.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c      | 21 +++++++++------------
 include/fs.h |  1 -
 2 files changed, 9 insertions(+), 13 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 57d173beb737..2adce54a61b6 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -304,14 +304,14 @@ char *get_mounted_path(const char *path)
 	return fdev->path;
 }
 
-static FILE *get_file(void)
+static FILE *get_file(struct fs_device *fsdev)
 {
 	int i;
 
 	for (i = 3; i < MAX_FILES; i++) {
-		if (!files[i].in_use) {
+		if (!files[i].fsdev) {
 			memset(&files[i], 0, sizeof(FILE));
-			files[i].in_use = 1;
+			files[i].fsdev = fsdev;
 			return &files[i];
 		}
 	}
@@ -330,14 +330,14 @@ static void put_file(FILE *f)
 {
 	free(f->path);
 	f->path = NULL;
-	f->in_use = 0;
+	f->fsdev = NULL;
 	iput(f->f_inode);
 	dput(f->dentry);
 }
 
 static FILE *fd_to_file(int fd, bool o_path_ok)
 {
-	if (fd < 0 || fd >= MAX_FILES || !files[fd].in_use) {
+	if (fd < 0 || fd >= MAX_FILES || !files[fd].fsdev) {
 		errno = EBADF;
 		return ERR_PTR(-errno);
 	}
@@ -2564,7 +2564,7 @@ int openat(int dirfd, const char *pathname, int flags)
 			return -errno;
 		}
 
-		f = get_file();
+		f = get_file(fsdev);
 		if (!f) {
 			errno = EMFILE;
 			return -errno;
@@ -2576,7 +2576,6 @@ int openat(int dirfd, const char *pathname, int flags)
 		f->f_inode->i_mode = S_IFREG;
 		f->flags = flags;
 		f->size = 0;
-		f->fsdev = fsdev;
 
 		return file_to_fd(f);
 	}
@@ -2647,8 +2646,10 @@ int openat(int dirfd, const char *pathname, int flags)
 	}
 
 	inode = d_inode(dentry);
+	sb = inode->i_sb;
+	fsdev = container_of(sb, struct fs_device, sb);
 
-	f = get_file();
+	f = get_file(fsdev);
 	if (!f) {
 		error = -EMFILE;
 		goto out1;
@@ -2660,12 +2661,8 @@ int openat(int dirfd, const char *pathname, int flags)
 	f->flags = flags;
 	f->size = inode->i_size;
 
-	sb = inode->i_sb;
-	fsdev = container_of(sb, struct fs_device, sb);
 	fsdrv = fsdev->driver;
 
-	f->fsdev = fsdev;
-
 	if (flags & O_PATH)
 		return file_to_fd(f);
 
diff --git a/include/fs.h b/include/fs.h
index 5525dc1c9f17..1deb1a87bb7f 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -29,7 +29,6 @@ typedef struct filep {
 
 	void *priv;         /* private to the filesystem driver              */
 
-	char in_use;
 
 	struct inode *f_inode;
 	struct dentry *dentry;
-- 
2.39.5




Delivery-date: Tue, 07 Jan 2025 09:03:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4ZB-000Epa-2p
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 09:03:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4Yj-0001pB-95
	for lore@pengutronix.de; Tue, 07 Jan 2025 09:03:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NVcHb3VWp201XJJz1/ciV16G1POFXwG++0eOzECiqVc=; b=RjEcZntk/WDequ/3K7pH/IIMz2
	7W6bEkJRAiiVz8pdL3Y37rdZ+jmqZkVI3ecf5+nG/jLt18PdHUxxJOdPUXErBf+WURhxeJhg/idCb
	+SCi/g/l8Ffn0KXXI+KDcuIVCc8XT4oAVuhOQtJlDUlVCK/Cy+xMa7HtV5aRtCL2CXVSkFAVra8L1
	RFcJC+plf7Uh51syI/irjNZUHqYG+VY9Kn0B6dRwyQrwC49VaiPy8/BNN1QWzGc+/E2XHqoZdxs5B
	r+JkAYRwxaDm17Ati8piW+k0kcIu6v550bpDkiBBcKRdj474zJrRnpl1pfzmhMHWoUXDTg+wffjLT
	qRXMSBWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4XJ-00000003q1V-2sMz;
	Tue, 07 Jan 2025 08:02:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4VI-00000003pVJ-2BK0
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 07:59:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VH-0000rM-4W; Tue, 07 Jan 2025 08:59:55 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VG-007IqW-0Y;
	Tue, 07 Jan 2025 08:59:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VG-00Bv76-2k;
	Tue, 07 Jan 2025 08:59:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Jan 2025 08:59:32 +0100
Message-Id: <20250107075939.2841119-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
References: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_235956_562323_F22E47B4 
X-CRM114-Status: GOOD (  15.98  )
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
Subject: [PATCH 1/8] fs: derive file descriptor number by pointer arithmetic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for merging struct file and struct filep, we are going to
remove struct filep specific members that are not in the upstream struct
file. The .no member is an easy one, because it's just the index
relative to the base of the file descriptor array and can thus be
simply replaced by a subtraction.

While at it, we move the array to static storage as there is no extra
initialization being done.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c      | 19 ++++++++++++-------
 include/fs.h |  2 --
 2 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 57bd781025f9..57d173beb737 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -221,7 +221,7 @@ static char *cwd;
 static struct dentry *cwd_dentry;
 static struct vfsmount *cwd_mnt;
 
-static FILE *files;
+static FILE files[MAX_FILES];
 static struct dentry *d_root;
 static struct vfsmount *mnt_root;
 
@@ -232,8 +232,6 @@ static int init_fs(void)
 	cwd = xzalloc(PATH_MAX);
 	*cwd = '/';
 
-	files = xzalloc(sizeof(FILE) * MAX_FILES);
-
 	return 0;
 }
 
@@ -314,13 +312,20 @@ static FILE *get_file(void)
 		if (!files[i].in_use) {
 			memset(&files[i], 0, sizeof(FILE));
 			files[i].in_use = 1;
-			files[i].no = i;
 			return &files[i];
 		}
 	}
 	return NULL;
 }
 
+static int file_to_fd(FILE *f)
+{
+	int fd = f - files;
+	if (fd < 0 || fd >= ARRAY_SIZE(files))
+		return -EBADFD;
+	return fd;
+}
+
 static void put_file(FILE *f)
 {
 	free(f->path);
@@ -2573,7 +2578,7 @@ int openat(int dirfd, const char *pathname, int flags)
 		f->size = 0;
 		f->fsdev = fsdev;
 
-		return f->no;
+		return file_to_fd(f);
 	}
 
 	filename = getname(pathname);
@@ -2662,7 +2667,7 @@ int openat(int dirfd, const char *pathname, int flags)
 	f->fsdev = fsdev;
 
 	if (flags & O_PATH)
-		return f->no;
+		return file_to_fd(f);
 
 	if (fsdrv->open) {
 		char *pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
@@ -2684,7 +2689,7 @@ int openat(int dirfd, const char *pathname, int flags)
 	if (flags & O_APPEND)
 		f->pos = f->size;
 
-	return f->no;
+	return file_to_fd(f);
 
 out:
 	put_file(f);
diff --git a/include/fs.h b/include/fs.h
index 137eb2d2863e..5525dc1c9f17 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -29,8 +29,6 @@ typedef struct filep {
 
 	void *priv;         /* private to the filesystem driver              */
 
-	/* private fields. Mapping between FILE and filedescriptor number     */
-	int no;
 	char in_use;
 
 	struct inode *f_inode;
-- 
2.39.5




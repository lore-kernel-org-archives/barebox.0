Delivery-date: Wed, 11 Jun 2025 17:20:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPNFL-006Byq-2D
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 17:20:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPNFL-00064V-3w
	for lore@pengutronix.de; Wed, 11 Jun 2025 17:20:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/S/NAeiHZLAT2UrnYPmRJYfCjvQIjtOi+x+o4lBZ99I=; b=v4WENvoJhPLEZnFROAsMUfLAo9
	1cqKwfDe1s6ZK0kzbJhI8zdT/H8qxnUgO0AP7Y8iRGNy2Lce9aNWCCdCJ0LqVpIf5MCxJQOwcgdLL
	eWz0U+VOc7HLJ+s1xMtg7egG7g2hM4++5K9ZY/jhcJMq2iFYeVXJT99p4L/N2bH2dCYCKDz0kUQci
	qwvGxlFxs4yubCaooLwNhb902jIFxliZab4mBq68sW7V8RF8pdD2INh6fzLn5A08O4HATOJQtO5wM
	rmpR0N/VpRAcfvhqNtx4ZUxvWLZBoqiHzH8/50jbiSPvwK1rcPmqzzwZFVYMeeM+P934fgA+DR0M4
	y64gtf8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPNEn-0000000AMe9-24EG;
	Wed, 11 Jun 2025 15:19:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPK4Q-00000009nbd-3AZD
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 11:56:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPK4L-0004Gv-Lo; Wed, 11 Jun 2025 13:56:37 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPK4L-002wNO-1S;
	Wed, 11 Jun 2025 13:56:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPK4L-00E1Mv-14;
	Wed, 11 Jun 2025 13:56:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 11 Jun 2025 13:56:34 +0200
Message-Id: <20250611115635.3341350-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_045642_792641_1522AE8C 
X-CRM114-Status: GOOD (  14.22  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fs: unreference path on file close
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since commit 83ffe89840e8 ("fs: use filename_create/filename_lookup
instead of open-coding") we no longer open-code the file lookup during
openat(). Unlike the open-coded variant filename_lookup() keeps a
reference to the file which is now leaked and the filesystem cannot be
unmounted anymore:

umount: Device or resource busy

Since commit a1da0079d162 ("fs: implement opendir in terms of fdopendir")
this also happens when just a directory is opened.

The original code was not quite correct: After calling terminate_walk()
we no longer held a reference to the path for an opened file. Transfer
the path to the already existing f_path in struct file and unreference
it a close() time.

Fixes: 83ffe89840e8 ("fs: use filename_create/filename_lookup instead of open-coding")
Fixes: a1da0079d162 ("fs: implement opendir in terms of fdopendir")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index d401268c1e..18343552a7 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -330,7 +330,7 @@ static void put_file(struct file *f)
 	f->path = NULL;
 	f->fsdev = NULL;
 	iput(f->f_inode);
-	dput(f->f_dentry);
+	path_put(&f->f_path);
 }
 
 static struct file *fd_to_file(int fd, bool o_path_ok)
@@ -2550,7 +2550,7 @@ int openat(int dirfd, const char *pathname, int flags)
 	int error = 0;
 	struct inode *inode = NULL;
 	struct dentry *dentry = NULL;
-	struct path path;
+	struct path path = {};
 
 	if (flags & O_TMPFILE) {
 		error = filename_lookup(dirfd, getname(pathname), LOOKUP_DIRECTORY, &path);
@@ -2628,11 +2628,12 @@ int openat(int dirfd, const char *pathname, int flags)
 	f = get_file(fsdev);
 	if (!f) {
 		error = -EMFILE;
+		path_put(&path);
 		goto out1;
 	}
 
 	f->path = dpath(dentry, d_root);
-	f->f_dentry = dentry;
+	f->f_path = path;
 	f->f_inode = iget(inode);
 	f->f_flags = flags;
 
-- 
2.39.5




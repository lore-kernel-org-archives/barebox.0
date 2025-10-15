Delivery-date: Wed, 15 Oct 2025 10:35:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8wz4-0082Bo-0r
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 10:35:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8wz3-0000gw-NQ
	for lore@pengutronix.de; Wed, 15 Oct 2025 10:35:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MYFiYCYEw1WURJggWSzCAOOqAEcZlJoGvaKg9h6Wohw=; b=4Fn6/AiAbEl/cNOkhv/+J+ftbC
	UoZuwF3YPcw+NcgZRl5ezR/1c0NdSOvgLJtG4KY3cYSn3qujal58HjVlDfR8KouKcRgbNVbjUvX2V
	zRxhpLUyYbYe8e1l9pjHNTQbJZCozQVp4verqzPcuq1a1G7DvETSC6M1bUm0Dm4YoK/IbgOsuk+PW
	liCh+RCVpVY9bvFIsfgBASPBavT5NJa89+xIcEgHW3M7aiirTYKV5zPThK5uTt/t5ccFmVhnENbXF
	KEWVD8d2+IMPfqm98wzf+iucNLWQmmndOI1OqlibC7kYMaJIGto7m3dRDmtXjcpGuFhroFb2uR2/w
	uTVkuWjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wyd-00000000xGr-1cb0;
	Wed, 15 Oct 2025 08:35:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wya-00000000xFq-2zGh
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 08:35:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1v8wyY-0000a9-Mu; Wed, 15 Oct 2025 10:35:14 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 15 Oct 2025 10:34:15 +0200
Message-ID: <20251015083512.4099259-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_013516_755835_A4358A5B 
X-CRM114-Status: GOOD (  11.47  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fs: factor out final file open logic out of openat()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The final open logic will be reused for the tmpfile logic in a
follow-up commit, so factor it out into a function with semantics
similar to the Linux equivalent.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/fs.c | 53 ++++++++++++++++++++++++++++++++---------------------
 1 file changed, 32 insertions(+), 21 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index e2bcd8ea33b2..76b1ec4c910a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2561,10 +2561,37 @@ static int rmdirat(int dirfd, const char *pathname)
 	return errno_set(error);
 }
 
+static int do_dentry_open(struct file *f)
+{
+	int error;
+
+	f->f_inode = d_inode(f->f_path.dentry);
+
+	if (unlikely(f->f_flags & O_PATH))
+		return 0;
+
+	if (f->f_inode->i_fop->open) {
+		error = f->f_inode->i_fop->open(f->f_inode, f);
+		if (error)
+			return error;
+	}
+
+	if (f->f_flags & O_TRUNC) {
+		error = fsdev_truncate(f, 0);
+		f->f_size = 0;
+		if (error)
+			return error;
+	}
+
+	if (f->f_flags & O_APPEND)
+		f->f_pos = f->f_size;
+
+	return 0;
+}
+
 int openat(int dirfd, const char *pathname, int flags)
 {
 	struct fs_device *fsdev;
-	struct fs_driver *fsdrv;
 	struct super_block *sb;
 	struct file *f;
 	int error = 0;
@@ -2660,29 +2687,13 @@ int openat(int dirfd, const char *pathname, int flags)
 
 	f->path = dpath(dentry, d_root);
 	f->f_path = path;
-	f->f_inode = iget(inode);
 	f->f_flags = flags;
 
-	fsdrv = fsdev->driver;
+	iget(inode);
 
-	if (flags & O_PATH)
-		return file_to_fd(f);
-
-	if (f->f_inode->i_fop->open) {
-		error = f->f_inode->i_fop->open(inode, f);
-		if (error)
-			goto out;
-	}
-
-	if (flags & O_TRUNC) {
-		error = fsdev_truncate(f, 0);
-		f->f_size = 0;
-		if (error)
-			goto out;
-	}
-
-	if (flags & O_APPEND)
-		f->f_pos = f->f_size;
+	error = do_dentry_open(f);
+	if (error)
+		goto out;
 
 	return file_to_fd(f);
 
-- 
2.47.3




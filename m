Delivery-date: Wed, 03 Jan 2024 19:36:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66C-002OAB-0k
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL663-0007RY-9b
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ejFfDRyaMvje3Snwz+7KY7aEyaDln3oy1VljOsdMNVo=; b=wOD3+f1NtibP/kInZIMmDszp7q
	lGThiz4HQyKaKFdt+VqKW2tWSEEgs76gKeOnQOZ3IVoyZ5FJRGnMMRU2JONuh0WGkl5uK2hNauuLe
	WQcYlDCc1j9pbFlCHZmMNe8I5+Oz9cC+8hZShJSBrOHGtE6AfarYxHP19rd82T1Q4deOchAbzdp8P
	jIuL1rEX7F6a3A6UPsBWpLcPJDuf4X7zpdQVniHNl7aTcRYvrmor8sLJJR4Xeq90ND29C6B6ye1iJ
	U5NetvOE5heamfyObWVGYXlHajV9wlhCGFdHRDe8BWFgZheK5lYe2PQXWzoks1ieFH28JBz6H5rNA
	waSBNToQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64O-00Bl1G-1V;
	Wed, 03 Jan 2024 18:34:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61L-00BhPk-2z
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ejFfDRyaMvje3Snwz+7KY7aEyaDln3oy1VljOsdMNVo=; b=vk+y3+PU5/lxX98QW6rzaVqYtK
	Ak7BnGhryjcX278oCt6d345lCQLSGJ6HYlGe8KCvlE+S90Ov2zpDgDHwM+XW2GzaNws9QQPC0atag
	d0jHXHeDVsDnZRpo7w6xByGX4ed/xe7ZnWQx+mEAfFEAvigGFRVP3kkYS9vri4hpAk4JdBI3QCuee
	QEEbJGlGihUikNPO9d38d1I9rYJrZYEcBA/8Y7IkRBobJCx6wKy84/Nnh4teE0Nd5nsk8Q51QHC4w
	PCjy2l6RQkMTy3s4u513oSvfUyx9pxknggw06SFCrV/WgTSu8wr2HFgVqg2/WjwbZ2YTMac3SHKCz
	YHztGBNQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61D-00DIm7-3v
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-0001XG-FX; Wed, 03 Jan 2024 19:30:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-000AvG-1w; Wed, 03 Jan 2024 19:30:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-0z;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:50 +0100
Message-Id: <20240103181312.409668-31-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183108_555079_DC49F1A0 
X-CRM114-Status: GOOD (  12.26  )
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
Subject: [PATCH 030/112] fs: factor out opendir iteration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for supporting fdopendir and rewinddir, add an __opendir
helper that is reused in a follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 52 ++++++++++++++++++++++++++++++++--------------------
 1 file changed, 32 insertions(+), 20 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index a31343e2e272..96ca0f110393 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2708,15 +2708,39 @@ int symlink(const char *pathname, const char *newpath)
 }
 EXPORT_SYMBOL(symlink);
 
-static void release_dir(DIR *d)
+static void __release_dir(DIR *d)
 {
 	struct readdir_entry *entry, *tmp;
 
 	list_for_each_entry_safe(entry, tmp, &d->entries, list) {
 		free(entry);
 	}
+}
 
-	free(d);
+static int __opendir(DIR *d)
+{
+	int ret;
+	struct file file = {};
+	struct path *path = &d->path;
+	struct dentry *dir = path->dentry;
+	struct readdir_callback rd = {
+		.ctx = {
+			.actor = fillonedir,
+		},
+	};
+
+	file.f_path.dentry = dir;
+	file.f_inode = d_inode(dir);
+	file.f_op = dir->d_inode->i_fop;
+
+	INIT_LIST_HEAD(&d->entries);
+	rd.dir = d;
+
+	ret = file.f_op->iterate(&file, &rd.ctx);
+	if (ret)
+		__release_dir(d);
+
+	return ret;
 }
 
 DIR *opendir(const char *pathname)
@@ -2724,14 +2748,8 @@ DIR *opendir(const char *pathname)
 	int ret;
 	struct dentry *dir;
 	struct inode *inode;
-	struct file file = {};
 	DIR *d;
 	struct path path = {};
-	struct readdir_callback rd = {
-		.ctx = {
-			.actor = fillonedir,
-		},
-	};
 
 	ret = filename_lookup(getname(pathname),
 			      LOOKUP_FOLLOW | LOOKUP_DIRECTORY, &path);
@@ -2752,24 +2770,17 @@ DIR *opendir(const char *pathname)
 		goto out_put;
 	}
 
-	file.f_path.dentry = dir;
-	file.f_inode = d_inode(dir);
-	file.f_op = dir->d_inode->i_fop;
-
 	d = xzalloc(sizeof(*d));
 	d->path = path;
 
-	INIT_LIST_HEAD(&d->entries);
-	rd.dir = d;
-
-	ret = file.f_op->iterate(&file, &rd.ctx);
+	ret = __opendir(d);
 	if (ret)
-		goto out_release;
+		goto out_free;
 
 	return d;
 
-out_release:
-	release_dir(d);
+out_free:
+	free(d);
 out_put:
 	path_put(&path);
 out:
@@ -2785,7 +2796,8 @@ int closedir(DIR *dir)
 		return errno_set(-EBADF);
 
 	path_put(&dir->path);
-	release_dir(dir);
+	__release_dir(dir);
+	free(dir);
 
 	return 0;
 }
-- 
2.39.2




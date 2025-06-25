Delivery-date: Wed, 25 Jun 2025 11:18:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUMGW-00Asxj-1R
	for lore@lore.pengutronix.de;
	Wed, 25 Jun 2025 11:18:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUMGV-0000eO-RR
	for lore@pengutronix.de; Wed, 25 Jun 2025 11:18:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NObxM2y9kKa+1Kvy+vwnzdKfSEWvBr6i14r+d/b7Sw4=; b=xscQWdz2VSFIk8Tn0DKK5ByROb
	7JZ+CWQQ0fjtxcQ40cNK9S2uuAt5peXxPXdKrdUEBVfi0BILaocWyTjxFmkiYD08Sf1G66+JX9nz7
	0L7+0ns+Wqf7/DtXWyHQ6mu5hT9XYLlatz9JGvXr8UDW2qRpesX79ULlusq9iAV2p4NbraIzGs5x0
	e9PoIkV34iUB5hv4RPd8upz1VQlvp7y5AayeVhiIK7MQfl2GvRvZUZyWrq+MTPhwchp6YEbtce3/i
	CgcmKzaPxxKuDrT9ptYzgLHmDHgE1KNA26yWxcy5GP1qI5DjveeFCc5CIY9AZ9C5dPSThjxjKSQrn
	HKu4rzbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMFq-000000086DP-14MD;
	Wed, 25 Jun 2025 09:17:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uULbf-00000007yWE-0b0r
	for barebox@lists.infradead.org;
	Wed, 25 Jun 2025 08:35:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uULbd-0003Vx-BO; Wed, 25 Jun 2025 10:35:45 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uULbd-005FdQ-0X;
	Wed, 25 Jun 2025 10:35:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uULbd-00BAEh-0A;
	Wed, 25 Jun 2025 10:35:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 25 Jun 2025 10:35:44 +0200
Message-Id: <20250625083544.2660810-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_013547_177752_6191A169 
X-CRM114-Status: GOOD (  14.74  )
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
Subject: [PATCH] fs: drop f_dentry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Defining f_dentry f_path.dentry is confusing as it suggests that a
struct member f_dentry is modified that doesn't exist and furthermore
it suggests that the f_path member is not modified. Drop the define
and replace its usage with f_path.dentry directly. While at it remove
the unused define f_vfsmnt.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/9p/vfs_file.c       | 2 +-
 fs/9p/vfs_inode_dotl.c | 2 +-
 fs/fs.c                | 4 ++--
 fs/legacy.c            | 2 +-
 fs/tftp.c              | 2 +-
 include/linux/fs.h     | 2 --
 6 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index 2a44a77326..f99f7f294b 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -44,7 +44,7 @@ int v9fs_file_open(struct inode *inode, struct file *file)
 	fid = file->private_data;
 
 	if (!fid) {
-		fid = v9fs_fid_clone(file->f_dentry);
+		fid = v9fs_fid_clone(file->f_path.dentry);
 		if (IS_ERR(fid))
 			return PTR_ERR(fid);
 
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index 2eb3cc9274..46fc858eae 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -319,7 +319,7 @@ v9fs_truncate(struct device *dev, struct file *f, loff_t size)
 		.ia_file = f,
 	};
 
-	return v9fs_vfs_setattr_dotl(f->f_dentry, &iattr);
+	return v9fs_vfs_setattr_dotl(f->f_path.dentry, &iattr);
 }
 
 /**
diff --git a/fs/fs.c b/fs/fs.c
index 3580bff6f5..3d7bea3a63 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2243,7 +2243,7 @@ static const char *path_init(int dirfd, struct nameidata *nd, unsigned flags)
 			return ERR_CAST(f);
 
 		nd->path.mnt = &f->fsdev->vfsmount;
-		nd->path.dentry = f->f_dentry;
+		nd->path.dentry = f->f_path.dentry;
 		follow_mount(&nd->path);
 
 		if (*s == '/')
@@ -2590,7 +2590,7 @@ int openat(int dirfd, const char *pathname, int flags)
 		}
 
 		f->path = NULL;
-		f->f_dentry = NULL;
+		f->f_path.dentry = NULL;
 		f->f_inode = new_inode(&fsdev->sb);
 		f->f_inode->i_mode = S_IFREG;
 		f->f_flags = flags;
diff --git a/fs/legacy.c b/fs/legacy.c
index f0901ce0d4..5cb4ec22fe 100644
--- a/fs/legacy.c
+++ b/fs/legacy.c
@@ -89,7 +89,7 @@ static int legacy_open(struct inode *inode, struct file *file)
 	if (!legacy_ops->open)
 		return 0;
 
-	pathname = dpath(file->f_dentry, fsdev->vfsmount.mnt_root);
+	pathname = dpath(file->f_path.dentry, fsdev->vfsmount.mnt_root);
 	error = legacy_ops->open(&file->fsdev->dev, file, pathname);
 	free(pathname);
 
diff --git a/fs/tftp.c b/fs/tftp.c
index 5cb71431eb..01ebcbfc7a 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -769,7 +769,7 @@ static int tftp_open(struct inode *inode, struct file *file)
 {
 	struct file_priv *priv;
 
-	priv = tftp_do_open(&file->fsdev->dev, file->f_flags, file->f_dentry, false);
+	priv = tftp_do_open(&file->fsdev->dev, file->f_flags, file->f_path.dentry, false);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 7ae52d476d..55e01d386d 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -228,8 +228,6 @@ struct file {
 #define FILE_SIZE_STREAM	((loff_t) -1)
 #define f_size f_inode->i_size
 	struct inode		*f_inode;	/* cached value */
-#define f_dentry	f_path.dentry
-#define f_vfsmnt	f_path.mnt
 	const struct file_operations	*f_op;
 	unsigned int 		f_flags;
 	loff_t			f_pos;
-- 
2.39.5




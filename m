Delivery-date: Wed, 15 Oct 2025 10:17:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8whR-0081y9-20
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 10:17:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8whR-0006ar-1F
	for lore@pengutronix.de; Wed, 15 Oct 2025 10:17:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qnk5aswVxRd8ICuiHEYPZhu0ykZQbSCzb+3yKlea7CA=; b=AlatC+Vs00vQ/tsLxzMhS/JayF
	QRstFks19a8oUAG41yHXXfegkfD6hc8DtRsvcSq7l4t87np+S4/TQrEBCxwfCx/nrCGtDkSCW8jkW
	dzLMq6rcKjpZYyRZmSX6CfWVBk0+9H7lrrKRNvdKog86DcISWVf9HAinukpYUny8CYPNgMaILD5QN
	OXQ5KmOXdxo7dKR+wfK6e1RLHZnw9gxKPCVMwLGy7DoNWpmx0Xlch46UErqMLbVlUI8kI5A24qbU2
	TupvQlR0P2Gsskf117iWpeCfpCg+5MqgD9xAW4ycCGRSV58IGZGNwCVJFrKK2mkLuDWIICx/kusov
	OqUxDf4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wgr-00000000sQ2-2Nl0;
	Wed, 15 Oct 2025 08:16:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wgn-00000000sOt-2pys
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 08:16:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1v8wgk-0006SV-0T; Wed, 15 Oct 2025 10:16:50 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 15 Oct 2025 10:16:46 +0200
Message-ID: <20251015081648.4078283-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251015081648.4078283-1-a.fatoum@barebox.org>
References: <20251015081648.4078283-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_011653_716535_B9A62C6C 
X-CRM114-Status: GOOD (  11.19  )
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
Subject: [PATCH 2/2] fs: add filepath helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This helper can be useful for debugging code, so export it in a header
and make first use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/legacy.c  | 8 ++++----
 include/fs.h | 5 +++++
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/fs/legacy.c b/fs/legacy.c
index c2170f52a40b..dce14706ca20 100644
--- a/fs/legacy.c
+++ b/fs/legacy.c
@@ -16,8 +16,7 @@ static struct inode *legacy_get_inode(struct super_block *sb, const struct inode
 
 static int legacy_iterate(struct file *file, struct dir_context *ctx)
 {
-	struct dentry *dentry = file->f_path.dentry;
-	struct inode *dir = d_inode(dentry);
+	struct inode *dir = d_inode(file->f_path.dentry);
 	struct super_block *sb = dir->i_sb;
 	struct fs_device *fsdev = container_of(sb, struct fs_device, sb);
 	const struct fs_legacy_ops *legacy_ops = fsdev->driver->legacy_ops;
@@ -27,7 +26,7 @@ static int legacy_iterate(struct file *file, struct dir_context *ctx)
 
 	dir_emit_dots(file, ctx);
 
-	pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
+	pathname = filepath(file);
 
 	d = legacy_ops->opendir(&fsdev->dev, pathname);
 	if (!d)
@@ -87,7 +86,8 @@ static int legacy_open(struct inode *inode, struct file *file)
 	if (!legacy_ops->open)
 		return 0;
 
-	pathname = dpath(file->f_path.dentry, fsdev->vfsmount.mnt_root);
+	pathname = filepath(file);
+
 	error = legacy_ops->open(&file->fsdev->dev, file, pathname);
 	free(pathname);
 
diff --git a/include/fs.h b/include/fs.h
index 86442eacddf9..98c482bbf2a9 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -172,4 +172,9 @@ static inline const char *devpath_to_name(const char *devpath)
 
 const char *fs_detect(const char *filename, const char *fsoptions);
 
+static inline char *filepath(struct file *f)
+{
+	return dpath(f->f_path.dentry, f->fsdev->vfsmount.mnt_root);
+}
+
 #endif /* __FS_H */
-- 
2.47.3




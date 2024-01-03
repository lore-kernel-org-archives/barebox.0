Delivery-date: Wed, 03 Jan 2024 19:33:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63O-002Ngh-0t
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63G-00048X-3n
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Baak85FtRM8+D8gpSNJyCeFjYqrwUC0LLOUrJHpdzss=; b=YhpSrJbAx7znZXvtZ6lqW5IHt/
	OGG4+3B0l/RMge7DD/n9pBj3ojyglYh5nWgeNbfo0KVM3c7eN+fH0KmoEZvR4GZsHbEV/p5cqj5Vv
	9WrX4EiERFHxrDRuCdvJSV32y75vqhjveCM9W8h9htdynSiUq0OdAnKbcZ9B4P09EmkNFTatrVQdw
	yGJTPRgkR+F3Pm252oB3aeum2L1aYjiCqvZ//SXitbV0clvqORjpXImwoKnohR05pYO3cg2KELW7b
	8xGY+rVpyYg0e2DrkGpto1pwa2WWbQqKD1VJ19WQ1we61RFHFYMkwUdBUTzZne4vcUcVFLE9O1PVj
	BP3bfXNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61s-00Bi1i-1L;
	Wed, 03 Jan 2024 18:31:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL618-00Bh68-1W
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-0001QE-8T; Wed, 03 Jan 2024 19:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-000At1-R2; Wed, 03 Jan 2024 19:30:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-2A;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:58 +0100
Message-Id: <20240103181312.409668-39-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103102_535133_B417978F 
X-CRM114-Status: GOOD (  16.26  )
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
Subject: [PATCH 038/112] fs: implement O_CHROOT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by EFI file system path resolution, implement an O_CHROOT
flag that will map / to the root of the file system the dirfd points
to instead of the VFS root. If the dirfd points to a mountpoint, it will
be followed to the file system inside. This is similar to Linux openat2
with RESOLVE_IN_ROOT.

Without this, the EFI protocol would have to do path sanitization itself
before passing paths to the barebox VFS implementation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c         | 19 +++++++++++++++++--
 include/fcntl.h |  1 +
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 7fc638451f13..5f46918caafe 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2166,9 +2166,17 @@ static int link_path_walk(const char *name, struct nameidata *nd)
 	}
 }
 
+static bool file_has_flag(FILE *f, unsigned flag)
+{
+	if (IS_ERR_OR_NULL(f))
+		return false;
+	return (f->flags & flag) == flag;
+}
+
 static const char *path_init(int dirfd, struct nameidata *nd, unsigned flags)
 {
 	const char *s = nd->name->name;
+	bool chroot = false;
 	FILE *f = NULL;
 
 	nd->last_type = LAST_ROOT; /* if there are only slashes... */
@@ -2181,10 +2189,12 @@ static const char *path_init(int dirfd, struct nameidata *nd, unsigned flags)
 	/* We don't check for error here yet, as POSIX allows checking
 	 * whether paths are absolute with openat(-1, path, O_PATH)
 	 */
-	if (dirfd != AT_FDCWD)
+	if (dirfd != AT_FDCWD) {
 		f = fd_to_file(dirfd, true);
+		chroot = file_has_flag(f, O_CHROOT);
+	}
 
-	if (*s == '/') {
+	if (*s == '/' && !chroot) {
 		get_root(&nd->path);
 	} else if (dirfd == AT_FDCWD) {
 		get_pwd(&nd->path);
@@ -2195,6 +2205,11 @@ static const char *path_init(int dirfd, struct nameidata *nd, unsigned flags)
 		nd->path.mnt = &f->fsdev->vfsmount;
 		nd->path.dentry = f->dentry;
 		follow_mount(&nd->path);
+
+		if (*s == '/')
+			nd->path.dentry = nd->path.mnt->mnt_root;
+		if (chroot)
+			nd->d_root = nd->path.mnt->mnt_root;
 	}
 
 	return s;
diff --git a/include/fcntl.h b/include/fcntl.h
index a3f5d96cd0ac..532a3a0f6b1e 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -24,6 +24,7 @@
 #define O_DIRECTORY	00200000	/* must be a directory */
 #define O_NOFOLLOW	00400000	/* don't follow links */
 #define O_PATH		02000000	/* open as path */
+#define O_CHROOT	04000000	/* dirfd: stay within filesystem root */
 #define __O_TMPFILE	020000000
 
 #define O_TMPFILE       (__O_TMPFILE | O_DIRECTORY)
-- 
2.39.2




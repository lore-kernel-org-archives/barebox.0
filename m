Delivery-date: Mon, 04 Mar 2024 20:09:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDgn-008ddU-2e
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:09:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDgn-0004QZ-55
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:09:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9DkVt6H1dq5MWcxFU8GJAsSWrUh2XLt7TmAoPUc/JXU=; b=E8slVSwdv90zI+x9XOUUcUElCZ
	WOGJliy7DsS9ubi96LLZyA8GgX5jJlLRYKwZ8/tOpdH6Aqy46yxDLNO1NDHm+ES4B1XCxzFdMemWT
	TgV1BcF59mkLuqAF/d40f3S1Svq5qU6oxegtyHNawEOm3kJAI0ict1s5aOeFiVrq+UkXgnjiOA4v9
	wYZOLUygNVsIORbOD0U5Pi6wIfryaJ45UVZzF5JdJAnbvfvwdLP1AeGULYf/aQUytQ+ZzERa0dvQk
	mGdEOwVgmXg2x4BGFGvrxrPjgBcBx6dQlqR2Gk+nngASuBFPztQUsgSTpiGUuSJSnYshJ3KhU00g7
	tgBMxRBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDgE-0000000AMP5-1wcz;
	Mon, 04 Mar 2024 19:08:54 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaZ-0000000AIZk-2YKZ
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=9DkVt6H1dq5MWcxFU8GJAsSWrUh2XLt7TmAoPUc/JXU=; b=YgoreYM21gt6/axYnPNOcaWeRr
	CEqNM6+MyLfx0bA8DqYfa+pHE8LutyH+a9zj9w8mNDf0ktHRQRzEZIByW6QbC82nTMpT+uiQPsUnQ
	MFn2hISybsdA7gcOmDQaHbIOr9tSbhmkjVbICR+AAv8u3dlF5XQ3Jxzqa7wr3eO/pauuj9PMLxtXo
	F1uX/vyVpcd47L452Qxx1pmkt2YrhovBIO8JQH9gg+c1j6BiTxg1W/DM/rIETK2wcxb/rk0wenlP2
	LShb1CvP9fXQVW/2U0/q3j68BNlu996lM6/ay4nSuqND5wi0azYD+0PVkTB+9LlxZgxEemh4GCysj
	hsC3iv9g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaU-00000002BSq-3yvZ
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-00066i-Vz; Mon, 04 Mar 2024 20:02:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-004PJA-Ft; Mon, 04 Mar 2024 20:02:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-00Ed9V-2U;
	Mon, 04 Mar 2024 20:00:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:23 +0100
Message-Id: <20240304190038.3486881-39-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190259_133510_28E5B02A 
X-CRM114-Status: GOOD (  14.95  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 038/113] fs: implement O_CHROOT
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
index 7aa8a5d69b25..9b876fe1f9be 100644
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




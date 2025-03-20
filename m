Delivery-date: Thu, 20 Mar 2025 06:20:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Kq-001l4n-0d
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:20:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Ko-0003db-Sw
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:20:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jt8OxmOAjkLATc7wAkEtVpBxHqmoUx/2perVguF+0Xo=; b=wHGV9GVJiULjfwbi73RDKn1UJM
	oQK1IaKyTayQeWRLyfh4oIID98LqwEMQoS2k/aGu+WECggyyNiNTXfR9++d1vDIsI0hjBptBreSQH
	8J6dAVBp956qUFjhnH6UJQBYvCGduRnvWidZV/ts1BqulkJI3Ep6U9cKefLW+KlsE8HvGnw0pF8Mc
	AorV7KRYV8eY12oc0gq80HTXq74+EAXnuLoeDtvLbUiP4EVaH49LtvXKMGf13UtiPeHTcAwqqqiXQ
	yVACB+edq1fIA2TSAZCWVx4u+GaRHtJZMeVNhTjxxWDmOVsnqJhgS9AQO5rUl2Vhg38Zx7GrWwk6f
	jJ08xPtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KO-0000000BCUd-3gBB;
	Thu, 20 Mar 2025 05:20:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KL-0000000BCS3-3M74
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:20:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-0003Dw-JX; Thu, 20 Mar 2025 06:20:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KJ-000hvF-3D;
	Thu, 20 Mar 2025 06:20:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-007GGZ-13;
	Thu, 20 Mar 2025 06:20:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:20:14 +0100
Message-Id: <20250320052019.1726331-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
References: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_222021_835746_031D091B 
X-CRM114-Status: GOOD (  13.26  )
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
Subject: [PATCH 1/6] fs: use filename_create/filename_lookup instead of open-coding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By reusing the existing file lookup code, open can open all directories,
e.g. / and /tmp/., which so far wasn't possible.

We need to be able to open these paths for directory FDs to work as one
would expect.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c           | 55 ++++++++---------------------------------------
 test/self/dirfd.c |  7 +-----
 2 files changed, 10 insertions(+), 52 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 96ca60341ea4..1766719c567a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2543,9 +2543,7 @@ int openat(int dirfd, const char *pathname, int flags)
 	int error = 0;
 	struct inode *inode = NULL;
 	struct dentry *dentry = NULL;
-	struct nameidata nd;
-	const char *s;
-	struct filename *filename;
+	struct path path;
 
 	if (flags & O_TMPFILE) {
 		fsdev = get_fsdevice_by_path(dirfd, pathname);
@@ -2575,57 +2573,22 @@ int openat(int dirfd, const char *pathname, int flags)
 		return file_to_fd(f);
 	}
 
-	filename = getname(pathname);
-	if (IS_ERR(filename))
-		return PTR_ERR(filename);
-
-	set_nameidata(&nd, filename);
-
-	s = path_init(dirfd, &nd, LOOKUP_FOLLOW);
-	if (IS_ERR(s))
-		return PTR_ERR(s);
-
-	while (1) {
-		error = link_path_walk(s, &nd);
-		if (error)
-			break;
-
-		if (!d_is_dir(nd.path.dentry)) {
-			error = -ENOTDIR;
-			break;
-		}
-
-		dentry = __lookup_hash(&nd.last, nd.path.dentry, 0);
-		if (IS_ERR(dentry)) {
-			error = PTR_ERR(dentry);
-			break;
-		}
-
-		if (!d_is_symlink(dentry))
-			break;
-
-		dput(dentry);
-
-		error = lookup_last(&nd);
-		if (error <= 0)
-			break;
-
-		s = trailing_symlink(&nd);
-		if (IS_ERR(s)) {
-			error = PTR_ERR(s);
-			break;
-		}
+	if (flags & O_CREAT) {
+		dentry = filename_create(dirfd, getname(pathname), &path, 0);
+		error = PTR_ERR_OR_ZERO(dentry);
 	}
 
-	terminate_walk(&nd);
-	putname(nd.name);
+	if (!(flags & O_CREAT) || error == -EEXIST) {
+		error = filename_lookup(dirfd, getname(pathname), LOOKUP_FOLLOW, &path);
+		dentry = path.dentry;
+	}
 
 	if (error)
 		goto out1;
 
 	if (d_is_negative(dentry)) {
 		if (flags & O_CREAT) {
-			error = create(nd.path.dentry, dentry);
+			error = create(path.dentry, dentry);
 			if (error)
 				goto out1;
 		} else {
diff --git a/test/self/dirfd.c b/test/self/dirfd.c
index 644ff214fb37..20b54258715a 100644
--- a/test/self/dirfd.c
+++ b/test/self/dirfd.c
@@ -100,13 +100,8 @@ static void test_dirfd(void)
 	int fd;
 
 	fd = open("/", O_PATH);
-	if (expect(fd < 0, false, "open(/, O_PATH) = %d", fd)) {
+	if (expect(fd < 0, false, "open(/, O_PATH) = %d", fd))
 		close(fd);
-	} else {
-		pr_info("\tIgnoring expected failure\n");
-		failed_tests--;
-		skipped_tests++;
-	}
 
 #define B(dot, dotdot, zero, dev) 0b##dev##zero##dotdot##dot
 	/* We do fiften tests for every configuration
-- 
2.39.5




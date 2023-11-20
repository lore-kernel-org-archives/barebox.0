Delivery-date: Mon, 20 Nov 2023 09:39:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4zoT-001DKN-31
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 09:39:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4zoT-0008BC-VB
	for lore@pengutronix.de; Mon, 20 Nov 2023 09:39:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ji9KQ9PsxyaByaGgsc8pCZdZuZo4X2YZuPI+X5dL3+Q=; b=g79SuK6S002wglSmQQakHsmQ0w
	P7qI3DmEuXBrkBeqyFIvIkWWIeTruLaVp+iF+Pvaf948G5P0CqAojzrXp2jl1rVWoGaFkkDVOuQ0P
	V8gJ/H6ehohDfFbud0lQ9pbNNZ6kAtVi2mfac+0RemggdQGWUViF4So6yQxPofPWrzWMCqsjhNdHh
	2KsMxs6rZWX/+eCnXfFb2er3Ud6mW+YvKbZTUnfpL9+QK2UxpKPc2hlruGovm5btXDoKktalob0lb
	Fd/vyJ6+2gJ3qTHN5MzRdl3Fb9T0gkLiG0nH91bxVo1eaO12RGd9C602IK/JdXT3tNv87IvveoZPG
	U3aFJqmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4znB-00BWFs-1t;
	Mon, 20 Nov 2023 08:38:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4zn3-00BWDN-2E
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 08:38:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4zn0-0007r8-4z; Mon, 20 Nov 2023 09:37:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4zmz-00AJDm-Oh; Mon, 20 Nov 2023 09:37:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4zmz-00GeDh-2B;
	Mon, 20 Nov 2023 09:37:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 20 Nov 2023 09:37:48 +0100
Message-Id: <20231120083750.3967831-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_003757_764875_E4E4B0B4 
X-CRM114-Status: GOOD (  14.15  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH RFC 1/3] fs: add open O_TMPFILE support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox dentry cache is never cleared with the assumption that there
should be enough RAM anyway to cache all lookups until boot.

When fuzzing barebox however, there is no limit to how many dentries
are added to the cache. This is e.g. problematic when fuzzing the FIT
parser: FIT images can have compressed payloads. Compressed payloads are
passed to uncompress_buf_to_buf, which uses a new random file in ramfs
as destination. A fuzzer would thus create a dentry for every iteration,
rapidly depleting memory.

A general solution for that would be dropping the dentry cache on memory
pressure. In the special case of uncompress_buf_to_buf, it would already
be enough though to sidestep the dentry cache and create an anonymous
file. Linux provides this with the O_TMPFILE option, so let's add the
equivalent to barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c         | 29 +++++++++++++++++++++++++++++
 include/fcntl.h |  3 +++
 2 files changed, 32 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 1800d6826ddc..6bd3c2df3c31 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2539,6 +2539,35 @@ int open(const char *pathname, int flags, ...)
 	const char *s;
 	struct filename *filename;
 
+	if (flags & O_TMPFILE) {
+		fsdev = get_fsdevice_by_path(pathname);
+		if (!fsdev) {
+			errno = ENOENT;
+			return -errno;
+		}
+
+		if (fsdrv != ramfs_driver) {
+			errno = EOPNOTSUPP;
+			return -errno;
+		}
+
+		f = get_file();
+		if (!f) {
+			errno = EMFILE;
+			return -errno;
+		}
+
+		f->path = NULL;
+		f->dentry = NULL;
+		f->f_inode = new_inode(&fsdev->sb);
+		f->f_inode->i_mode = S_IFREG;
+		f->flags = flags;
+		f->size = 0;
+		f->fsdev = fsdev;
+
+		return f->no;
+	}
+
 	filename = getname(pathname);
 	if (IS_ERR(filename))
 		return PTR_ERR(filename);
diff --git a/include/fcntl.h b/include/fcntl.h
index 2e7c0eed3479..1b4cd8ad3783 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -16,6 +16,9 @@
 #define O_APPEND	00002000
 #define O_DIRECTORY	00200000	/* must be a directory */
 #define O_NOFOLLOW	00400000	/* don't follow links */
+#define __O_TMPFILE	020000000
+
+#define O_TMPFILE       (__O_TMPFILE | O_DIRECTORY)
 
 /* barebox additional flags */
 #define O_RWSIZE_MASK	017000000
-- 
2.39.2




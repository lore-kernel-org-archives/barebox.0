Delivery-date: Wed, 03 Jan 2024 19:36:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66r-002OHr-1l
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66m-0008J4-3H
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xQAvuCyUQxpP1JTCy/hL6zCa2iGTvTA3CQJFH/+VqOw=; b=yostHSVZ2AGLQuXTrdqQRsQtYx
	Fne+tznQmmPe7uS0vrCx/WrO4gwkgYn/XEI0eDq/zBvbHov9NfHyU7HVUWXV/YzCEO9d9Arf4VSQ1
	dktIBhZcyST37kYXcI1MUX/wQucZuJeZqg5Zo1DR0Ei7v44VbCucLOVCW1Dhs8f6Aq5Z6XKuOXR+R
	86jWClGjhv/1PmYapIU6ZduuG7WVovEbaYK33bPdm+ZoNpX6NT5BfeEJcgBqZF4IYHnoRQ+dgXWui
	pnjvIdu+QWRCicXkVsXxFKUULNCR39Pp/71NiomUwsQzZOHEelW36IK4/WScgxwNK3EqkWdw9Ocum
	7vupTQ+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL654-00Blob-1P;
	Wed, 03 Jan 2024 18:35:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61O-00BhT9-2c
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=xQAvuCyUQxpP1JTCy/hL6zCa2iGTvTA3CQJFH/+VqOw=; b=k8EI/RhdHA5BSn5Z8DeOkmbef+
	PUdfD7o8Byb85/GmanPBX9fqZLDssu1Q6ZdnHbnorIPINOWnyLCP1fKNAcNf7egQs8h5nY+igFsLQ
	dip0QzFUkRJEVHNEHmUZSx6sKoeFZquQiu9lVL3cnafXaXI/SfRmBvnepJmrv346EEuatSrWflRq4
	/1YYtUF8QAeu11kCH8KuvXAwuWMraTuUevu7g5qCH/F825jrqn6ig08/fp6SzVlAaTNwrEmK0UU+A
	qbnZ1OPDoI4dBPoEuW+ODBb0y/Wu3N9kHx1AThviRLxwfU9lxktK6NvSrFg85cQdGF3GdUEYjsKV3
	msHJZ6PQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61H-00DImA-CZ
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-0001Xp-L5; Wed, 03 Jan 2024 19:30:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-000AvS-8B; Wed, 03 Jan 2024 19:30:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-19;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:51 +0100
Message-Id: <20240103181312.409668-32-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183112_700713_0CA3F723 
X-CRM114-Status: GOOD (  15.41  )
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
Subject: [PATCH 031/112] fs: implement fdopendir and rewinddir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We will be using the incoming O_PATH support to implement the EFI file
system protocol for when barebox acts as EFI loader.

The protocol also requires being able to rewind iteration, so add
support for that too.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c          | 55 ++++++++++++++++++++++++++++++++++++++++++++++--
 include/dirent.h |  3 +++
 2 files changed, 56 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 96ca0f110393..ca1bcef1adf0 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2643,6 +2643,20 @@ int open(const char *pathname, int flags, ...)
 }
 EXPORT_SYMBOL(open);
 
+static const char *fd_getpath(int fd)
+{
+	FILE *f;
+
+	if (fd < 0)
+		return ERR_PTR(errno_set(fd));
+
+	f = fd_to_file(fd);
+	if (IS_ERR(f))
+		return ERR_CAST(f);
+
+	return f->path;
+}
+
 int unlink(const char *pathname)
 {
 	int ret;
@@ -2710,9 +2724,11 @@ EXPORT_SYMBOL(symlink);
 
 static void __release_dir(DIR *d)
 {
-	struct readdir_entry *entry, *tmp;
+	while (!list_empty(&d->entries)) {
+		struct readdir_entry *entry =
+			list_first_entry(&d->entries, struct readdir_entry, list);
 
-	list_for_each_entry_safe(entry, tmp, &d->entries, list) {
+		list_del(&entry->list);
 		free(entry);
 	}
 }
@@ -2772,6 +2788,7 @@ DIR *opendir(const char *pathname)
 
 	d = xzalloc(sizeof(*d));
 	d->path = path;
+	d->fd = -ENOENT;
 
 	ret = __opendir(d);
 	if (ret)
@@ -2790,6 +2807,27 @@ DIR *opendir(const char *pathname)
 }
 EXPORT_SYMBOL(opendir);
 
+DIR *fdopendir(int fd)
+{
+	const char *path;
+	DIR *dir;
+
+	path = fd_getpath(fd);
+	if (IS_ERR(path))
+		return NULL;
+
+	dir = opendir(path);
+	if (!dir)
+		return NULL;
+
+	/* we intentionally don't increment the reference count,
+	 * as POSIX specifies that fd ownership is transferred
+	 */
+	dir->fd = fd;
+	return dir;
+}
+EXPORT_SYMBOL(fdopendir);
+
 int closedir(DIR *dir)
 {
 	if (!dir)
@@ -2797,12 +2835,25 @@ int closedir(DIR *dir)
 
 	path_put(&dir->path);
 	__release_dir(dir);
+	if (dir->fd >= 0)
+		close(dir->fd);
 	free(dir);
 
 	return 0;
 }
 EXPORT_SYMBOL(closedir);
 
+int rewinddir(DIR *dir)
+{
+	if (!dir)
+		return errno_set(-EBADF);
+
+	__release_dir(dir);
+
+	return __opendir(dir);
+}
+EXPORT_SYMBOL(rewinddir);
+
 int readlink(const char *pathname, char *buf, size_t bufsiz)
 {
 	int ret;
diff --git a/include/dirent.h b/include/dirent.h
index 6e77058d2903..4f7ff2a5f91f 100644
--- a/include/dirent.h
+++ b/include/dirent.h
@@ -14,13 +14,16 @@ typedef struct dir {
 	struct fs_driver *fsdrv;
 	struct dirent d;
 	void *priv; /* private data for the fs driver */
+	int fd;
 	struct path path;
 	struct list_head entries;
 } DIR;
 
 DIR *opendir(const char *pathname);
+DIR *fdopendir(int fd);
 struct dirent *readdir(DIR *dir);
 int unreaddir(DIR *dir, const struct dirent *d);
+int rewinddir(DIR *dir);
 int closedir(DIR *dir);
 
 #endif /* __DIRENT_H */
-- 
2.39.2




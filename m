Delivery-date: Wed, 16 Oct 2024 11:02:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zvk-00500u-1S
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:02:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zvj-00061C-GY
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:02:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X+tNheWc3RaoA4PcaOzuVAw50stbZNOrxkzoM1OATqs=; b=PIhdG2jHe28euYQZ38Cgc/mhrZ
	G/y0dZdn8sPnmtfWaqUggsZEw5m12ciL7dxvkr05yXY7WiNDsz8y9FM62qYys3ORUHW0PtZL8dqLU
	09g4Rgh0q26f4T5ESe9eI1+yyEdBhLSxgh04JcuITF3zQUg8dfEgFOTkRrtFV3t0xH2C/tjohB/Yz
	JxDu7SKv4zRY+1X7+H4B3AT+2i37OHJ3lmSQFcUlHDU4GfqxkapNDDmzUmuLBm+4Q/X3zQ0GYBX4V
	vlLWfSdtutX+smzfzlkm6eIRvqqvz4u9nGFb9W11aK9bLqmvkGlr9rJpQnjTp1nQ1ygzjqizSktKr
	rvuygBNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zv8-0000000B9Qe-16yG;
	Wed, 16 Oct 2024 09:02:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zui-0000000B9B3-3xPa
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:01:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zuh-0005Lp-FY; Wed, 16 Oct 2024 11:01:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zug-002EMU-VV; Wed, 16 Oct 2024 11:01:50 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zug-00GdhR-2s;
	Wed, 16 Oct 2024 11:01:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2024 11:01:43 +0200
Message-Id: <20241016090150.3963002-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
References: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_020153_219479_88338DFA 
X-CRM114-Status: GOOD (  10.95  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/13] libfile: stub out file descriptor API for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To optimize out calls to undefined functions in PBL at compile-time
instead of link time, let's define stubs for the functions that
are referenced in obj-pbl-y files, but inside function sections
that are ultimately unreferenced.

We don't use IS_PROPER here as VFS support is always available
in barebox proper.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/fcntl.h   |  8 ++++++
 include/libfile.h |  7 +++++
 include/unistd.h  | 72 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 87 insertions(+)

diff --git a/include/fcntl.h b/include/fcntl.h
index a746471411b5..ff91676119c4 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -3,6 +3,7 @@
 #define __FCNTL_H
 
 #include <linux/types.h>
+#include <errno.h>
 
 #define AT_FDCWD		-100    /* Special value used to indicate
                                            openat should use the current
@@ -38,7 +39,14 @@
 
 #define O_TMPFILE       (__O_TMPFILE | O_DIRECTORY)
 
+#ifndef __PBL__
 int openat(int dirfd, const char *pathname, int flags);
+#else
+static inline int openat(int dirfd, const char *pathname, int flags, ...)
+{
+        return -ENOSYS;
+}
+#endif
 
 static inline int open(const char *pathname, int flags, ...)
 {
diff --git a/include/libfile.h b/include/libfile.h
index f772ff8b6af2..79bef9c75fa7 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -32,7 +32,14 @@ int copy_recursive(const char *src, const char *dst);
 
 int compare_file(const char *f1, const char *f2);
 
+#ifndef __PBL__
 int open_and_lseek(const char *filename, int mode, loff_t pos);
+#else
+static inline int open_and_lseek(const char *filename, int mode, loff_t pos)
+{
+	return -ENOSYS;
+}
+#endif
 
 /* Create a directory and its parents */
 int make_directory(const char *pathname);
diff --git a/include/unistd.h b/include/unistd.h
index f3d2378687e4..7a04bc6443d6 100644
--- a/include/unistd.h
+++ b/include/unistd.h
@@ -4,11 +4,13 @@
 
 #include <linux/types.h>
 #include <fcntl.h>
+#include <errno.h>
 
 #define RW_BUF_SIZE	(unsigned)4096
 
 struct stat;
 
+#ifndef __PBL__
 int unlinkat(int dirfd, const char *pathname, int flags);
 int close(int fd);
 int lstatat(int dirfd, const char *filename, struct stat *s);
@@ -26,6 +28,76 @@ char *pushd(const char *dir);
 int popd(char *dir);
 const char *getcwd(void);
 int ftruncate(int fd, loff_t length);
+#else
+static inline int unlinkat(int dirfd, const char *pathname, int flags)
+{
+	return -ENOSYS;
+}
+static inline int close(int fd)
+{
+	return -ENOSYS;
+}
+static inline int lstatat(int dirfd, const char *filename, struct stat *s)
+{
+	return -ENOSYS;
+}
+static inline int statat(int dirfd, const char *filename, struct stat *s)
+{
+	return -ENOSYS;
+}
+static inline int fstat(int fd, struct stat *s)
+{
+	return -ENOSYS;
+}
+static inline ssize_t read(int fd, void *buf, size_t count)
+{
+	return -ENOSYS;
+}
+static inline ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
+{
+	return -ENOSYS;
+}
+static inline ssize_t write(int fd, const void *buf, size_t count)
+{
+	return -ENOSYS;
+}
+static inline ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset)
+{
+	return -ENOSYS;
+}
+static inline loff_t lseek(int fildes, loff_t offset, int whence)
+{
+	return -ENOSYS;
+}
+static inline int symlink(const char *pathname, const char *newpath)
+{
+	return -ENOSYS;
+}
+static inline int readlinkat(int dirfd, const char *path, char *buf, size_t bufsiz)
+{
+	return -ENOSYS;
+}
+static inline int chdir(const char *pathname)
+{
+	return -ENOSYS;
+}
+static inline char *pushd(const char *dir)
+{
+	return NULL;
+}
+static inline int popd(char *dir)
+{
+	return -ENOSYS;
+}
+static inline const char *getcwd(void)
+{
+	return NULL;
+}
+static inline int ftruncate(int fd, loff_t length)
+{
+	return -ENOSYS;
+}
+#endif
 
 static inline int unlink(const char *pathname)
 {
-- 
2.39.5




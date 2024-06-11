Delivery-date: Tue, 11 Jun 2024 09:00:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvUE-00471Q-09
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 09:00:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvUD-000695-50
	for lore@pengutronix.de; Tue, 11 Jun 2024 09:00:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lVAOcFRW2CM/Enbpdwg3EFIkp7O1ROAD5doA2OQcEhA=; b=Z5XXTkFZCwhb6MS710GbBj+50G
	hebp/eRuxtZQEtK60Jnbf75Jqb54FKqSNZ838zJ88/j3M47vDbpR9b3f8kkCMKyF4zcrc07VAayHf
	99/ifFd/DG+buyQvBKBXYBRBPUEUnVPBpCeyKP0cdwSYRpQuwRcIGAbxtI3AcOHgNK4KtH7foKIOc
	jfMkvKgLAJacMesP4sRc+NV/Q1jcilulN/z2Ool8iIe/F2tk4mgm9pUccCYx7hn1hRJanoCykbLOH
	s7+z4Ua9NSu5Jkwbu3hseX2d8L0ZZeWj9VQ9OCypLTkalNoBn7J7U0ALFtbBCwgb26W96YyPc+pd3
	Fm2f3WAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvTh-00000007myH-0ZqW;
	Tue, 11 Jun 2024 06:59:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvTa-00000007msu-0siI
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 06:59:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-0005qP-Us; Tue, 11 Jun 2024 08:59:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-001UDK-I9; Tue, 11 Jun 2024 08:59:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-00CATV-1W;
	Tue, 11 Jun 2024 08:59:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 08:59:21 +0200
Message-Id: <20240611065923.2900168-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
References: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_235926_381960_86EFF625 
X-CRM114-Status: GOOD (  13.57  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/6] firmware: semihosting: translate return values in wrappers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's needlessly verbose to expect callers of the semihosting wrappers to
call semihosting_errno() on error, so let's just do that inside the
wrappers so they behave like other functions.

While at it, also have semihosting_read() and semihosting_write() return
the number of bytes sent. The semihosting API returns the number of
bytes that were _not_ sent instead, so a return value of 0 is success.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/semihosting.c | 36 ++++++++++++++++++++++------------
 fs/smhfs.c                     | 33 +++++++++----------------------
 2 files changed, 33 insertions(+), 36 deletions(-)

diff --git a/drivers/firmware/semihosting.c b/drivers/firmware/semihosting.c
index 1dfbdf219727..9663959aa49f 100644
--- a/drivers/firmware/semihosting.c
+++ b/drivers/firmware/semihosting.c
@@ -43,6 +43,12 @@ enum {
 
 long semihosting_trap(ulong sysnum, void *addr);
 
+static long semihosting_call(ulong sysnum, void *addr)
+{
+	long ret = semihosting_trap(sysnum, addr);
+	return ret >= 0 ? ret : -semihosting_errno();
+}
+
 static ulong semihosting_flags_to_mode(int flags)
 {
 	static const int semihosting_open_modeflags[12] = {
@@ -81,13 +87,13 @@ int semihosting_open(const char *fname, int flags)
 		.mode = semihosting_flags_to_mode(flags),
 	};
 
-	return semihosting_trap(SEMIHOSTING_SYS_OPEN, &open);
+	return semihosting_call(SEMIHOSTING_SYS_OPEN, &open);
 }
 EXPORT_SYMBOL(semihosting_open);
 
 int semihosting_close(int fd)
 {
-	return semihosting_trap(SEMIHOSTING_SYS_CLOSE, &fd);
+	return semihosting_call(SEMIHOSTING_SYS_CLOSE, &fd);
 }
 EXPORT_SYMBOL(semihosting_close);
 
@@ -111,37 +117,43 @@ struct __packed semihosting_file_io {
 
 ssize_t semihosting_write(int fd, const void *buf, size_t count)
 {
+	ssize_t ret;
 	struct semihosting_file_io write = {
 		.fd = fd,
 		.memp = virt_to_phys(buf),
 		.len = count,
 	};
 
-	return semihosting_trap(SEMIHOSTING_SYS_WRITE, &write);
+	ret = semihosting_call(SEMIHOSTING_SYS_WRITE, &write);
+
+	return ret >= 0 ? count - ret : ret;
 }
 EXPORT_SYMBOL(semihosting_write);
 
 ssize_t semihosting_read(int fd, void *buf, size_t count)
 {
+	ssize_t ret;
 	struct semihosting_file_io read = {
 		.fd = fd,
 		.memp = virt_to_phys(buf),
 		.len = count,
 	};
 
-	return semihosting_trap(SEMIHOSTING_SYS_READ, &read);
+	ret = semihosting_call(SEMIHOSTING_SYS_READ, &read);
+
+	return ret >= 0 ? count - ret : ret;
 }
 EXPORT_SYMBOL(semihosting_read);
 
 int semihosting_readc(void)
 {
-	return semihosting_trap(SEMIHOSTING_SYS_READC, NULL);
+	return semihosting_call(SEMIHOSTING_SYS_READC, NULL);
 }
 EXPORT_SYMBOL(semihosting_readc);
 
 int semihosting_isatty(int fd)
 {
-	return semihosting_trap(SEMIHOSTING_SYS_ISATTY, &fd);
+	return semihosting_call(SEMIHOSTING_SYS_ISATTY, &fd);
 }
 EXPORT_SYMBOL(semihosting_isatty);
 
@@ -155,12 +167,12 @@ off_t semihosting_seek(int fd, off_t pos)
 		.pos = pos,
 	};
 
-	return semihosting_trap(SEMIHOSTING_SYS_SEEK, &seek);
+	return semihosting_call(SEMIHOSTING_SYS_SEEK, &seek);
 }
 EXPORT_SYMBOL(semihosting_seek);
 off_t semihosting_flen(int fd)
 {
-	return semihosting_trap(SEMIHOSTING_SYS_FLEN, &fd);
+	return semihosting_call(SEMIHOSTING_SYS_FLEN, &fd);
 }
 EXPORT_SYMBOL(semihosting_flen);
 
@@ -174,7 +186,7 @@ int semihosting_remove(const char *fname)
 		.fname_length = strlen(fname),
 	};
 
-	return semihosting_trap(SEMIHOSTING_SYS_REMOVE, &remove);
+	return semihosting_call(SEMIHOSTING_SYS_REMOVE, &remove);
 }
 EXPORT_SYMBOL(semihosting_remove);
 
@@ -192,13 +204,13 @@ int semihosting_rename(const char *fname1, const char *fname2)
 		.fname2_length = strlen(fname2),
 	};
 
-	return semihosting_trap(SEMIHOSTING_SYS_RENAME, &rename);
+	return semihosting_call(SEMIHOSTING_SYS_RENAME, &rename);
 }
 EXPORT_SYMBOL(semihosting_rename);
 
 int semihosting_errno(void)
 {
-	return semihosting_trap(SEMIHOSTING_SYS_ERRNO, NULL);
+	return semihosting_call(SEMIHOSTING_SYS_ERRNO, NULL);
 }
 EXPORT_SYMBOL(semihosting_errno);
 
@@ -213,6 +225,6 @@ int semihosting_system(const char *command)
 		.cmd_len = strlen(command),
 	};
 
-	return semihosting_trap(SEMIHOSTING_SYS_SYSTEM, &system);
+	return semihosting_call(SEMIHOSTING_SYS_SYSTEM, &system);
 }
 EXPORT_SYMBOL(semihosting_system);
diff --git a/fs/smhfs.c b/fs/smhfs.c
index da285b5be52f..ce027f203e23 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -48,10 +48,7 @@ static int smhfs_rm(struct device __always_unused *dev,
 	/* Get rid of leading '/' */
 	pathname = &pathname[1];
 
-	if (semihosting_remove(pathname) != 0)
-		return -semihosting_errno();
-	else
-		return 0;
+	return semihosting_remove(pathname);
 }
 
 static int smhfs_truncate(struct device __always_unused *dev,
@@ -70,52 +67,40 @@ static int smhfs_open(struct device __always_unused *dev,
 
 	fd = semihosting_open(filename, file->flags);
 	if (fd < 0)
-		goto error;
+		return fd;
 
 	file->priv = (void *)(uintptr_t)fd;
 	file->size = semihosting_flen(fd);
 	if (file->size < 0)
-		goto error;
+		return file->size;
 
 	return 0;
-error:
-	return -semihosting_errno();
 }
 
 static int smhfs_close(struct device __always_unused *dev,
 		       FILE *f)
 {
-	if (semihosting_close(file_to_fd(f)))
-		return -semihosting_errno();
-	else
-		return 0;
+	return semihosting_close(file_to_fd(f));
 }
 
 static int smhfs_write(struct device __always_unused *dev,
 		       FILE *f, const void *inbuf, size_t insize)
 {
-	if (semihosting_write(file_to_fd(f), inbuf, insize))
-		return -semihosting_errno();
-	else
-		return insize;
+	long ret = semihosting_write(file_to_fd(f), inbuf, insize);
+	return ret < 0 ? ret : insize;
 }
 
 static int smhfs_read(struct device __always_unused *dev,
 		      FILE *f, void *buf, size_t insize)
 {
-	if (!semihosting_read(file_to_fd(f), buf, insize))
-		return insize;
-	else
-		return -semihosting_errno();
+	long ret = semihosting_read(file_to_fd(f), buf, insize);
+	return ret < 0 ? ret : insize;
 }
 
 static int smhfs_lseek(struct device __always_unused *dev,
 			  FILE *f, loff_t pos)
 {
-	if (semihosting_seek(file_to_fd(f), pos))
-		return -semihosting_errno();
-
-	return 0;
+	return semihosting_seek(file_to_fd(f), pos);
 }
 
 static DIR* smhfs_opendir(struct device __always_unused *dev,
-- 
2.39.2




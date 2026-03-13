Delivery-date: Fri, 13 Mar 2026 14:35:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fO-000DVS-19
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:02 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12f0-0000vT-KK
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1GoH3st88yHczAs2dZgRSnwdK/+UUXLJGQkoxlEm5Po=; b=KyHCqwsvi5AO9g9p8FQarxQrY1
	hnVrLcacJZ0BaksP2VmUkE+0Xu4k1Idav3xcw1hAaKoTXlOH+tsDtNTBi+Ug3VkvtmvhB/nPNIxrq
	NfLKQk4Ex1AIl121EcUvCbiYYSZXT8+BpWmfcTxOKtJk+IWe5/HW0I3DSyCkZX/ewHUL1b7t/+OX2
	YSlhnZVQgNct3mwjl8ZNlG5KBQzvhnlDBqkZkijaZA7EOWr/WbIrkizObdU7QWpOJTn9xSSW8JYVN
	84vW4FD44UuVJks1/jtV/Mwdf41sm1AZsqVqsRK/mljPK+lV97iBYa95by9J/I8UDLdmRA52bf0Wm
	5U7ivhRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dW-00000000G9b-2uY8;
	Fri, 13 Mar 2026 13:33:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dB-00000000FbJ-1eBS
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=1GoH3st88yHczAs2dZgRSnwdK/+UUXLJGQkoxlEm5Po=; b=fyn7+/o9ztQPPQ9LnzlXJDSiov
	zBUUrzOIIfRiFXCH6UF/+6DQYVUrhumAgtiucnlHjnjm72Ya4eCgCIF4w+sVKeVAcase0vpX/NgPY
	CYKixG7/JMgizgiDkqVrzDqHiqQ4/ydg3HElt28UlSuAOCVzbyW3tVmayHkXqqJPzkqclzRZWfSY+
	wo2T+uYMON/8QWrUy+RWxc59NZs5Y1E26SPhO10D9jIVzH7IYMqN2FAYMullO/cum98lUlrztD4Kd
	aJQMUUX4b09+PG1T9V7KQFNtNH187O6QldxLWavgfh3tH53Ze8/GWF1oif7EfxCy/yPpmSolWE2c1
	XaM8XX1A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d4-0000000D9w6-31VA
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d1-0006vl-2k; Fri, 13 Mar 2026 14:32:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0005Uy-2n;
	Fri, 13 Mar 2026 14:32:34 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-00g0;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:23 +0100
Message-ID: <20260313132631.2257573-40-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133238_820666_FC407C98 
X-CRM114-Status: GOOD (  12.92  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 39/58] open: add missing mode argument to O_CREAT calls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

POSIX requires a third mode argument when open() is called with
O_CREAT. While barebox doesn't enforce file permissions, passing
mode satisfies static analyzers and is correct practice.

Also fix creat() to actually forward its mode parameter to open()
instead of silently discarding it.

Reported-by: GCC 14.2 -fanalyzer
Co-authored-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260216084253.3547270-8-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/echo.c                   | 2 +-
 commands/edit.c                   | 2 +-
 commands/uimage.c                 | 2 +-
 commands/uncompress.c             | 2 +-
 common/bbu.c                      | 2 +-
 common/console_common.c           | 2 +-
 common/fastboot.c                 | 4 ++--
 common/globalvar.c                | 2 +-
 drivers/usb/gadget/function/dfu.c | 6 +++---
 include/fcntl.h                   | 2 +-
 lib/libfile.c                     | 4 ++--
 lib/xymodem.c                     | 2 +-
 12 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/commands/echo.c b/commands/echo.c
index 572b852ea32a..e39d9d30731b 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -96,7 +96,7 @@ static int do_echo(int argc, char *argv[])
 
 exit_parse:
 	if (file) {
-		fd = open(file, oflags);
+		fd = open(file, oflags, 0666);
 		if (fd < 0) {
 			perror("open");
 			return 1;
diff --git a/commands/edit.c b/commands/edit.c
index 28c9ab8877f7..c7262711d01f 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -243,7 +243,7 @@ static int save_file(const char *path)
 	int fd;
 	int ret = 0;
 
-	fd = open(path, O_WRONLY | O_TRUNC | O_CREAT);
+	fd = open(path, O_WRONLY | O_TRUNC | O_CREAT, 0666);
 	if (fd < 0) {
 		printf("could not open file for writing: %m\n");
 		return fd;
diff --git a/commands/uimage.c b/commands/uimage.c
index 72b827b5b276..d7e881b35f7d 100644
--- a/commands/uimage.c
+++ b/commands/uimage.c
@@ -67,7 +67,7 @@ static int do_uimage(int argc, char *argv[])
 	}
 
 	if (extract) {
-		fd = open(extract, O_WRONLY | O_CREAT | O_TRUNC);
+		fd = open(extract, O_WRONLY | O_CREAT | O_TRUNC, 0666);
 		if (fd < 0) {
 			perror("open");
 			ret = fd;
diff --git a/commands/uncompress.c b/commands/uncompress.c
index 10884d675b3d..32e60e78072a 100644
--- a/commands/uncompress.c
+++ b/commands/uncompress.c
@@ -23,7 +23,7 @@ static int do_uncompress(int argc, char *argv[])
 		return 1;
 	}
 
-	to = open(argv[2], O_WRONLY | O_CREAT);
+	to = open(argv[2], O_WRONLY | O_CREAT, 0666);
 	if (to < 0) {
 		perror("open");
 		ret = 1;
diff --git a/common/bbu.c b/common/bbu.c
index 03261583fe0b..1271ef2717f4 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -454,7 +454,7 @@ int bbu_std_file_handler(struct bbu_handler *handler,
 	if (ret)
 		return ret;
 
-	fd = open(data->devicefile, oflags);
+	fd = open(data->devicefile, oflags, 0666);
 	if (fd < 0)
 		return fd;
 
diff --git a/common/console_common.c b/common/console_common.c
index 5b7a64c99c29..1c2da748b613 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -195,7 +195,7 @@ int log_writefile(const char *filepath)
 	int ret = 0, nbytes = 0, fd = -1;
 	struct log_entry *log;
 
-	fd = open(filepath, O_WRONLY | O_CREAT | O_TRUNC);
+	fd = open(filepath, O_WRONLY | O_CREAT | O_TRUNC, 0644);
 	if (fd < 0)
 		return -errno;
 
diff --git a/common/fastboot.c b/common/fastboot.c
index e5c79c22376c..e60091efc704 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -440,7 +440,7 @@ static void cb_download(struct fastboot *fb, const char *cmd)
 		close(fb->download_fd);
 	}
 
-	fb->download_fd = open(fb->tempname, O_WRONLY | O_CREAT | O_TRUNC);
+	fb->download_fd = open(fb->tempname, O_WRONLY | O_CREAT | O_TRUNC, 0666);
 	if (fb->download_fd < 0) {
 		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "internal error");
 			return;
@@ -588,7 +588,7 @@ static int fastboot_handle_sparse(struct fastboot *fb,
 			return ret;
 	}
 
-	fd = open(fentry->filename, flags);
+	fd = open(fentry->filename, flags, 0666);
 	if (fd < 0)
 		return -errno;
 
diff --git a/common/globalvar.c b/common/globalvar.c
index 77af6733a6a0..0472ecf9f58b 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -54,7 +54,7 @@ static int __nv_save(const char *prefix, const char *name, const char *val)
 
 	fname = basprintf("%s/%s", prefix, name);
 
-	fd = open(fname, O_CREAT | O_WRONLY | O_TRUNC);
+	fd = open(fname, O_CREAT | O_WRONLY | O_TRUNC, 0666);
 
 	free(fname);
 
diff --git a/drivers/usb/gadget/function/dfu.c b/drivers/usb/gadget/function/dfu.c
index 893dcc7f7007..e8977a96d666 100644
--- a/drivers/usb/gadget/function/dfu.c
+++ b/drivers/usb/gadget/function/dfu.c
@@ -259,14 +259,14 @@ static void dfu_do_open_dnload(struct dfu_work *dw)
 	pr_debug("do open dnload\n");
 
 	if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
-		dfufd = open(DFU_TEMPFILE, O_WRONLY | O_CREAT);
+		dfufd = open(DFU_TEMPFILE, O_WRONLY | O_CREAT, 0666);
 	} else {
 		unsigned flags = O_WRONLY;
 
 		if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
 			flags |= O_CREAT | O_TRUNC;
 
-		dfufd = open(dfu_file_entry->filename, flags);
+		dfufd = open(dfu_file_entry->filename, flags, 0666);
 	}
 
 	if (dfufd < 0) {
@@ -325,7 +325,7 @@ static void dfu_do_copy(struct dfu_work *dw)
 	if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
 		flags |= O_CREAT | O_TRUNC;
 
-	fd = open(dfu_file_entry->filename, flags);
+	fd = open(dfu_file_entry->filename, flags, 0666);
 	if (fd < 0) {
 		perror("open");
 		dfu->dfu_state = DFU_STATE_dfuERROR;
diff --git a/include/fcntl.h b/include/fcntl.h
index db7926ee25fb..62dbf0f3c6d2 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -53,7 +53,7 @@ static inline int open(const char *pathname, int flags, ...)
 
 static inline int creat(const char *pathname, mode_t mode)
 {
-	return open(pathname, O_CREAT | O_WRONLY | O_TRUNC);
+	return open(pathname, O_CREAT | O_WRONLY | O_TRUNC, mode);
 }
 
 #endif /* __FCNTL_H */
diff --git a/lib/libfile.c b/lib/libfile.c
index 7ca13a34b41d..e976b32e2c1f 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -380,7 +380,7 @@ int write_file(const char *filename, const void *buf, size_t size)
 {
 	int fd, ret;
 
-	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT);
+	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT, 0644);
 	if (fd < 0)
 		return fd;
 
@@ -476,7 +476,7 @@ int copy_file(const char *src, const char *dst, unsigned flags)
 		mode |= O_TRUNC;
 	}
 
-	dstfd = open(dst, mode);
+	dstfd = open(dst, mode, 0666);
 	if (dstfd < 0) {
 		printf("could not open %s: %m\n", dst);
 		ret = dstfd;
diff --git a/lib/xymodem.c b/lib/xymodem.c
index 84a91157713b..bd5e114ee270 100644
--- a/lib/xymodem.c
+++ b/lib/xymodem.c
@@ -394,7 +394,7 @@ static int xy_await_header(struct xyz_ctxt *proto)
 	xy_dbg("header received, filename=%s, file length=%d\n",
 	       proto->filename, proto->file_len);
 	if (proto->filename[0])
-		proto->fd = open(proto->filename, O_WRONLY | O_CREAT);
+		proto->fd = open(proto->filename, O_WRONLY | O_CREAT, 0666);
 	else
 		proto->state = PROTO_STATE_FINISHED_XFER;
 	proto->nb_received = 0;
-- 
2.47.3




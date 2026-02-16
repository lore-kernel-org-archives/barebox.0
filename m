Delivery-date: Mon, 16 Feb 2026 09:43:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruCb-002GAq-2J
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:43:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruCZ-0001aH-Tw
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:43:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w7wLgKkLNTh3Cgj4vR1X0GG9j7UDwHFlikZzGXdqwLE=; b=lBsvQOcD6xOKQpyHudSNDAfqhx
	MiJGKYqjhhajxCjeoFSqbAXsavM0cCYlJxqqJAIkWudcjjJbpWzwpTx3suntP13tXPd3CCfVNdxjG
	QpkQ+6/bbAZfvv6lUDAyFiN+9Z/HxDtXH8OjH/C8T4lPPgmdy7Q0TFTSa7sa5azAZP22XAK4mrk+F
	wV1rglZFyMUzFbdxTbtyPjB5m7RCBzJ82nnc5x0Bh1umzW1U0zy8vESknpXoURs55HO5R4K7hg17G
	PB46GZbsfsdelvCRRrGm/rCVUbP+HMx6bBbsPMALFBSelz9H8RnjfUDkdx2gUzFuPhiG3KUgrw3hu
	iiJAMT7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruCA-00000006Avc-42wX;
	Mon, 16 Feb 2026 08:43:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruC8-00000006As2-0Vua
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:43:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBy-000121-J5; Mon, 16 Feb 2026 09:42:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBw-0012C8-34;
	Mon, 16 Feb 2026 09:42:54 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBy-0000000Esrv-0ojr;
	Mon, 16 Feb 2026 09:42:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:42:24 +0100
Message-ID: <20260216084253.3547270-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084253.3547270-1-a.fatoum@pengutronix.de>
References: <20260216084253.3547270-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004304_327157_79FE02EE 
X-CRM114-Status: GOOD (  14.20  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/12] open: add missing mode argument to O_CREAT calls
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
---
 commands/cat.c                    | 2 +-
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
 13 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/commands/cat.c b/commands/cat.c
index aa77b19907e0..57cf532fac24 100644
--- a/commands/cat.c
+++ b/commands/cat.c
@@ -55,7 +55,7 @@ static int do_cat(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	if (outfile) {
-		outfd = open(outfile, oflags);
+		outfd = open(outfile, oflags, 0666);
 		if (outfd < 0) {
 			perror("open");
 			return 1;
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
index 07a51c112f0e..4b1cf2ee88b6 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -446,7 +446,7 @@ int bbu_flash(struct bbu_data *data, loff_t offset)
 	if (ret)
 		return ret;
 
-	fd = open(data->devicefile, oflags);
+	fd = open(data->devicefile, oflags, 0666);
 	if (fd < 0)
 		return fd;
 
diff --git a/common/console_common.c b/common/console_common.c
index 3a6b85fa09c6..20c93de68cdc 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -197,7 +197,7 @@ int log_writefile(const char *filepath)
 	int ret = 0, nbytes = 0, fd = -1;
 	struct log_entry *log;
 
-	fd = open(filepath, O_WRONLY | O_CREAT | O_TRUNC);
+	fd = open(filepath, O_WRONLY | O_CREAT | O_TRUNC, 0644);
 	if (fd < 0)
 		return -errno;
 
diff --git a/common/fastboot.c b/common/fastboot.c
index 96d7fbd8c787..84bda241aea1 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -443,7 +443,7 @@ static void cb_download(struct fastboot *fb, const char *cmd)
 		close(fb->download_fd);
 	}
 
-	fb->download_fd = open(fb->tempname, O_WRONLY | O_CREAT | O_TRUNC);
+	fb->download_fd = open(fb->tempname, O_WRONLY | O_CREAT | O_TRUNC, 0666);
 	if (fb->download_fd < 0) {
 		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "internal error");
 			return;
@@ -591,7 +591,7 @@ static int fastboot_handle_sparse(struct fastboot *fb,
 			return ret;
 	}
 
-	fd = open(fentry->filename, flags);
+	fd = open(fentry->filename, flags, 0666);
 	if (fd < 0)
 		return -errno;
 
diff --git a/common/globalvar.c b/common/globalvar.c
index 1fac891ae073..876379b2538e 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -61,7 +61,7 @@ static int __nv_save(const char *prefix, const char *name, const char *val)
 
 	fname = basprintf("%s/%s", prefix, name);
 
-	fd = open(fname, O_CREAT | O_WRONLY | O_TRUNC);
+	fd = open(fname, O_CREAT | O_WRONLY | O_TRUNC, 0666);
 
 	free(fname);
 
diff --git a/drivers/usb/gadget/function/dfu.c b/drivers/usb/gadget/function/dfu.c
index 4d7001e48d85..a09eeb930bcc 100644
--- a/drivers/usb/gadget/function/dfu.c
+++ b/drivers/usb/gadget/function/dfu.c
@@ -258,14 +258,14 @@ static void dfu_do_open_dnload(struct dfu_work *dw)
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
@@ -324,7 +324,7 @@ static void dfu_do_copy(struct dfu_work *dw)
 	if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
 		flags |= O_CREAT | O_TRUNC;
 
-	fd = open(dfu_file_entry->filename, flags);
+	fd = open(dfu_file_entry->filename, flags, 0666);
 	if (fd < 0) {
 		perror("open");
 		dfu->dfu_state = DFU_STATE_dfuERROR;
diff --git a/include/fcntl.h b/include/fcntl.h
index 57c01002cc92..124d11e8345e 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -55,7 +55,7 @@ static inline int open(const char *pathname, int flags, ...)
 
 static inline int creat(const char *pathname, mode_t mode)
 {
-	return open(pathname, O_CREAT | O_WRONLY | O_TRUNC);
+	return open(pathname, O_CREAT | O_WRONLY | O_TRUNC, mode);
 }
 
 static inline int mknod(const char *pathname, mode_t mode, const char *devname)
diff --git a/lib/libfile.c b/lib/libfile.c
index 6924db587e8c..e55a4252daad 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -415,7 +415,7 @@ int write_file(const char *filename, const void *buf, size_t size)
 {
 	int fd, ret;
 
-	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT);
+	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT, 0644);
 	if (fd < 0)
 		return fd;
 
@@ -511,7 +511,7 @@ int copy_file(const char *src, const char *dst, unsigned flags)
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




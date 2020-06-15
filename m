Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiIh-0003BN-Lt
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 06:08:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jun 2020 08:08:49 +0200
Message-Id: <20200615060849.9113-2-s.hauer@pengutronix.de>
In-Reply-To: <20200615060849.9113-1-s.hauer@pengutronix.de>
References: <20200615060849.9113-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] fastboot: Drop support for downloading to buffer
To: Barebox List <barebox@lists.infradead.org>

The option to download to a buffer instead of a file was introduced
because in some workloads it is required to have a contiguous image
in memory. With recent changes now ramfs can provide such a buffer
via memmap API even when it downloaded the data to a file. This makes
the explicit download to buffer option unnecessary, so remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig    | 12 -------
 common/fastboot.c | 82 ++++++++++++-----------------------------------
 2 files changed, 21 insertions(+), 73 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index ac282d8955..0c342d8e84 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1026,18 +1026,6 @@ config FASTBOOT_SPARSE
 	  images that are bigger than the available memory. If unsure,
 	  say yes here.
 
-config FASTBOOT_BUF
-	bool
-	prompt "Download files to temporary buffer instead of file"
-	help
-	  With this option enabled the fastboot code will download files to a
-	  temporary buffer instead of a temporary file. Normally you want to
-	  use a file as this also works when your memory is fragmented. However,
-	  in some special cases, when the file consumer also better copes with
-	  a buffer, then using a buffer might be better.
-
-	  Say no here unless you know what you are doing.
-
 config FASTBOOT_CMD_OEM
 	bool
 	prompt "Enable OEM commands"
diff --git a/common/fastboot.c b/common/fastboot.c
index c32b0a0e77..f8df531ff8 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -53,14 +53,6 @@ struct fb_variable {
 	struct list_head list;
 };
 
-static inline bool fastboot_download_to_buf(struct fastboot *fb)
-{
-	if (IS_ENABLED(CONFIG_FASTBOOT_BUF))
-		return true;
-	else
-		return false;
-}
-
 static void fb_setvar(struct fb_variable *var, const char *fmt, ...)
 {
 	va_list ap;
@@ -331,13 +323,9 @@ int fastboot_handle_download_data(struct fastboot *fb, const void *buffer,
 {
 	int ret;
 
-	if (fastboot_download_to_buf(fb)) {
-		memcpy(fb->buf + fb->download_bytes, buffer, len);
-	} else {
-		ret = write(fb->download_fd, buffer, len);
-		if (ret < 0)
-			return ret;
-	}
+	ret = write(fb->download_fd, buffer, len);
+	if (ret < 0)
+		return ret;
 
 	fb->download_bytes += len;
 	show_progress(fb->download_bytes);
@@ -346,8 +334,7 @@ int fastboot_handle_download_data(struct fastboot *fb, const void *buffer,
 
 void fastboot_download_finished(struct fastboot *fb)
 {
-	if (!fastboot_download_to_buf(fb))
-		close(fb->download_fd);
+	close(fb->download_fd);
 
 	printf("\n");
 
@@ -367,21 +354,10 @@ static void cb_download(struct fastboot *fb, const char *cmd)
 
 	init_progression_bar(fb->download_size);
 
-	if (fastboot_download_to_buf(fb)) {
-		free(fb->buf);
-		fb->buf = malloc(fb->download_size);
-		if (!fb->buf) {
-			fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
-					  "not enough memory");
-			return;
-		}
-	} else {
-		fb->download_fd = open(fb->tempname, O_WRONLY | O_CREAT | O_TRUNC);
-		if (fb->download_fd < 0) {
-			fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
-					  "internal error");
+	fb->download_fd = open(fb->tempname, O_WRONLY | O_CREAT | O_TRUNC);
+	if (fb->download_fd < 0) {
+		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "internal error");
 			return;
-		}
 	}
 
 	if (!fb->download_size)
@@ -626,16 +602,10 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 {
 	struct file_list_entry *fentry;
 	int ret;
-	const char *filename = NULL, *sourcefile;
+	const char *filename = NULL;
 	enum filetype filetype;
 
-	if (fastboot_download_to_buf(fb)) {
-		sourcefile = NULL;
-		filetype = file_detect_type(fb->buf, fb->download_bytes);
-	} else {
-		sourcefile = fb->tempname;
-		filetype = file_name_detect_type(fb->tempname);
-	}
+	filetype = file_name_detect_type(fb->tempname);
 
 	fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "Copying file to %s...",
 			  cmd);
@@ -650,7 +620,7 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 	}
 
 	if (fb->cmd_flash) {
-		ret = fb->cmd_flash(fb, fentry, sourcefile, fb->buf,
+		ret = fb->cmd_flash(fb, fentry, fb->tempname, fb->buf,
 				      fb->download_size);
 		if (ret != FASTBOOT_CMD_FALLTHROUGH)
 			goto out;
@@ -659,8 +629,7 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 	filename = fentry->filename;
 
 	if (filetype == filetype_android_sparse) {
-		if (!IS_ENABLED(CONFIG_FASTBOOT_SPARSE) ||
-		    fastboot_download_to_buf(fb)) {
+		if (!IS_ENABLED(CONFIG_FASTBOOT_SPARSE)) {
 			fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
 					  "sparse image not supported");
 			ret = -EOPNOTSUPP;
@@ -685,7 +654,7 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 
 		mtd = get_mtd(fb, fentry->filename);
 
-		ret = do_ubiformat(fb, mtd, sourcefile, fb->buf,
+		ret = do_ubiformat(fb, mtd, fb->tempname, fb->buf,
 				   fb->download_size);
 		if (ret) {
 			fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
@@ -711,20 +680,16 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 		fastboot_tx_print(fb, FASTBOOT_MSG_INFO,
 				  "This is a barebox image...");
 
-		if (fastboot_download_to_buf(fb)) {
-			data.len = fb->download_size;
-		} else {
-			ret = read_file_2(sourcefile, &data.len, &fb->buf,
-					fb->download_size);
-			if (ret) {
-				fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
-						  "reading barebox");
-				goto out;
-			}
+		ret = read_file_2(fb->tempname, &data.len, &fb->buf,
+				fb->download_size);
+		if (ret) {
+			fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
+					  "reading barebox");
+			goto out;
 		}
 
 		data.image = fb->buf;
-		data.imagefile = sourcefile;
+		data.imagefile = fb->tempname;
 
 		ret = barebox_update(&data, handler);
 
@@ -736,11 +701,7 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 	}
 
 copy:
-	if (fastboot_download_to_buf(fb))
-		ret = write_file(filename, fb->buf, fb->download_size);
-	else
-		ret = copy_file(fb->tempname, filename, 1);
-
+	ret = copy_file(fb->tempname, filename, 1);
 	if (ret)
 		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
 				  "write partition: %s", strerror(-ret));
@@ -752,8 +713,7 @@ out:
 	free(fb->buf);
 	fb->buf = NULL;
 
-	if (!fastboot_download_to_buf(fb))
-		unlink(fb->tempname);
+	unlink(fb->tempname);
 }
 
 static void cb_erase(struct fastboot *fb, const char *cmd)
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

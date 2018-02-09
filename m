Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5DO-0005x4-Ua
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 09:43:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Feb 2018 10:43:15 +0100
Message-Id: <20180209094316.8523-9-s.hauer@pengutronix.de>
In-Reply-To: <20180209094316.8523-1-s.hauer@pengutronix.de>
References: <20180209094316.8523-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 8/9] usb: gadget: fastboot: Add option to download to a buffer
To: Barebox List <barebox@lists.infradead.org>

This adds an option to download the image data to a temporary
buffer rather than to a file. While a file is generally the
better option, in some special cases a buffer is better for
memory usage.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/Kconfig      |  12 +++++
 drivers/usb/gadget/f_fastboot.c | 102 ++++++++++++++++++++++++++++++----------
 2 files changed, 88 insertions(+), 26 deletions(-)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index e2dc7807a0..b0408e3bbe 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -68,4 +68,16 @@ config USB_GADGET_FASTBOOT_SPARSE
 	  images that are bigger than the available memory. If unsure,
 	  say yes here.
 
+config USB_GADGET_FASTBOOT_BUF
+	bool
+	depends on USB_GADGET_FASTBOOT
+	prompt "Download files to temporary buffer instead of file"
+	help
+	  With this option enabled the fastboot code will download files to a
+	  temporary buffer instead of a temporary file. Normally you want to
+	  use a file as this also works when your memory is fragmented. However,
+	  in some special cases, when the file consumer also better copes with
+	  a buffer, then using a buffer might be better.
+
+	  Say no here unless you know what you are doing.
 endif
diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index d349227f08..b851e8d1c3 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -76,11 +76,21 @@ struct f_fastboot {
 	struct usb_request *in_req, *out_req;
 	struct file_list *files;
 	int download_fd;
+	void *buf;
+
 	size_t download_bytes;
 	size_t download_size;
 	struct list_head variables;
 };
 
+static inline bool fastboot_download_to_buf(struct f_fastboot *f_fb)
+{
+	if (IS_ENABLED(CONFIG_USB_GADGET_FASTBOOT_BUF))
+		return true;
+	else
+		return false;
+}
+
 static inline struct f_fastboot *func_to_fastboot(struct usb_function *f)
 {
 	return container_of(f, struct f_fastboot, func);
@@ -605,10 +615,14 @@ static void rx_handler_dl_image(struct usb_ep *ep, struct usb_request *req)
 		return;
 	}
 
-	ret = write(f_fb->download_fd, buffer, req->actual);
-	if (ret < 0) {
-		fastboot_tx_print(f_fb, "FAIL%s", strerror(-ret));
-		return;
+	if (fastboot_download_to_buf(f_fb)) {
+		memcpy(f_fb->buf + f_fb->download_bytes, buffer, req->actual);
+	} else {
+		ret = write(f_fb->download_fd, buffer, req->actual);
+		if (ret < 0) {
+			fastboot_tx_print(f_fb, "FAIL%s", strerror(-ret));
+			return;
+		}
 	}
 
 	f_fb->download_bytes += req->actual;
@@ -646,10 +660,19 @@ static void cb_download(struct f_fastboot *f_fb, const char *cmd)
 
 	init_progression_bar(f_fb->download_size);
 
-	f_fb->download_fd = open(FASTBOOT_TMPFILE, O_WRONLY | O_CREAT | O_TRUNC);
-	if (f_fb->download_fd < 0) {
-		fastboot_tx_print(f_fb, "FAILInternal Error");
-		return;
+	if (fastboot_download_to_buf(f_fb)) {
+		free(f_fb->buf);
+		f_fb->buf = malloc(f_fb->download_size);
+		if (!f_fb->buf) {
+			fastboot_tx_print(f_fb, "FAILnot enough memory");
+			return;
+		}
+	} else {
+		f_fb->download_fd = open(FASTBOOT_TMPFILE, O_WRONLY | O_CREAT | O_TRUNC);
+		if (f_fb->download_fd < 0) {
+			fastboot_tx_print(f_fb, "FAILInternal Error");
+			return;
+		}
 	}
 
 	if (!f_fb->download_size) {
@@ -711,11 +734,13 @@ static struct mtd_info *get_mtd(struct f_fastboot *f_fb, const char *filename)
 }
 
 static int do_ubiformat(struct f_fastboot *f_fb, struct mtd_info *mtd,
-			const char *file)
+			const char *file, const void *buf, size_t len)
 {
 	struct ubiformat_args args = {
 		.yes = 1,
 		.image = file,
+		.image_buf = buf,
+		.image_size = len,
 	};
 
 	if (!file)
@@ -850,7 +875,7 @@ static int fastboot_handle_sparse(struct f_fastboot *f_fb,
 			}
 
 			if (pos == 0) {
-				ret = do_ubiformat(f_fb, mtd, NULL);
+				ret = do_ubiformat(f_fb, mtd, NULL, NULL, 0);
 				if (ret)
 					goto out;
 			}
@@ -886,8 +911,16 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 {
 	struct file_list_entry *fentry;
 	int ret;
-	const char *filename = NULL;
-	enum filetype filetype = file_name_detect_type(FASTBOOT_TMPFILE);
+	const char *filename = NULL, *sourcefile;
+	enum filetype filetype;
+
+	if (fastboot_download_to_buf(f_fb)) {
+		sourcefile = NULL;
+		filetype = file_detect_type(f_fb->buf, f_fb->download_bytes);
+	} else {
+		sourcefile = FASTBOOT_TMPFILE;
+		filetype = file_name_detect_type(FASTBOOT_TMPFILE);
+	}
 
 	fastboot_tx_print(f_fb, "INFOCopying file to %s...", cmd);
 
@@ -908,6 +941,11 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 			goto out;
 		}
 
+		if (fastboot_download_to_buf(f_fb)) {
+			fastboot_tx_print(f_fb, "FAILsparse image not supported");
+			goto out;
+		}
+
 		ret = fastboot_handle_sparse(f_fb, fentry);
 		if (ret)
 			fastboot_tx_print(f_fb, "FAILwriting sparse image: %s",
@@ -925,17 +963,19 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 
 		mtd = get_mtd(f_fb, fentry->filename);
 
-		ret = do_ubiformat(f_fb, mtd, FASTBOOT_TMPFILE);
-		if (ret)
+		ret = do_ubiformat(f_fb, mtd, sourcefile, f_fb->buf,
+				   f_fb->download_size);
+		if (ret) {
 			fastboot_tx_print(f_fb, "FAILwrite partition: %s", strerror(-ret));
+			goto out;
+		}
+
 		goto out;
 	}
 
 	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) && filetype_is_barebox_image(filetype)) {
-		void *image;
 		struct bbu_data data = {
 			.devicefile = filename,
-			.imagefile = FASTBOOT_TMPFILE,
 			.flags = BBU_FLAG_YES,
 		};
 
@@ -944,19 +984,22 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 
 		fastboot_tx_print(f_fb, "INFOThis is a barebox image...");
 
-		ret = read_file_2(data.imagefile, &data.len, &image,
-				  f_fb->download_size);
-		if (ret) {
-			fastboot_tx_print(f_fb, "FAILreading barebox");
-			goto out;
+		if (fastboot_download_to_buf(f_fb)) {
+			data.len = f_fb->download_size;
+		} else {
+			ret = read_file_2(data.imagefile, &data.len, &f_fb->buf,
+					f_fb->download_size);
+			if (ret) {
+				fastboot_tx_print(f_fb, "FAILreading barebox");
+				goto out;
+			}
 		}
 
-		data.image = image;
+		data.image = f_fb->buf;
+		data.imagefile = sourcefile;
 
 		ret = barebox_update(&data);
 
-		free(image);
-
 		if (ret)
 			fastboot_tx_print(f_fb, "FAILupdate barebox: %s", strerror(-ret));
 
@@ -964,7 +1007,10 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 	}
 
 copy:
-	ret = copy_file(FASTBOOT_TMPFILE, filename, 1);
+	if (fastboot_download_to_buf(f_fb))
+		ret = write_file(filename, f_fb->buf, f_fb->download_size);
+	else
+		ret = copy_file(FASTBOOT_TMPFILE, filename, 1);
 
 	if (ret)
 		fastboot_tx_print(f_fb, "FAILwrite partition: %s", strerror(-ret));
@@ -973,7 +1019,11 @@ out:
 	if (!ret)
 		fastboot_tx_print(f_fb, "OKAY");
 
-	unlink(FASTBOOT_TMPFILE);
+	free(f_fb->buf);
+	f_fb->buf = NULL;
+
+	if (!fastboot_download_to_buf(f_fb))
+		unlink(FASTBOOT_TMPFILE);
 }
 
 static void cb_erase(struct f_fastboot *f_fb, const char *cmd)
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

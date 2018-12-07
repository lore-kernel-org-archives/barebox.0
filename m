Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVDSe-0006ZH-HF
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 10:34:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Dec 2018 11:33:59 +0100
Message-Id: <20181207103405.27365-2-s.hauer@pengutronix.de>
In-Reply-To: <20181207103405.27365-1-s.hauer@pengutronix.de>
References: <20181207103405.27365-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] usb: gadget: fastboot: pass message type as enum
To: Barebox List <barebox@lists.infradead.org>

We used to pass the message type ("INFO", "FAIL", "OKAY") as strings
to fastboot_tx_print(). Change this to a enum type. This allows
fastboot_tx_print() to react on the message type in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 153 ++++++++++++++++++++------------
 include/usb/fastboot.h          |  10 ++-
 2 files changed, 104 insertions(+), 59 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index d61920e42d..a5b2564814 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -556,14 +556,28 @@ static int fastboot_tx_write(struct f_fastboot *f_fb, const char *buffer, unsign
 	return 0;
 }
 
-int fastboot_tx_print(struct f_fastboot *f_fb, const char *fmt, ...)
+static char *fastboot_msg[] = {
+	[FASTBOOT_MSG_OKAY] = "OKAY",
+	[FASTBOOT_MSG_FAIL] = "FAIL",
+	[FASTBOOT_MSG_INFO] = "INFO",
+	[FASTBOOT_MSG_DATA] = "DATA",
+};
+
+int fastboot_tx_print(struct f_fastboot *f_fb, enum fastboot_msg_type type,
+		      const char *fmt, ...)
 {
+	struct va_format vaf;
 	char buf[64];
 	va_list ap;
 	int n;
+	const char *msg = fastboot_msg[type];
 
 	va_start(ap, fmt);
-	n = vsnprintf(buf, 64, fmt, ap);
+	vaf.fmt = fmt;
+	vaf.va = &ap;
+
+	n = snprintf(buf, 64, "%s%pV", msg, &vaf);
+
 	va_end(ap);
 
 	if (n > 64)
@@ -580,7 +594,7 @@ static void compl_do_reset(struct usb_ep *ep, struct usb_request *req)
 static void cb_reboot(struct f_fastboot *f_fb, const char *cmd)
 {
 	f_fb->in_req->complete = compl_do_reset;
-	fastboot_tx_print(f_fb, "OKAY");
+	fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
 }
 
 static int strcmp_l1(const char *s1, const char *s2)
@@ -598,20 +612,21 @@ static void cb_getvar(struct f_fastboot *f_fb, const char *cmd)
 
 	if (!strcmp_l1(cmd, "all")) {
 		list_for_each_entry(var, &f_fb->variables, list) {
-			fastboot_tx_print(f_fb, "INFO%s: %s", var->name, var->value);
+			fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO, "%s: %s",
+					  var->name, var->value);
 		}
-		fastboot_tx_print(f_fb, "OKAY");
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
 		return;
 	}
 
 	list_for_each_entry(var, &f_fb->variables, list) {
 		if (!strcmp(cmd, var->name)) {
-			fastboot_tx_print(f_fb, "OKAY%s", var->value);
+			fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, var->value);
 			return;
 		}
 	}
 
-	fastboot_tx_print(f_fb, "OKAY");
+	fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
 }
 
 static int rx_bytes_expected(struct f_fastboot *f_fb)
@@ -640,7 +655,7 @@ static void rx_handler_dl_image(struct usb_ep *ep, struct usb_request *req)
 	} else {
 		ret = write(f_fb->download_fd, buffer, req->actual);
 		if (ret < 0) {
-			fastboot_tx_print(f_fb, "FAIL%s", strerror(-ret));
+			fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL, strerror(-ret));
 			return;
 		}
 	}
@@ -657,10 +672,10 @@ static void rx_handler_dl_image(struct usb_ep *ep, struct usb_request *req)
 		req->length = EP_BUFFER_SIZE;
 		close(f_fb->download_fd);
 
-		fastboot_tx_print(f_fb, "INFODownloading %d bytes finished",
-				f_fb->download_bytes);
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO, "Downloading %d bytes finished",
+				  f_fb->download_bytes);
 
-		fastboot_tx_print(f_fb, "OKAY");
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
 
 		printf("\n");
 	}
@@ -674,7 +689,8 @@ static void cb_download(struct f_fastboot *f_fb, const char *cmd)
 	f_fb->download_size = simple_strtoul(cmd, NULL, 16);
 	f_fb->download_bytes = 0;
 
-	fastboot_tx_print(f_fb, "INFODownloading %d bytes...", f_fb->download_size);
+	fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO, "Downloading %d bytes...",
+			  f_fb->download_size);
 
 	init_progression_bar(f_fb->download_size);
 
@@ -682,22 +698,26 @@ static void cb_download(struct f_fastboot *f_fb, const char *cmd)
 		free(f_fb->buf);
 		f_fb->buf = malloc(f_fb->download_size);
 		if (!f_fb->buf) {
-			fastboot_tx_print(f_fb, "FAILnot enough memory");
+			fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+					  "not enough memory");
 			return;
 		}
 	} else {
 		f_fb->download_fd = open(FASTBOOT_TMPFILE, O_WRONLY | O_CREAT | O_TRUNC);
 		if (f_fb->download_fd < 0) {
-			fastboot_tx_print(f_fb, "FAILInternal Error");
+			fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+					  "internal error");
 			return;
 		}
 	}
 
 	if (!f_fb->download_size) {
-		fastboot_tx_print(f_fb, "FAILdata invalid size");
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+					  "data invalid size");
 	} else {
 		struct usb_request *req = f_fb->out_req;
-		fastboot_tx_print(f_fb, "DATA%08x", f_fb->download_size);
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_DATA,
+					  "%08x", f_fb->download_size);
 		req->complete = rx_handler_dl_image;
 		req->length = rx_bytes_expected(f_fb);
 	}
@@ -726,7 +746,7 @@ static void do_bootm_on_complete(struct usb_ep *ep, struct usb_request *req)
 static void __maybe_unused cb_boot(struct f_fastboot *f_fb, const char *opt)
 {
 	f_fb->in_req->complete = do_bootm_on_complete;
-	fastboot_tx_print(f_fb, "OKAY");
+	fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
 }
 
 static struct mtd_info *get_mtd(struct f_fastboot *f_fb, const char *filename)
@@ -762,7 +782,8 @@ static int do_ubiformat(struct f_fastboot *f_fb, struct mtd_info *mtd,
 		args.novtbl = 1;
 
 	if (!IS_ENABLED(CONFIG_UBIFORMAT)) {
-		fastboot_tx_print(f_fb, "FAILubiformat is not available");
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+					  "ubiformat is not available");
 		return -ENODEV;
 	}
 
@@ -784,31 +805,37 @@ static int check_ubi(struct f_fastboot *f_fb, struct file_list_entry *fentry,
 	 */
 	if (!IS_ERR(mtd) && filetype == filetype_ubi &&
 	    !(fentry->flags & FILE_LIST_FLAG_UBI)) {
-		    fastboot_tx_print(f_fb, "INFOwriting UBI image to MTD device, "
-					    "add the 'u' ");
-		    fastboot_tx_print(f_fb, "INFOflag to the partition description");
-		    return 0;
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO,
+				  "writing UBI image to MTD device, "
+				  "add the 'u' ");
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO,
+				  "flag to the partition description");
+		return 0;
 	}
 
 	if (!(fentry->flags & FILE_LIST_FLAG_UBI))
 		return 0;
 
 	if (!IS_ENABLED(CONFIG_UBIFORMAT)) {
-		fastboot_tx_print(f_fb, "FAILformat not available");
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+				  "ubiformat not available");
 		return -ENOSYS;
 	}
 
 	if (IS_ERR(mtd)) {
-		fastboot_tx_print(f_fb, "FAILUBI flag given on non-MTD device");
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+				  "UBI flag given on non-MTD device");
 		return -EINVAL;
 	}
 
 	if (filetype == filetype_ubi) {
-		fastboot_tx_print(f_fb, "INFOThis is an UBI image...");
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO,
+				  "This is an UBI image...");
 		return 1;
 	} else {
-		fastboot_tx_print(f_fb, "FAILThis is no UBI image but %s",
-			file_type_to_string(filetype));
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+				  "This is no UBI image but %s",
+				 file_type_to_string(filetype));
 		return -EINVAL;
 	}
 }
@@ -937,12 +964,14 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 		filetype = file_name_detect_type(FASTBOOT_TMPFILE);
 	}
 
-	fastboot_tx_print(f_fb, "INFOCopying file to %s...", cmd);
+	fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO, "Copying file to %s...",
+			  cmd);
 
 	fentry = file_list_entry_by_name(f_fb->files, cmd);
 
 	if (!fentry) {
-		fastboot_tx_print(f_fb, "FAILNo such partition: %s", cmd);
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL, "No such partition: %s",
+				  cmd);
 		ret = -ENOENT;
 		goto out;
 	}
@@ -957,20 +986,18 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 	filename = fentry->filename;
 
 	if (filetype == filetype_android_sparse) {
-		if (!IS_ENABLED(CONFIG_USB_GADGET_FASTBOOT_SPARSE)) {
-			fastboot_tx_print(f_fb, "FAILsparse image not supported");
+		if (!IS_ENABLED(CONFIG_USB_GADGET_FASTBOOT_SPARSE) ||
+		    fastboot_download_to_buf(f_fb)) {
+			fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+					  "sparse image not supported");
 			ret = -EOPNOTSUPP;
 			goto out;
 		}
 
-		if (fastboot_download_to_buf(f_fb)) {
-			fastboot_tx_print(f_fb, "FAILsparse image not supported");
-			goto out;
-		}
-
 		ret = fastboot_handle_sparse(f_fb, fentry);
 		if (ret)
-			fastboot_tx_print(f_fb, "FAILwriting sparse image: %s",
+			fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+					  "writing sparse image: %s",
 					  strerror(-ret));
 
 		goto out;
@@ -988,7 +1015,9 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 		ret = do_ubiformat(f_fb, mtd, sourcefile, f_fb->buf,
 				   f_fb->download_size);
 		if (ret) {
-			fastboot_tx_print(f_fb, "FAILwrite partition: %s", strerror(-ret));
+			fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+					  "write partition: %s",
+					  strerror(-ret));
 			goto out;
 		}
 
@@ -1006,7 +1035,8 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 		if (!handler)
 			goto copy;
 
-		fastboot_tx_print(f_fb, "INFOThis is a barebox image...");
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO,
+				  "This is a barebox image...");
 
 		if (fastboot_download_to_buf(f_fb)) {
 			data.len = f_fb->download_size;
@@ -1014,7 +1044,8 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 			ret = read_file_2(sourcefile, &data.len, &f_fb->buf,
 					f_fb->download_size);
 			if (ret) {
-				fastboot_tx_print(f_fb, "FAILreading barebox");
+				fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+						  "reading barebox");
 				goto out;
 			}
 		}
@@ -1025,7 +1056,8 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 		ret = barebox_update(&data, handler);
 
 		if (ret)
-			fastboot_tx_print(f_fb, "FAILupdate barebox: %s", strerror(-ret));
+			fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+				  "update barebox: %s", strerror(-ret));
 
 		goto out;
 	}
@@ -1037,11 +1069,12 @@ copy:
 		ret = copy_file(FASTBOOT_TMPFILE, filename, 1);
 
 	if (ret)
-		fastboot_tx_print(f_fb, "FAILwrite partition: %s", strerror(-ret));
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+				  "write partition: %s", strerror(-ret));
 
 out:
 	if (!ret)
-		fastboot_tx_print(f_fb, "OKAY");
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
 
 	free(f_fb->buf);
 	f_fb->buf = NULL;
@@ -1057,7 +1090,7 @@ static void cb_erase(struct f_fastboot *f_fb, const char *cmd)
 	const char *filename = NULL;
 	int fd;
 
-	fastboot_tx_print(f_fb, "INFOErasing %s...", cmd);
+	fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO, "Erasing %s...", cmd);
 
 	file_list_for_each_entry(f_fb->files, fentry) {
 		if (!strcmp(cmd, fentry->name)) {
@@ -1067,23 +1100,25 @@ static void cb_erase(struct f_fastboot *f_fb, const char *cmd)
 	}
 
 	if (!filename) {
-		fastboot_tx_print(f_fb, "FAILNo such partition: %s", cmd);
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+				  "No such partition: %s", cmd);
 		return;
 	}
 
 	fd = open(filename, O_RDWR);
 	if (fd < 0)
-		fastboot_tx_print(f_fb, "FAIL%s", strerror(-fd));
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL, strerror(-fd));
 
 	ret = erase(fd, ERASE_SIZE_ALL, 0);
 
 	close(fd);
 
 	if (ret)
-		fastboot_tx_print(f_fb, "FAILcannot erase partition %s: %s",
-				filename, strerror(-ret));
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+				  "cannot erase partition %s: %s",
+				  filename, strerror(-ret));
 	else
-		fastboot_tx_print(f_fb, "OKAY");
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
 }
 
 struct cmd_dispatch_info {
@@ -1109,7 +1144,8 @@ static void fb_run_command(struct f_fastboot *f_fb, const char *cmdbuf,
 		}
 	}
 
-	fastboot_tx_print(f_fb, "FAILunknown command %s", cmdbuf);
+	fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL, "unknown command %s",
+			  cmdbuf);
 }
 
 static void cb_oem_getenv(struct f_fastboot *f_fb, const char *cmd)
@@ -1120,8 +1156,8 @@ static void cb_oem_getenv(struct f_fastboot *f_fb, const char *cmd)
 
 	value = getenv(cmd);
 
-	fastboot_tx_print(f_fb, "INFO%s", value ? value : "");
-	fastboot_tx_print(f_fb, "OKAY");
+	fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO, value ? value : "");
+	fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
 }
 
 static void cb_oem_setenv(struct f_fastboot *f_fb, const char *cmd)
@@ -1144,12 +1180,12 @@ static void cb_oem_setenv(struct f_fastboot *f_fb, const char *cmd)
 	if (ret)
 		goto out;
 
-	fastboot_tx_print(f_fb, "OKAY");
+	fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
 out:
 	free(var);
 
 	if (ret)
-		fastboot_tx_print(f_fb, "FAIL%s", strerror(-ret));
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL, strerror(-ret));
 }
 
 static void cb_oem_exec(struct f_fastboot *f_fb, const char *cmd)
@@ -1157,17 +1193,18 @@ static void cb_oem_exec(struct f_fastboot *f_fb, const char *cmd)
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_COMMAND_SUPPORT)) {
-		fastboot_tx_print(f_fb, "FAILno command support available");
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
+				  "no command support available");
 		return;
 	}
 
 	ret = run_command(cmd);
 	if (ret < 0)
-		fastboot_tx_print(f_fb, "FAIL%s", strerror(-ret));
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL, strerror(-ret));
 	else if (ret > 0)
-		fastboot_tx_print(f_fb, "FAIL");
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL, "");
 	else
-		fastboot_tx_print(f_fb, "OKAY");
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
 }
 
 static const struct cmd_dispatch_info cmd_oem_dispatch_info[] = {
diff --git a/include/usb/fastboot.h b/include/usb/fastboot.h
index 00c9d00df5..c0775c67dd 100644
--- a/include/usb/fastboot.h
+++ b/include/usb/fastboot.h
@@ -32,6 +32,14 @@ struct f_fastboot_opts {
  */
 #define FASTBOOT_CMD_FALLTHROUGH	1
 
-int fastboot_tx_print(struct f_fastboot *f_fb, const char *fmt, ...);
+enum fastboot_msg_type {
+	FASTBOOT_MSG_OKAY,
+	FASTBOOT_MSG_FAIL,
+	FASTBOOT_MSG_INFO,
+	FASTBOOT_MSG_DATA,
+};
+
+int fastboot_tx_print(struct f_fastboot *f_fb, enum fastboot_msg_type type,
+		      const char *fmt, ...);
 
 #endif /* _USB_FASTBOOT_H */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

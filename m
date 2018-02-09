Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5DO-0005x6-Ue
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 09:43:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Feb 2018 10:43:16 +0100
Message-Id: <20180209094316.8523-10-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] usb: gadget: fastboot: Add external command execution
 support
To: Barebox List <barebox@lists.infradead.org>

Custom projects may need vendor specific expansions to the fastboot
command execution. Allow these to be implemented without messing in
the fastboot code directly.
We have a hook for all commands and also one for the "flash" command.
Each hook can decide if the generic command parser is executed
afterwards (return value FASTBOOT_CMD_FALLTHROUGH) or if the generic
parser shall be skipped (return value 0 or negative error code).

This allows board code to implement vendor specific "oem" commands
or to handle the downloaded image in a special way (i.e. do signature
checks on them)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 21 ++++++++++++++++++++-
 drivers/usb/gadget/multi.c      |  2 ++
 include/usb/fastboot.h          | 17 +++++++++++++++++
 3 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index b851e8d1c3..787b1205ec 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -75,6 +75,9 @@ struct f_fastboot {
 	struct usb_ep *in_ep, *out_ep;
 	struct usb_request *in_req, *out_req;
 	struct file_list *files;
+	int (*cmd_exec)(struct f_fastboot *, const char *cmd);
+	int (*cmd_flash)(struct f_fastboot *, struct file_list_entry *entry,
+			 const char *filename, const void *buf, size_t len);
 	int download_fd;
 	void *buf;
 
@@ -327,6 +330,8 @@ static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 	struct fb_variable *var;
 
 	f_fb->files = opts->files;
+	f_fb->cmd_exec = opts->cmd_exec;
+	f_fb->cmd_flash = opts->cmd_flash;
 
 	var = fb_addvar(f_fb, "version");
 	fb_setvar(var, "0.4");
@@ -932,6 +937,13 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 		goto out;
 	}
 
+	if (f_fb->cmd_flash) {
+		ret = f_fb->cmd_flash(f_fb, fentry, sourcefile, f_fb->buf,
+				      f_fb->download_size);
+		if (ret != FASTBOOT_CMD_FALLTHROUGH)
+			goto out;
+	}
+
 	filename = fentry->filename;
 
 	if (filetype == filetype_android_sparse) {
@@ -1197,15 +1209,22 @@ static void rx_handler_command(struct usb_ep *ep, struct usb_request *req)
 {
 	char *cmdbuf = req->buf;
 	struct f_fastboot *f_fb = req->context;
+	int ret;
 
 	if (req->status != 0)
 		return;
 
 	*(cmdbuf + req->actual) = 0;
 
+	if (f_fb->cmd_exec) {
+		ret = f_fb->cmd_exec(f_fb, cmdbuf);
+		if (ret != FASTBOOT_CMD_FALLTHROUGH)
+			goto done;
+	}
+
 	fb_run_command(f_fb, cmdbuf, cmd_dispatch_info,
 				ARRAY_SIZE(cmd_dispatch_info));
-
+done:
 	*cmdbuf = '\0';
 	req->actual = 0;
 	memset(req->buf, 0, EP_BUFFER_SIZE);
diff --git a/drivers/usb/gadget/multi.c b/drivers/usb/gadget/multi.c
index 44969be0c9..d6edfb8cf2 100644
--- a/drivers/usb/gadget/multi.c
+++ b/drivers/usb/gadget/multi.c
@@ -128,6 +128,8 @@ static int multi_bind_fastboot(struct usb_composite_dev *cdev)
 
 	opts = container_of(fi_fastboot, struct f_fastboot_opts, func_inst);
 	opts->files = gadget_multi_opts->fastboot_opts.files;
+	opts->cmd_exec = gadget_multi_opts->fastboot_opts.cmd_exec;
+	opts->cmd_flash = gadget_multi_opts->fastboot_opts.cmd_flash;
 	opts->export_bbu = gadget_multi_opts->fastboot_opts.export_bbu;
 
 	f_fastboot = usb_get_function(fi_fastboot);
diff --git a/include/usb/fastboot.h b/include/usb/fastboot.h
index ced890c9ab..00c9d00df5 100644
--- a/include/usb/fastboot.h
+++ b/include/usb/fastboot.h
@@ -5,6 +5,8 @@
 #include <file-list.h>
 #include <usb/composite.h>
 
+struct f_fastboot;
+
 /**
  * struct f_fastboot_opts - options to configure the fastboot gadget
  * @func_inst:	The USB function instance to register on
@@ -15,6 +17,21 @@ struct f_fastboot_opts {
 	struct usb_function_instance func_inst;
 	struct file_list *files;
 	bool export_bbu;
+	int (*cmd_exec)(struct f_fastboot *, const char *cmd);
+	int (*cmd_flash)(struct f_fastboot *, struct file_list_entry *entry,
+			 const char *filename, const void *buf, size_t len);
 };
 
+/*
+ * Return codes for the exec_cmd callback above:
+ *
+ * FASTBOOT_CMD_FALLTHROUGH - Not handled by the external command dispatcher,
+ *                            handle it with internal dispatcher
+ * Other than these negative error codes mean errors handling the command and
+ * zero means the command has been successfully handled.
+ */
+#define FASTBOOT_CMD_FALLTHROUGH	1
+
+int fastboot_tx_print(struct f_fastboot *f_fb, const char *fmt, ...);
+
 #endif /* _USB_FASTBOOT_H */
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

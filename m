Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5DO-0005xE-Ud
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 09:43:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Feb 2018 10:43:10 +0100
Message-Id: <20180209094316.8523-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] usb: gadget: fastboot: pass struct f_fastboot * around
To: Barebox List <barebox@lists.infradead.org>

The different fastboot commands mostly do not need the USB endpoint
or the USB request, they need the context data structure struct
f_fastboot * instead, so rather pass this one around between the
different functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 49 ++++++++++++++++-------------------------
 1 file changed, 19 insertions(+), 30 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 8da317f83a..81522cbba6 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -557,10 +557,8 @@ static void compl_do_reset(struct usb_ep *ep, struct usb_request *req)
 	restart_machine();
 }
 
-static void cb_reboot(struct usb_ep *ep, struct usb_request *req, const char *cmd)
+static void cb_reboot(struct f_fastboot *f_fb, const char *cmd)
 {
-	struct f_fastboot *f_fb = req->context;
-
 	f_fb->in_req->complete = compl_do_reset;
 	fastboot_tx_print(f_fb, "OKAY");
 }
@@ -572,9 +570,8 @@ static int strcmp_l1(const char *s1, const char *s2)
 	return strncmp(s1, s2, strlen(s1));
 }
 
-static void cb_getvar(struct usb_ep *ep, struct usb_request *req, const char *cmd)
+static void cb_getvar(struct f_fastboot *f_fb, const char *cmd)
 {
-	struct f_fastboot *f_fb = req->context;
 	struct fb_variable *var;
 
 	pr_debug("getvar: \"%s\"\n", cmd);
@@ -640,10 +637,8 @@ static void rx_handler_dl_image(struct usb_ep *ep, struct usb_request *req)
 	usb_ep_queue(ep, req);
 }
 
-static void cb_download(struct usb_ep *ep, struct usb_request *req, const char *cmd)
+static void cb_download(struct f_fastboot *f_fb, const char *cmd)
 {
-	struct f_fastboot *f_fb = req->context;
-
 	f_fb->download_size = simple_strtoul(cmd, NULL, 16);
 	f_fb->download_bytes = 0;
 
@@ -660,6 +655,8 @@ static void cb_download(struct usb_ep *ep, struct usb_request *req, const char *
 	if (!f_fb->download_size) {
 		fastboot_tx_print(f_fb, "FAILdata invalid size");
 	} else {
+		struct usb_request *req = f_fb->out_req;
+		struct usb_ep *ep = f_fb->out_ep;
 		fastboot_tx_print(f_fb, "DATA%08x", f_fb->download_size);
 		req->complete = rx_handler_dl_image;
 		req->length = EP_BUFFER_SIZE;
@@ -688,11 +685,8 @@ static void do_bootm_on_complete(struct usb_ep *ep, struct usb_request *req)
 		pr_err("Booting failed\n");
 }
 
-static void __maybe_unused cb_boot(struct usb_ep *ep, struct usb_request *req,
-				   const char *opt)
+static void __maybe_unused cb_boot(struct f_fastboot *f_fb, const char *opt)
 {
-	struct f_fastboot *f_fb = req->context;
-
 	f_fb->in_req->complete = do_bootm_on_complete;
 	fastboot_tx_print(f_fb, "OKAY");
 }
@@ -888,9 +882,8 @@ out_close_fd:
 	return ret;
 }
 
-static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd)
+static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 {
-	struct f_fastboot *f_fb = req->context;
 	struct file_list_entry *fentry;
 	int ret;
 	const char *filename = NULL;
@@ -988,9 +981,8 @@ out:
 	fastboot_tx_print(f_fb, "OKAY");
 }
 
-static void cb_erase(struct usb_ep *ep, struct usb_request *req, const char *cmd)
+static void cb_erase(struct f_fastboot *f_fb, const char *cmd)
 {
-	struct f_fastboot *f_fb = req->context;
 	struct file_list_entry *fentry;
 	int ret;
 	const char *filename = NULL;
@@ -1027,14 +1019,13 @@ static void cb_erase(struct usb_ep *ep, struct usb_request *req, const char *cmd
 
 struct cmd_dispatch_info {
 	char *cmd;
-	void (*cb)(struct usb_ep *ep, struct usb_request *req, const char *opt);
+	void (*cb)(struct f_fastboot *f_fb, const char *opt);
 };
 
-static void fb_run_command(struct usb_ep *ep, struct usb_request *req, const char *cmd,
+static void fb_run_command(struct f_fastboot *f_fb, const char *cmd,
 		const struct cmd_dispatch_info *cmds, int num_commands)
 {
-	void (*func_cb)(struct usb_ep *ep, struct usb_request *req, const char *cmd) = NULL;
-	struct f_fastboot *f_fb = req->context;
+	void (*func_cb)(struct f_fastboot *f_fb, const char *cmd) = NULL;
 	int i;
 
 	console_countdown_abort();
@@ -1043,7 +1034,7 @@ static void fb_run_command(struct usb_ep *ep, struct usb_request *req, const cha
 		if (!strcmp_l1(cmds[i].cmd, cmd)) {
 			func_cb = cmds[i].cb;
 			cmd += strlen(cmds[i].cmd);
-			func_cb(ep, req, cmd);
+			func_cb(f_fb, cmd);
 			return;
 		}
 	}
@@ -1051,9 +1042,8 @@ static void fb_run_command(struct usb_ep *ep, struct usb_request *req, const cha
 	fastboot_tx_print(f_fb, "FAILunknown command %s", cmd);
 }
 
-static void cb_oem_getenv(struct usb_ep *ep, struct usb_request *req, const char *cmd)
+static void cb_oem_getenv(struct f_fastboot *f_fb, const char *cmd)
 {
-	struct f_fastboot *f_fb = req->context;
 	const char *value;
 
 	pr_debug("%s: \"%s\"\n", __func__, cmd);
@@ -1064,9 +1054,8 @@ static void cb_oem_getenv(struct usb_ep *ep, struct usb_request *req, const char
 	fastboot_tx_print(f_fb, "OKAY");
 }
 
-static void cb_oem_setenv(struct usb_ep *ep, struct usb_request *req, const char *cmd)
+static void cb_oem_setenv(struct f_fastboot *f_fb, const char *cmd)
 {
-	struct f_fastboot *f_fb = req->context;
 	char *var = xstrdup(cmd);
 	char *value;
 	int ret;
@@ -1093,9 +1082,8 @@ out:
 		fastboot_tx_print(f_fb, "FAIL%s", strerror(-ret));
 }
 
-static void cb_oem_exec(struct usb_ep *ep, struct usb_request *req, const char *cmd)
+static void cb_oem_exec(struct f_fastboot *f_fb, const char *cmd)
 {
-	struct f_fastboot *f_fb = req->context;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_COMMAND_SUPPORT)) {
@@ -1125,11 +1113,11 @@ static const struct cmd_dispatch_info cmd_oem_dispatch_info[] = {
 	},
 };
 
-static void cb_oem(struct usb_ep *ep, struct usb_request *req, const char *cmd)
+static void cb_oem(struct f_fastboot *f_fb, const char *cmd)
 {
 	pr_debug("%s: \"%s\"\n", __func__, cmd);
 
-	fb_run_command(ep, req, cmd, cmd_oem_dispatch_info, ARRAY_SIZE(cmd_oem_dispatch_info));
+	fb_run_command(f_fb, cmd, cmd_oem_dispatch_info, ARRAY_SIZE(cmd_oem_dispatch_info));
 }
 
 static const struct cmd_dispatch_info cmd_dispatch_info[] = {
@@ -1162,13 +1150,14 @@ static const struct cmd_dispatch_info cmd_dispatch_info[] = {
 static void rx_handler_command(struct usb_ep *ep, struct usb_request *req)
 {
 	char *cmdbuf = req->buf;
+	struct f_fastboot *f_fb = req->context;
 
 	if (req->status != 0)
 		return;
 
 	*(cmdbuf + req->actual) = 0;
 
-	fb_run_command(ep, req, cmdbuf, cmd_dispatch_info,
+	fb_run_command(f_fb, cmdbuf, cmd_dispatch_info,
 				ARRAY_SIZE(cmd_dispatch_info));
 
 	*cmdbuf = '\0';
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

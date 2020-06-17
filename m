Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTAh-0000po-7m
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 08:11:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Jun 2020 10:11:23 +0200
Message-Id: <20200617081126.5683-17-s.hauer@pengutronix.de>
In-Reply-To: <20200617081126.5683-1-s.hauer@pengutronix.de>
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/19] usb: fastboot: execute commands in command context
To: Barebox List <barebox@lists.infradead.org>
Cc: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Long lived commands which also use other resources shouldn't be executed
in a poller. Use a workqeue to delay the work to command context.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 49 ++++++++++++++++++++++++++++-----
 1 file changed, 42 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index f8a9c32530..d3a3e43757 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -21,6 +21,7 @@
 #define pr_fmt(fmt) "fastboot: " fmt
 
 #include <dma.h>
+#include <work.h>
 #include <unistd.h>
 #include <progress.h>
 #include <fastboot.h>
@@ -39,6 +40,7 @@ struct f_fastboot {
 	/* IN/OUT EP's and corresponding requests */
 	struct usb_ep *in_ep, *out_ep;
 	struct usb_request *in_req, *out_req;
+	struct work_queue wq;
 };
 
 static inline struct f_fastboot *func_to_fastboot(struct usb_function *f)
@@ -136,6 +138,32 @@ static void fastboot_complete(struct usb_ep *ep, struct usb_request *req)
 {
 }
 
+struct fastboot_work {
+	struct work_struct work;
+	struct f_fastboot *f_fb;
+	char command[FASTBOOT_MAX_CMD_LEN + 1];
+};
+
+static void fastboot_do_work(struct work_struct *w)
+{
+	struct fastboot_work *fw = container_of(w, struct fastboot_work, work);
+	struct f_fastboot *f_fb = fw->f_fb;
+
+	fastboot_exec_cmd(&f_fb->fastboot, fw->command);
+
+	memset(f_fb->out_req->buf, 0, EP_BUFFER_SIZE);
+	usb_ep_queue(f_fb->out_ep, f_fb->out_req);
+
+	free(fw);
+}
+
+static void fastboot_work_cancel(struct work_struct *w)
+{
+	struct fastboot_work *fw = container_of(w, struct fastboot_work, work);
+
+	free(fw);
+}
+
 static struct usb_request *fastboot_alloc_request(struct usb_ep *ep)
 {
 	struct usb_request *req;
@@ -172,6 +200,11 @@ static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 	f_fb->fastboot.cmd_exec = opts->common.cmd_exec;
 	f_fb->fastboot.cmd_flash = opts->common.cmd_flash;
 
+	f_fb->wq.fn = fastboot_do_work;
+	f_fb->wq.cancel = fastboot_work_cancel;
+
+	wq_register(&f_fb->wq);
+
 	ret = fastboot_generic_init(&f_fb->fastboot, opts->common.export_bbu);
 	if (ret)
 		return ret;
@@ -246,6 +279,8 @@ static void fastboot_unbind(struct usb_configuration *c, struct usb_function *f)
 	usb_ep_free_request(f_fb->out_ep, f_fb->out_req);
 	f_fb->out_req = NULL;
 
+	wq_unregister(&f_fb->wq);
+
 	fastboot_generic_free(&f_fb->fastboot);
 }
 
@@ -430,16 +465,16 @@ static void fastboot_start_download_usb(struct fastboot *fb)
 
 static void rx_handler_command(struct usb_ep *ep, struct usb_request *req)
 {
-	char *cmdbuf = req->buf;
 	struct f_fastboot *f_fb = req->context;
+	struct fastboot_work *w;
 
 	if (req->status != 0)
 		return;
 
-	*(cmdbuf + req->actual) = 0;
-	fastboot_exec_cmd(&f_fb->fastboot, cmdbuf);
-	*cmdbuf = '\0';
-	req->actual = 0;
-	memset(req->buf, 0, EP_BUFFER_SIZE);
-	usb_ep_queue(ep, req);
+	w = xzalloc(sizeof(*w));
+	w->f_fb = f_fb;
+
+	memcpy(w->command, req->buf, req->actual);
+
+	wq_queue_work(&f_fb->wq, &w->work);
 }
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

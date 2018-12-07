Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVDSs-0006jg-Jc
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 10:34:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Dec 2018 11:34:02 +0100
Message-Id: <20181207103405.27365-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] usb: gadget: fastboot: tell host that we are going to
 shutdown
To: Barebox List <barebox@lists.infradead.org>

Some commands like booting a kernel will trigger a shutdown of barebox,
but the host will never notice and timeout later. Be more friendly and
tell the host we are going to shutdown and end the current fastboot
session.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 43 +++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 8b0654dca4..08ea9bce6b 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -80,6 +80,7 @@ struct f_fastboot {
 			 const char *filename, const void *buf, size_t len);
 	int download_fd;
 	void *buf;
+	bool active;
 
 	size_t download_bytes;
 	size_t download_size;
@@ -426,6 +427,8 @@ static void fastboot_unbind(struct usb_configuration *c, struct usb_function *f)
 		list_del(&var->list);
 		free(var);
 	}
+
+	f_fb->active = false;
 }
 
 static void fastboot_disable(struct usb_function *f)
@@ -478,13 +481,36 @@ err:
 	return ret;
 }
 
+static struct f_fastboot *g_f_fb;
+
 static void fastboot_free_func(struct usb_function *f)
 {
 	struct f_fastboot *f_fb = container_of(f, struct f_fastboot, func);
 
+	if (g_f_fb == f_fb)
+		g_f_fb = NULL;
+
 	free(f_fb);
 }
 
+/*
+ * A "oem exec bootm" or similar commands will stop barebox. Tell the
+ * fastboot command on the other side so that it doesn't run into a
+ * timeout.
+ */
+static void fastboot_shutdown(void)
+{
+	struct f_fastboot *f_fb = g_f_fb;
+
+	if (!f_fb || !f_fb->active)
+		return;
+
+	fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO, "barebox shutting down");
+	fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
+}
+
+early_exitcall(fastboot_shutdown);
+
 static struct usb_function *fastboot_alloc_func(struct usb_function_instance *fi)
 {
 	struct f_fastboot *f_fb;
@@ -501,6 +527,9 @@ static struct usb_function *fastboot_alloc_func(struct usb_function_instance *fi
 	f_fb->func.unbind = fastboot_unbind;
 	f_fb->func.free_func = fastboot_free_func;
 
+	if (!g_f_fb)
+		g_f_fb = f_fb;
+
 	return &f_fb->func;
 }
 
@@ -573,6 +602,18 @@ int fastboot_tx_print(struct f_fastboot *f_fb, enum fastboot_msg_type type,
 
 	n = snprintf(buf, 64, "%s%pV", msg, &vaf);
 
+	switch (type) {
+	case FASTBOOT_MSG_OKAY:
+		f_fb->active = false;
+		break;
+	case FASTBOOT_MSG_FAIL:
+		f_fb->active = false;
+		break;
+	case FASTBOOT_MSG_INFO:
+	case FASTBOOT_MSG_DATA:
+		break;
+	}
+
 	va_end(ap);
 
 	if (n > 64)
@@ -1258,6 +1299,8 @@ static void rx_handler_command(struct usb_ep *ep, struct usb_request *req)
 	if (req->status != 0)
 		return;
 
+	f_fb->active = true;
+
 	*(cmdbuf + req->actual) = 0;
 
 	if (f_fb->cmd_exec) {
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

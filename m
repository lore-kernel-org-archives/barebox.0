Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kf0Vg-0000bg-Q5
 for barebox@lists.infradead.org; Tue, 17 Nov 2020 12:55:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Nov 2020 13:54:59 +0100
Message-Id: <20201117125459.12072-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: fastboot: Fix error path
To: Barebox List <barebox@lists.infradead.org>

fastboot_bind() can fail in multiple ways. Roll back things already
done in the error path.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 48 ++++++++++++++++++++++++---------
 1 file changed, 35 insertions(+), 13 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index da3e0c7a8f..96924c4cb9 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -207,34 +207,43 @@ static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 
 	ret = fastboot_generic_init(&f_fb->fastboot, opts->common.export_bbu);
 	if (ret)
-		return ret;
+		goto err_wq_unregister;
 
 	/* DYNAMIC interface numbers assignments */
 	id = usb_interface_id(c, f);
-	if (id < 0)
-		return id;
+	if (id < 0) {
+		ret = id;
+		goto fb_generic_free;
+	}
+
 	interface_desc.bInterfaceNumber = id;
 
 	id = usb_string_id(c->cdev);
-	if (id < 0)
-		return id;
+	if (id < 0) {
+		ret = id;
+		goto fb_generic_free;
+	}
 	fastboot_string_defs[0].id = id;
 	interface_desc.iInterface = id;
 
 	us = usb_gstrings_attach(cdev, fastboot_strings, 1);
 	if (IS_ERR(us)) {
 		ret = PTR_ERR(us);
-		return ret;
+		goto fb_generic_free;
 	}
 
 	f_fb->in_ep = usb_ep_autoconfig(gadget, &fs_ep_in);
-	if (!f_fb->in_ep)
-		return -ENODEV;
+	if (!f_fb->in_ep) {
+		ret = -ENODEV;
+		goto fb_generic_free;
+	}
 	f_fb->in_ep->driver_data = c->cdev;
 
 	f_fb->out_ep = usb_ep_autoconfig(gadget, &fs_ep_out);
-	if (!f_fb->out_ep)
-		return -ENODEV;
+	if (!f_fb->out_ep) {
+		ret = -ENODEV;
+		goto fb_generic_free;
+	}
 	f_fb->out_ep->driver_data = c->cdev;
 
 	hs_ep_out.bEndpointAddress = fs_ep_out.bEndpointAddress;
@@ -244,7 +253,7 @@ static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 	if (!f_fb->out_req) {
 		puts("failed to alloc out req\n");
 		ret = -EINVAL;
-		return ret;
+		goto fb_generic_free;
 	}
 
 	f_fb->out_req->complete = rx_handler_command;
@@ -254,15 +263,28 @@ static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 	if (!f_fb->in_req) {
 		puts("failed alloc req in\n");
 		ret = -EINVAL;
-		return ret;
+		goto err_free_out_req;
 	}
 	f_fb->in_req->complete = fastboot_complete;
 
 	ret = usb_assign_descriptors(f, fb_fs_descs, fb_hs_descs, NULL);
 	if (ret)
-		return ret;
+		goto err_free_in_req;
 
 	return 0;
+
+err_free_in_req:
+	free(f_fb->in_req->buf);
+	usb_ep_free_request(f_fb->in_ep, f_fb->in_req);
+err_free_out_req:
+	free(f_fb->out_req->buf);
+	usb_ep_free_request(f_fb->out_ep, f_fb->out_req);
+fb_generic_free:
+	fastboot_generic_free(&f_fb->fastboot);
+err_wq_unregister:
+	wq_unregister(&f_fb->wq);
+
+	return ret;
 }
 
 static void fastboot_unbind(struct usb_configuration *c, struct usb_function *f)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9FJd-0003qr-Un
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:36 +0200
Message-Id: <1405955687-27433-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
References: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/23] USB: gadget: DFU: Move stuff to dfu_bind
To: barebox@lists.infradead.org

When we want to create a composite device dfu_bind_config will not
be called for a composite device. Move the initialisation needed
by both the composite device and the single function device from
dfu_bind_config to dfu_bind.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/dfu.c | 74 +++++++++++++++++++++++-------------------------
 1 file changed, 36 insertions(+), 38 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 1db1932..56601ba 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -167,6 +167,8 @@ static struct usb_gadget_strings *dfu_strings[] = {
 	NULL,
 };
 
+static void dn_complete(struct usb_ep *ep, struct usb_request *req);
+
 static int
 dfu_bind(struct usb_configuration *c, struct usb_function *f)
 {
@@ -174,13 +176,45 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 	struct usb_descriptor_header **header;
 	struct usb_interface_descriptor *desc;
 	struct file_list_entry *fentry;
+	struct f_dfu *dfu = container_of(f, struct f_dfu, func);
 	int i;
 	int			status;
 
+	status = usb_string_id(c->cdev);
+	if (status < 0)
+		return status;
+
+	dfu_string_defs = xzalloc(sizeof(struct usb_string) * (dfu_files->num_entries + 2));
+	dfu_string_defs[0].s = "Generic DFU";
+	dfu_string_defs[0].id = status;
+	i = 0;
+	file_list_for_each_entry(dfu_files, fentry) {
+		dfu_string_defs[i + 1].s = fentry->name;
+		status = usb_string_id(c->cdev);
+		if (status < 0)
+			goto out;
+		dfu_string_defs[i + 1].id = status;
+		i++;
+	}
+	dfu_string_defs[i + 1].s = NULL;
+	dfu_string_table.strings = dfu_string_defs;
+
+	dfu->dfu_state = DFU_STATE_appIDLE;
+	dfu->dfu_status = DFU_STATUS_OK;
+
+	dfu->dnreq = usb_ep_alloc_request(c->cdev->gadget->ep0);
+	if (!dfu->dnreq) {
+		printf("usb_ep_alloc_request failed\n");
+		goto out;
+	}
+	dfu->dnreq->buf = dma_alloc(CONFIG_USBD_DFU_XFER_SIZE);
+	dfu->dnreq->complete = dn_complete;
+	dfu->dnreq->zero = 0;
+
 	/* allocate instance-specific interface IDs, and patch descriptors */
 	status = usb_interface_id(c, f);
 	if (status < 0)
-		return status;
+		goto out;
 
 	header = xzalloc(sizeof(void *) * (dfu_files->num_entries + 2));
 	desc = xzalloc(sizeof(struct usb_interface_descriptor) * dfu_files->num_entries);
@@ -215,8 +249,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 
 	return 0;
 out:
-	free(desc);
-	free(header);
+	free(dfu_string_defs);
 
 	if (status)
 		ERROR(cdev, "%s/%p: can't bind, err %d\n", f->name, f, status);
@@ -233,7 +266,6 @@ dfu_unbind(struct usb_configuration *c, struct usb_function *f)
 
 	dma_free(dfu->dnreq->buf);
 	usb_ep_free_request(c->cdev->gadget->ep0, dfu->dnreq);
-	free(dfu);
 }
 
 static int dfu_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
@@ -624,9 +656,7 @@ static int dfu_bind_config(struct usb_configuration *c)
 {
 	struct f_dfu *dfu;
 	struct usb_function *func;
-	struct file_list_entry *fentry;
 	int		status;
-	int i;
 
 	/* config description */
 	status = usb_string_id(c->cdev);
@@ -634,31 +664,9 @@ static int dfu_bind_config(struct usb_configuration *c)
 		return status;
 	strings_dev[STRING_DESCRIPTION_IDX].id = status;
 
-	status = usb_string_id(c->cdev);
-	if (status < 0)
-		return status;
-
 	/* allocate and initialize one new instance */
 	dfu = xzalloc(sizeof *dfu);
 
-	dfu->dfu_state = DFU_STATE_appIDLE;
-	dfu->dfu_status = DFU_STATUS_OK;
-
-	dfu_string_defs = xzalloc(sizeof(struct usb_string) * (dfu_files->num_entries + 2));
-	dfu_string_defs[0].s = "Generic DFU";
-	dfu_string_defs[0].id = status;
-	i = 0;
-	file_list_for_each_entry(dfu_files, fentry) {
-		dfu_string_defs[i + 1].s = fentry->name;
-		status = usb_string_id(c->cdev);
-		if (status < 0)
-			goto out;
-		dfu_string_defs[i + 1].id = status;
-		i++;
-	}
-	dfu_string_defs[i + 1].s = NULL;
-	dfu_string_table.strings = dfu_string_defs;
-
 	func = &dfu->func;
 	func->name = "DFU";
 	func->strings = dfu_strings;
@@ -669,15 +677,6 @@ static int dfu_bind_config(struct usb_configuration *c)
 	func->setup = dfu_setup;
 	func->disable = dfu_disable;
 
-	dfu->dnreq = usb_ep_alloc_request(c->cdev->gadget->ep0);
-	if (!dfu->dnreq) {
-		printf("usb_ep_alloc_request failed\n");
-		goto out;
-	}
-	dfu->dnreq->buf = dma_alloc(CONFIG_USBD_DFU_XFER_SIZE);
-	dfu->dnreq->complete = dn_complete;
-	dfu->dnreq->zero = 0;
-
 	status = usb_add_function(c, func);
 	if (status)
 		goto out;
@@ -685,7 +684,6 @@ static int dfu_bind_config(struct usb_configuration *c)
 	return 0;
 out:
 	free(dfu);
-	free(dfu_string_defs);
 
 	return status;
 }
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

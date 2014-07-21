Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9FJU-0004y8-EC
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:32 +0200
Message-Id: <1405955687-27433-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/23] USB: gadget: DFU: remove unused code
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/dfu.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 85d99e9..a685cc1 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -102,17 +102,6 @@ static struct usb_gadget_strings *dfu_strings[] = {
 	NULL,
 };
 
-static struct usb_interface_descriptor dfu_control_interface_desc = {
-	.bLength =		USB_DT_INTERFACE_SIZE,
-	.bDescriptorType =	USB_DT_INTERFACE,
-	/* .bInterfaceNumber = DYNAMIC */
-	.bNumEndpoints =	0,
-	.bInterfaceClass =	0xfe,
-	.bInterfaceSubClass =	1,
-	.bInterfaceProtocol =	1,
-	/* .iInterface = DYNAMIC */
-};
-
 static int
 dfu_bind(struct usb_configuration *c, struct usb_function *f)
 {
@@ -127,8 +116,6 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 	if (status < 0)
 		return status;
 
-	dfu_control_interface_desc.bInterfaceNumber = status;
-
 	header = xzalloc(sizeof(void *) * (dfu_num_alt + 2));
 	desc = xzalloc(sizeof(struct usb_interface_descriptor) * dfu_num_alt);
 	for (i = 0; i < dfu_num_alt; i++) {
@@ -576,7 +563,6 @@ static int dfu_bind_config(struct usb_configuration *c)
 	status = usb_string_id(c->cdev);
 	if (status < 0)
 		return status;
-	dfu_control_interface_desc.iInterface = status;
 
 	/* allocate and initialize one new instance */
 	dfu = xzalloc(sizeof *dfu);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

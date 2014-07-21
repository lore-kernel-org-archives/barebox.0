Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9FJ1-0003YM-BK
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:37 +0200
Message-Id: <1405955687-27433-14-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/23] USB: gadget: DFU: use usb_gstrings_attach
To: barebox@lists.infradead.org

Instead of allocating string ids one by one use usb_gstrings_attach()
to simplify things.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/dfu.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 56601ba..616d7ad 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -43,6 +43,7 @@
 #include <linux/list.h>
 #include <usb/gadget.h>
 #include <linux/stat.h>
+#include <linux/err.h>
 #include <usb/ch9.h>
 #include <usb/dfu.h>
 #include <config.h>
@@ -179,23 +180,16 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 	struct f_dfu *dfu = container_of(f, struct f_dfu, func);
 	int i;
 	int			status;
-
-	status = usb_string_id(c->cdev);
-	if (status < 0)
-		return status;
+	struct usb_string	*us;
 
 	dfu_string_defs = xzalloc(sizeof(struct usb_string) * (dfu_files->num_entries + 2));
 	dfu_string_defs[0].s = "Generic DFU";
-	dfu_string_defs[0].id = status;
 	i = 0;
 	file_list_for_each_entry(dfu_files, fentry) {
 		dfu_string_defs[i + 1].s = fentry->name;
-		status = usb_string_id(c->cdev);
-		if (status < 0)
-			goto out;
-		dfu_string_defs[i + 1].id = status;
 		i++;
 	}
+
 	dfu_string_defs[i + 1].s = NULL;
 	dfu_string_table.strings = dfu_string_defs;
 
@@ -211,6 +205,12 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 	dfu->dnreq->complete = dn_complete;
 	dfu->dnreq->zero = 0;
 
+	us = usb_gstrings_attach(cdev, dfu_strings, dfu_files->num_entries + 1);
+	if (IS_ERR(us)) {
+		status = PTR_ERR(us);
+		goto out;
+	}
+
 	/* allocate instance-specific interface IDs, and patch descriptors */
 	status = usb_interface_id(c, f);
 	if (status < 0)
@@ -226,7 +226,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 		desc[i].bInterfaceSubClass =	1;
 		desc[i].bInterfaceProtocol =	1;
 		desc[i].bAlternateSetting = i;
-		desc[i].iInterface = dfu_string_defs[i + 1].id;
+		desc[i].iInterface = us[i + 1].id;
 		header[i] = (struct usb_descriptor_header *)&desc[i];
 	}
 	header[i] = (struct usb_descriptor_header *) &usb_dfu_func;
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

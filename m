Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBeiV-0004Ns-IR
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 14:19:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 0536A1A47A0
 for <barebox@lists.infradead.org>; Mon, 15 Feb 2021 14:19:07 +0000 (UTC)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 15 Feb 2021 15:18:42 +0100
Message-Id: <20210215141843.27629-1-jmaselbas@kalray.eu>
In-Reply-To: <20210208163458.29143-2-jmaselbas@kalray.eu>
References: <20210208163458.29143-2-jmaselbas@kalray.eu>
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
Subject: [PATCH v2 1/2] usb: gadget: dfu: Rework print messages
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Replace printf with pr_err and debug with pr_debug.
Defines "dfu :" as a prefix for formatted prints.

---
v1 -> v2:
 - add `pr_fmt(fmt) "dfu: " fmt`
 - change debug call to pr_debug
 - remove "dfu: " in print messages

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/gadget/dfu.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 9d6a9d252..fba4ad782 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -32,6 +32,7 @@
  *   checking?
  * - make 'dnstate' attached to 'struct usb_device_instance'
  */
+#define pr_fmt(fmt) "dfu: " fmt
 
 #include <dma.h>
 #include <asm/byteorder.h>
@@ -209,7 +210,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 
 	dfu->dnreq = usb_ep_alloc_request(c->cdev->gadget->ep0);
 	if (!dfu->dnreq) {
-		printf("usb_ep_alloc_request failed\n");
+		pr_err("dfu: usb_ep_alloc_request failed\n");
 		status = -ENOMEM;
 		goto out;
 	}
@@ -254,7 +255,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 
 	i = 0;
 	file_list_for_each_entry(dfu_files, fentry) {
-		printf("dfu: register alt%d(%s) with device %s\n",
+		pr_err("register alt%d(%s) with device %s\n",
 				i, fentry->name, fentry->filename);
 		i++;
 	}
@@ -418,7 +419,7 @@ static int handle_manifest(struct usb_function *f, const struct usb_ctrlrequest
 
 		ret = copy_file(DFU_TEMPFILE, dfu_file_entry->filename, 0);
 		if (ret) {
-			printf("copy file failed\n");
+			pr_err("copy file failed\n");
 			ret = -EINVAL;
 			goto out;
 		}
@@ -500,7 +501,7 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 				value = -EINVAL;
 				goto out;
 			}
-			debug("dfu: starting download to %s\n", dfu_file_entry->filename);
+			pr_debug("starting download to %s\n", dfu_file_entry->filename);
 			if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
 				dfufd = open(DFU_TEMPFILE, O_WRONLY | O_CREAT);
 			} else {
@@ -529,7 +530,7 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 			return 0;
 		case USB_REQ_DFU_UPLOAD:
 			dfu->dfu_state = DFU_STATE_dfuUPLOAD_IDLE;
-			debug("dfu: starting upload from %s\n", dfu_file_entry->filename);
+			pr_debug("starting upload from %s\n", dfu_file_entry->filename);
 			if (!(dfu_file_entry->flags & FILE_LIST_FLAG_READBACK)) {
 				dfu->dfu_state = DFU_STATE_dfuERROR;
 				goto out;
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

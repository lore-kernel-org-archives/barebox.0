Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l99VU-0000kR-1R
 for barebox@lists.infradead.org; Mon, 08 Feb 2021 16:35:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 8F04D1A3AC8
 for <barebox@lists.infradead.org>; Mon,  8 Feb 2021 16:35:21 +0000 (UTC)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon,  8 Feb 2021 17:34:58 +0100
Message-Id: <20210208163458.29143-3-jmaselbas@kalray.eu>
In-Reply-To: <20210208163458.29143-1-jmaselbas@kalray.eu>
References: <20210208163458.29143-1-jmaselbas@kalray.eu>
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
Subject: [PATCH 3/3] usb: gadget: dfu: Replace printf with pr_err
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/gadget/dfu.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 95e8da82e..a28e7c9e8 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -351,7 +351,7 @@ static void dfu_do_copy(struct dfu_work *dw)
 
 	ret = copy_file(DFU_TEMPFILE, dfu_file_entry->filename, 0);
 	if (ret) {
-		printf("copy file failed\n");
+		pr_err("dfu: copy file failed\n");
 		dfu->dfu_state = DFU_STATE_dfuERROR;
 		dfu->dfu_status = DFU_STATUS_errWRITE;
 		return;
@@ -396,7 +396,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 
 	dfu->dnreq = usb_ep_alloc_request(c->cdev->gadget->ep0);
 	if (!dfu->dnreq) {
-		printf("usb_ep_alloc_request failed\n");
+		pr_err("dfu: usb_ep_alloc_request failed\n");
 		status = -ENOMEM;
 		goto out;
 	}
@@ -445,7 +445,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 
 	i = 0;
 	file_list_for_each_entry(dfu_files, fentry) {
-		printf("dfu: register alt%d(%s) with device %s\n",
+		pr_err("dfu: register alt%d(%s) with device %s\n",
 				i, fentry->name, fentry->filename);
 		i++;
 	}
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

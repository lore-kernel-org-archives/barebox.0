Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l99VU-0000kQ-0f
 for barebox@lists.infradead.org; Mon, 08 Feb 2021 16:35:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 808251A3218
 for <barebox@lists.infradead.org>; Mon,  8 Feb 2021 16:35:21 +0000 (UTC)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon,  8 Feb 2021 17:34:56 +0100
Message-Id: <20210208163458.29143-1-jmaselbas@kalray.eu>
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
Subject: [PATCH 1/3] usb: gadget: dfu: Use func_to_dfu
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Replace the uses of container_of with func_to_dfu when available.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/gadget/dfu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 7e23fa315..9d6a9d252 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -181,7 +181,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 	struct usb_descriptor_header **header;
 	struct usb_interface_descriptor *desc;
 	struct file_list_entry *fentry;
-	struct f_dfu *dfu = container_of(f, struct f_dfu, func);
+	struct f_dfu *dfu = func_to_dfu(f);
 	int i;
 	int			status;
 	struct usb_string	*us;
@@ -863,7 +863,7 @@ out:
 
 static void dfu_free_func(struct usb_function *f)
 {
-	struct f_dfu *dfu = container_of(f, struct f_dfu, func);
+	struct f_dfu *dfu = func_to_dfu(f);
 
 	free(dfu);
 }
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

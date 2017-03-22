Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqnw0-0006ht-Ag
 for barebox@lists.infradead.org; Wed, 22 Mar 2017 21:36:50 +0000
Received: by mail-wm0-x241.google.com with SMTP id x124so13090058wmf.3
 for <barebox@lists.infradead.org>; Wed, 22 Mar 2017 14:36:27 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 23 Mar 2017 00:36:15 +0300
Message-Id: <20170322213615.24527-1-pmamonov@gmail.com>
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
Subject: [PATCH] usb: uhci-hcd: fix uhci_alloc_int_td()
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/host/uhci-hcd.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/host/uhci-hcd.c b/drivers/usb/host/uhci-hcd.c
index 9ad4644e8..04d167ee3 100644
--- a/drivers/usb/host/uhci-hcd.c
+++ b/drivers/usb/host/uhci-hcd.c
@@ -554,8 +554,12 @@ static int submit_bulk_msg(struct usb_device *dev, unsigned long pipe,
  */
 static struct uhci_td *uhci_alloc_int_td(struct uhci_priv *uhci)
 {
-	return &uhci->tmp_int_td[0];
+	int i;
 
+	for (i = 0; i < USB_MAX_TEMP_INT_TD; i++)
+		if (uhci->tmp_int_td[i].dev_ptr == 0)
+			return &uhci->tmp_int_td[i];
+	return NULL;
 }
 
 /*
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

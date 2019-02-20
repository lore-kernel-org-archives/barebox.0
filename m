Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKP-0002x1-Ke
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:30:06 +0000
Received: by mail-pl1-x642.google.com with SMTP id m10so2103758plt.10
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:30:01 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:19 -0800
Message-Id: <20190220072930.14300-15-andrew.smirnov@gmail.com>
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/25] usb: xhci-hcd: Initialize TRT flag for xHCI >= 1.0
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Initialize TRT flag for xHCI >= 1.0, not just == 1.0. This is what
Linux xHCI driver does.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/xhci-hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index c8327c88f..517446379 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -1248,7 +1248,7 @@ static int xhci_submit_control(struct usb_device *udev, unsigned long pipe,
 	field[1] = le16_to_cpu(req->length) << 16 |
 		le16_to_cpu(req->index);
 	flags = TRB_TYPE(TRB_SETUP) | TRB_IDT;
-	if (xhci->hci_version == 0x100 && length > 0) {
+	if (xhci->hci_version >= 0x100 && length > 0) {
 		if (req->requesttype & USB_DIR_IN)
 			flags |= TRB_TX_TYPE(TRB_DATA_IN);
 		else
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

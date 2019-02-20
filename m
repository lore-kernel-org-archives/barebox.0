Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKI-0002pK-Dd
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:29:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id q17so11478559pfh.10
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:29:54 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:13 -0800
Message-Id: <20190220072930.14300-9-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/25] usb: xhci-hcd: Always wait for "Response Data"
 completion
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Xhci_submit_control() submits TRB_DATA with TRB_IOC flag regardless of
the vlaue of req->requesttype, so we shouldn't gate waiting for the
event that will result from it with "req->requesttype &
USB_DIR_IN". Failing to do this will result in unstable USB
performance and will eventually cause the controller to fail
completely.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/xhci-hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index 657a49f8a..8a00b8854 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -1248,7 +1248,7 @@ static int xhci_submit_control(struct usb_device *udev, unsigned long pipe,
 	xhci_print_trb(xhci, &trb, "Request  Status");
 	xhci_virtdev_issue_transfer(vdev, 0, &trb, true);
 
-	if (length > 0 && req->requesttype & USB_DIR_IN) {
+	if (length > 0) {
 		ret = xhci_wait_for_event(xhci, TRB_TRANSFER, &trb);
 		xhci_print_trb(xhci, &trb, "Response Data  ");
 		if (ret == -COMP_SHORT_TX)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

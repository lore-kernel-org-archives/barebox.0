Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLlh-0002Ke-47
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:38 +0000
Received: by mail-pf1-x442.google.com with SMTP id v80so870849pfa.3
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:08 -0700
Message-Id: <20190522073414.9308-13-andrew.smirnov@gmail.com>
In-Reply-To: <20190522073414.9308-1-andrew.smirnov@gmail.com>
References: <20190522073414.9308-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 12/18] usb: host: ehci: Use bool to simplify
 ehci_submit_async()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Change the type of 'c' to bool and drop the trigrah.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 03ab56b30..f0d899e82 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -273,7 +273,8 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	uint32_t *tdp;
 	uint32_t endpt, token, usbsts;
 	uint32_t status;
-	uint32_t c, toggle;
+	uint32_t toggle;
+	bool c;
 	int ret;
 
 
@@ -290,8 +291,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 
 	qh = &ehci->qh_list[1];
 	qh->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
-	c = (dev->speed != USB_SPEED_HIGH &&
-	     usb_pipeendpoint(pipe) == 0) ? 1 : 0;
+	c = dev->speed != USB_SPEED_HIGH && !usb_pipeendpoint(pipe);
 	endpt = QH_ENDPT1_RL(8) | QH_ENDPT1_C(c) |
 		QH_ENDPT1_MAXPKTLEN(usb_maxpacket(dev, pipe)) |
 		QH_ENDPT1_H(0) |
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

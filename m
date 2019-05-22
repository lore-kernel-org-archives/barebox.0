Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLlm-0002R9-3A
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:49 +0000
Received: by mail-pl1-x642.google.com with SMTP id w7so651306plz.1
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:38 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:13 -0700
Message-Id: <20190522073414.9308-18-andrew.smirnov@gmail.com>
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
Subject: [PATCH 17/18] ush: host: ehci: Simplify QH initialization in
 ehci_submit_async()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

We use a fixed circular list for asynchronous schedule that never
changes, so if we drop an explicit memset() that zeros out an entire
struct and replace it with code initializine all of the fields
explicitly, we can set QH list once in ehci_init() and never touch it
again.

While at it move qt_altnext initialization to ehci_init() as well
since we never change that field either.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index bd033c23c..b336164f6 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -268,7 +268,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	struct ehci_host *ehci = to_ehci(host);
 	const bool dir_in = usb_pipein(pipe);
 	dma_addr_t buffer_dma, req_dma;
-	struct QH *qh;
+	struct QH *qh = &ehci->qh_list[1];
 	struct qTD *td;
 	uint32_t *tdp;
 	uint32_t endpt, token, usbsts;
@@ -287,10 +287,6 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		      le16_to_cpu(req->value), le16_to_cpu(req->value),
 		      le16_to_cpu(req->index));
 
-	memset(&ehci->qh_list[1], 0, sizeof(struct QH));
-
-	qh = &ehci->qh_list[1];
-	qh->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
 	c = dev->speed != USB_SPEED_HIGH && !usb_pipeendpoint(pipe);
 	endpt = QH_ENDPT1_RL(8) | QH_ENDPT1_C(c) |
 		QH_ENDPT1_MAXPKTLEN(usb_maxpacket(dev, pipe)) |
@@ -320,8 +316,9 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		QH_ENDPT2_UFCMASK(0) |
 		QH_ENDPT2_UFSMASK(0);
 	qh->qh_endpt2 = cpu_to_hc32(endpt);
-	qh->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
-	qh->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
+	qh->qh_curtd = 0;
+	qh->qt_token = 0;
+	memset(qh->qt_buffer, 0, sizeof(qh->qt_buffer));
 
 	tdp = &qh->qt_next;
 
@@ -397,8 +394,6 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		tdp = &td->qt_next;
 	}
 
-	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t) qh | QH_LINK_TYPE_QH);
-
 	usbsts = ehci_readl(&ehci->hcor->or_usbsts);
 	ehci_writel(&ehci->hcor->or_usbsts, (usbsts & 0x3f));
 
@@ -431,8 +426,6 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		return ret;
 	}
 
-	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
-
 	token = hc32_to_cpu(qh->qt_token);
 	if (token & QT_TOKEN_STATUS_ACTIVE) {
 		dev->act_len = 0;
@@ -839,7 +832,7 @@ static int ehci_init(struct usb_host *host)
 			return ret;
 	}
 
-	ehci->qh_list[0].qh_link = cpu_to_hc32((uint32_t)&ehci->qh_list[0] |
+	ehci->qh_list[0].qh_link = cpu_to_hc32((uint32_t)&ehci->qh_list[1] |
 					       QH_LINK_TYPE_QH);
 	ehci->qh_list[0].qh_endpt1 = cpu_to_hc32(QH_ENDPT1_H(1) |
 						 QH_ENDPT1_EPS(USB_SPEED_HIGH));
@@ -848,6 +841,10 @@ static int ehci_init(struct usb_host *host)
 	ehci->qh_list[0].qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
 	ehci->qh_list[0].qt_token = cpu_to_hc32(QT_TOKEN_STATUS_HALTED);
 
+	ehci->qh_list[1].qh_link = cpu_to_hc32((uint32_t)&ehci->qh_list[0] |
+					       QH_LINK_TYPE_QH);
+	ehci->qh_list[1].qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
+
 	/* Set async. queue head pointer. */
 	ehci_writel(&ehci->hcor->or_asynclistaddr, (uint32_t)ehci->qh_list);
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

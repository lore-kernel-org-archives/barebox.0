Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1She6j-0002rI-KF
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:55:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Jun 2012 11:55:13 +0200
Message-Id: <1340272517-8972-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340272517-8972-1-git-send-email-s.hauer@pengutronix.de>
References: <1340272517-8972-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/9] USB ehci: put fields of struct qTD directly into struct QH
To: barebox@lists.infradead.org

This allows us to extend struct qTD with non hardware specific
fields.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c |   22 +++++++++++-----------
 drivers/usb/host/ehci.h     |    6 +++++-
 2 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 425406d..929c8a6 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -293,11 +293,11 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	    (dev->portnr << 23) |
 	    (dev->parent->devnum << 16) | (0 << 8) | (0 << 0);
 	qh->qh_endpt2 = cpu_to_hc32(endpt);
-	qh->qh_overlay.qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
-	qh->qh_overlay.qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
+	qh->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
+	qh->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
 
 	td = NULL;
-	tdp = &qh->qh_overlay.qt_next;
+	tdp = &qh->qt_next;
 
 	toggle =
 	    usb_gettoggle(dev, usb_pipeendpoint(pipe), usb_pipeout(pipe));
@@ -391,7 +391,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 			ehci_writel(&ehci->hcor->or_usbcmd, cmd);
 
 			ret = handshake(&ehci->hcor->or_usbsts, STD_ASS, 0, 100 * 1000);
-			ehci_writel(&qh->qh_overlay.qt_token, 0);
+			ehci_writel(&qh->qt_token, 0);
 			return -ETIMEDOUT;
 		}
 	} while (token & 0x80);
@@ -410,7 +410,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 
 	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
 
-	token = hc32_to_cpu(qh->qh_overlay.qt_token);
+	token = hc32_to_cpu(qh->qt_token);
 	if (!(token & 0x80)) {
 		debug("TOKEN=0x%08x\n", token);
 		switch (token & 0xfc) {
@@ -448,10 +448,10 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 
 fail:
 	printf("fail1\n");
-	td = (void *)hc32_to_cpu(qh->qh_overlay.qt_next);
+	td = (void *)hc32_to_cpu(qh->qt_next);
 	while (td != (void *)QT_NEXT_TERMINATE) {
-		qh->qh_overlay.qt_next = td->qt_next;
-		td = (void *)hc32_to_cpu(qh->qh_overlay.qt_next);
+		qh->qt_next = td->qt_next;
+		td = (void *)hc32_to_cpu(qh->qt_next);
 	}
 	return -1;
 }
@@ -767,9 +767,9 @@ static int ehci_init(struct usb_host *host)
 	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
 	ehci->qh_list->qh_endpt1 = cpu_to_hc32((1 << 15) | (USB_SPEED_HIGH << 12));
 	ehci->qh_list->qh_curtd = cpu_to_hc32(QT_NEXT_TERMINATE);
-	ehci->qh_list->qh_overlay.qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
-	ehci->qh_list->qh_overlay.qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
-	ehci->qh_list->qh_overlay.qt_token = cpu_to_hc32(0x40);
+	ehci->qh_list->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
+	ehci->qh_list->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
+	ehci->qh_list->qt_token = cpu_to_hc32(0x40);
 
 	/* Set async. queue head pointer. */
 	ehci_writel(&ehci->hcor->or_asynclistaddr, (uint32_t)ehci->qh_list);
diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index eac93db..76a3c85 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -179,7 +179,11 @@ struct QH {
 	uint32_t qh_endpt1;
 	uint32_t qh_endpt2;
 	uint32_t qh_curtd;
-	struct qTD qh_overlay;
+	 /* qtd overlay (hardware parts of a struct qTD) */
+	uint32_t qt_next;
+	uint32_t qt_altnext;
+	uint32_t qt_token;
+	uint32_t qt_buffer[5];
 	/*
 	 * Add dummy fill value to make the size of this struct
 	 * aligned to 32 bytes
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

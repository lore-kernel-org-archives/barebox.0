Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIPsN-0003pQ-2g
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 19:40:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2012 21:40:02 +0200
Message-Id: <1334259605-21907-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334259605-21907-1-git-send-email-s.hauer@pengutronix.de>
References: <1334259605-21907-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] USB ehci: make cache handling simpler
To: barebox@lists.infradead.org

for chache handling the ehci driver iterates over the hardware lists
of QHs/TDs. As we have a fixed number of maximum entries in this lists
we can allocate them as arrays and and clean/invalidate the arrays
instead which is much simpler. While at it, move the allocation to
ehci_probe so that we do not lose memory each time ehci_init is called.
Also, use memalign to allocate the QHs/TDs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c |   96 ++++++++++++++-----------------------------
 1 file changed, 30 insertions(+), 66 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 81e3a42..505d919 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -42,13 +42,16 @@ struct ehci_priv {
 	struct ehci_hcor *hcor;
 	struct usb_host host;
 	struct QH *qh_list;
-	void *qhp;
+	struct qTD *td;
 	int portreset;
 	unsigned long flags;
 };
 
 #define to_ehci(ptr) container_of(ptr, struct ehci_priv, host)
 
+#define NUM_QH	2
+#define NUM_TD	3
+
 static struct descriptor {
 	struct usb_hub_descriptor hub;
 	struct usb_device_descriptor device;
@@ -125,10 +128,11 @@ static struct descriptor {
  */
 static void flush_invalidate(void *addr, int size, int flush)
 {
-	if (flush)
+	if (flush) {
 		dma_flush_range((unsigned long)addr, (unsigned long)(addr + size));
-	else
+	} else {
 		dma_inv_range((unsigned long)addr, (unsigned long)(addr + size));
+	}
 }
 
 static void cache_qtd(struct qTD *qtd, int flush)
@@ -136,76 +140,39 @@ static void cache_qtd(struct qTD *qtd, int flush)
 	u32 *ptr = (u32 *)qtd->qt_buffer[0];
 	int len = (qtd->qt_token & 0x7fff0000) >> 16;
 
-	flush_invalidate(qtd, sizeof(struct qTD), flush);
 	if (ptr && len)
 		flush_invalidate(ptr, len, flush);
 }
 
-
-static inline struct QH *qh_addr(struct QH *qh)
+static void cache_qh(struct ehci_priv *ehci, int flush)
 {
-	return (struct QH *)((u32)qh & 0xffffffe0);
-}
-
-static void cache_qh(struct QH *qh, int flush)
-{
-	struct qTD *qtd;
-	struct qTD *next;
-	static struct qTD *first_qtd;
-
-	/*
-	 * Walk the QH list and flush/invalidate all entries
-	 */
-	while (1) {
-		flush_invalidate(qh_addr(qh), sizeof(struct QH), flush);
-		if ((u32)qh & QH_LINK_TYPE_QH)
-			break;
-		qh = qh_addr(qh);
-		qh = (struct QH *)qh->qh_link;
-	}
-	qh = qh_addr(qh);
+	int i;
 
-	/*
-	 * Save first qTD pointer, needed for invalidating pass on this QH
-	 */
-	if (flush)
-		first_qtd = qtd = (struct qTD *)(*(u32 *)&qh->qh_overlay &
-						 0xffffffe0);
-	else
-		qtd = first_qtd;
+	flush_invalidate(ehci->qh_list, sizeof(struct QH) * NUM_QH, flush);
+	flush_invalidate(ehci->td, sizeof(struct qTD) * NUM_TD, flush);
 
-	/*
-	 * Walk the qTD list and flush/invalidate all entries
-	 */
-	while (1) {
-		if (qtd == NULL)
-			break;
-		cache_qtd(qtd, flush);
-		next = (struct qTD *)((u32)qtd->qt_next & 0xffffffe0);
-		if (next == qtd)
-			break;
-		qtd = next;
-	}
+	for (i = 0; i < NUM_TD; i ++)
+		cache_qtd(&ehci->td[i], flush);
 }
 
-static inline void ehci_flush_dcache(struct QH *qh)
+static inline void ehci_flush_dcache(struct ehci_priv *ehci)
 {
-	cache_qh(qh, 1);
+	cache_qh(ehci, 1);
 }
 
-static inline void ehci_invalidate_dcache(struct QH *qh)
+static inline void ehci_invalidate_dcache(struct ehci_priv *ehci)
 {
-	cache_qh(qh, 0);
+	cache_qh(ehci, 0);
 }
 #else /* CONFIG_MMU */
 /*
  *
  */
-static inline void ehci_flush_dcache(struct QH *qh)
+static inline void ehci_flush_dcache(struct ehci_priv *ehci)
 {
 }
 
-static inline void ehci_invalidate_dcache(struct QH *qh)
+static inline void ehci_invalidate_dcache(struct ehci_priv *ehci)
 {
 }
 #endif /* CONFIG_MMU */
@@ -299,8 +266,6 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	uint32_t cmd;
 	int ret = 0;
 	uint64_t start, timeout_val;
-	static struct QH __qh __attribute__((aligned(32)));
-	static struct qTD __td[3] __attribute__((aligned(32)));
 
 	debug("dev=%p, pipe=%lx, buffer=%p, length=%d, req=%p\n", dev, pipe,
 	      buffer, length, req);
@@ -311,10 +276,10 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		      le16_to_cpu(req->value), le16_to_cpu(req->value),
 		      le16_to_cpu(req->index));
 
-	memset(&__qh, 0, sizeof(struct QH));
-	memset(&__td, 0, sizeof(struct qTD) * 3);
+	memset(&ehci->qh_list[1], 0, sizeof(struct QH));
+	memset(ehci->td, 0, sizeof(struct qTD) * NUM_TD);
 
-	qh = &__qh;
+	qh = &ehci->qh_list[1];
 	qh->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
 	c = (usb_pipespeed(pipe) != USB_SPEED_HIGH &&
 	     usb_pipeendpoint(pipe) == 0) ? 1 : 0;
@@ -341,7 +306,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	    usb_gettoggle(dev, usb_pipeendpoint(pipe), usb_pipeout(pipe));
 
 	if (req != NULL) {
-		td = &__td[0];
+		td = &ehci->td[0];
 
 		td->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
 		td->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
@@ -360,7 +325,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	}
 
 	if (length > 0 || req == NULL) {
-		td = &__td[1];
+		td = &ehci->td[1];
 
 		td->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
 		td->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
@@ -380,7 +345,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	}
 
 	if (req) {
-		td = &__td[2];
+		td = &ehci->td[2];
 
 		td->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
 		td->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
@@ -398,7 +363,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t) qh | QH_LINK_TYPE_QH);
 
 	/* Flush dcache */
-	ehci_flush_dcache(ehci->qh_list);
+	ehci_flush_dcache(ehci);
 
 	usbsts = ehci_readl(&ehci->hcor->or_usbsts);
 	ehci_writel(&ehci->hcor->or_usbsts, (usbsts & 0x3f));
@@ -420,7 +385,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	vtd = td;
 	do {
 		/* Invalidate dcache */
-		ehci_invalidate_dcache(ehci->qh_list);
+		ehci_invalidate_dcache(ehci);
 		token = hc32_to_cpu(vtd->qt_token);
 		if (is_timeout(start, timeout_val)) {
 			/* Disable async schedule. */
@@ -802,10 +767,6 @@ static int ehci_init(struct usb_host *host)
 	if (ehci_reset(ehci) != 0)
 		return -1;
 
-	/* Set head of reclaim list */
-	ehci->qhp = xzalloc(sizeof(struct QH) + 32);
-	ehci->qh_list = (struct QH *)(((unsigned long)ehci->qhp + 32) & ~31);
-
 	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
 	ehci->qh_list->qh_endpt1 = cpu_to_hc32((1 << 15) | (USB_SPEED_HIGH << 12));
 	ehci->qh_list->qh_curtd = cpu_to_hc32(QT_NEXT_TERMINATE);
@@ -917,6 +878,9 @@ static int ehci_probe(struct device_d *dev)
 	ehci->hccr = dev_request_mem_region(dev, 0);
 	ehci->hcor = dev_request_mem_region(dev, 1);
 
+	ehci->qh_list = xmemalign(32, sizeof(struct QH) * NUM_QH);
+	ehci->td = xmemalign(32, sizeof(struct qTD) * NUM_TD);
+
 	host->init = ehci_init;
 	host->submit_int_msg = submit_int_msg;
 	host->submit_control_msg = submit_control_msg;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

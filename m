Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MwG-0001bJ-Ew
 for barebox@lists.infradead.org; Thu, 27 Feb 2020 17:27:10 +0000
Received: by mail-lj1-x241.google.com with SMTP id q8so70308ljj.11
 for <barebox@lists.infradead.org>; Thu, 27 Feb 2020 09:27:06 -0800 (PST)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 27 Feb 2020 20:26:46 +0300
Message-Id: <20200227172646.31180-1-pmamonov@gmail.com>
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
Subject: [PATCH] usb: host: ehci: distinguish DMA addresses
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

This patch adds translation from CPU to DMA addresses, which is required for
proper operation on certain architectures like MIPS.

This patch also fixes the bug introduced by 4350744bf5 "usb: ehci-hcd: port
periodic transactions implementation from the u-boot", which is still present
in the original U-Boot code:

	td->qt_buffer[0] =
		cpu_to_hc32((unsigned long)buffer + i * elementsize);
	td->qt_buffer[1] =
		cpu_to_hc32((td->qt_buffer[0] + 0x1000) & ~0xfff);
	...

In case of a big-endian CPU 0x1000 is added to the byte-swapped value
`td->qt_buffer[0]`, the result is byte swapped once again and stored to
`td->qt_buffer[1]`. This results in erroneous values being stored in
`td->qt_buffer[1..4]`.

N.B.: This patch needs some testing on architectures different from MIPS.

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 101 ++++++++++++++++++++++++------------
 1 file changed, 68 insertions(+), 33 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 34b22bcb44..6a9e3863c4 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -42,7 +42,9 @@ struct ehci_host {
 	struct ehci_hcor *hcor;
 	struct usb_host host;
 	struct QH *qh_list;
+	dma_addr_t qh_list_dma;
 	struct qTD *td;
+	dma_addr_t td_dma;
 	int portreset;
 	unsigned long flags;
 
@@ -51,7 +53,9 @@ struct ehci_host {
 	void *drvdata;
 	int periodic_schedules;
 	struct QH *periodic_queue;
+	dma_addr_t periodic_queue_dma;
 	uint32_t *periodic_list;
+	dma_addr_t periodic_list_dma;
 };
 
 struct int_queue {
@@ -59,9 +63,11 @@ struct int_queue {
 	int queuesize;
 	unsigned long pipe;
 	struct QH *first;
+	dma_addr_t first_dma;
 	struct QH *current;
 	struct QH *last;
 	struct qTD *tds;
+	dma_addr_t tds_dma;
 };
 
 #define to_ehci(ptr) container_of(ptr, struct ehci_host, host)
@@ -137,6 +143,29 @@ static struct descriptor {
 
 #define ehci_is_TDI()	(ehci->flags & EHCI_HAS_TT)
 
+#define EHCI_DMA(dma0, ptr0, ptr) \
+	((dma0) + ((ptr) - (ptr0)) * sizeof(*(ptr)))
+
+static inline uint32_t ehci_qh_dma(struct ehci_host *ehci, struct QH *qh)
+{
+	return EHCI_DMA(ehci->qh_list_dma, ehci->qh_list, qh);
+}
+
+static inline uint32_t ehci_td_dma(struct ehci_host *ehci, struct qTD *td)
+{
+	return EHCI_DMA(ehci->td_dma, ehci->td, td);
+}
+
+static inline uint32_t ehci_int_qh_dma(struct int_queue *intq, struct QH *qh)
+{
+	return EHCI_DMA(intq->first_dma, intq->first, qh);
+}
+
+static inline uint32_t ehci_int_td_dma(struct int_queue *intq, struct qTD *td)
+{
+	return EHCI_DMA(intq->tds_dma, intq->tds, td);
+}
+
 static void memzero32(void *ptr, size_t size)
 {
 	uint32_t *ptr32 = ptr;
@@ -346,7 +375,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 			dev_dbg(ehci->dev, "unable construct SETUP td\n");
 			return ret;
 		}
-		*tdp = cpu_to_hc32((uint32_t) td);
+		*tdp = cpu_to_hc32(ehci_td_dma(ehci, td));
 		tdp = &td->qt_next;
 
 		toggle = 1;
@@ -385,7 +414,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 			dev_err(ehci->dev, "unable construct DATA td\n");
 			return ret;
 		}
-		*tdp = cpu_to_hc32((uint32_t) td);
+		*tdp = cpu_to_hc32(ehci_td_dma(ehci, td));
 		tdp = &td->qt_next;
 	}
 
@@ -399,7 +428,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 					      QT_TOKEN_PID_IN),
 				 NULL, 0,
 				 NULL, DMA_NONE);
-		*tdp = cpu_to_hc32((uint32_t)td);
+		*tdp = cpu_to_hc32(ehci_td_dma(ehci, td));
 		tdp = &td->qt_next;
 	}
 
@@ -841,7 +870,7 @@ static int ehci_init(struct usb_host *host)
 			return ret;
 	}
 
-	ehci->qh_list[0].qh_link = cpu_to_hc32((uint32_t)&ehci->qh_list[1] |
+	ehci->qh_list[0].qh_link = cpu_to_hc32(ehci_qh_dma(ehci, &ehci->qh_list[1]) |
 					       QH_LINK_TYPE_QH);
 	ehci->qh_list[0].qh_endpt1 = cpu_to_hc32(QH_ENDPT1_H(1) |
 						 QH_ENDPT1_EPS(USB_SPEED_HIGH));
@@ -850,12 +879,13 @@ static int ehci_init(struct usb_host *host)
 	ehci->qh_list[0].qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
 	ehci->qh_list[0].qt_token = cpu_to_hc32(QT_TOKEN_STATUS_HALTED);
 
-	ehci->qh_list[1].qh_link = cpu_to_hc32((uint32_t)&ehci->qh_list[0] |
+	ehci->qh_list[1].qh_link = cpu_to_hc32(ehci_qh_dma(ehci,
+							   &ehci->qh_list[0]) |
 					       QH_LINK_TYPE_QH);
 	ehci->qh_list[1].qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
 
 	/* Set async. queue head pointer. */
-	ehci_writel(&ehci->hcor->or_asynclistaddr, (uint32_t)ehci->qh_list);
+	ehci_writel(&ehci->hcor->or_asynclistaddr, (uint32_t)ehci->qh_list_dma);
 
 	/*
 	 * Set up periodic list
@@ -885,15 +915,15 @@ static int ehci_init(struct usb_host *host)
 		 * PAGE_SIZE less then 4k will break this code.
 		 */
 		ehci->periodic_list = dma_alloc_coherent(1024 * 4,
-							 DMA_ADDRESS_BROKEN);
+						&ehci->periodic_list_dma);
 	for (i = 0; i < 1024; i++) {
-		ehci->periodic_list[i] = cpu_to_hc32((unsigned long)periodic
+		ehci->periodic_list[i] = cpu_to_hc32((unsigned long)ehci->periodic_queue_dma
 						| QH_LINK_TYPE_QH);
 	}
 
 	/* Set periodic list base address */
 	ehci_writel(&ehci->hcor->or_periodiclistbase,
-		(unsigned long)ehci->periodic_list);
+		    (uint32_t)ehci->periodic_list_dma);
 
 	reg = ehci_readl(&ehci->hccr->cr_hcsparams);
 	descriptor.hub.bNbrPorts = HCS_N_PORTS(reg);
@@ -986,7 +1016,10 @@ disable_periodic(struct ehci_host *ehci)
 	return 0;
 }
 
-#define NEXT_QH(qh) (struct QH *)((unsigned long)hc32_to_cpu((qh)->qh_link) & ~0x1f)
+#define NEXT_QH(queue, qh) (struct QH *)(			\
+	((unsigned long)hc32_to_cpu((qh)->qh_link) & ~0x1f) -	\
+	(queue)->first_dma +					\
+	(unsigned long)(queue)->first)
 
 static int
 enable_periodic(struct ehci_host *ehci)
@@ -1051,7 +1084,7 @@ static void ehci_update_endpt2_dev_n_port(struct usb_device *udev,
 
 static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 			unsigned long pipe, int queuesize, int elementsize,
-			void *buffer, int interval)
+			void *buffer, dma_addr_t buffer_dma, int interval)
 {
 	struct usb_host *host = dev->host;
 	struct ehci_host *ehci = to_ehci(host);
@@ -1100,22 +1133,23 @@ static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 	result->queuesize = queuesize;
 	result->pipe = pipe;
 	result->first = dma_alloc_coherent(sizeof(struct QH) * queuesize,
-					   DMA_ADDRESS_BROKEN);
+					   &result->first_dma);
 	result->current = result->first;
 	result->last = result->first + queuesize - 1;
 	result->tds = dma_alloc_coherent(sizeof(struct qTD) * queuesize,
-					 DMA_ADDRESS_BROKEN);
+					 &result->tds_dma);
 
 	for (i = 0; i < queuesize; i++) {
 		struct QH *qh = result->first + i;
 		struct qTD *td = result->tds + i;
 		void **buf = &qh->buffer;
 
-		qh->qh_link = cpu_to_hc32((unsigned long)(qh+1) | QH_LINK_TYPE_QH);
+		qh->qh_link = cpu_to_hc32(ehci_int_qh_dma(result, qh + 1) |
+					  QH_LINK_TYPE_QH);
 		if (i == queuesize - 1)
 			qh->qh_link = cpu_to_hc32(QH_LINK_TERMINATE);
 
-		qh->qt_next = cpu_to_hc32((unsigned long)td);
+		qh->qt_next = cpu_to_hc32(ehci_int_td_dma(result, td));
 		qh->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
 		qh->qh_endpt1 =
 			cpu_to_hc32((0 << 28) | /* No NAK reload (ehci 4.9) */
@@ -1142,15 +1176,15 @@ static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 			((usb_pipein(pipe) ? 1 : 0) << 8) | /* IN/OUT token */
 			0x80); /* active */
 		td->qt_buffer[0] =
-		    cpu_to_hc32((unsigned long)buffer + i * elementsize);
+		  cpu_to_hc32(buffer_dma + i * elementsize);
 		td->qt_buffer[1] =
-		    cpu_to_hc32((td->qt_buffer[0] + 0x1000) & ~0xfff);
+		  cpu_to_hc32((buffer_dma + i * elementsize + 0x1000) & ~0xfff);
 		td->qt_buffer[2] =
-		    cpu_to_hc32((td->qt_buffer[0] + 0x2000) & ~0xfff);
+		  cpu_to_hc32((buffer_dma + i * elementsize + 0x2000) & ~0xfff);
 		td->qt_buffer[3] =
-		    cpu_to_hc32((td->qt_buffer[0] + 0x3000) & ~0xfff);
+		  cpu_to_hc32((buffer_dma + i * elementsize + 0x3000) & ~0xfff);
 		td->qt_buffer[4] =
-		    cpu_to_hc32((td->qt_buffer[0] + 0x4000) & ~0xfff);
+		  cpu_to_hc32((buffer_dma + i * elementsize + 0x4000) & ~0xfff);
 
 		*buf = buffer + i * elementsize;
 	}
@@ -1165,7 +1199,7 @@ static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 
 	/* hook up to periodic list */
 	result->last->qh_link = list->qh_link;
-	list->qh_link = cpu_to_hc32((unsigned long)result->first | QH_LINK_TYPE_QH);
+	list->qh_link = cpu_to_hc32(result->first_dma | QH_LINK_TYPE_QH);
 
 	if (enable_periodic(ehci) < 0) {
 		dev_err(&dev->dev,
@@ -1177,8 +1211,10 @@ static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 	dev_dbg(&dev->dev, "Exit create_int_queue\n");
 	return result;
 fail3:
-	dma_free_coherent(result->tds, 0, sizeof(struct qTD) * queuesize);
-	dma_free_coherent(result->first, 0, sizeof(struct QH) * queuesize);
+	dma_free_coherent(result->tds, result->tds_dma,
+			  sizeof(struct qTD) * queuesize);
+	dma_free_coherent(result->first, result->first_dma,
+			  sizeof(struct QH) * queuesize);
 	free(result);
 	return NULL;
 }
@@ -1235,14 +1271,14 @@ static int ehci_destroy_int_queue(struct usb_device *dev,
 		dev_dbg(&dev->dev,
 			"considering %p, with qh_link %x\n",
 			cur, cur->qh_link);
-		if (NEXT_QH(cur) == queue->first) {
+		if (NEXT_QH(queue, cur) == queue->first) {
 			dev_dbg(&dev->dev,
 				"found candidate. removing from chain\n");
 			cur->qh_link = queue->last->qh_link;
 			result = 0;
 			break;
 		}
-		cur = NEXT_QH(cur);
+		cur = NEXT_QH(queue, cur);
 	}
 
 	if (ehci->periodic_schedules > 0) {
@@ -1269,14 +1305,14 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	uint64_t start;
 	void *backbuffer;
 	int result = 0, ret;
+	dma_addr_t buffer_dma;
 
 	dev_dbg(ehci->dev, "dev=%p, pipe=%lu, buffer=%p, length=%d, interval=%d",
 	      dev, pipe, buffer, length, interval);
 
-	dma_sync_single_for_device((unsigned long)buffer, length,
-				   DMA_BIDIRECTIONAL);
+	buffer_dma = dma_map_single(ehci->dev, buffer, length, DMA_BIDIRECTIONAL);
 
-	queue = ehci_create_int_queue(dev, pipe, 1, length, buffer, interval);
+	queue = ehci_create_int_queue(dev, pipe, 1, length, buffer, buffer_dma, interval);
 	if (!queue)
 		return -EINVAL;
 
@@ -1298,8 +1334,7 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 			result = -EINVAL;
 	}
 
-	dma_sync_single_for_cpu((unsigned long)buffer, length,
-				DMA_BIDIRECTIONAL);
+	dma_unmap_single(ehci->dev, buffer_dma, length, DMA_BIDIRECTIONAL);
 
 	ret = ehci_destroy_int_queue(dev, queue);
 	if (!result)
@@ -1335,11 +1370,11 @@ struct ehci_host *ehci_register(struct device_d *dev, struct ehci_data *data)
 	ehci->post_init = data->post_init;
 
 	ehci->qh_list = dma_alloc_coherent(sizeof(struct QH) * NUM_QH,
-					   DMA_ADDRESS_BROKEN);
+					   &ehci->qh_list_dma);
 	ehci->periodic_queue = dma_alloc_coherent(sizeof(struct QH),
-						  DMA_ADDRESS_BROKEN);
+						  &ehci->periodic_queue_dma);
 	ehci->td = dma_alloc_coherent(sizeof(struct qTD) * NUM_TD,
-				      DMA_ADDRESS_BROKEN);
+				      &ehci->td_dma);
 
 	host->hw_dev = dev;
 	host->init = ehci_init;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLlb-0002D9-SD
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:33 +0000
Received: by mail-pf1-x442.google.com with SMTP id 13so853185pfw.9
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:03 -0700
Message-Id: <20190522073414.9308-8-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/18] usb: host: ehci: Simplify qTD buffer synchronization
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Only two buffers ever need to be sychronized and DMA direction of it
is always known based on the type of request we are
processing. Simplify the code by moving synchronization to be a part
of ehci_prepare_qtd(). While at it convert the code to use
dma_map_single() API.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 90 ++++++++++++++++++++-----------------
 drivers/usb/host/ehci.h     |  2 -
 2 files changed, 49 insertions(+), 43 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index ad244637e..9758e1ed7 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -184,15 +184,11 @@ out:
 	return ret;
 }
 
-static int ehci_td_buffer(struct qTD *td, void *buf, size_t sz)
+static int ehci_td_buffer(struct qTD *td, dma_addr_t addr, size_t sz)
 {
-	uint32_t addr, delta, next;
+	uint32_t delta, next;
 	int idx;
 
-	addr = (uint32_t) buf;
-	td->qtd_dma = addr;
-	td->length = sz;
-
 	idx = 0;
 	while (idx < 5) {
 		td->qt_buffer[idx] = cpu_to_hc32(addr);
@@ -213,8 +209,11 @@ static int ehci_td_buffer(struct qTD *td, void *buf, size_t sz)
 	return 0;
 }
 
-static int ehci_prepare_qtd(struct qTD *td, uint32_t token,
-			    void *buffer, size_t length)
+static int ehci_prepare_qtd(struct device_d *dev,
+			    struct qTD *td, uint32_t token,
+			    void *buffer, size_t length,
+			    dma_addr_t *buffer_dma,
+			    enum dma_data_direction dma_direction)
 {
 	int ret;
 
@@ -226,7 +225,12 @@ static int ehci_prepare_qtd(struct qTD *td, uint32_t token,
 	td->qt_token = cpu_to_hc32(token);
 
 	if (length) {
-		ret = ehci_td_buffer(td, buffer, length);
+		*buffer_dma = dma_map_single(dev, buffer, length,
+					     dma_direction);
+		if (dma_mapping_error(dev, *buffer_dma))
+			return -EFAULT;
+
+		ret = ehci_td_buffer(td, *buffer_dma, length);
 		if (ret)
 			return ret;
 	}
@@ -257,12 +261,15 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 {
 	struct usb_host *host = dev->host;
 	struct ehci_host *ehci = to_ehci(host);
+	const bool dir_in = usb_pipein(pipe);
+	dma_addr_t buffer_dma, req_dma;
 	struct QH *qh;
 	struct qTD *td;
 	uint32_t *tdp;
 	uint32_t endpt, token, usbsts;
 	uint32_t c, toggle;
-	int ret = 0, i;
+	int ret = 0;
+
 
 	dev_dbg(ehci->dev, "pipe=%lx, buffer=%p, length=%d, req=%p\n", pipe,
 	      buffer, length, req);
@@ -320,9 +327,11 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	if (req != NULL) {
 		td = &ehci->td[0];
 
-		ret = ehci_prepare_qtd(td, QT_TOKEN_DT(0) | QT_TOKEN_IOC(0) |
+		ret = ehci_prepare_qtd(ehci->dev,
+				       td, QT_TOKEN_DT(0) | QT_TOKEN_IOC(0) |
 				       QT_TOKEN_PID(QT_TOKEN_PID_SETUP),
-				       req, sizeof(*req));
+				       req, sizeof(*req),
+				       &req_dma, DMA_TO_DEVICE);
 		if (ret) {
 			dev_dbg(ehci->dev, "unable construct SETUP td\n");
 			return ret;
@@ -334,14 +343,25 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	}
 
 	if (length > 0 || req == NULL) {
+		enum dma_data_direction dir;
+		unsigned int pid;
+
 		td = &ehci->td[1];
 
-		ret = ehci_prepare_qtd(td, QT_TOKEN_DT(toggle) |
+		if (dir_in) {
+			dir = DMA_FROM_DEVICE;
+			pid = QT_TOKEN_PID_IN;
+		} else {
+			dir = DMA_TO_DEVICE;
+			pid = QT_TOKEN_PID_OUT;
+		}
+
+		ret = ehci_prepare_qtd(ehci->dev,
+				       td, QT_TOKEN_DT(toggle) |
 				       QT_TOKEN_IOC(req == NULL) |
-				       QT_TOKEN_PID(usb_pipein(pipe) ?
-						    QT_TOKEN_PID_IN :
-						    QT_TOKEN_PID_OUT),
-				       buffer, length);
+				       QT_TOKEN_PID(pid),
+				       buffer, length,
+				       &buffer_dma, dir);
 		if (ret) {
 			dev_err(ehci->dev, "unable construct DATA td\n");
 			return ret;
@@ -353,29 +373,19 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	if (req) {
 		td = &ehci->td[2];
 
-		ehci_prepare_qtd(td, QT_TOKEN_DT(1) | QT_TOKEN_IOC(1) |
-				 QT_TOKEN_PID(usb_pipein(pipe) ?
+		ehci_prepare_qtd(ehci->dev,
+				 td, QT_TOKEN_DT(1) | QT_TOKEN_IOC(1) |
+				 QT_TOKEN_PID(dir_in ?
 					      QT_TOKEN_PID_OUT :
 					      QT_TOKEN_PID_IN),
-				 NULL, 0);
+				 NULL, 0,
+				 NULL, DMA_NONE);
 		*tdp = cpu_to_hc32((uint32_t)td);
 		tdp = &td->qt_next;
 	}
 
 	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t) qh | QH_LINK_TYPE_QH);
 
-	/* Flush dcache */
-	if (IS_ENABLED(CONFIG_MMU)) {
-		for (i = 0; i < NUM_TD; i ++) {
-			struct qTD *qtd = &ehci->td[i];
-			if (!qtd->qtd_dma)
-				continue;
-			dma_sync_single_for_device((unsigned long)qtd->qtd_dma,
-						   qtd->length,
-						   DMA_BIDIRECTIONAL);
-		}
-	}
-
 	usbsts = ehci_readl(&ehci->hcor->or_usbsts);
 	ehci_writel(&ehci->hcor->or_usbsts, (usbsts & 0x3f));
 
@@ -394,15 +404,13 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		return -ETIMEDOUT;
 	}
 
-	if (IS_ENABLED(CONFIG_MMU)) {
-		for (i = 0; i < NUM_TD; i ++) {
-			struct qTD *qtd = &ehci->td[i];
-			if (!qtd->qtd_dma)
-				continue;
-			dma_sync_single_for_cpu((unsigned long)qtd->qtd_dma,
-						qtd->length, DMA_BIDIRECTIONAL);
-		}
-	}
+	if (req)
+		dma_unmap_single(ehci->dev, req_dma, sizeof(*req),
+				 DMA_TO_DEVICE);
+
+	if (length)
+		dma_unmap_single(ehci->dev, buffer_dma, length,
+				 dir_in ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
 
 	ret = ehci_enable_async_schedule(ehci, false);
 	if (ret < 0) {
diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index f82b6a0d1..e88e37e14 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -147,8 +147,6 @@ struct qTD {
 #define QT_TOKEN_STATUS_SPLITXSTATE	0x02
 #define QT_TOKEN_STATUS_PERR		0x01
 	uint32_t qt_buffer[5];
-	unsigned long qtd_dma;
-	size_t length;
 } __attribute__ ((aligned (32)));
 
 /* Queue Head (QH). */
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

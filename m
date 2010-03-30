Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZHf-0001S5-P2
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:07:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Mar 2010 13:06:51 +0200
Message-Id: <1269947215-18214-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
References: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/12] pass arguments to dma_* as unsigned long as the kernel
	does
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/mmu.h   |   12 ++++++------
 drivers/net/fec_imx.c        |    3 ++-
 drivers/usb/gadget/fsl_udc.c |    3 ++-
 drivers/usb/usb_ehci_core.c  |    4 ++--
 4 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 0dd3fa8..d0a6562 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -19,9 +19,9 @@ void setup_dma_coherent(unsigned long offset);
 void *dma_alloc_coherent(size_t size);
 void dma_free_coherent(void *mem);
 
-void dma_clean_range(const void *, const void *);
-void dma_flush_range(const void *, const void *);
-void dma_inv_range(const void *, const void *);
+void dma_clean_range(unsigned long, unsigned long);
+void dma_flush_range(unsigned long, unsigned long);
+void dma_inv_range(unsigned long, unsigned long);
 unsigned long virt_to_phys(void *virt);
 void *phys_to_virt(unsigned long phys);
 
@@ -46,15 +46,15 @@ static inline unsigned long virt_to_phys(void *mem)
 	return (unsigned long)mem;
 }
 
-static inline void dma_clean_range(const void *s, const void *e)
+static inline void dma_clean_range(unsigned long s, unsigned long e)
 {
 }
 
-static inline void dma_flush_range(const void *s, const void *e)
+static inline void dma_flush_range(unsigned long s, unsigned long e)
 {
 }
 
-static inline void dma_inv_range(const void *s, const void *e)
+static inline void dma_inv_range(unsigned long s, unsigned long e)
 {
 }
 
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 49140e7..8440333 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -425,7 +425,8 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 	writew(data_length, &fec->tbd_base[fec->tbd_index].data_length);
 
 	writel((uint32_t)(eth_data), &fec->tbd_base[fec->tbd_index].data_pointer);
-	dma_flush_range(eth_data, eth_data + data_length);
+	dma_flush_range((unsigned long)eth_data,
+			(unsigned long)(eth_data + data_length));
 	/*
 	 * update BD's status now
 	 * This block:
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index f6dd3ac..95f3bdd 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -1224,7 +1224,8 @@ fsl_ep_queue(struct usb_ep *_ep, struct usb_request *_req)
 
 	req->ep = ep;
 
-	dma_flush_range(req->req.buf, req->req.buf + req->req.length);
+	dma_flush_range((unsigned long)req->req.buf,
+			(unsigned long)(req->req.buf + req->req.length));
 
 	req->req.status = -EINPROGRESS;
 	req->req.actual = 0;
diff --git a/drivers/usb/usb_ehci_core.c b/drivers/usb/usb_ehci_core.c
index cb5a073..d7efaad 100644
--- a/drivers/usb/usb_ehci_core.c
+++ b/drivers/usb/usb_ehci_core.c
@@ -129,9 +129,9 @@ static struct descriptor {
 static void flush_invalidate(void *addr, int size, int flush)
 {
 	if (flush)
-		dma_flush_range(addr, addr + size);
+		dma_flush_range((unsigned long)addr, (unsigned long)(addr + size));
 	else
-		dma_inv_range(addr, addr + size);
+		dma_inv_range((unsigned long)addr, (unsigned long)(addr + size));
 }
 
 static void cache_qtd(struct qTD *qtd, int flush)
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

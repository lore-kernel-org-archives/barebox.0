Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1She6r-0002td-1X
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:55:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Jun 2012 11:55:17 +0200
Message-Id: <1340272517-8972-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] USB ehci: rework cache handling
To: barebox@lists.infradead.org

We do not need to invalidate the cache in the poll loop anymore
since the corresponding bit is now in a dma coherent area. Instead,
flush cache before hardware operation and invalidate afterwards. Put
the corresponding code inline since it's shorter.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c |   79 ++++++++++++-------------------------------
 drivers/usb/host/ehci.h     |    4 ++-
 2 files changed, 24 insertions(+), 59 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 929c8a6..c2f48ce 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -120,60 +120,6 @@ static struct descriptor {
 
 #define ehci_is_TDI()	(ehci->flags & EHCI_HAS_TT)
 
-#ifdef CONFIG_MMU
-/*
- * Routines to handle (flush/invalidate) the dcache for the QH and qTD
- * structures and data buffers. This is needed on platforms using this
- * EHCI support with dcache enabled.
- */
-static void flush_invalidate(void *addr, int size, int flush)
-{
-	if (flush) {
-		dma_flush_range((unsigned long)addr, (unsigned long)(addr + size));
-	} else {
-		dma_inv_range((unsigned long)addr, (unsigned long)(addr + size));
-	}
-}
-
-static void cache_qtd(struct qTD *qtd, int flush)
-{
-	u32 *ptr = (u32 *)qtd->qt_buffer[0];
-	int len = (qtd->qt_token & 0x7fff0000) >> 16;
-
-	if (ptr && len)
-		flush_invalidate(ptr, len, flush);
-}
-
-static void cache_qh(struct ehci_priv *ehci, int flush)
-{
-	int i;
-
-	for (i = 0; i < NUM_TD; i ++)
-		cache_qtd(&ehci->td[i], flush);
-}
-
-static inline void ehci_flush_dcache(struct ehci_priv *ehci)
-{
-	cache_qh(ehci, 1);
-}
-
-static inline void ehci_invalidate_dcache(struct ehci_priv *ehci)
-{
-	cache_qh(ehci, 0);
-}
-#else /* CONFIG_MMU */
-/*
- *
- */
-static inline void ehci_flush_dcache(struct ehci_priv *ehci)
-{
-}
-
-static inline void ehci_invalidate_dcache(struct ehci_priv *ehci)
-{
-}
-#endif /* CONFIG_MMU */
-
 static int handshake(uint32_t *ptr, uint32_t mask, uint32_t done, int usec)
 {
 	uint32_t result;
@@ -228,6 +174,9 @@ static int ehci_td_buffer(struct qTD *td, void *buf, size_t sz)
 	int idx;
 
 	addr = (uint32_t) buf;
+	td->qtd_dma = addr;
+	td->length = sz;
+
 	idx = 0;
 	while (idx < 5) {
 		td->qt_buffer[idx] = cpu_to_hc32(addr);
@@ -261,7 +210,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	uint32_t endpt, token, usbsts;
 	uint32_t c, toggle;
 	uint32_t cmd;
-	int ret = 0;
+	int ret = 0, i;
 	uint64_t start, timeout_val;
 
 	debug("dev=%p, pipe=%lx, buffer=%p, length=%d, req=%p\n", dev, pipe,
@@ -360,7 +309,14 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t) qh | QH_LINK_TYPE_QH);
 
 	/* Flush dcache */
-	ehci_flush_dcache(ehci);
+	if (IS_ENABLED(CONFIG_MMU)) {
+		for (i = 0; i < NUM_TD; i ++) {
+			struct qTD *qtd = &ehci->td[i];
+			if (!qtd->qtd_dma)
+				continue;
+			dma_flush_range(qtd->qtd_dma, qtd->qtd_dma + qtd->length);
+		}
+	}
 
 	usbsts = ehci_readl(&ehci->hcor->or_usbsts);
 	ehci_writel(&ehci->hcor->or_usbsts, (usbsts & 0x3f));
@@ -381,8 +337,6 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	start = get_time_ns();
 	vtd = td;
 	do {
-		/* Invalidate dcache */
-		ehci_invalidate_dcache(ehci);
 		token = hc32_to_cpu(vtd->qt_token);
 		if (is_timeout(start, timeout_val)) {
 			/* Disable async schedule. */
@@ -396,6 +350,15 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		}
 	} while (token & 0x80);
 
+	if (IS_ENABLED(CONFIG_MMU)) {
+		for (i = 0; i < NUM_TD; i ++) {
+			struct qTD *qtd = &ehci->td[i];
+			if (!qtd->qtd_dma)
+				continue;
+			dma_inv_range(qtd->qtd_dma, qtd->qtd_dma + qtd->length);
+		}
+	}
+
 	/* Disable async schedule. */
 	cmd = ehci_readl(&ehci->hcor->or_usbcmd);
 	cmd &= ~CMD_ASE;
diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index 76a3c85..b127b95 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -166,7 +166,9 @@ struct qTD {
 	uint32_t qt_altnext;
 	uint32_t qt_token;
 	uint32_t qt_buffer[5];
-};
+	unsigned long qtd_dma;
+	size_t length;
+} __attribute__ ((aligned (32)));
 
 /* Queue Head (QH). */
 struct QH {
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

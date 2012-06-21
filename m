Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1She6j-0002rH-KH
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:55:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Jun 2012 11:55:12 +0200
Message-Id: <1340272517-8972-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] USB ehci: Use dma coherent buffers for qh/qtd
To: barebox@lists.infradead.org

There's no point in syncing them manually. Instead, use
dma_alloc_coherent and skip the manual flushing/invalidating.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c |    7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index a2473a9..425406d 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -148,9 +148,6 @@ static void cache_qh(struct ehci_priv *ehci, int flush)
 {
 	int i;
 
-	flush_invalidate(ehci->qh_list, sizeof(struct QH) * NUM_QH, flush);
-	flush_invalidate(ehci->td, sizeof(struct qTD) * NUM_TD, flush);
-
 	for (i = 0; i < NUM_TD; i ++)
 		cache_qtd(&ehci->td[i], flush);
 }
@@ -878,8 +875,8 @@ static int ehci_probe(struct device_d *dev)
 	ehci->hccr = dev_request_mem_region(dev, 0);
 	ehci->hcor = dev_request_mem_region(dev, 1);
 
-	ehci->qh_list = xmemalign(32, sizeof(struct QH) * NUM_QH);
-	ehci->td = xmemalign(32, sizeof(struct qTD) * NUM_TD);
+	ehci->qh_list = dma_alloc_coherent(sizeof(struct QH) * NUM_TD);
+	ehci->td = dma_alloc_coherent(sizeof(struct qTD) * NUM_TD);
 
 	host->init = ehci_init;
 	host->submit_int_msg = submit_int_msg;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

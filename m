Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK9Y-0001a5-7y
 for barebox@lists.infradead.org; Mon, 27 May 2019 18:15:22 +0000
Received: by mail-pf1-x443.google.com with SMTP id s11so9939405pfm.12
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 11:15:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 11:14:53 -0700
Message-Id: <20190527181500.17456-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/8] usb: ohci-hcd: Do not zero out DMA coherent memory
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Memory returned by dma_alloc_coherent() should already be zeroed
out, so there's no need to do this explicitly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ohci-hcd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index 612c3a103..924dc8e1f 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -1765,7 +1765,6 @@ static int ohci_init(struct usb_host *host)
 				       DMA_ADDRESS_BROKEN);
 	if (!ohci->ptd)
 		return -ENOMEM;
-	memset(ohci->ptd, 0, sizeof(struct td) * NUM_TD);
 
 	ohci->disabled = 1;
 	ohci->irq = -1;
@@ -1815,7 +1814,6 @@ static int ohci_probe(struct device_d *dev)
 					    DMA_ADDRESS_BROKEN);
 	if (!ohci->ohci_dev)
 		return -ENOMEM;
-	memset(ohci->ohci_dev, 0, sizeof(*ohci->ohci_dev));
 
 	usb_register_host(host);
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

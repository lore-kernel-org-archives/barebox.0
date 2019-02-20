Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKC-0002js-1f
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:29:49 +0000
Received: by mail-pl1-x644.google.com with SMTP id 101so11767685pld.6
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:29:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:07 -0800
Message-Id: <20190220072930.14300-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/25] usb: xhci-hcd: Do not zero out DMA coherent memory
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Memory returned by dma_alloc_coherent() should already be zeroed
out, so there's no need to do this explicitly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/xhci-hcd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index 7cfd74de4..7106a5637 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -445,7 +445,6 @@ static struct xhci_virtual_device *xhci_alloc_virtdev(struct xhci_hcd *xhci,
 
 	vdev->dma_size = sz_ictx + sz_dctx;
 	p = vdev->dma = dma_alloc_coherent(vdev->dma_size, DMA_ADDRESS_BROKEN);
-	memset(vdev->dma, 0, vdev->dma_size);
 
 	vdev->out_ctx = p; p += sz_dctx;
 	vdev->in_ctx = p; p += sz_ictx;
@@ -1225,7 +1224,6 @@ static void xhci_dma_alloc(struct xhci_hcd *xhci)
 	xhci->dma_size += num_ep * sz_ep;
 
 	p = xhci->dma = dma_alloc_coherent(xhci->dma_size, DMA_ADDRESS_BROKEN);
-	memset(xhci->dma, 0, xhci->dma_size);
 
 	xhci->sp = p; p += sz_sp;
 	xhci->dcbaa = p; p += sz_dca;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

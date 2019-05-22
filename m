Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLlW-000294-VL
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:24 +0000
Received: by mail-pl1-x643.google.com with SMTP id p15so647809pll.4
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:33:57 -0700
Message-Id: <20190522073414.9308-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/18] usb: host: ehci: Do not zero out DMA coherent memory
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Memory returned by dma_alloc_coherent() should already be zeroed
out, so there's no need to do this explicitly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 87af95d2e..54ab32830 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1069,8 +1069,6 @@ static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 	result->last = result->first + queuesize - 1;
 	result->tds = dma_alloc_coherent(sizeof(struct qTD) * queuesize,
 					 DMA_ADDRESS_BROKEN);
-	memset(result->first, 0, sizeof(struct QH) * queuesize);
-	memset(result->tds, 0, sizeof(struct qTD) * queuesize);
 
 	for (i = 0; i < queuesize; i++) {
 		struct QH *qh = result->first + i;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

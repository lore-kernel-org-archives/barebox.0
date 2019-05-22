Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLln-0002SV-2J
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:52 +0000
Received: by mail-pg1-x542.google.com with SMTP id v11so877460pgl.5
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:39 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:14 -0700
Message-Id: <20190522073414.9308-19-andrew.smirnov@gmail.com>
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
Subject: [PATCH 18/18] usb: host: ehci: Allocate only NUM_QH queue heads for
 qh_list
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Use NUM_QH, not NUM_TD to specify allocation size.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index b336164f6..f3be177ce 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1325,7 +1325,7 @@ struct ehci_host *ehci_register(struct device_d *dev, struct ehci_data *data)
 	ehci->init = data->init;
 	ehci->post_init = data->post_init;
 
-	ehci->qh_list = dma_alloc_coherent(sizeof(struct QH) * NUM_TD,
+	ehci->qh_list = dma_alloc_coherent(sizeof(struct QH) * NUM_QH,
 					   DMA_ADDRESS_BROKEN);
 	ehci->periodic_queue = dma_alloc_coherent(sizeof(struct QH),
 						  DMA_ADDRESS_BROKEN);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

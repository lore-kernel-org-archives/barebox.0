Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK9c-0001cF-FB
 for barebox@lists.infradead.org; Mon, 27 May 2019 18:15:27 +0000
Received: by mail-pf1-x442.google.com with SMTP id y11so5096240pfm.13
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 11:15:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 11:14:59 -0700
Message-Id: <20190527181500.17456-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190527181500.17456-1-andrew.smirnov@gmail.com>
References: <20190527181500.17456-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 7/8] usb: fsl_udc: Use dma_alloc_coherent() to get DMA address
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Instead on relying virt_to_phys() to do virtual-to-physical address
conversion, make use of the fact that dma_alloc_coherent() can already
do that for us.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/gadget/fsl_udc.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 705f6c0ba..a47ba20f4 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -1143,11 +1143,10 @@ static struct ep_td_struct *fsl_build_dtd(struct fsl_req *req, unsigned *length,
 			(unsigned)EP_MAX_LENGTH_TRANSFER);
 
 	dtd = dma_alloc_coherent(sizeof(struct ep_td_struct),
-				 DMA_ADDRESS_BROKEN);
+				 dma);
 	if (dtd == NULL)
 		return dtd;
 
-	*dma = (dma_addr_t)virt_to_phys(dtd);
 	dtd->td_dma = *dma;
 	/* Clear reserved field */
 	swap_temp = cpu_to_le32(dtd->size_ioc_sts);
@@ -2066,13 +2065,12 @@ static int struct_udc_setup(struct fsl_udc *udc,
 		size &= ~(QH_ALIGNMENT - 1);
 	}
 
-	udc->ep_qh = dma_alloc_coherent(size, DMA_ADDRESS_BROKEN);
+	udc->ep_qh = dma_alloc_coherent(size, &udc->ep_qh_dma);
 	if (!udc->ep_qh) {
 		ERR("malloc QHs for udc failed\n");
 		kfree(udc->eps);
 		return -1;
 	}
-	udc->ep_qh_dma = (dma_addr_t)virt_to_phys(udc->ep_qh);
 
 	udc->ep_qh_size = size;
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

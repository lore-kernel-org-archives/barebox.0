Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM1Wz-0000N5-VM
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 21:42:44 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBCA.dip0.t-ipconnect.de
 [87.181.251.202]) by lynxeye.de (Postfix) with ESMTPA id 8E5FF26C2016
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 22:40:15 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 12 Feb 2015 22:39:57 +0100
Message-Id: <1423777200-22965-22-git-send-email-dev@lynxeye.de>
In-Reply-To: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
References: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH RFT 21/24] usb: host: ehci: convert to streaming DMA ops
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/usb/host/ehci-hcd.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 7f59774..ef1371f 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -30,7 +30,6 @@
 #include <errno.h>
 #include <of.h>
 #include <usb/ehci.h>
-#include <asm/mmu.h>
 #include <linux/err.h>
 
 #include "ehci.h"
@@ -331,7 +330,9 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 			struct qTD *qtd = &ehci->td[i];
 			if (!qtd->qtd_dma)
 				continue;
-			dma_flush_range(qtd->qtd_dma, qtd->qtd_dma + qtd->length);
+			dma_sync_single_for_device((unsigned long)qtd->qtd_dma,
+						   qtd->length,
+						   DMA_BIDIRECTIONAL);
 		}
 	}
 
@@ -372,7 +373,8 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 			struct qTD *qtd = &ehci->td[i];
 			if (!qtd->qtd_dma)
 				continue;
-			dma_inv_range(qtd->qtd_dma, qtd->qtd_dma + qtd->length);
+			dma_sync_single_for_cpu((unsigned long)qtd->qtd_dma,
+						qtd->length, DMA_BIDIRECTIONAL);
 		}
 	}
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

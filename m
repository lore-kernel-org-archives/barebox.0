Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S3XEq-0005Pf-PI
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 18:29:59 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 56D54DC3FBD
 for <barebox@lists.infradead.org>; Fri,  2 Mar 2012 19:32:50 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  2 Mar 2012 19:20:09 +0100
Message-Id: <1330712410-26479-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1330712410-26479-1-git-send-email-plagnioj@jcrosoft.com>
References: <1330712410-26479-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/5] macb: implement alloc_packet & free_packet
To: barebox@lists.infradead.org

We need to have a non cached buffer.
Need when MMU enabled.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |   19 ++++++++++++++++---
 1 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index d79da72..9b54afa 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -50,6 +50,7 @@
 #include <mach/board.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <asm/mmu.h>
 
 #include "macb.h"
 
@@ -391,6 +392,16 @@ static int macb_set_ethaddr(struct eth_device *edev, unsigned char *adr)
 	return 0;
 }
 
+static void *macb_alloc_packet(struct eth_device* edev)
+{
+	return dma_alloc_coherent(PKTSIZE);
+}
+
+static void macb_free_packet(struct eth_device* edev, void *packet)
+{
+	dma_free_coherent(packet, PKTSIZE);
+}
+
 static int macb_probe(struct device_d *dev)
 {
 	struct eth_device *edev;
@@ -420,6 +431,8 @@ static int macb_probe(struct device_d *dev)
 	edev->halt = macb_halt;
 	edev->get_ethaddr = pdata->get_ethaddr ? pdata->get_ethaddr : macb_get_ethaddr;
 	edev->set_ethaddr = macb_set_ethaddr;
+	edev->alloc_packet = macb_alloc_packet;
+	edev->free_packet = macb_free_packet;
 	edev->parent = dev;
 
 	macb->miidev.read = macb_phy_read;
@@ -431,9 +444,9 @@ static int macb_probe(struct device_d *dev)
 	macb->miidev.parent = dev;
 	macb->flags = pdata->flags;
 
-	macb->rx_buffer = xmalloc(CFG_MACB_RX_BUFFER_SIZE);
-	macb->rx_ring = xmalloc(CFG_MACB_RX_RING_SIZE * sizeof(struct macb_dma_desc));
-	macb->tx_ring = xmalloc(sizeof(struct macb_dma_desc));
+	macb->rx_buffer = dma_alloc_coherent(CFG_MACB_RX_BUFFER_SIZE);
+	macb->rx_ring = dma_alloc_coherent(CFG_MACB_RX_RING_SIZE * sizeof(struct macb_dma_desc));
+	macb->tx_ring = dma_alloc_coherent(sizeof(struct macb_dma_desc));
 
 	macb->regs = dev_request_mem_region(dev, 0);
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

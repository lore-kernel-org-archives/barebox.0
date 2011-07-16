Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qi2dO-0000jE-E5
	for barebox@lists.infradead.org; Sat, 16 Jul 2011 11:02:11 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 0E4E7FFA01A
	for <barebox@lists.infradead.org>;
	Sat, 16 Jul 2011 13:02:33 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 16 Jul 2011 12:45:29 +0200
Message-Id: <1310813132-4151-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1310813132-4151-1-git-send-email-plagnioj@jcrosoft.com>
References: <1310813132-4151-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/7] macb: switch to "struct resource"
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 drivers/net/macb.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index bc6618b..e030154 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -85,7 +85,7 @@ struct macb_dma_desc {
 #define TXBUF_USED		0x80000000
 
 struct macb_device {
-	void			*regs;
+	void			__iomem *regs;
 
 	unsigned int		rx_tail;
 	unsigned int		tx_tail;
@@ -446,7 +446,7 @@ static int macb_probe(struct device_d *dev)
 	macb->rx_ring = xmalloc(CFG_MACB_RX_RING_SIZE * sizeof(struct macb_dma_desc));
 	macb->tx_ring = xmalloc(sizeof(struct macb_dma_desc));
 
-	macb->regs = (void *)dev->map_base;
+	macb->regs = (void __iomem *)dev->resource[0].start;
 
 	/*
 	 * Do some basic initialization so that we at least can talk
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

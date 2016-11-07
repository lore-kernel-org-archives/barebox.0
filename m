Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp63.iad3a.emailsrvr.com ([173.203.187.63]
 helo=smtp101.iad3a.emailsrvr.com)
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c3oTd-0007L5-Tz
 for barebox@lists.infradead.org; Mon, 07 Nov 2016 18:17:03 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Mon,  7 Nov 2016 18:16:21 +0000
Message-Id: <20161107181624.4262-2-abbotti@mev.co.uk>
In-Reply-To: <20161107181624.4262-1-abbotti@mev.co.uk>
References: <20161107181624.4262-1-abbotti@mev.co.uk>
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
Subject: [PATCH 1/4] net/designware: Consecutive writes to the same register
 to be avoided
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

There are a few registers where consecutive writes to the same location
should be avoided or have a delay.

According to Synopsys, here is a list of the registers and bit(s) where
consecutive writes should be avoided or a delay is required:

DMA Registers:
Register 0        Bit 7
Register 6        All bits except for 24, 16-13, 2-1.

GMAC Registers:
Registers 0-3     All bits
Registers 6-7     All bits
Register 10       All bits
Register 11       All bits except for 5-6.
Registers 16-47   All bits
Register 48       All bits except for 18-16, 14.
Register 448      Bit 4.
Register 459      Bits 0-3.

[Original U-Boot patch by Dinh Nguyen <dinguyen@altera.com>]

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/net/designware.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 1d662a7..21fb44e 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -248,8 +248,8 @@ static int dwc_ether_init(struct eth_device *dev)
 	dev->set_ethaddr(dev, priv->macaddr);
 
 	writel(FIXEDBURST | PRIORXTX_41 | BURST_16, &dma_p->busmode);
-	writel(FLUSHTXFIFO | readl(&dma_p->opmode), &dma_p->opmode);
-	writel(STOREFORWARD | TXSECONDFRAME, &dma_p->opmode);
+	writel(readl(&dma_p->opmode) | FLUSHTXFIFO | STOREFORWARD |
+	       TXSECONDFRAME, &dma_p->opmode);
 	writel(FRAMEBURSTENABLE | DISABLERXOWN, &mac_p->conf);
 	return 0;
 }
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

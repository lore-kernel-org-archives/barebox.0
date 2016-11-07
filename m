Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp63.iad3a.emailsrvr.com ([173.203.187.63]
 helo=smtp101.iad3a.emailsrvr.com)
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c3oU0-0007RP-FU
 for barebox@lists.infradead.org; Mon, 07 Nov 2016 18:17:25 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Mon,  7 Nov 2016 18:16:23 +0000
Message-Id: <20161107181624.4262-4-abbotti@mev.co.uk>
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
Subject: [PATCH 3/4] net: designware: Respect "bus mode" register contents on
 SW reset
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

"bus mode" register contains lots of fields and some of them don't
expect to be written with 0 (zero). So since we're only interested in
resetting MAC (which is done with setting the least significant bit of
this register with "0") I believe it's better to modify only 1 bit of
the register.

[Original U-Boot patch by Alexey Brodkin <abrodkin@synopsys.com>]

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/net/designware.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 85e4c58..6702d4c 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -128,7 +128,7 @@ static int mac_reset(struct eth_device *dev)
 	struct eth_dma_regs *dma_p = priv->dma_regs_p;
 	u64 start;
 
-	writel(DMAMAC_SRST, &dma_p->busmode);
+	writel(readl(&dma_p->busmode) | DMAMAC_SRST, &dma_p->busmode);
 
 	if (priv->interface != PHY_INTERFACE_MODE_RGMII)
 		writel(MII_PORTSELECT, &mac_p->conf);
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

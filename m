Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3k7o-0005Rh-8K
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 09:20:07 +0000
Received: from mail634.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 0AAF11020213
 for <barebox@lists.infradead.org>; Fri,  8 Feb 2013 10:30:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  8 Feb 2013 10:18:48 +0100
Message-Id: <1360315130-23872-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360315130-23872-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130208090739.GP19322@game.jcrosoft.org>
 <1360315130-23872-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/7] macb: reset the IP at init
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |   23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 3026507..d6b60aa 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -374,6 +374,23 @@ static int macb_set_ethaddr(struct eth_device *edev, unsigned char *adr)
 	return 0;
 }
 
+static void macb_reset_hw(struct macb_device *bp)
+{
+	/* Disable RX and TX forcefully */
+	macb_writel(bp, NCR, 0);
+
+	/* Clear the stats registers (XXX: Update stats first?) */
+	macb_writel(bp, NCR, MACB_BIT(CLRSTAT));
+
+	/* Clear all status flags */
+	macb_writel(bp, TSR, -1);
+	macb_writel(bp, RSR, -1);
+
+	/* Disable all interrupts */
+	macb_writel(bp, IDR, -1);
+	macb_readl(bp, ISR);
+}
+
 static int macb_probe(struct device_d *dev)
 {
 	struct eth_device *edev;
@@ -433,6 +450,9 @@ static int macb_probe(struct device_d *dev)
 	}
 
 	clk_enable(pclk);
+
+	macb_reset_hw(macb);
+
 	macb_hz = clk_get_rate(pclk);
 	if (macb_hz < 20000000)
 		ncfgr = MACB_BF(CLK, MACB_CLK_DIV8);
@@ -443,6 +463,9 @@ static int macb_probe(struct device_d *dev)
 	else
 		ncfgr = MACB_BF(CLK, MACB_CLK_DIV64);
 
+
+	ncfgr |= MACB_BIT(PAE);		/* PAuse Enable */
+	ncfgr |= MACB_BIT(DRFCS);	/* Discard Rx FCS */
 	macb_writel(macb, NCFGR, ncfgr);
 
 	macb_init(macb);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

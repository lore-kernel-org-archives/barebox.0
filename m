Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3k7n-0005Rd-Px
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 09:20:05 +0000
Received: from mail634.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A489F10201F0
 for <barebox@lists.infradead.org>; Fri,  8 Feb 2013 10:30:23 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  8 Feb 2013 10:18:44 +0100
Message-Id: <1360315130-23872-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130208090739.GP19322@game.jcrosoft.org>
References: <20130208090739.GP19322@game.jcrosoft.org>
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
Subject: [PATCH 1/7] macb: call macb_init at probe explecitly
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

as eth_device init is planning for remove and we need the init before register
the mdio bus

Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |    8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 2eba2a5..3aec0c4 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -241,9 +241,8 @@ static int macb_open(struct eth_device *edev)
 			       macb->interface);
 }
 
-static int macb_init(struct eth_device *edev)
+static void macb_init(struct macb_device *macb)
 {
-	struct macb_device *macb = edev->priv;
 	unsigned long paddr, val = 0;
 	int i;
 
@@ -284,8 +283,6 @@ static int macb_init(struct eth_device *edev)
 
 	/* Enable TX and RX */
 	macb_writel(macb, NCR, MACB_BIT(TE) | MACB_BIT(RE));
-
-	return 0;
 }
 
 static void macb_halt(struct eth_device *edev)
@@ -423,7 +420,6 @@ static int macb_probe(struct device_d *dev)
 
 	macb->dev = dev;
 
-	edev->init = macb_init;
 	edev->open = macb_open;
 	edev->send = macb_send;
 	edev->recv = macb_recv;
@@ -474,6 +470,8 @@ static int macb_probe(struct device_d *dev)
 
 	macb_writel(macb, NCFGR, ncfgr);
 
+	macb_init(macb);
+
 	mdiobus_register(&macb->miibus);
 	eth_register(edev);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

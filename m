Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3k7o-0005Rg-8J
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 09:20:07 +0000
Received: from mail634.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id E32EE10201A5
 for <barebox@lists.infradead.org>; Fri,  8 Feb 2013 10:30:23 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  8 Feb 2013 10:18:47 +0100
Message-Id: <1360315130-23872-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/7] macb: enable Tramsmit and Receive at open
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 962a889..3026507 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -214,6 +214,9 @@ static int macb_open(struct eth_device *edev)
 
 	dev_dbg(macb->dev, "%s\n", __func__);
 
+	/* Enable TX and RX */
+	macb_writel(macb, NCR, MACB_BIT(TE) | MACB_BIT(RE));
+
 	/* Obtain the PHY's address/id */
 	return phy_device_connect(edev, &macb->miibus, macb->phy_addr,
 			       macb_adjust_link, macb->phy_flags,
@@ -259,8 +262,6 @@ static void macb_init(struct macb_device *macb)
 #endif
 	macb_writel(macb, USRIO, val);
 
-	/* Enable TX and RX */
-	macb_writel(macb, NCR, MACB_BIT(TE) | MACB_BIT(RE));
 }
 
 static void macb_halt(struct eth_device *edev)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

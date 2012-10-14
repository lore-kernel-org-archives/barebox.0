Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVPM-0004qF-UT
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 21:07:37 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 4E7D0FF9592
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 23:14:13 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 23:05:16 +0200
Message-Id: <1350248716-19965-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] designware: set parent for eth_device and miibus
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/designware.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index bf71d15..63b199f 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -419,6 +419,7 @@ static int dwc_ether_probe(struct device_d *dev)
 	miibus = &priv->miibus;
 	edev->priv = priv;
 
+	edev->parent = dev;
 	edev->init = dwc_ether_init;
 	edev->open = dwc_ether_open;
 	edev->send = dwc_ether_send;
@@ -429,6 +430,7 @@ static int dwc_ether_probe(struct device_d *dev)
 
 	priv->phy_addr = pdata->phy_addr;
 	priv->interface = pdata->interface;
+	miibus->parent = dev;
 	miibus->read = dwc_ether_mii_read;
 	miibus->write = dwc_ether_mii_write;
 	miibus->priv = priv;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

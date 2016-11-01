Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c1UtQ-0003Jm-Et
 for barebox@lists.infradead.org; Tue, 01 Nov 2016 08:58:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1c1Ut4-0004bL-7w
 for barebox@lists.infradead.org; Tue, 01 Nov 2016 09:57:42 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  1 Nov 2016 09:57:42 +0100
Message-Id: <20161101085742.20390-1-l.stach@pengutronix.de>
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
Subject: [PATCH] net: e1000: set edev parent pointer
To: barebox@lists.infradead.org

This way the ethernet device will show up at the correct point
in the device hierarchy.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/e1000/main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 77bcd179a824..6f9dddaf232a 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3600,6 +3600,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	e1000_get_ethaddr(edev, edev->ethaddr);
 
 	/* Set up the function pointers and register the device */
+	edev->parent = &pdev->dev;
 	edev->init = e1000_init;
 	edev->recv = e1000_poll;
 	edev->send = e1000_transmit;
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

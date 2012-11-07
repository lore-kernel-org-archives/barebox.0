Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.mars-solutions.de ([213.239.212.107])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TWEbH-0001Uw-4c
 for barebox@lists.infradead.org; Wed, 07 Nov 2012 23:00:03 +0000
From: Andreas Pretzsch <apr@cn-eng.de>
Date: Wed,  7 Nov 2012 23:59:39 +0100
Message-Id: <1352329179-19809-1-git-send-email-apr@cn-eng.de>
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
Subject: [PATCH] mdiobus: unbreak phy_device_connect(): honor masked out PHYs
To: barebox@lists.infradead.org

commit 89dfe2d2af87f1b803f611d986d4ef383b6ad964 "mdiobus: do not scan
the bus at registration time" dropped the check for struct mii_bus
element phy_mask while scanning through all addresses.
Re-add this check.

Signed-off-by: Andreas Pretzsch <apr@cn-eng.de>
---
patch against branch "next" / commit 89dfe2d2af87f1b803f611d986d4ef383b6ad964
Another one to fold into original patch. Sorry for missing it the first round.

 drivers/net/phy/phy.c |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 547e269..d8132b9 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -169,6 +169,10 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 				goto fail;
 		} else {
 			for (i = 0; i < PHY_MAX_ADDR && !edev->phydev; i++) {
+				/* skip masked out PHY addresses */
+				if (bus->phy_mask & (1 << i))
+					continue;
+
 				dev = mdiobus_scan(bus, i);
 				if (!dev || dev->attached_dev)
 					continue;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

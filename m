Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.mars-solutions.de ([213.239.212.107])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVup2-0007fA-P4
 for barebox@lists.infradead.org; Wed, 07 Nov 2012 01:52:54 +0000
From: Andreas Pretzsch <apr@cn-eng.de>
Date: Wed,  7 Nov 2012 02:52:19 +0100
Message-Id: <1352253139-19430-1-git-send-email-apr@cn-eng.de>
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
Subject: [PATCH] mdiobus: unbreak phy_device_connect() "scan all PHY
 addresses" feature
To: barebox@lists.infradead.org

Calling phy_device_connect() with a PHY address of -1 will scan for a PHY
in the address range of 0..PHY_MAX_ADDR and registers the first one found.
This was broken by commit 09254f639c94cc7dc47fff7638dc8c7f88d700b1
"mdiobus: do not scan the bus at registration time", erroneously scanning
for -1 as PHY address.

Signed-off-by: Andreas Pretzsch <apr@cn-eng.de>
---
patch against branch "next" / commit 129300139cbe7265c4b8b4142740c59b5b997e4d

 drivers/net/phy/phy.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 8d36300..547e269 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -169,7 +169,7 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 				goto fail;
 		} else {
 			for (i = 0; i < PHY_MAX_ADDR && !edev->phydev; i++) {
-				dev = mdiobus_scan(bus, addr);
+				dev = mdiobus_scan(bus, i);
 				if (!dev || dev->attached_dev)
 					continue;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TZPc6-0002N1-NF
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 17:22:00 +0000
Received: from mail406.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 30887DC438D
 for <barebox@lists.infradead.org>; Fri, 16 Nov 2012 18:29:33 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 16 Nov 2012 18:19:52 +0100
Message-Id: <1353086393-16213-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1353086393-16213-1-git-send-email-plagnioj@jcrosoft.com>
References: <1353086393-16213-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] phylib: introduction of forced 100Mbps
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/phy/mdio_bus.c |    4 ++++
 include/linux/phy.h        |    3 ++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index b0c6231..0e7ca93 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -171,6 +171,10 @@ static int mdio_bus_probe(struct device_d *_dev)
 			dev->speed = SPEED_10;
 			dev->duplex = DUPLEX_FULL;
 			dev->autoneg = !AUTONEG_ENABLE;
+		} else if (dev->dev_flags & PHYLIB_FORCE_100) {
+			dev->speed = SPEED_100;
+			dev->duplex = DUPLEX_FULL;
+			dev->autoneg = !AUTONEG_ENABLE;
 		}
 	}
 
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 3892bb3..af61fa7 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -60,7 +60,8 @@ typedef enum {
 #define MII_BUS_ID_SIZE	(20 - 3)
 
 #define PHYLIB_FORCE_10		(1 << 0)
-#define PHYLIB_FORCE_LINK	(1 << 1)
+#define PHYLIB_FORCE_100	(1 << 1)
+#define PHYLIB_FORCE_LINK	(1 << 2)
 
 #define PHYLIB_CAPABLE_1000M	(1 << 0)
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

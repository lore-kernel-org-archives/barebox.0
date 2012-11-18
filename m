Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ta4Lj-0001AY-GT
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 12:51:49 +0000
Received: from mail406.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 370F8DC3ADB
 for <barebox@lists.infradead.org>; Sun, 18 Nov 2012 13:59:28 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 18 Nov 2012 13:49:43 +0100
Message-Id: <1353242985-7539-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1353242985-7539-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121118124627.GE8327@game.jcrosoft.org>
 <1353242985-7539-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/7] phylib: introduction of forced 100Mbps
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/phy/mdio_bus.c |    4 ++++
 include/linux/phy.h        |    3 ++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 41c8a96..3e79345 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -175,6 +175,10 @@ static int mdio_bus_probe(struct device_d *_dev)
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
index 4f14dae..791d657 100644
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

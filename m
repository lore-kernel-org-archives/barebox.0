Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U9XzJ-0004ER-8I
 for barebox@lists.infradead.org; Sun, 24 Feb 2013 09:35:18 +0000
Received: from mail416.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id BBDC3DC135E
 for <barebox@lists.infradead.org>; Sun, 24 Feb 2013 10:45:58 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 24 Feb 2013 10:34:12 +0100
Message-Id: <1361698452-3167-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] phy: fix force mode
To: barebox@lists.infradead.org

do not try to read the status in force mode
the link is up

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/phy/mdio_bus.c |    4 ++++
 drivers/net/phy/phy.c      |    4 ++++
 include/linux/phy.h        |    1 +
 3 files changed, 9 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index d1d802b..e1bb7b1 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -167,10 +167,14 @@ static int mdio_bus_probe(struct device_d *_dev)
 			dev->speed = SPEED_10;
 			dev->duplex = DUPLEX_FULL;
 			dev->autoneg = !AUTONEG_ENABLE;
+			dev->force = 1;
+			dev->link = 1;
 		} else if (dev->dev_flags & PHYLIB_FORCE_100) {
 			dev->speed = SPEED_100;
 			dev->duplex = DUPLEX_FULL;
 			dev->autoneg = !AUTONEG_ENABLE;
+			dev->force = 1;
+			dev->link = 1;
 		}
 	}
 
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 1cf2cb9..12739ff 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -549,6 +549,10 @@ int genphy_read_status(struct phy_device *phydev)
 	int lpa;
 	int lpagb = 0;
 
+	/* if force the status and link are set */
+	if (phydev->force)
+		return 0;
+
 	/* Update the link, but return if there
 	 * was an error */
 	err = genphy_update_link(phydev);
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 6c9cac9..99c9639 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -158,6 +158,7 @@ struct phy_device {
 	u32 advertising;
 
 	int autoneg;
+	int force;
 
 
 	/* private data pointer */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

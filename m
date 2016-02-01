Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQ4tT-0007dn-DK
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 03:11:13 +0000
Received: by mail-pf0-x242.google.com with SMTP id 66so6413247pfe.2
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2016 19:10:50 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 31 Jan 2016 19:10:09 -0800
Message-Id: <1454296213-12734-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
References: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 4/8] mdio_bus: Change dev_info to dev_dbg
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Change dev_info to dev_dbg in mdiobus_detect for displaying phy's
registration status as it is in of_mdiobus_register_phy(). While that
information is useful for debugging, user doesn't really need to see
that information every time they call miitool for the first time.
---
 drivers/net/phy/mdio_bus.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 0959c45..54d2f8f 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -43,7 +43,7 @@ int mdiobus_detect(struct device_d *dev)
 		ret = phy_register_device(phydev);
 		if (ret)
 			dev_err(dev, "failed to register phy: %s\n", strerror(-ret));
-		dev_info(dev, "registered phy as /dev/%s\n", phydev->cdev.name);
+		dev_dbg(dev, "registered phy as /dev/%s\n", phydev->cdev.name);
 	}
 
 	return 0;
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

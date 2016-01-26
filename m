Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x241.google.com ([2607:f8b0:400e:c03::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNwcL-0004iI-Qh
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 05:56:43 +0000
Received: by mail-pa0-x241.google.com with SMTP id yy13so7442913pab.1
 for <barebox@lists.infradead.org>; Mon, 25 Jan 2016 21:56:21 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Jan 2016 21:55:55 -0800
Message-Id: <1453787758-12688-4-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1453787758-12688-1-git-send-email-andrew.smirnov@gmail.com>
References: <1453787758-12688-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/7] mdio_bus: Change dev_info to dev_dbg
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

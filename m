Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJuPX-0007jP-AP
 for barebox@lists.infradead.org; Wed, 29 Nov 2017 04:55:55 +0000
Received: by mail-pl0-x241.google.com with SMTP id b12so1394774plm.3
 for <barebox@lists.infradead.org>; Tue, 28 Nov 2017 20:55:30 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 28 Nov 2017 20:55:06 -0800
Message-Id: <20171129045506.17149-5-andrew.smirnov@gmail.com>
In-Reply-To: <20171129045506.17149-1-andrew.smirnov@gmail.com>
References: <20171129045506.17149-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/5] net: mdio-mux: Avoid probing multiplexed busses
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Calling mdiobus_detect() for a bus that serves as a parent for a MDIO
bus multiplexer would result in parent bus being populated with
devices that are present on downstream bus that multiplexer happens to
be "pointing" at that moment. To avoid that introduce 'is_multiplexed'
flag to struct mii_bus and change mdiobus_detect to ignore busses for
which that flag is set.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/phy/mdio-mux.c | 1 +
 drivers/net/phy/mdio_bus.c | 3 +++
 include/linux/phy.h        | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/drivers/net/phy/mdio-mux.c b/drivers/net/phy/mdio-mux.c
index 5c6363d00..96b8720fd 100644
--- a/drivers/net/phy/mdio-mux.c
+++ b/drivers/net/phy/mdio-mux.c
@@ -140,6 +140,7 @@ int mdio_mux_init(struct device_d *dev,
 		}
 	}
 
+	parent_bus->is_multiplexed = true;
 	return 0;
 }
 EXPORT_SYMBOL_GPL(mdio_mux_init);
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 6ae85692d..d209716a1 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -32,6 +32,9 @@ int mdiobus_detect(struct device_d *dev)
 	struct mii_bus *mii = to_mii_bus(dev);
 	int i, ret;
 
+	if (mii->is_multiplexed)
+		return 0;
+
 	for (i = 0; i < PHY_MAX_ADDR; i++) {
 		struct phy_device *phydev;
 
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 809f06fb1..ac750f5c3 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -100,6 +100,8 @@ struct mii_bus {
 	u32 phy_mask;
 
 	struct list_head list;
+
+	bool is_multiplexed;
 };
 #define to_mii_bus(d) container_of(d, struct mii_bus, dev)
 
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

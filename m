Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eLsf5-0001ts-4c
 for barebox@lists.infradead.org; Mon, 04 Dec 2017 15:28:12 +0000
Received: by mail-pg0-x241.google.com with SMTP id g7so8418193pgs.0
 for <barebox@lists.infradead.org>; Mon, 04 Dec 2017 07:27:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  4 Dec 2017 07:27:17 -0800
Message-Id: <20171204152718.10674-6-andrew.smirnov@gmail.com>
In-Reply-To: <20171204152718.10674-1-andrew.smirnov@gmail.com>
References: <20171204152718.10674-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 5/6] net: mdio-mux: Avoid probing multiplexed busses
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
index 4e924e586..1f57d86c6 100644
--- a/drivers/net/phy/mdio-mux.c
+++ b/drivers/net/phy/mdio-mux.c
@@ -137,6 +137,7 @@ int mdio_mux_init(struct device_d *dev,
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eLsez-0001tm-CA
 for barebox@lists.infradead.org; Mon, 04 Dec 2017 15:27:59 +0000
Received: by mail-pf0-x241.google.com with SMTP id e3so8751403pfi.10
 for <barebox@lists.infradead.org>; Mon, 04 Dec 2017 07:27:39 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  4 Dec 2017 07:27:14 -0800
Message-Id: <20171204152718.10674-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 2/6] mdio_bus: Port of_mdio_find_bus() from Linux kernel
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of_mdio_find_bus() from Linux kernel. This function is used in
MDIO multiplexor infrastructure added in following commit.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/phy/mdio_bus.c | 27 +++++++++++++++++++++++++++
 include/linux/phy.h        |  2 ++
 2 files changed, 29 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 012b90e83..6ae85692d 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -206,6 +206,33 @@ struct mii_bus *mdiobus_get_bus(int busnum)
 	return NULL;
 }
 
+/**
+ * of_mdio_find_bus - Given an mii_bus node, find the mii_bus.
+ * @mdio_bus_np: Pointer to the mii_bus.
+ *
+ * Returns a reference to the mii_bus, or NULL if none found.
+ *
+ * Because the association of a device_node and mii_bus is made via
+ * mdiobus_register(), the mii_bus cannot be found before it is
+ * registered with mdiobus_register().
+ *
+ */
+struct mii_bus *of_mdio_find_bus(struct device_node *mdio_bus_np)
+{
+	struct mii_bus *mii;
+
+	if (!mdio_bus_np)
+		return NULL;
+
+	for_each_mii_bus(mii)
+		if (mii->dev.device_node == mdio_bus_np)
+			return mii;
+
+	return NULL;
+}
+EXPORT_SYMBOL(of_mdio_find_bus);
+
+
 /**
  * mdio_bus_match - determine if given PHY driver supports the given PHY device
  * @dev: target PHY device
diff --git a/include/linux/phy.h b/include/linux/phy.h
index d7b10afbc..809f06fb1 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -116,6 +116,8 @@ int mdiobus_detect(struct device_d *dev);
 
 struct mii_bus *mdiobus_get_bus(int busnum);
 
+struct mii_bus *of_mdio_find_bus(struct device_node *mdio_bus_np);
+
 /**
  * mdiobus_read - Convenience function for reading a given MII mgmt register
  * @bus: the mii_bus struct
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

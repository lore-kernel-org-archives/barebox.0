Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBB99-0004zV-9D
 for barebox@lists.infradead.org; Wed, 05 Feb 2014 22:40:44 +0000
Received: by mail-ee0-f45.google.com with SMTP id b15so512118eek.18
 for <barebox@lists.infradead.org>; Wed, 05 Feb 2014 14:40:19 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed,  5 Feb 2014 23:40:05 +0100
Message-Id: <1391640009-3399-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/6] net: phy: add of_phy_device_connect
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

This implements a of_phy_device_connect to allow DT enabled drivers
to connect to a PHY device by using the PHY's DT node only. It
currently assumes that each PHY node is a child of the corresponding
mdio bus.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
I haven't looked closely at the Linux fixed-phy discussion, so the
actual implementation might have to change for PHYs without mdio parent
bus. Anyway, for now it is sufficient to only support mdio bus attached
PHYs.

Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 drivers/net/phy/phy.c | 31 +++++++++++++++++++++++++++++++
 include/linux/phy.h   | 14 ++++++++++++++
 2 files changed, 45 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index faa5c26c227d..879939d4a2f0 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -331,6 +331,37 @@ fail:
 	return ret;
 }
 
+#if defined(CONFIG_OFTREE)
+int of_phy_device_connect(struct eth_device *edev, struct device_node *phy_np,
+			  void (*adjust_link) (struct eth_device *edev),
+			  u32 flags, phy_interface_t interface)
+{
+	struct device_node *bus_np;
+	struct mii_bus *miibus;
+	int phy_addr = -ENODEV;
+
+	if (!phy_np)
+		return -EINVAL;
+
+	of_property_read_u32(phy_np, "reg", &phy_addr);
+
+	bus_np = of_get_parent(phy_np);
+	if (!bus_np)
+		return -ENODEV;
+
+	for_each_mii_bus(miibus) {
+		if (miibus->parent && miibus->parent->device_node == bus_np)
+			return phy_device_connect(edev, miibus, phy_addr,
+					  adjust_link, flags, interface);
+	}
+
+	dev_err(&edev->dev, "unable to mdio bus for phy %s\n",
+		phy_np->full_name);
+
+	return -ENODEV;
+}
+#endif
+
 /* Generic PHY support and helper functions */
 
 /**
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 9994e1107de5..76375f06f41f 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -280,6 +280,20 @@ int phy_device_connect(struct eth_device *dev, struct mii_bus *bus, int addr,
 		       void (*adjust_link) (struct eth_device *edev),
 		       u32 flags, phy_interface_t interface);
 
+#if defined(CONFIG_OFTREE)
+int of_phy_device_connect(struct eth_device *edev, struct device_node *phy_np,
+			  void (*adjust_link) (struct eth_device *edev),
+			  u32 flags, phy_interface_t interface);
+#else
+static inline int of_phy_device_connect(struct eth_device *edev,
+				struct device_node *phy_np,
+				void (*adjust_link) (struct eth_device *edev),
+				u32 flags, phy_interface_t interface)
+{
+	return -ENOSYS;
+}
+#endif
+
 int phy_update_status(struct phy_device *phydev);
 int phy_wait_aneg_done(struct phy_device *phydev);
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

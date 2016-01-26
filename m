Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNwcM-0004iJ-Js
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 05:56:45 +0000
Received: by mail-pf0-x244.google.com with SMTP id e65so7868400pfe.0
 for <barebox@lists.infradead.org>; Mon, 25 Jan 2016 21:56:22 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Jan 2016 21:55:56 -0800
Message-Id: <1453787758-12688-5-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/7] mdio_bus: Add mdiobus_get_bus() function
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add mdiobus_get_bus() -- a function to get a MDIO bus by its number

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/phy/mdio_bus.c | 19 +++++++++++++++++++
 include/linux/phy.h        |  2 ++
 2 files changed, 21 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 54d2f8f..b74b27e 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -187,6 +187,25 @@ struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr)
 }
 EXPORT_SYMBOL(mdiobus_scan);
 
+
+/**
+ *
+ * mdio_get_bus - get a MDIO bus from its busnum
+ *
+ * @param	busnum	the desired bus number
+ *
+ */
+struct mii_bus *mdiobus_get_bus(int busnum)
+{
+	struct mii_bus *mii;
+
+	for_each_mii_bus(mii)
+		if (mii->dev.id == busnum)
+			return mii;
+
+	return NULL;
+}
+
 /**
  * mdio_bus_match - determine if given PHY driver supports the given PHY device
  * @dev: target PHY device
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 58e69da..4e88936 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -114,6 +114,8 @@ int mdiobus_detect(struct device_d *dev);
 #define for_each_mii_bus(mii) \
 	list_for_each_entry(mii, &mii_bus_list, list)
 
+struct mii_bus *mdiobus_get_bus(int busnum);
+
 /**
  * mdiobus_read - Convenience function for reading a given MII mgmt register
  * @bus: the mii_bus struct
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

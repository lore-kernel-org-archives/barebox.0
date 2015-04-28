Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yn3L4-0005jZ-Bj
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 11:06:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Apr 2015 13:05:35 +0200
Message-Id: <1430219137-8294-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1430219137-8294-1-git-send-email-s.hauer@pengutronix.de>
References: <1430219137-8294-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] net: phy: Add missing phy_unregister_device
To: Barebox List <barebox@lists.infradead.org>

The counterpart of phy_register_device is missing. Add it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 11 +++++++++++
 include/linux/phy.h   |  1 +
 2 files changed, 12 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index f3dffca..edf5d03 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -272,6 +272,17 @@ int phy_register_device(struct phy_device *phydev)
 	return ret;
 }
 
+void phy_unregister_device(struct phy_device *phydev)
+{
+	if (!phydev->registered)
+		return;
+
+	phydev->bus->phy_map[phydev->addr] = NULL;
+
+	unregister_device(&phydev->dev);
+	phydev->registered = 0;
+}
+
 static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
 {
 	struct device_d *dev;
diff --git a/include/linux/phy.h b/include/linux/phy.h
index c0fd4ff..9a451a6 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -266,6 +266,7 @@ int phy_init(void);
 int phy_init_hw(struct phy_device *phydev);
 
 int phy_register_device(struct phy_device* dev);
+void phy_unregister_device(struct phy_device *phydev);
 
 /**
  * phy_read - Convenience function for reading a given PHY register
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGtxy-0006VY-Eo
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 15:56:03 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 73D28FFBA4C
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 18:02:01 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Sep 2012 17:53:29 +0200
Message-Id: <1348674809-12391-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1 v2] net/eth: fix link handling
To: barebox@lists.infradead.org

The current code handle just the send where we are supposed to the same on rx
The current code use activate for both open and link up.

Now we handle both seperatly and update the link at first rx or tx not at
open.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/phy/phy.c |   34 ++++++++++++++++-------
 include/linux/phy.h   |    3 +++
 include/net.h         |    4 +++
 net/eth.c             |   72 ++++++++++++++++++++++++++++++++++++-------------
 4 files changed, 85 insertions(+), 28 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index e1a24fa..56cc25b 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -29,6 +29,29 @@
 
 static int genphy_config_init(struct phy_device *phydev);
 
+int phy_update_status(struct phy_device *dev)
+{
+	struct phy_driver *drv = to_phy_driver(dev->dev.driver);
+	struct eth_device *edev = dev->attached_dev;
+	int ret;
+
+	ret = drv->read_status(dev);
+	if (ret)
+		return ret;
+
+	if (dev->link == edev->carrier)
+		return 0;
+
+	dev->adjust_link(edev);
+	edev->carrier = dev->link;
+
+	if (dev->link)
+		printf("%dMbps %s duplex link detected\n", dev->speed,
+			dev->duplex ? "full" : "half");
+
+	return 0;
+}
+
 struct phy_device *phy_device_create(struct mii_bus *bus, int addr, int phy_id)
 {
 	struct phy_device *dev;
@@ -172,16 +195,7 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 
 	drv->config_aneg(dev);
 
-	ret = drv->read_status(dev);
-	if (ret < 0)
-		return ret;
-
-	if (dev->link)
-		printf("%dMbps %s duplex link detected\n", dev->speed,
-			dev->duplex ? "full" : "half");
-
-	if (adjust_link)
-		adjust_link(edev);
+	dev->adjust_link = adjust_link;
 
 	return 0;
 
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 8fe6b86..76f9edb 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -164,6 +164,7 @@ struct phy_device {
 	void *priv;
 
 	struct eth_device *attached_dev;
+	void (*adjust_link)(struct eth_device *dev);
 
 	struct cdev cdev;
 };
@@ -253,6 +254,8 @@ int phy_device_connect(struct eth_device *dev, struct mii_bus *bus, int addr,
 		       void (*adjust_link) (struct eth_device *edev),
 		       u32 flags, phy_interface_t interface);
 
+int phy_update_status(struct phy_device *phydev);
+
 /* Generic PHY support and helper functions */
 int genphy_restart_aneg(struct phy_device *phydev);
 int genphy_config_aneg(struct phy_device *phydev);
diff --git a/include/net.h b/include/net.h
index 39fad12..42bdb74 100644
--- a/include/net.h
+++ b/include/net.h
@@ -32,6 +32,10 @@ struct device_d;
 
 struct eth_device {
 	int active;
+	#define CARRIER_ON	1
+	#define CARRIER_OFF	0
+	#define	CARRIER_UNKNOW	-1
+	int carrier;
 
 	int  (*init) (struct eth_device*);
 
diff --git a/net/eth.c b/net/eth.c
index beedd22..93d35ba 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -28,6 +28,7 @@
 #include <malloc.h>
 
 static struct eth_device *eth_current;
+static uint64_t last_link_check;
 
 static LIST_HEAD(netdev_list);
 
@@ -124,24 +125,61 @@ int eth_complete(struct string_list *sl, char *instr)
 }
 #endif
 
-int eth_send(void *packet, int length)
+static int eth_carrier_check(void)
 {
 	int ret;
 
-	if (!eth_current)
-		return -ENODEV;
+	if (!eth_current->phydev) {
+		eth_current->carrier = CARRIER_ON;
+		return 0;
+	}
 
-	if (!eth_current->active) {
-		ret = eth_current->open(eth_current);
+	if (eth_current->carrier == CARRIER_UNKNOW ||
+	    is_timeout(last_link_check, 10 * SECOND)) {
+		ret = phy_update_status(eth_current->phydev);
 		if (ret)
 			return ret;
-
-		if (eth_current->phydev)
-			eth_current->active = eth_current->phydev->link;
-		else
-			eth_current->active = 1;
+		last_link_check = get_time_ns();
 	}
 
+	if (eth_current->carrier != CARRIER_ON)
+		return -ENETDOWN;
+
+	return 0;
+}
+
+int eth_open(void)
+{
+	int ret;
+
+	if (!eth_current)
+		return -ENODEV;
+
+	if (eth_current->active)
+		return 0;
+
+	ret = eth_current->open(eth_current);
+	if (ret)
+		return ret;
+
+	eth_current->active = 1;
+	eth_current->carrier = CARRIER_UNKNOW;
+
+	return 0;
+}
+
+int eth_send(void *packet, int length)
+{
+	int ret;
+
+	ret = eth_open();
+	if (ret)
+		return ret;
+
+	ret = eth_carrier_check();
+	if (ret)
+		return ret;
+
 	led_trigger_network(LED_TRIGGER_NET_TX);
 
 	return eth_current->send(eth_current, packet, length);
@@ -151,15 +189,13 @@ int eth_rx(void)
 {
 	int ret;
 
-	if (!eth_current)
-		return -ENODEV;
+	ret = eth_open();
+	if (ret)
+		return ret;
 
-	if (!eth_current->active) {
-		ret = eth_current->open(eth_current);
-		if (ret)
-			return ret;
-		eth_current->active = 1;
-	}
+	ret = eth_carrier_check();
+	if (ret)
+		return ret;
 
 	return eth_current->recv(eth_current);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THVLV-0005Dr-9K
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 07:50:50 +0000
Date: Fri, 28 Sep 2012 09:50:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120928075047.GA1322@pengutronix.de>
References: <20120928022821.GF26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120928022821.GF26553@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: issue patch in next net/eth: fix link handling
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 28, 2012 at 04:28:21AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	The patch is next
> 	net/eth: fix link handling
> 
> 	was NEVER send to the ML
> 
> 	IIRC I was the author of the first version and this disapear
> 
> 	Uwe and I just get this discussion on the kernel ML about patch update
> 

I was basically pissed off because I got the strong feeling that I spent
more time reviewing and testing the patch than you initially spent
writing it in the first place. The second version still stored apples
in edev->phydev->link and bananas in edev->carrier, but still did a
edev->carrier = dev->link.

Sorry for not posting it on the ML, doing that now.

Sascha

8<--------------------------------------------------

From 0dc9de2efd7ea6fb613afec822b52b4bfe5a7b2e Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Sep 2012 17:53:29 +0200
Subject: [PATCH] net/eth: fix link handling

Check link status on eth device open time and then periodically
every 5 seconds. Based on work from from Jean-Christophe, but this
version does not duplicate the link status information in two different
variables.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c |   35 ++++++++++++++++-------
 include/linux/phy.h   |    3 ++
 net/eth.c             |   75 +++++++++++++++++++++++++++++++++++++------------
 3 files changed, 85 insertions(+), 28 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index e1a24fa..88c3ff7 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -29,6 +29,30 @@
 
 static int genphy_config_init(struct phy_device *phydev);
 
+int phy_update_status(struct phy_device *dev)
+{
+	struct phy_driver *drv = to_phy_driver(dev->dev.driver);
+	struct eth_device *edev = dev->attached_dev;
+	int ret;
+	int oldspeed = dev->speed, oldduplex = dev->duplex;
+
+	ret = drv->read_status(dev);
+	if (ret)
+		return ret;
+
+	if (dev->speed == oldspeed && dev->duplex == oldduplex)
+		return 0;
+
+	if (dev->adjust_link)
+		dev->adjust_link(edev);
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
@@ -172,16 +196,7 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 
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
diff --git a/net/eth.c b/net/eth.c
index 6cfe4f2..9f52870 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -32,6 +32,7 @@
 #include <malloc.h>
 
 static struct eth_device *eth_current;
+static uint64_t last_link_check;
 
 static LIST_HEAD(netdev_list);
 
@@ -128,24 +129,64 @@ int eth_complete(struct string_list *sl, char *instr)
 }
 #endif
 
-int eth_send(void *packet, int length)
+/*
+ * Check for link if we haven't done so for longer.
+ */
+static int eth_carrier_check(int force)
 {
 	int ret;
 
-	if (!eth_current)
-		return -ENODEV;
+	if (!IS_ENABLED(CONFIG_PHYLIB))
+		return 0;
 
-	if (!eth_current->active) {
-		ret = eth_current->open(eth_current);
+	if (!eth_current->phydev)
+		return 0;
+
+	if (force || is_timeout(last_link_check, 5 * SECOND)) {
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
 
+	return eth_current->phydev->link ? 0 : -ENETDOWN;
+}
+
+/*
+ * Check if we have a current ethernet device and
+ * eventually open it if we have to.
+ */
+static int eth_check_open(void)
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
+
+	return eth_carrier_check(1);
+}
+
+int eth_send(void *packet, int length)
+{
+	int ret;
+
+	ret = eth_check_open();
+	if (ret)
+		return ret;
+
+	ret = eth_carrier_check(0);
+	if (ret)
+		return ret;
+
 	led_trigger_network(LED_TRIGGER_NET_TX);
 
 	return eth_current->send(eth_current, packet, length);
@@ -155,15 +196,13 @@ int eth_rx(void)
 {
 	int ret;
 
-	if (!eth_current)
-		return -ENODEV;
+	ret = eth_check_open();
+	if (ret)
+		return ret;
 
-	if (!eth_current->active) {
-		ret = eth_current->open(eth_current);
-		if (ret)
-			return ret;
-		eth_current->active = 1;
-	}
+	ret = eth_carrier_check(0);
+	if (ret)
+		return ret;
 
 	return eth_current->recv(eth_current);
 }
-- 
1.7.10.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

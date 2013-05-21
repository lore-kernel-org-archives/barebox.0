Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ueh9b-0002QV-Tg
 for barebox@lists.infradead.org; Tue, 21 May 2013 07:38:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 May 2013 09:38:14 +0200
Message-Id: <1369121895-11282-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369121895-11282-1-git-send-email-s.hauer@pengutronix.de>
References: <1369121895-11282-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] net: Add of_register_ethaddr
To: barebox@lists.infradead.org

We already have a possibility to register a MAC address provider
based on a ethernet device id. This adds a similar functionality
for devices probed from devicetree. Code can register itself to
be a MAC address provider for a certain devicetree node.

This helps on i.MX to let the IIM unit provide a MAC address for
the FEC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  5 +++++
 net/eth.c     | 68 ++++++++++++++++++++++++++++++++++++++++++++++++-----------
 2 files changed, 61 insertions(+), 12 deletions(-)

diff --git a/include/net.h b/include/net.h
index bb6b8fa..610a6e6 100644
--- a/include/net.h
+++ b/include/net.h
@@ -76,8 +76,13 @@ int eth_rx(void);			/* Check for received packets	*/
 static inline void eth_register_ethaddr(int ethid, const char *ethaddr)
 {
 }
+static inline void of_eth_register_ethaddr(struct device_node *node,
+		const char *ethaddr)
+{
+}
 #else
 void eth_register_ethaddr(int ethid, const char *ethaddr);
+void of_eth_register_ethaddr(struct device_node *node, const char *ethaddr);
 #endif
 /*
  *	Ethernet header
diff --git a/net/eth.c b/net/eth.c
index 4646dd8..bea7b12 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -36,16 +36,34 @@ struct eth_ethaddr {
 	struct list_head list;
 	u8 ethaddr[6];
 	int ethid;
+	struct device_node *node;
 };
 
 static LIST_HEAD(ethaddr_list);
 
-static int eth_get_registered_ethaddr(int ethid, void *buf)
+static void register_preset_mac_address(struct eth_device *edev, const char *ethaddr)
+{
+	unsigned char ethaddr_str[sizeof("xx:xx:xx:xx:xx:xx")];
+
+	ethaddr_to_string(ethaddr, ethaddr_str);
+
+	if (is_valid_ether_addr(ethaddr)) {
+		dev_info(&edev->dev, "got preset MAC address: %s\n", ethaddr_str);
+		dev_set_param(&edev->dev, "ethaddr", ethaddr_str);
+	}
+}
+
+static int eth_get_registered_ethaddr(struct eth_device *edev, void *buf)
 {
 	struct eth_ethaddr *addr;
+	struct device_node *node = NULL;
+
+	if (edev->parent)
+		node = edev->parent->device_node;
 
 	list_for_each_entry(addr, &ethaddr_list, list) {
-		if (addr->ethid == ethid) {
+		if ((node && node == addr->node) ||
+				addr->ethid == edev->dev.id) {
 			memcpy(buf, addr->ethaddr, 6);
 			return 0;
 		}
@@ -78,6 +96,38 @@ void eth_register_ethaddr(int ethid, const char *ethaddr)
 	list_add_tail(&addr->list, &ethaddr_list);
 }
 
+static struct eth_device *eth_get_by_node(struct device_node *node)
+{
+	struct eth_device *edev;
+
+	list_for_each_entry(edev, &netdev_list, list) {
+		if (!edev->parent)
+			continue;
+		if (!edev->parent->device_node)
+			continue;
+		if (edev->parent->device_node == node)
+			return edev;
+	}
+	return NULL;
+}
+
+void of_eth_register_ethaddr(struct device_node *node, const char *ethaddr)
+{
+	struct eth_ethaddr *addr;
+	struct eth_device *edev;
+
+	edev = eth_get_by_node(node);
+	if (edev) {
+		register_preset_mac_address(edev, ethaddr);
+		return;
+	}
+
+	addr = xzalloc(sizeof(*addr));
+	addr->node = node;
+	memcpy(addr->ethaddr, ethaddr, 6);
+	list_add_tail(&addr->list, &ethaddr_list);
+}
+
 void eth_set_current(struct eth_device *eth)
 {
 	if (eth_current && eth_current->active) {
@@ -225,8 +275,7 @@ static int eth_set_ethaddr(struct device_d *dev, struct param_d *param, const ch
 
 int eth_register(struct eth_device *edev)
 {
-        struct device_d *dev = &edev->dev;
-	unsigned char ethaddr_str[20];
+	struct device_d *dev = &edev->dev;
 	unsigned char ethaddr[6];
 	int ret, found = 0;
 
@@ -254,7 +303,7 @@ int eth_register(struct eth_device *edev)
 
 	list_add_tail(&edev->list, &netdev_list);
 
-	ret = eth_get_registered_ethaddr(dev->id, ethaddr);
+	ret = eth_get_registered_ethaddr(edev, ethaddr);
 	if (!ret)
 		found = 1;
 
@@ -264,13 +313,8 @@ int eth_register(struct eth_device *edev)
 			found = 1;
 	}
 
-	if (found) {
-		ethaddr_to_string(ethaddr, ethaddr_str);
-		if (is_valid_ether_addr(ethaddr)) {
-			dev_info(dev, "got preset MAC address: %s\n", ethaddr_str);
-			dev_set_param(dev, "ethaddr", ethaddr_str);
-		}
-	}
+	if (found)
+		register_preset_mac_address(edev, ethaddr);
 
 	if (!eth_current)
 		eth_current = edev;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

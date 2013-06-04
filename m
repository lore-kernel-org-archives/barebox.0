Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ujly0-0004tr-G4
 for barebox@lists.infradead.org; Tue, 04 Jun 2013 07:47:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  4 Jun 2013 09:47:17 +0200
Message-Id: <1370332037-10575-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: Set mac-address property
To: barebox@lists.infradead.org

Linux normally has no idea how to retrieve MAC Addresses, but instead
expects the MAC address in the devicetree. This patch adds the MAC
address to the devicetree for Linux if we find a valid one in barebox.
This mechanism is limited of course to devices barebox has a driver for
and which are probed themselves from the devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  1 +
 net/eth.c     | 54 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 55 insertions(+)

diff --git a/include/net.h b/include/net.h
index fa3c05a..a4cfec7 100644
--- a/include/net.h
+++ b/include/net.h
@@ -52,6 +52,7 @@ struct eth_device {
 
 	struct device_d dev;
 	struct device_d *parent;
+	char *nodepath;
 
 	struct list_head list;
 
diff --git a/net/eth.c b/net/eth.c
index bea7b12..7240b4d 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -273,6 +273,52 @@ static int eth_set_ethaddr(struct device_d *dev, struct param_d *param, const ch
 	return 0;
 }
 
+#ifdef CONFIG_OFDEVICE
+static int eth_of_fixup(struct device_node *root)
+{
+	struct eth_device *edev;
+	struct device_node *node;
+	int ret;
+
+	/*
+	 * Add the mac-address property for each network device we
+	 * find a nodepath for and which has a valid mac address.
+	 */
+	list_for_each_entry(edev, &netdev_list, list) {
+		if (!edev->nodepath) {
+			dev_dbg(&edev->dev, "%s: no node to fixup\n", __func__);
+			continue;
+		}
+
+		if (!is_valid_ether_addr(edev->ethaddr)) {
+			dev_dbg(&edev->dev, "%s: no valid mac address, cannot fixup\n",
+					__func__);
+			continue;
+		}
+
+		node = of_find_node_by_path(root, edev->nodepath);
+		if (!node) {
+			dev_dbg(&edev->dev, "%s: fixup node %s not found\n",
+					__func__, edev->nodepath);
+			continue;
+		}
+
+		ret = of_set_property(node, "mac-address", edev->ethaddr, 6, 1);
+		if (ret)
+			pr_err("Setting mac-address property of %s failed with: %s\n",
+					node->full_name, strerror(-ret));
+	}
+
+	return 0;
+}
+
+static int eth_register_of_fixup(void)
+{
+	return of_register_fixup(eth_of_fixup);
+}
+late_initcall(eth_register_of_fixup);
+#endif
+
 int eth_register(struct eth_device *edev)
 {
 	struct device_d *dev = &edev->dev;
@@ -316,6 +362,10 @@ int eth_register(struct eth_device *edev)
 	if (found)
 		register_preset_mac_address(edev, ethaddr);
 
+	if (IS_ENABLED(CONFIG_OFDEVICE) && edev->parent &&
+			edev->parent->device_node)
+		edev->nodepath = xstrdup(edev->parent->device_node->full_name);
+
 	if (!eth_current)
 		eth_current = edev;
 
@@ -328,6 +378,10 @@ void eth_unregister(struct eth_device *edev)
 		eth_current = NULL;
 
 	dev_remove_parameters(&edev->dev);
+
+	if (IS_ENABLED(CONFIG_OFDEVICE) && edev->nodepath)
+		free(edev->nodepath);
+
 	unregister_device(&edev->dev);
 	list_del(&edev->list);
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

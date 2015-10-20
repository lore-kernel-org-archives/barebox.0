Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zog6V-0001WJ-O1
 for barebox@lists.infradead.org; Tue, 20 Oct 2015 23:14:04 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 20 Oct 2015 23:13:19 +0000
Message-ID: <1445382804.13196.104.camel@rtred1test09.kymetacorp.com>
Content-Language: en-US
Content-ID: <BC16CB4B947775499CCE8ABC58EC3E49@kymetacorp.com>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] net: eth: Fixup OF tree with registered MAC addresses too
To: barebox <barebox@lists.infradead.org>

The eth code registers an OF tree fixup that looks for any nodes in
the Linux oftree that match eth devices loaded in barebox and sets the
mac-address property in those nodes.  The purpose is to pass MAC
addresses to the Linux kernel for drivers that expect the MAC address
to be in the device tree.

If barebox does not have a driver for the network device, either
because it has been disabled or because one does not exist, then the
OF tree will not be fixed up to include a MAC address.

The eth code also has a list of MAC addresses which board code has
registered, usually done when it reads the address from an EEPROM or
on-chip memory.  If an eth device is created later in the boot, it
will look here for an address.

The registered MAC address list is not used for the OF tree fix up,
and this patch changes that.  This way barebox can place a MAC address
in the device-tree without needing a driver for the network device.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 net/eth.c | 65
+++++++++++++++++++++++++++++++++++++++++++--------------------
 1 file changed, 45 insertions(+), 20 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index b22e556..46cf429 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -289,12 +289,54 @@ static int eth_param_set_ethaddr(struct param_d
*param, void *priv)
 }
 
 #ifdef CONFIG_OFTREE
-static int eth_of_fixup(struct device_node *root, void *unused)
+static void eth_of_fixup_node(struct device_node *root,
+			      const char *node_path, int ethid,
+			      const u8 ethaddr[6])
 {
-	struct eth_device *edev;
 	struct device_node *node;
 	int ret;
 
+	if (node_path) {
+		node = of_find_node_by_path_from(root, node_path);
+	} else {
+		char eth[12];
+		sprintf(eth, "ethernet%d", ethid);
+		node = of_find_node_by_alias(root, eth);
+	}
+
+	if (!node) {
+		pr_debug("%s: no node to fixup\n", __func__);
+		return;
+	}
+
+	ret = of_set_property(node, "mac-address", ethaddr, 6, 1);
+	if (ret)
+		pr_err("Setting mac-address property of %s failed with: %s\n",
+		       node->full_name, strerror(-ret));
+}
+
+static int eth_of_fixup(struct device_node *root, void *unused)
+{
+	struct eth_device *edev;
+	struct eth_ethaddr *addr;
+
+	/*
+	 * Add the mac-address property for each ethaddr and then each network
+	 * device we find a node path for and which has a valid mac address.
+	 * This will find both network devices barebox was told about as well
as
+	 * addresses registered by boards but for which no network device was
+	 * ever loaded.
+	 */
+	list_for_each_entry(addr, &ethaddr_list, list) {
+		if (!is_valid_ether_addr(addr->ethaddr)) {
+			debug("%s: no valid mac address, cannot fixup\n",
+				__func__);
+			continue;
+		}
+
+		eth_of_fixup_node(root, addr->node ? addr->node->full_name : NULL,
addr->ethid, addr->ethaddr);
+	}
+
 	/*
 	 * Add the mac-address property for each network device we
 	 * find a nodepath for and which has a valid mac address.
@@ -306,24 +348,7 @@ static int eth_of_fixup(struct device_node *root,
void *unused)
 				__func__);
 			continue;
 		}
-
-		if (edev->nodepath) {
-			node = of_find_node_by_path_from(root, edev->nodepath);
-		} else {
-			char eth[12];
-			sprintf(eth, "ethernet%d", edev->dev.id);
-			node = of_find_node_by_alias(root, eth);
-		}
-
-		if (!node) {
-			dev_dbg(&edev->dev, "%s: no node to fixup\n", __func__);
-			continue;
-		}
-
-		ret = of_set_property(node, "mac-address", edev->ethaddr, 6, 1);
-		if (ret)
-			pr_err("Setting mac-address property of %s failed with: %s\n",
-					node->full_name, strerror(-ret));
+		eth_of_fixup_node(root, edev->nodepath, edev->dev.id, edev->ethaddr);
 	}
 
 	return 0;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

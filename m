Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fWOxI-0001zs-Fl
 for barebox@lists.infradead.org; Fri, 22 Jun 2018 16:30:45 +0000
Received: by mail-wr0-x244.google.com with SMTP id b8-v6so1847925wro.6
 for <barebox@lists.infradead.org>; Fri, 22 Jun 2018 09:30:25 -0700 (PDT)
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Date: Fri, 22 Jun 2018 19:30:12 +0300
Message-Id: <20180622163012.1590-1-nikita.yoush@cogentembedded.com>
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
Subject: [PATCH] net: avoid assigning ethaddr to wrong devices
To: Sascha Hauer <sha@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Nikita Yushchenko <nikita.yoush@cogentembedded.com>, Chris Healy <cphealy@gmail.com>

It can happen that device tree contains ethernetN alias pointing to
valid device, but that device is not supported by [running instance of]
barebox. Then ethN remains unassigned, and can be later captured by
dynamically registered device such as usbnet.

For such "stranger" device, ethaddr preconfigured for ethN should not be
assigned. Also, ethaddr of such device should not be written to
ethernetN node of device tree passed to kernel being booted.

Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
---
 net/eth.c | 42 ++++++++++++++++++++++++++++++++++++++----
 1 file changed, 38 insertions(+), 4 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index 5d45a0461..4ec0d3a30 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -60,6 +60,38 @@ int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr)
 	return 0;
 }
 
+#ifdef CONFIG_OFTREE
+static bool eth_is_stranger(struct eth_device *edev)
+{
+	/*
+	 * It is possible that device tree has ethernetN alias pointing to
+	 * a node representing device, but that device is not supported by
+	 * [this instance of] barebox, thus ethN remains unassigned. Then
+	 * dynamic device such as usbnet can be registered and become ethN.
+	 *
+	 * For such "stranger" device, preset ethaddr for ethN should not
+	 * be applied. Also ethaddr of such device should not be written
+	 * to ethernetN node of device tree passed to booted kernel
+	 */
+	char eth[12];
+	struct device_node *alias_node;
+
+	sprintf(eth, "ethernet%d", edev->dev.id);
+	alias_node = of_find_node_by_alias(of_get_root_node(), eth);
+
+	if (alias_node) {
+		/* alias exists, any other device with that id is "stranger" */
+		return !(edev->parent &&
+			 edev->parent->device_node == alias_node);
+	} else {
+		/* alias does not exist, thus not "stranger" */
+		return false;
+	}
+}
+#else
+#define eth_is_stranger(edev) (0)
+#endif
+
 static void register_preset_mac_address(struct eth_device *edev, const char *ethaddr)
 {
 	unsigned char ethaddr_str[sizeof("xx:xx:xx:xx:xx:xx")];
@@ -81,7 +113,7 @@ static int eth_get_registered_ethaddr(struct eth_device *edev, void *buf)
 
 	list_for_each_entry(addr, &ethaddr_list, list) {
 		if ((node && node == addr->node) ||
-				addr->ethid == edev->dev.id) {
+		    (addr->ethid == edev->dev.id && !eth_is_stranger(edev))) {
 			memcpy(buf, addr->ethaddr, 6);
 			return 0;
 		}
@@ -286,7 +318,7 @@ static void eth_of_fixup_node(struct device_node *root,
 			      const char *node_path, int ethid,
 			      const u8 ethaddr[6])
 {
-	struct device_node *node;
+	struct device_node *node = NULL;
 	int ret;
 
 	if (!is_valid_ether_addr(ethaddr)) {
@@ -297,7 +329,7 @@ static void eth_of_fixup_node(struct device_node *root,
 
 	if (node_path) {
 		node = of_find_node_by_path_from(root, node_path);
-	} else {
+	} else if (ethid >= 0) {
 		char eth[12];
 		sprintf(eth, "ethernet%d", ethid);
 		node = of_find_node_by_alias(root, eth);
@@ -331,7 +363,9 @@ static int eth_of_fixup(struct device_node *root, void *unused)
 				  addr->ethid, addr->ethaddr);
 
 	for_each_netdev(edev)
-		eth_of_fixup_node(root, edev->nodepath, edev->dev.id, edev->ethaddr);
+		eth_of_fixup_node(root, edev->nodepath,
+				  eth_is_stranger(edev) ? -1 : edev->dev.id,
+				  edev->ethaddr);
 
 	return 0;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

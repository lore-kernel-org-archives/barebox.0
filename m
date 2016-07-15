Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNxTP-0005DN-3x
 for barebox@lists.infradead.org; Fri, 15 Jul 2016 07:23:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Jul 2016 09:23:07 +0200
Message-Id: <1468567389-28169-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1468567389-28169-1-git-send-email-s.hauer@pengutronix.de>
References: <1468567389-28169-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] net: introduce for_each_netdev iterator
To: Barebox List <barebox@lists.infradead.org>

for_each_netdev is nicer to read. Also export the list of network
devices since it will be used by code outside of net/eth.c in later
patches.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  4 ++++
 net/eth.c     | 14 +++++++-------
 2 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/include/net.h b/include/net.h
index 13e335a..81118d2 100644
--- a/include/net.h
+++ b/include/net.h
@@ -466,4 +466,8 @@ void led_trigger_network(enum led_trigger trigger);
 int ifup(const char *name, unsigned flags);
 int ifup_all(unsigned flags);
 
+extern struct list_head netdev_list;
+
+#define for_each_netdev(netdev) list_for_each_entry(netdev, &netdev_list, list)
+
 #endif /* __NET_H__ */
diff --git a/net/eth.c b/net/eth.c
index 6bec154..499f4b0 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -31,7 +31,7 @@
 static struct eth_device *eth_current;
 static uint64_t last_link_check;
 
-static LIST_HEAD(netdev_list);
+LIST_HEAD(netdev_list);
 
 struct eth_ethaddr {
 	struct list_head list;
@@ -104,7 +104,7 @@ void eth_register_ethaddr(int ethid, const char *ethaddr)
 
 	eth_drop_ethaddr(ethid);
 
-	list_for_each_entry(edev, &netdev_list, list) {
+	for_each_netdev(edev) {
 		if (edev->dev.id == ethid) {
 			register_preset_mac_address(edev, ethaddr);
 			return;
@@ -121,7 +121,7 @@ static struct eth_device *eth_get_by_node(struct device_node *node)
 {
 	struct eth_device *edev;
 
-	list_for_each_entry(edev, &netdev_list, list) {
+	for_each_netdev(edev) {
 		if (!edev->parent)
 			continue;
 		if (!edev->parent->device_node)
@@ -163,7 +163,7 @@ struct eth_device *eth_get_byname(const char *ethname)
 {
 	struct eth_device *edev;
 
-	list_for_each_entry(edev, &netdev_list, list) {
+	for_each_netdev(edev) {
 		if (!strcmp(ethname, dev_name(&edev->dev)))
 			return edev;
 	}
@@ -179,7 +179,7 @@ int eth_complete(struct string_list *sl, char *instr)
 
 	len = strlen(instr);
 
-	list_for_each_entry(edev, &netdev_list, list) {
+	for_each_netdev(edev) {
 		devname = dev_name(&edev->dev);
 		if (strncmp(instr, devname, len))
 			continue;
@@ -273,7 +273,7 @@ int eth_rx(void)
 {
 	struct eth_device *edev;
 
-	list_for_each_entry(edev, &netdev_list, list) {
+	for_each_netdev(edev) {
 		if (edev->active)
 			__eth_rx(edev);
 	}
@@ -337,7 +337,7 @@ static int eth_of_fixup(struct device_node *root, void *unused)
 		eth_of_fixup_node(root, addr->node ? addr->node->full_name : NULL,
 				  addr->ethid, addr->ethaddr);
 
-	list_for_each_entry(edev, &netdev_list, list)
+	for_each_netdev(edev)
 		eth_of_fixup_node(root, edev->nodepath, edev->dev.id, edev->ethaddr);
 
 	return 0;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

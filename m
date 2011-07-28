Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmNTj-0000qN-EP
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 10:06:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 12:05:58 +0200
Message-Id: <1311847560-22946-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311847560-22946-1-git-send-email-s.hauer@pengutronix.de>
References: <1311847560-22946-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] net: Add a possibility for boards to give network devices
	a MAC address
To: barebox@lists.infradead.org

MAC addresses are sometimes stored at unusual places. This
patch makes it possible to give a MAC address to a ethernet
device id. This is independent of the device actually being
present.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |    6 +++++
 net/eth.c     |   59 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 64 insertions(+), 1 deletions(-)

diff --git a/include/net.h b/include/net.h
index 31bf6a2..7fee6fe 100644
--- a/include/net.h
+++ b/include/net.h
@@ -57,6 +57,12 @@ int eth_send(void *packet, int length);	   /* Send a packet		*/
 int eth_rx(void);			/* Check for received packets	*/
 void eth_halt(void);			/* stop SCC			*/
 
+/* associate a MAC address to a ethernet device. Should be called by
+ * board code for boards which store their MAC address at some unusual
+ * place.
+ */
+void eth_register_ethaddr(int ethid, const char *ethaddr);
+
 /*
  *	Ethernet header
  */
diff --git a/net/eth.c b/net/eth.c
index c5b346c..2a801f5 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -34,6 +34,52 @@ static struct eth_device *eth_current;
 
 static LIST_HEAD(netdev_list);
 
+struct eth_ethaddr {
+	struct list_head list;
+	u8 ethaddr[6];
+	int ethid;
+};
+
+static LIST_HEAD(ethaddr_list);
+
+static int eth_get_registered_ethaddr(int ethid, void *buf)
+{
+	struct eth_ethaddr *addr;
+
+	list_for_each_entry(addr, &ethaddr_list, list) {
+		if (addr->ethid == ethid) {
+			memcpy(buf, addr->ethaddr, 6);
+			return 0;
+		}
+	}
+	return -EINVAL;
+}
+
+static void eth_drop_ethaddr(int ethid)
+{
+	struct eth_ethaddr *addr, *tmp;
+
+	list_for_each_entry_safe(addr, tmp, &ethaddr_list, list) {
+		if (addr->ethid == ethid) {
+			list_del(&addr->list);
+			free(addr);
+			return;
+		}
+	}
+}
+
+void eth_register_ethaddr(int ethid, const char *ethaddr)
+{
+	struct eth_ethaddr *addr;
+
+	eth_drop_ethaddr(ethid);
+
+	addr = xzalloc(sizeof(*addr));
+	addr->ethid = ethid;
+	memcpy(addr->ethaddr, ethaddr, 6);
+	list_add_tail(&addr->list, &ethaddr_list);
+}
+
 void eth_set_current(struct eth_device *eth)
 {
 	if (eth_current && eth_current->active) {
@@ -144,6 +190,7 @@ int eth_register(struct eth_device *edev)
         struct device_d *dev = &edev->dev;
 	unsigned char ethaddr_str[20];
 	unsigned char ethaddr[6];
+	int ret, found = 0;
 
 	if (!edev->get_ethaddr) {
 		dev_err(dev, "no get_mac_address found for current eth device\n");
@@ -165,7 +212,17 @@ int eth_register(struct eth_device *edev)
 
 	list_add_tail(&edev->list, &netdev_list);
 
-	if (edev->get_ethaddr(edev, ethaddr) == 0) {
+	ret = eth_get_registered_ethaddr(dev->id, ethaddr);
+	if (!ret)
+		found = 1;
+
+	if (!found) {
+		ret = edev->get_ethaddr(edev, ethaddr);
+		if (!ret)
+			found = 1;
+	}
+
+	if (found) {
 		ethaddr_to_string(ethaddr, ethaddr_str);
 		if (is_valid_ether_addr(ethaddr)) {
 			dev_info(dev, "got MAC address from EEPROM: %s\n", ethaddr_str);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

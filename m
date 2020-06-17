Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTAR-0000am-44
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 08:11:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Jun 2020 10:11:11 +0200
Message-Id: <20200617081126.5683-5-s.hauer@pengutronix.de>
In-Reply-To: <20200617081126.5683-1-s.hauer@pengutronix.de>
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/19] net: Add a slice to struct eth_device
To: Barebox List <barebox@lists.infradead.org>
Cc: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Add ethernet code safe for being called from a poller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  8 ++++++
 net/eth.c     | 75 ++++++++++++++++++++++++++++++++++++++++++++++++---
 2 files changed, 80 insertions(+), 3 deletions(-)

diff --git a/include/net.h b/include/net.h
index 54db8a179a..8d2b4923de 100644
--- a/include/net.h
+++ b/include/net.h
@@ -19,6 +19,7 @@
 #include <stdlib.h>
 #include <clock.h>
 #include <led.h>
+#include <slice.h>
 #include <xfuncs.h>
 #include <linux/phy.h>
 #include <linux/string.h>	/* memcpy */
@@ -63,6 +64,8 @@ struct eth_device {
 	char *bootarg;
 	char *linuxdevname;
 
+	struct slice slice;
+
 	bool ifup;
 #define ETH_MODE_DHCP 0
 #define ETH_MODE_STATIC 1
@@ -72,6 +75,11 @@ struct eth_device {
 
 #define dev_to_edev(d) container_of(d, struct eth_device, dev)
 
+static inline struct slice *eth_device_slice(struct eth_device *edev)
+{
+	return &edev->slice;
+}
+
 static inline const char *eth_name(struct eth_device *edev)
 {
 	return edev->devname;
diff --git a/net/eth.c b/net/eth.c
index e3d0d06efe..a51e3421a7 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -22,6 +22,7 @@
 #include <init.h>
 #include <dhcp.h>
 #include <net.h>
+#include <dma.h>
 #include <of.h>
 #include <linux/phy.h>
 #include <errno.h>
@@ -208,10 +209,61 @@ static int eth_carrier_check(struct eth_device *edev, int force)
 	return edev->phydev->link ? 0 : -ENETDOWN;
 }
 
+struct eth_q {
+	struct eth_device *edev;
+	int length;
+	struct list_head list;
+	void *data;
+};
+
+static int eth_queue(struct list_head *list, struct eth_device *edev,
+		     void *packet, int length)
+{
+	struct eth_q *q;
+
+	q = xzalloc(sizeof(*q));
+	if (!q)
+		return -ENOMEM;
+
+	q->data = dma_alloc(length);
+	if (!q->data) {
+		free(q);
+		return -ENOMEM;
+	}
+
+	q->length = length;
+	q->edev = edev;
+
+	memcpy(q->data, packet, length);
+	list_add_tail(&q->list, list);
+
+	return 0;
+}
+
+static LIST_HEAD(eth_send_list);
+
+static void eth_send_queue(void)
+{
+	struct eth_q *q, *tmp;
+
+	list_for_each_entry_safe(q, tmp, &eth_send_list, list) {
+		if (slice_acquired(eth_device_slice(q->edev)))
+			continue;
+
+		eth_send(q->edev, q->data, q->length);
+		list_del(&q->list);
+		free(q->data);
+		free(q);
+	}
+}
+
 int eth_send(struct eth_device *edev, void *packet, int length)
 {
 	int ret;
 
+	if (slice_acquired(eth_device_slice(edev)))
+		return eth_queue(&eth_send_list, edev, packet, length);
+
 	if (!edev->active)
 		return -ENETDOWN;
 
@@ -219,20 +271,32 @@ int eth_send(struct eth_device *edev, void *packet, int length)
 	if (ret)
 		return ret;
 
+	slice_acquire(eth_device_slice(edev));
+
 	led_trigger_network(LED_TRIGGER_NET_TX);
 
-	return edev->send(edev, packet, length);
+	ret = edev->send(edev, packet, length);
+
+	slice_release(eth_device_slice(edev));
+
+	return ret;
 }
 
 static int __eth_rx(struct eth_device *edev)
 {
 	int ret;
 
+	slice_acquire(eth_device_slice(edev));
+
 	ret = eth_carrier_check(edev, 0);
 	if (ret)
-		return ret;
+		goto out;
 
-	return edev->recv(edev);
+	ret = edev->recv(edev);
+out:
+	slice_release(eth_device_slice(edev));
+
+	return ret;
 }
 
 int eth_rx(void)
@@ -244,6 +308,8 @@ int eth_rx(void)
 			__eth_rx(edev);
 	}
 
+	eth_send_queue();
+
 	return 0;
 }
 
@@ -353,6 +419,8 @@ int eth_register(struct eth_device *edev)
 	if (ret)
 		return ret;
 
+	slice_init(&edev->slice, dev_name(dev));
+
 	edev->devname = xstrdup(dev_name(&edev->dev));
 
 	dev_add_param_ip(dev, "ipaddr", NULL, NULL, &edev->ipaddr, edev);
@@ -431,6 +499,7 @@ void eth_unregister(struct eth_device *edev)
 	free(edev->devname);
 
 	unregister_device(&edev->dev);
+	slice_exit(&edev->slice);
 	list_del(&edev->list);
 }
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

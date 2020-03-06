Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAIjh-0001S6-NO
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 19:34:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Mar 2020 20:34:00 +0100
Message-Id: <20200306193406.20531-3-s.hauer@pengutronix.de>
In-Reply-To: <20200306193406.20531-1-s.hauer@pengutronix.de>
References: <20200306193406.20531-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] net: Add a slice to struct eth_device
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Add ethernet code safe for being called from a poller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  8 ++++++++
 net/eth.c     | 26 ++++++++++++++++++++------
 2 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/include/net.h b/include/net.h
index 6912a557b5..d7a1f4aaea 100644
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
index 53d24baa16..6d36d05a6f 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -235,32 +235,44 @@ int eth_send(struct eth_device *edev, void *packet, int length)
 {
 	int ret;
 
+	slice_acquire(eth_device_slice(edev));
+
 	ret = eth_check_open(edev);
 	if (ret)
-		return ret;
+		goto out;
 
 	ret = eth_carrier_check(edev, 0);
 	if (ret)
-		return ret;
+		goto out;
 
 	led_trigger_network(LED_TRIGGER_NET_TX);
 
-	return edev->send(edev, packet, length);
+	ret = edev->send(edev, packet, length);
+out:
+	slice_release(eth_device_slice(edev));
+
+	return ret;
 }
 
 static int __eth_rx(struct eth_device *edev)
 {
 	int ret;
 
+	slice_acquire(eth_device_slice(edev));
+
 	ret = eth_check_open(edev);
 	if (ret)
-		return ret;
+		goto out;
 
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
@@ -377,6 +389,8 @@ int eth_register(struct eth_device *edev)
 		edev->dev.id = DEVICE_ID_DYNAMIC;
 	}
 
+	slice_init(&edev->slice, dev);
+
 	ret = register_device(&edev->dev);
 	if (ret)
 		return ret;
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

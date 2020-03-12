Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJKo-0005To-To
 for barebox@lists.infradead.org; Thu, 12 Mar 2020 08:36:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Mar 2020 09:35:40 +0100
Message-Id: <20200312083555.10793-5-s.hauer@pengutronix.de>
In-Reply-To: <20200312083555.10793-1-s.hauer@pengutronix.de>
References: <20200312083555.10793-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/19] net: Open ethernet devices explicitly
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Open ethernet devices explicitly rather than implicitly when sending
packets. This allows us to not only enable, but in the next step to
also disable ethernet devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  3 ++-
 net/dhcp.c    |  4 ++++
 net/eth.c     | 55 ++++++++++++++++++++++++++-------------------------
 net/ifup.c    |  4 ++++
 4 files changed, 38 insertions(+), 28 deletions(-)

diff --git a/include/net.h b/include/net.h
index 6912a557b5..509d1b38a1 100644
--- a/include/net.h
+++ b/include/net.h
@@ -80,7 +80,8 @@ static inline const char *eth_name(struct eth_device *edev)
 int eth_register(struct eth_device* dev);    /* Register network device		*/
 void eth_unregister(struct eth_device* dev); /* Unregister network device	*/
 int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr);
-
+int eth_open(struct eth_device *edev);
+void eth_close(struct eth_device *edev);
 int eth_send(struct eth_device *edev, void *packet, int length);	   /* Send a packet		*/
 int eth_rx(void);			/* Check for received packets	*/
 
diff --git a/net/dhcp.c b/net/dhcp.c
index 670a6a6422..a27fa89996 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -609,6 +609,10 @@ int dhcp(struct eth_device *edev, const struct dhcp_req_param *param)
 	struct dhcp_result *res;
 	int ret;
 
+	ret = eth_open(edev);
+	if (ret)
+		return ret;
+
 	ret = dhcp_request(edev, param, &res);
 	if (ret)
 		return ret;
diff --git a/net/eth.c b/net/eth.c
index 53d24baa16..4a8a7a8876 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -211,33 +211,12 @@ static int eth_carrier_check(struct eth_device *edev, int force)
 	return edev->phydev->link ? 0 : -ENETDOWN;
 }
 
-/*
- * Check if we have a current ethernet device and
- * eventually open it if we have to.
- */
-static int eth_check_open(struct eth_device *edev)
-{
-	int ret;
-
-	if (edev->active)
-		return 0;
-
-	ret = edev->open(edev);
-	if (ret)
-		return ret;
-
-	edev->active = 1;
-
-	return eth_carrier_check(edev, 1);
-}
-
 int eth_send(struct eth_device *edev, void *packet, int length)
 {
 	int ret;
 
-	ret = eth_check_open(edev);
-	if (ret)
-		return ret;
+	if (!edev->active)
+		return -ENETDOWN;
 
 	ret = eth_carrier_check(edev, 0);
 	if (ret)
@@ -252,10 +231,6 @@ static int __eth_rx(struct eth_device *edev)
 {
 	int ret;
 
-	ret = eth_check_open(edev);
-	if (ret)
-		return ret;
-
 	ret = eth_carrier_check(edev, 0);
 	if (ret)
 		return ret;
@@ -422,6 +397,32 @@ int eth_register(struct eth_device *edev)
 	return 0;
 }
 
+int eth_open(struct eth_device *edev)
+{
+	int ret;
+
+	if (edev->active)
+		return 0;
+
+	ret = edev->open(edev);
+	if (!ret)
+		edev->active = 1;
+
+	eth_carrier_check(edev, 1);
+
+	return ret;
+}
+
+void eth_close(struct eth_device *edev)
+{
+	if (!edev->active)
+		return;
+
+	edev->halt(edev);
+
+	edev->active = 0;
+}
+
 void eth_unregister(struct eth_device *edev)
 {
 	if (edev->active)
diff --git a/net/ifup.c b/net/ifup.c
index d550f82530..e5e8ef2346 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -214,6 +214,10 @@ int ifup_edev(struct eth_device *edev, unsigned flags)
 	if (ret)
 		return ret;
 
+	ret = eth_open(edev);
+	if (ret)
+		return ret;
+
 	if (edev->global_mode == ETH_MODE_DHCP) {
 		if (IS_ENABLED(CONFIG_NET_DHCP)) {
 			ret = dhcp(edev, NULL);
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

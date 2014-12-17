Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y1FLD-0006Cr-Ec
 for barebox@lists.infradead.org; Wed, 17 Dec 2014 14:12:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Dec 2014 15:12:10 +0100
Message-Id: <1418825531-29433-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418825531-29433-1-git-send-email-s.hauer@pengutronix.de>
References: <1418825531-29433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] netconsole: activate in set_active callback
To: barebox@lists.infradead.org

Activate the netconsole in the set_active callback. Add proper
checks there for port and ip address, print an error when the network
hasn't been configured and finally print when the netconsole has
been enabled successfully. This makes using of the netconsole easier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/netconsole.c | 55 ++++++++++++++++++++++++++++++++++---------------------
 1 file changed, 34 insertions(+), 21 deletions(-)

diff --git a/net/netconsole.c b/net/netconsole.c
index c817107..99b9984 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -52,24 +52,6 @@ static void nc_handler(void *ctx, char *pkt, unsigned len)
 	kfifo_put(priv->fifo, packet, net_eth_to_udplen(pkt));
 }
 
-static int nc_init(void)
-{
-	struct nc_priv *priv = g_priv;
-
-	if (priv->con)
-		net_unregister(priv->con);
-
-	priv->con = net_udp_new(priv->ip, priv->port, nc_handler, NULL);
-	if (IS_ERR(priv->con)) {
-		int ret = PTR_ERR(priv->con);
-		priv->con = NULL;
-		return ret;
-	}
-
-	net_udp_bind(priv->con, priv->port);
-	return 0;
-}
-
 static int nc_getc(struct console_device *cdev)
 {
 	struct nc_priv *priv = container_of(cdev,
@@ -123,9 +105,39 @@ static void nc_putc(struct console_device *cdev, char c)
 	priv->busy = 0;
 }
 
-static int nc_port_set(struct param_d *p, void *_priv)
+static int nc_set_active(struct console_device *cdev, unsigned flags)
 {
-	nc_init();
+	struct nc_priv *priv = container_of(cdev,
+					struct nc_priv, cdev);
+
+	if (priv->con) {
+		net_unregister(priv->con);
+		priv->con = NULL;
+	}
+
+	if (!flags)
+		return 0;
+
+	if (!priv->port) {
+		pr_err("port not set\n");
+		return -EINVAL;
+	}
+
+	if (!priv->ip) {
+		pr_err("ip not set\n");
+		return -EINVAL;
+	}
+
+	priv->con = net_udp_new(priv->ip, priv->port, nc_handler, NULL);
+	if (IS_ERR(priv->con)) {
+		int ret = PTR_ERR(priv->con);
+		priv->con = NULL;
+		return ret;
+	}
+
+	net_udp_bind(priv->con, priv->port);
+
+	pr_info("netconsole initialized with %s:%d\n", ip_to_string(priv->ip), priv->port);
 
 	return 0;
 }
@@ -142,6 +154,7 @@ static int netconsole_init(void)
 	cdev->putc = nc_putc;
 	cdev->getc = nc_getc;
 	cdev->devname = "netconsole";
+	cdev->set_active = nc_set_active;
 
 	g_priv = priv;
 
@@ -157,7 +170,7 @@ static int netconsole_init(void)
 	priv->port = 6666;
 
 	dev_add_param_ip(&cdev->class_dev, "ip", NULL, NULL, &priv->ip, NULL);
-	dev_add_param_int(&cdev->class_dev, "port", nc_port_set, NULL, &priv->port, "%u", NULL);
+	dev_add_param_int(&cdev->class_dev, "port", NULL, NULL, &priv->port, "%u", NULL);
 
 	pr_info("registered as %s%d\n", cdev->class_dev.name, cdev->class_dev.id);
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9T-0001MG-SD
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:41 +0200
Message-Id: <1365343255-26497-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/21] netconsole: use dev_add_param_* helpers
To: barebox@lists.infradead.org

For shorter code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/netconsole.c | 50 ++++++--------------------------------------------
 1 file changed, 6 insertions(+), 44 deletions(-)

diff --git a/net/netconsole.c b/net/netconsole.c
index 960de8d..9989194 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -43,7 +43,7 @@ struct nc_priv {
 	int busy;
 	struct net_connection *con;
 
-	uint16_t port;
+	unsigned int port;
 	IPaddr_t ip;
 };
 
@@ -123,49 +123,10 @@ static void nc_putc(struct console_device *cdev, char c)
 	priv->busy = 0;
 }
 
-static int nc_port_set(struct device_d *dev, struct param_d *param,
-		const char *val)
+static int nc_port_set(struct param_d *p, void *_priv)
 {
-	struct nc_priv *priv = g_priv;
-	char portstr[16];
-	int port;
-
-	if (!val)
-		dev_param_set_generic(dev, param, NULL);
-
-	port = simple_strtoul(val, NULL, 10);
-	if (port > 65535)
-		return -EINVAL;
-
-	priv->port = port;
 	nc_init();
 
-	sprintf(portstr, "%d", port);
-	dev_param_set_generic(dev, param, portstr);
-
-	return 0;
-}
-
-static int nc_remoteip_set(struct device_d *dev, struct param_d *param,
-		const char *val)
-{
-	struct nc_priv *priv = g_priv;
-	IPaddr_t ip;
-	int ret;
-
-	if (!val)
-		dev_param_set_generic(dev, param, NULL);
-
-	if (string_to_ip(val, &ip))
-		return -EINVAL;
-
-	priv->ip = ip;
-	ret = nc_init();
-	if (ret)
-		return ret;
-
-	dev_param_set_generic(dev, param, val);
-
 	return 0;
 }
 
@@ -192,9 +153,10 @@ static int netconsole_init(void)
 		return ret;
 	}
 
-	dev_add_param(&cdev->class_dev, "ip", nc_remoteip_set, NULL, 0);
-	dev_add_param(&cdev->class_dev, "port", nc_port_set, NULL, 0);
-	dev_set_param(&cdev->class_dev, "port", "6666");
+	priv->port = 6666;
+
+	dev_add_param_ip(&cdev->class_dev, "ip", NULL, NULL, &priv->ip, NULL);
+	dev_add_param_int(&cdev->class_dev, "port", nc_port_set, NULL, &priv->port, "%u", NULL);
 
 	pr_info("registered as %s%d\n", cdev->class_dev.name, cdev->class_dev.id);
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

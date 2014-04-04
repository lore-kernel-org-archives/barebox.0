Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WVyDf-00088G-8T
 for barebox@lists.infradead.org; Fri, 04 Apr 2014 07:07:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Apr 2014 09:06:56 +0200
Message-Id: <1396595216-15226-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] param: Add dev_add_param_mac
To: barebox@lists.infradead.org

This adds a convenience function to register a MAC address device
parameter. The only current user is converted to use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/param.h | 13 +++++++++
 lib/parameter.c | 87 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 net/eth.c       | 14 ++--------
 3 files changed, 103 insertions(+), 11 deletions(-)

diff --git a/include/param.h b/include/param.h
index e8458b5..eac3372 100644
--- a/include/param.h
+++ b/include/param.h
@@ -54,6 +54,11 @@ struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
 		int (*get)(struct param_d *p, void *priv),
 		IPaddr_t *ip, void *priv);
 
+struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		u8 *mac, void *priv);
+
 int dev_add_param_fixed(struct device_d *dev, char *name, const char *value);
 
 void dev_remove_param(struct param_d *p);
@@ -126,6 +131,14 @@ static inline struct param_d *dev_add_param_ip(struct device_d *dev, const char
 	return NULL;
 }
 
+static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		u8 *mac, void *priv)
+{
+	return NULL;
+}
+
 static inline int dev_add_param_fixed(struct device_d *dev, char *name, char *value)
 {
 	return 0;
diff --git a/lib/parameter.c b/lib/parameter.c
index 9dfde3f..baa2b15 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -542,6 +542,93 @@ struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
 
 	return &pi->param;
 }
+
+struct param_mac {
+	struct param_d param;
+	char *mac;
+	u8 mac_str[sizeof("xx:xx:xx:xx:xx:xx")];
+	const char *format;
+	int (*set)(struct param_d *p, void *priv);
+	int (*get)(struct param_d *p, void *priv);
+};
+
+int string_to_ethaddr(const char *str, u8 enetaddr[6]);
+void ethaddr_to_string(const u8 enetaddr[6], char *str);
+
+static inline struct param_mac *to_param_mac(struct param_d *p)
+{
+	return container_of(p, struct param_mac, param);
+}
+
+static int param_mac_set(struct device_d *dev, struct param_d *p, const char *val)
+{
+	struct param_mac *pm = to_param_mac(p);
+	char mac_save[6];
+	int ret;
+
+	if (!val)
+		return -EINVAL;
+
+	memcpy(mac_save, pm->mac, 6);
+
+	ret = string_to_ethaddr(val, pm->mac);
+	if (ret)
+		goto out;
+
+	if (!pm->set)
+		return 0;
+
+	ret = pm->set(p, p->driver_priv);
+	if (ret)
+		goto out;
+
+	return 0;
+out:
+	memcpy(pm->mac, mac_save, 6);
+
+	return ret;
+}
+
+static const char *param_mac_get(struct device_d *dev, struct param_d *p)
+{
+	struct param_mac *pm = to_param_mac(p);
+	int ret;
+
+	if (pm->get) {
+		ret = pm->get(p, p->driver_priv);
+		if (ret)
+			return NULL;
+	}
+
+	ethaddr_to_string(pm->mac, p->value);
+
+	return p->value;
+}
+
+struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		u8 *mac, void *priv)
+{
+	struct param_mac *pm;
+	int ret;
+
+	pm = xzalloc(sizeof(*pm));
+	pm->mac = mac;
+	pm->set = set;
+	pm->get = get;
+	pm->param.driver_priv = priv;
+	pm->param.value = pm->mac_str;
+
+	ret = __dev_add_param(&pm->param, dev, name,
+			param_mac_set, param_mac_get, 0);
+	if (ret) {
+		free(pm);
+		return ERR_PTR(ret);
+	}
+
+	return &pm->param;
+}
 #endif
 
 /**
diff --git a/net/eth.c b/net/eth.c
index 1f48f2d..3ced3cd 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -257,17 +257,9 @@ int eth_rx(void)
 	return eth_current->recv(eth_current);
 }
 
-static int eth_set_ethaddr(struct device_d *dev, struct param_d *param, const char *val)
+static int eth_set_ethaddr(struct param_d *param, void *priv)
 {
-	struct eth_device *edev = dev_to_edev(dev);
-
-	if (!val)
-		return dev_param_set_generic(dev, param, NULL);
-
-	if (string_to_ethaddr(val, edev->ethaddr) < 0)
-		return -EINVAL;
-
-	dev_param_set_generic(dev, param, val);
+	struct eth_device *edev = priv;
 
 	edev->set_ethaddr(edev, edev->ethaddr);
 
@@ -345,7 +337,7 @@ int eth_register(struct eth_device *edev)
 	dev_add_param_ip(dev, "serverip", NULL, NULL, &edev->serverip, edev);
 	dev_add_param_ip(dev, "gateway", NULL, NULL, &edev->gateway, edev);
 	dev_add_param_ip(dev, "netmask", NULL, NULL, &edev->netmask, edev);
-	dev_add_param(dev, "ethaddr", eth_set_ethaddr, NULL, 0);
+	dev_add_param_mac(dev, "ethaddr", eth_set_ethaddr, NULL, edev->ethaddr, edev);
 
 	if (edev->init)
 		edev->init(edev);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

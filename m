Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNxTB-00059F-RX
 for barebox@lists.infradead.org; Fri, 15 Jul 2016 07:23:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Jul 2016 09:23:08 +0200
Message-Id: <1468567389-28169-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] net: eth: add name to struct eth_device
To: Barebox List <barebox@lists.infradead.org>

Using dev_name often is not a good idea since it's a statically
allocated string which gets overwritten by later calls to dev_name.
Add a devname string to struct eth_device to have the name available
for later use.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  6 ++++++
 net/eth.c     | 12 +++++++-----
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/include/net.h b/include/net.h
index 81118d2..8f857c8 100644
--- a/include/net.h
+++ b/include/net.h
@@ -51,6 +51,7 @@ struct eth_device {
 	struct phy_device *phydev;
 
 	struct device_d dev;
+	char *devname;
 	struct device_d *parent;
 	char *nodepath;
 
@@ -65,6 +66,11 @@ struct eth_device {
 
 #define dev_to_edev(d) container_of(d, struct eth_device, dev)
 
+static inline const char *eth_name(struct eth_device *edev)
+{
+	return edev->devname;
+}
+
 int eth_register(struct eth_device* dev);    /* Register network device		*/
 void eth_unregister(struct eth_device* dev); /* Unregister network device	*/
 int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr);
diff --git a/net/eth.c b/net/eth.c
index 499f4b0..6f8e78d 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -164,7 +164,7 @@ struct eth_device *eth_get_byname(const char *ethname)
 	struct eth_device *edev;
 
 	for_each_netdev(edev) {
-		if (!strcmp(ethname, dev_name(&edev->dev)))
+		if (!strcmp(ethname, eth_name(edev)))
 			return edev;
 	}
 	return NULL;
@@ -174,17 +174,15 @@ struct eth_device *eth_get_byname(const char *ethname)
 int eth_complete(struct string_list *sl, char *instr)
 {
 	struct eth_device *edev;
-	const char *devname;
 	int len;
 
 	len = strlen(instr);
 
 	for_each_netdev(edev) {
-		devname = dev_name(&edev->dev);
-		if (strncmp(instr, devname, len))
+		if (strncmp(instr, eth_name(edev), len))
 			continue;
 
-		string_list_add_asprintf(sl, "%s ", devname);
+		string_list_add_asprintf(sl, "%s ", eth_name(edev));
 	}
 	return COMPLETE_CONTINUE;
 }
@@ -378,6 +376,8 @@ int eth_register(struct eth_device *edev)
 	if (ret)
 		return ret;
 
+	edev->devname = xstrdup(dev_name(&edev->dev));
+
 	dev_add_param_ip(dev, "ipaddr", NULL, NULL, &edev->ipaddr, edev);
 	dev_add_param_ip(dev, "serverip", NULL, NULL, &edev->serverip, edev);
 	dev_add_param_ip(dev, "gateway", NULL, NULL, &edev->gateway, edev);
@@ -424,6 +424,8 @@ void eth_unregister(struct eth_device *edev)
 	if (IS_ENABLED(CONFIG_OFDEVICE))
 		free(edev->nodepath);
 
+	free(edev->devname);
+
 	unregister_device(&edev->dev);
 	list_del(&edev->list);
 }
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

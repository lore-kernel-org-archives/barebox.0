Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wkqfi-0004vO-Va
 for barebox@lists.infradead.org; Thu, 15 May 2014 08:05:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 10:05:23 +0200
Message-Id: <1400141123-17004-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: take eth id from devicetree alias
To: barebox@lists.infradead.org

If the devicetree has an alias for the ethernet device, then use
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index 26a5ff7..b830f79 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -330,12 +330,21 @@ int eth_register(struct eth_device *edev)
 	}
 
 	strcpy(edev->dev.name, "eth");
-	edev->dev.id = DEVICE_ID_DYNAMIC;
 
 	if (edev->parent)
 		edev->dev.parent = edev->parent;
 
-	register_device(&edev->dev);
+	if (edev->dev.parent && edev->dev.parent->device_node) {
+		edev->dev.id = of_alias_get_id(edev->dev.parent->device_node, "ethernet");
+		if (edev->dev.id < 0)
+			edev->dev.id = DEVICE_ID_DYNAMIC;
+	} else {
+		edev->dev.id = DEVICE_ID_DYNAMIC;
+	}
+
+	ret = register_device(&edev->dev);
+	if (ret)
+		return ret;
 
 	dev_add_param_ip(dev, "ipaddr", NULL, NULL, &edev->ipaddr, edev);
 	dev_add_param_ip(dev, "serverip", NULL, NULL, &edev->serverip, edev);
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

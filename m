Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzOqz-00046n-3S
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 13:02:22 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 79272A001ED
 for <barebox@lists.infradead.org>; Thu, 19 Nov 2015 14:02:30 +0100 (CET)
From: Jan Remmet <j.remmet@phytec.de>
Date: Thu, 19 Nov 2015 13:58:51 +0100
Message-Id: <1447937931-15724-1-git-send-email-j.remmet@phytec.de>
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
Subject: [PATCH] net: eth: Remove ethaddr_param
To: barebox@lists.infradead.org

commit d00db554 introduce ethaddr_param. But it is not initialized, so
devinfo fails to show the mac. Remove it and use edev->ethaddr.

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
---
 include/net.h | 1 -
 net/eth.c     | 4 ++--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/include/net.h b/include/net.h
index d7a4751..2a37a43 100644
--- a/include/net.h
+++ b/include/net.h
@@ -60,7 +60,6 @@ struct eth_device {
 	IPaddr_t serverip;
 	IPaddr_t netmask;
 	IPaddr_t gateway;
-	char ethaddr_param[6];
 	char ethaddr[6];
 };
 
diff --git a/net/eth.c b/net/eth.c
index 8bfb6b1..fb3f22f 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -285,7 +285,7 @@ static int eth_param_set_ethaddr(struct param_d *param, void *priv)
 {
 	struct eth_device *edev = priv;
 
-	return eth_set_ethaddr(edev, edev->ethaddr_param);
+	return eth_set_ethaddr(edev, edev->ethaddr);
 }
 
 #ifdef CONFIG_OFTREE
@@ -383,7 +383,7 @@ int eth_register(struct eth_device *edev)
 	dev_add_param_ip(dev, "gateway", NULL, NULL, &edev->gateway, edev);
 	dev_add_param_ip(dev, "netmask", NULL, NULL, &edev->netmask, edev);
 	dev_add_param_mac(dev, "ethaddr", eth_param_set_ethaddr, NULL,
-			edev->ethaddr_param, edev);
+			edev->ethaddr, edev);
 
 	if (edev->init)
 		edev->init(edev);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

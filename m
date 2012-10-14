Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVLb-0004Bb-9b
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 21:03:46 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 4FE6DFF967E
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 23:10:17 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 23:01:18 +0200
Message-Id: <1350248478-19359-12-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121014205929.GU13639@game.jcrosoft.org>
 <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 12/12] eth: register device a pure device
To: barebox@lists.infradead.org

as we do not need to probe them and they have no driver or bus attached

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/eth.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/eth.c b/net/eth.c
index f3d7bfe..220edcf 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -261,7 +261,7 @@ int eth_register(struct eth_device *edev)
 	if (edev->parent)
 		dev_add_child(edev->parent, &edev->dev);
 
-	platform_device_register(&edev->dev);
+	register_device(&edev->dev);
 
 	dev_add_param(dev, "ipaddr", eth_set_ipaddr, NULL, 0);
 	dev_add_param(dev, "ethaddr", eth_set_ethaddr, NULL, 0);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

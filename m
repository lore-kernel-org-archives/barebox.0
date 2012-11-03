Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUfBg-0007Iw-RD
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 14:59:06 +0000
Received: from mail422.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 15D2AFFB518
 for <barebox@lists.infradead.org>; Sat,  3 Nov 2012 16:09:14 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  3 Nov 2012 15:56:38 +0100
Message-Id: <1351954598-10541-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] eth: register device a pure device
To: barebox@lists.infradead.org

as we do not need to probe them and they have no driver or bus attached

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/eth.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/eth.c b/net/eth.c
index 2cfdb96..0a1850f 100644
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

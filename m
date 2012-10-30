Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTEhi-0007kz-PP
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 16:30:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Oct 2012 17:30:05 +0100
Message-Id: <1351614606-16461-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351614606-16461-1-git-send-email-s.hauer@pengutronix.de>
References: <1351614606-16461-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] net eth: make edev->init optional
To: barebox@lists.infradead.org
Cc: wsa@pengutronix.de

edev->init is called at eth_register time unconditionally and is supposed
to initialize the ethernet hardware. Since it's called unconditionally
this could be done by the driver without having an additional hook.
Some drivers need their initialization done earlier since they also register
a mdiobus which does hardware accesses on registration time.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/eth.c b/net/eth.c
index f3d7bfe..2cfdb96 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -269,7 +269,8 @@ int eth_register(struct eth_device *edev)
 	dev_add_param(dev, "netmask", eth_set_ipaddr, NULL, 0);
 	dev_add_param(dev, "serverip", eth_set_ipaddr, NULL, 0);
 
-	edev->init(edev);
+	if (edev->init)
+		edev->init(edev);
 
 	list_add_tail(&edev->list, &netdev_list);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

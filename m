Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVeKX-000485-E9
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 16:20:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1iVeKW-0003gm-AZ
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 17:20:16 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1iVeKW-00019z-18
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 17:20:16 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 15 Nov 2019 17:20:14 +0100
Message-Id: <20191115162014.16111-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] net: disable all other devices when enabling the new one
To: barebox@lists.infradead.org

Some network devices need proper reinitialization before they can be
used. This is especially the case when using devices that share the same
driver.

Therefor the current approach, starting the open routine of an ether
device just once with the first call of send, runs those devices into
some unreliable behaviour.

This patch disables all devices that are not being used so they get
reinitialized with the next usage.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 net/eth.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/eth.c b/net/eth.c
index 53d24baa16..0c26324d3f 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -217,6 +217,7 @@ static int eth_carrier_check(struct eth_device *edev, int force)
  */
 static int eth_check_open(struct eth_device *edev)
 {
+	struct eth_device *tmpedev;
 	int ret;
 
 	if (edev->active)
@@ -226,6 +227,9 @@ static int eth_check_open(struct eth_device *edev)
 	if (ret)
 		return ret;
 
+	for_each_netdev(tmpedev)
+		tmpedev->active = 0;
+
 	edev->active = 1;
 
 	return eth_carrier_check(edev, 1);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

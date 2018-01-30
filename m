Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egY1L-00012G-E8
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 15:40:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1egY17-0007Xl-Sd
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 16:40:13 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 30 Jan 2018 16:40:12 +0100
Message-Id: <20180130154013.8446-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] net: designware: add missing headers
To: barebox@lists.infradead.org

As the eth_device and mii_bus structs are allocated inside the
dw_eth_dev struct a forward declaration isn't enough.

Fixes: c1f902841ce3 (net: designware: move probe to generic driver)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/designware.h         | 3 +--
 drivers/net/designware_generic.c | 1 +
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/designware.h b/drivers/net/designware.h
index c9dc27a59474..4a99fa2aa60b 100644
--- a/drivers/net/designware.h
+++ b/drivers/net/designware.h
@@ -20,8 +20,7 @@
 #ifndef __DESIGNWARE_ETH_H
 #define __DESIGNWARE_ETH_H
 
-struct eth_device;
-struct mii_bus;
+#include <net.h>
 
 struct dw_eth_dev {
 	struct eth_device netdev;
diff --git a/drivers/net/designware_generic.c b/drivers/net/designware_generic.c
index 0e5b9c067b6b..29269deac9e9 100644
--- a/drivers/net/designware_generic.c
+++ b/drivers/net/designware_generic.c
@@ -22,6 +22,7 @@
  */
 
 #include <common.h>
+#include <init.h>
 #include "designware.h"
 
 static struct dw_eth_drvdata dwmac_370a_drvdata = {
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

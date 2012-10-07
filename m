Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TKqXy-0007fS-Qo
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 13:05:31 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id D6714FF97D2
 for <barebox@lists.infradead.org>; Sun,  7 Oct 2012 15:11:51 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  7 Oct 2012 15:03:03 +0200
Message-Id: <1349614983-12495-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] designware: add clock support
To: barebox@lists.infradead.org

allow the driver to request it's clock and enable it

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/designware.c |   20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index ec51825..1cbcd5a 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -32,8 +32,10 @@
 #include <asm/mmu.h>
 #include <net/designware.h>
 #include <linux/phy.h>
-#include "designware.h"
+#include <linux/clk.h>
+#include <linux/err.h>
 
+#include "designware.h"
 
 struct dw_eth_dev {
 	struct eth_device netdev;
@@ -390,6 +392,8 @@ static int dwc_ether_probe(struct device_d *dev)
 	struct mii_bus *miibus;
 	void __iomem *base;
 	struct dwc_ether_platform_data *pdata = dev->platform_data;
+	struct clk *clk;
+	int ret;
 
 	if (!pdata) {
 		printf("dwc_ether: no platform_data\n");
@@ -427,6 +431,20 @@ static int dwc_ether_probe(struct device_d *dev)
 	miibus->write = dwc_ether_mii_write;
 	miibus->priv = priv;
 
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
+		dev_err(dev, "no clk ret = %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_enable(clk);
+	if (ret) {
+		dev_err(dev, "can not enable clk ret = %d\n", ret);
+		clk_put(clk);
+		return ret;
+	}
+
 	mdiobus_register(miibus);
 	eth_register(edev);
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

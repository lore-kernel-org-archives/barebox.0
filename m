Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kpr8A-0006Rh-IB
 for barebox@lists.infradead.org; Thu, 17 Dec 2020 11:07:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kpr89-0005CD-MZ
 for barebox@lists.infradead.org; Thu, 17 Dec 2020 12:07:33 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kpr89-0003u8-Da
 for barebox@lists.infradead.org; Thu, 17 Dec 2020 12:07:33 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 17 Dec 2020 12:07:29 +0100
Message-Id: <20201217110731.14914-4-m.grzeschik@pengutronix.de>
In-Reply-To: <20201217110731.14914-1-m.grzeschik@pengutronix.de>
References: <20201217110731.14914-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v2 3/5] usb: dwc2: add reset controller dependency for probe
 via oftree
To: barebox@lists.infradead.org

The dwc2 controller is connected to one reset controller which needs to be
triggered before it is able to operate. This patch adds the referenced reset
controller in the devicetree to be used.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/dwc2/dwc2.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 13455479ef..6f5127fc3b 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -12,6 +12,7 @@
 #include <errno.h>
 #include <driver.h>
 #include <linux/clk.h>
+#include <linux/reset.h>
 
 #include "dwc2.h"
 
@@ -61,6 +62,10 @@ static int dwc2_probe(struct device_d *dev)
 	if (ret)
 		goto clk_put;
 
+	ret = device_reset_us(dev, 2);
+	if (ret)
+		goto clk_disable;
+
 	dwc2->phy = phy_optional_get(dev, "usb2-phy");
 	if (IS_ERR(dwc2->phy)) {
 		ret = PTR_ERR(dwc2->phy);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

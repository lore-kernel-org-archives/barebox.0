Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kx5Km-0003BL-LN
 for barebox@lists.infradead.org; Wed, 06 Jan 2021 09:42:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kx5Kk-00032N-5J
 for barebox@lists.infradead.org; Wed, 06 Jan 2021 10:42:26 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kx5Kj-0006oR-TC
 for barebox@lists.infradead.org; Wed, 06 Jan 2021 10:42:25 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  6 Jan 2021 10:42:16 +0100
Message-Id: <20210106094216.26005-1-m.grzeschik@pengutronix.de>
In-Reply-To: <20201217110731.14914-3-m.grzeschik@pengutronix.de>
References: <20201217110731.14914-3-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] fixup! usb: dwc2: add clk dependency for probe via oftree
To: barebox@lists.infradead.org

The documentation says this clock is named otg, so we use the
named clock as documented.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/dwc2/dwc2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 13455479ef..33d418e280 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -50,7 +50,7 @@ static int dwc2_probe(struct device_d *dev)
 	dwc2->regs = IOMEM(iores->start);
 	dwc2->dev = dev;
 
-	dwc2->clk = clk_get(dev, NULL);
+	dwc2->clk = clk_get(dev, "otg");
 	if (IS_ERR(dwc2->clk)) {
 		ret = PTR_ERR(dwc2->clk);
 		dev_err(dev, "Failed to get USB clock %d\n", ret);
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

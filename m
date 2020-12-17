Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kpr8A-0006Rg-IC
 for barebox@lists.infradead.org; Thu, 17 Dec 2020 11:07:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kpr89-0005CB-M5
 for barebox@lists.infradead.org; Thu, 17 Dec 2020 12:07:33 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kpr89-0003u3-Cl
 for barebox@lists.infradead.org; Thu, 17 Dec 2020 12:07:33 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 17 Dec 2020 12:07:27 +0100
Message-Id: <20201217110731.14914-2-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v2 1/5] usb: dwc2: cleanup on error for deferred probing
To: barebox@lists.infradead.org

The driver needs to cleanup the resources if an error occurred. Otherwise,
on deferred probing, it will fail to take the resources for a second time.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
v1 -> v2: fixed missing change of release_region tag for phy_init error

 drivers/usb/dwc2/dwc2.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index bd33334a83..82b5ef2813 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -53,12 +53,12 @@ static int dwc2_probe(struct device_d *dev)
 	dwc2->phy = phy_optional_get(dev, "usb2-phy");
 	if (IS_ERR(dwc2->phy)) {
 		ret = PTR_ERR(dwc2->phy);
-		return ret;
+		goto release_region;
 	}
 
 	ret = phy_init(dwc2->phy);
 	if (ret)
-		goto err_phy_init;
+		goto release_region;
 	ret = phy_power_on(dwc2->phy);
 	if (ret)
 		goto err_phy_power;
@@ -100,7 +100,8 @@ error:
 	phy_power_off(dwc2->phy);
 err_phy_power:
 	phy_exit(dwc2->phy);
-err_phy_init:
+release_region:
+	release_region(iores);
 
 	return ret;
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kpdg7-0007Wj-7p
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 20:45:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kpdg0-0005T9-CR
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 21:45:36 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kpdfz-00027a-TI
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 21:45:35 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 16 Dec 2020 21:45:30 +0100
Message-Id: <20201216204534.8054-2-m.grzeschik@pengutronix.de>
In-Reply-To: <20201216204534.8054-1-m.grzeschik@pengutronix.de>
References: <20201216204534.8054-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 1/5] usb: dwc2: cleanup on error for deferred probing
To: barebox@lists.infradead.org

The driver needs to cleanup the resources if an error occurred. Otherwise,
on deferred probing, it will fail to take the resources for a second time.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/dwc2/dwc2.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index bd33334a83..87d0ec7a5a 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -53,7 +53,7 @@ static int dwc2_probe(struct device_d *dev)
 	dwc2->phy = phy_optional_get(dev, "usb2-phy");
 	if (IS_ERR(dwc2->phy)) {
 		ret = PTR_ERR(dwc2->phy);
-		return ret;
+		goto release_region;
 	}
 
 	ret = phy_init(dwc2->phy);
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

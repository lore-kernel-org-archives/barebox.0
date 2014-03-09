Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp44.i.mail.ru ([94.100.177.104])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WMXDc-0004lr-Cn
 for barebox@lists.infradead.org; Sun, 09 Mar 2014 06:28:18 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun,  9 Mar 2014 10:27:46 +0400
Message-Id: <1394346466-31156-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] treewide: Kill empty remove() implementations
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/net/ar231x.c       | 6 ------
 drivers/net/at91_ether.c   | 5 -----
 drivers/net/designware.c   | 5 -----
 drivers/video/imx-ipu-fb.c | 5 -----
 drivers/video/imx.c        | 5 -----
 drivers/video/pxa.c        | 5 -----
 6 files changed, 31 deletions(-)

diff --git a/drivers/net/ar231x.c b/drivers/net/ar231x.c
index 5c09114..515de17 100644
--- a/drivers/net/ar231x.c
+++ b/drivers/net/ar231x.c
@@ -419,15 +419,9 @@ static int ar231x_eth_probe(struct device_d *dev)
 	return 0;
 }
 
-static void ar231x_eth_remove(struct device_d *dev)
-{
-
-}
-
 static struct driver_d ar231x_eth_driver = {
 	.name = "ar231x_eth",
 	.probe = ar231x_eth_probe,
-	.remove = ar231x_eth_remove,
 };
 
 static int ar231x_eth_driver_init(void)
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 25924cf..bf2f957 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -357,13 +357,8 @@ static int at91_ether_probe(struct device_d *dev)
 	return 0;
 }
 
-static void at91_ether_remove(struct device_d *dev)
-{
-}
-
 static struct driver_d at91_ether_driver = {
 	.name = "at91_ether",
 	.probe = at91_ether_probe,
-	.remove = at91_ether_remove,
 };
 device_platform_driver(at91_ether_driver);
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index ecb4656..e706f54 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -477,10 +477,6 @@ static int dwc_ether_probe(struct device_d *dev)
 	return 0;
 }
 
-static void dwc_ether_remove(struct device_d *dev)
-{
-}
-
 static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
 	{
 		.compatible = "snps,dwmac-3.70a",
@@ -493,7 +489,6 @@ static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
 static struct driver_d dwc_ether_driver = {
 	.name = "designware_eth",
 	.probe = dwc_ether_probe,
-	.remove = dwc_ether_remove,
 	.of_compatible = DRV_OF_COMPAT(dwc_ether_compatible),
 };
 device_platform_driver(dwc_ether_driver);
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 7276647..cd74b03 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -1047,14 +1047,9 @@ static int imxfb_probe(struct device_d *dev)
 	return ret;
 }
 
-static void imxfb_remove(struct device_d *dev)
-{
-}
-
 static struct driver_d imx3fb_driver = {
 	.name = "imx-ipu-fb",
 	.probe = imxfb_probe,
-	.remove = imxfb_remove,
 };
 device_platform_driver(imx3fb_driver);
 
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 6e2d8d6..b2eb9fc 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -580,13 +580,8 @@ static int imxfb_probe(struct device_d *dev)
 	return 0;
 }
 
-static void imxfb_remove(struct device_d *dev)
-{
-}
-
 static struct driver_d imxfb_driver = {
 	.name		= "imxfb",
 	.probe		= imxfb_probe,
-	.remove		= imxfb_remove,
 };
 device_platform_driver(imxfb_driver);
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index 529190b..b4ce3a1 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -536,13 +536,8 @@ static int pxafb_probe(struct device_d *dev)
 	return 0;
 }
 
-static void pxafb_remove(struct device_d *dev)
-{
-}
-
 static struct driver_d pxafb_driver = {
 	.name	= "pxafb",
 	.probe	= pxafb_probe,
-	.remove	= pxafb_remove,
 };
 device_platform_driver(pxafb_driver);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

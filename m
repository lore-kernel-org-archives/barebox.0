Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVG3k-00016Y-RF
 for barebox@lists.infradead.org; Thu, 14 Nov 2019 14:25:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Nov 2019 15:25:17 +0100
Message-Id: <20191114142517.4694-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: dwc3: Remove wrong error messages
To: Barebox List <barebox@lists.infradead.org>

When phy_get() returns -ENOSYS or -ENODEV it means we can go without
phy. Do not print an error message in this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc3/core.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index d3f9d9ef27..c17327c791 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -914,7 +914,6 @@ static int dwc3_core_get_phy(struct dwc3 *dwc)
 	if (IS_ERR(dwc->usb2_generic_phy)) {
 		ret = PTR_ERR(dwc->usb2_generic_phy);
 		if (ret == -ENOSYS || ret == -ENODEV) {
-			dev_err(dev, "no usb2 phy configured\n");
 			dwc->usb2_generic_phy = NULL;
 		} else if (ret == -EPROBE_DEFER) {
 			return ret;
@@ -928,7 +927,6 @@ static int dwc3_core_get_phy(struct dwc3 *dwc)
 	if (IS_ERR(dwc->usb3_generic_phy)) {
 		ret = PTR_ERR(dwc->usb3_generic_phy);
 		if (ret == -ENOSYS || ret == -ENODEV) {
-			dev_err(dev, "no usb2 phy configured\n");
 			dwc->usb3_generic_phy = NULL;
 		} else if (ret == -EPROBE_DEFER) {
 			return ret;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

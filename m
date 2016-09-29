Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpacY-00034M-8V
 for barebox@lists.infradead.org; Thu, 29 Sep 2016 12:39:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Sep 2016 14:38:55 +0200
Message-Id: <20160929123900.24853-4-s.hauer@pengutronix.de>
In-Reply-To: <20160929123900.24853-1-s.hauer@pengutronix.de>
References: <20160929123900.24853-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] usb: imx-usb-phy: Drop unnecessary read/modify/write
To: Barebox List <barebox@lists.infradead.org>

When writing to the USBPHY_CTRL register read/modify/write is unncessary
since we are writing to the associated bit set register anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/imx-usb-phy.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 1aa12be..eec195d 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -39,8 +39,6 @@ struct imx_usbphy {
 
 static int imx_usbphy_enable(struct imx_usbphy *imxphy)
 {
-	u32 val;
-
 	clk_enable(imxphy->clk);
 
 	/* reset usbphy */
@@ -56,9 +54,8 @@ static int imx_usbphy_enable(struct imx_usbphy *imxphy)
 	writel(0xffffffff, imxphy->base + CLR);
 
 	/* set utmilvl2/3 */
-	val = readl(imxphy->base + USBPHY_CTRL);
-	val |= USBPHY_CTRL_ENUTMILEVEL3 | USBPHY_CTRL_ENUTMILEVEL2;
-	writel(val, imxphy->base + USBPHY_CTRL + SET);
+	writel(USBPHY_CTRL_ENUTMILEVEL3 | USBPHY_CTRL_ENUTMILEVEL2,
+	       imxphy->base + USBPHY_CTRL + SET);
 
 	return 0;
 }
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

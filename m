Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmxT-0004j3-LI
 for barebox@lists.infradead.org; Mon, 20 May 2019 18:24:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id g3so7629107pfi.4
 for <barebox@lists.infradead.org>; Mon, 20 May 2019 11:24:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 20 May 2019 11:24:00 -0700
Message-Id: <20190520182402.12753-4-andrew.smirnov@gmail.com>
In-Reply-To: <20190520182402.12753-1-andrew.smirnov@gmail.com>
References: <20190520182402.12753-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/5] usb: imx-usb-phy: Use stmp_reset_block() to reset PHY
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Upstream kernel driver uses stmp_reset_block() to reset the PHY, so
convert the code to do so as well to save some code and sync both
drivers.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/imx/imx-usb-phy.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 01bf04b67..306f84374 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -23,6 +23,7 @@
 #include <linux/phy/phy.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <stmp-device.h>
 
 #define HW_USBPHY_PWD				0x00
 #define HW_USBPHY_TX				0x10
@@ -30,8 +31,6 @@
 #define HW_USBPHY_CTRL_SET			0x34
 #define HW_USBPHY_CTRL_CLR			0x38
 
-#define USBPHY_CTRL_SFTRST		(1 << 31)
-#define USBPHY_CTRL_CLKGATE		(1 << 30)
 #define BM_USBPHY_CTRL_ENUTMILEVEL3		BIT(15)
 #define BM_USBPHY_CTRL_ENUTMILEVEL2		BIT(14)
 #define BM_USBPHY_CTRL_ENHOSTDISCONDETECT	BIT(1)
@@ -47,17 +46,13 @@ struct imx_usbphy {
 static int imx_usbphy_phy_init(struct phy *phy)
 {
 	struct imx_usbphy *imxphy = phy_get_drvdata(phy);
+	int ret;
 
 	clk_enable(imxphy->clk);
 
-	/* reset usbphy */
-	writel(USBPHY_CTRL_SFTRST, imxphy->base + HW_USBPHY_CTRL_SET);
-
-	udelay(10);
-
-	/* clr reset and clkgate */
-	writel(USBPHY_CTRL_SFTRST | USBPHY_CTRL_CLKGATE,
-			imxphy->base + HW_USBPHY_CTRL_CLR);
+	ret = stmp_reset_block(imxphy->base + HW_USBPHY_CTRL, false);
+	if (ret)
+		return ret;
 
 	/* Power up the PHY */
 	writel(0, imxphy->base + HW_USBPHY_PWD);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

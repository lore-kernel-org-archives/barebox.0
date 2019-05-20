Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmxR-0004iH-U3
 for barebox@lists.infradead.org; Mon, 20 May 2019 18:24:23 +0000
Received: by mail-pf1-x441.google.com with SMTP id u17so7623828pfn.7
 for <barebox@lists.infradead.org>; Mon, 20 May 2019 11:24:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 20 May 2019 11:23:58 -0700
Message-Id: <20190520182402.12753-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/5] usb: imx-usb-phy: Import register definitions from Linux
 driver
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Import register definitions from Linux driver to simplify
comparing/sharing code a bit. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/imx/imx-usb-phy.c | 35 ++++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 274153bd5..df7e192d3 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -24,16 +24,17 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
-#define SET				0x4
-#define CLR				0x8
-
-#define USBPHY_CTRL			0x30
+#define HW_USBPHY_PWD				0x00
+#define HW_USBPHY_TX				0x10
+#define HW_USBPHY_CTRL				0x30
+#define HW_USBPHY_CTRL_SET			0x34
+#define HW_USBPHY_CTRL_CLR			0x38
 
 #define USBPHY_CTRL_SFTRST		(1 << 31)
 #define USBPHY_CTRL_CLKGATE		(1 << 30)
-#define USBPHY_CTRL_ENUTMILEVEL3	(1 << 15)
-#define USBPHY_CTRL_ENUTMILEVEL2	(1 << 14)
-#define USBPHY_CTRL_ENHOSTDISCONDETECT	(1 << 1)
+#define BM_USBPHY_CTRL_ENUTMILEVEL3		BIT(15)
+#define BM_USBPHY_CTRL_ENUTMILEVEL2		BIT(14)
+#define BM_USBPHY_CTRL_ENHOSTDISCONDETECT	BIT(1)
 
 struct imx_usbphy {
 	struct usb_phy usb_phy;
@@ -50,20 +51,20 @@ static int imx_usbphy_phy_init(struct phy *phy)
 	clk_enable(imxphy->clk);
 
 	/* reset usbphy */
-	writel(USBPHY_CTRL_SFTRST, imxphy->base + USBPHY_CTRL + SET);
+	writel(USBPHY_CTRL_SFTRST, imxphy->base + HW_USBPHY_CTRL_SET);
 
 	udelay(10);
 
 	/* clr reset and clkgate */
 	writel(USBPHY_CTRL_SFTRST | USBPHY_CTRL_CLKGATE,
-			imxphy->base + USBPHY_CTRL + CLR);
+			imxphy->base + HW_USBPHY_CTRL_CLR);
 
-	/* clr all pwd bits => power up phy */
-	writel(0xffffffff, imxphy->base + CLR);
+	/* Power up the PHY */
+	writel(0, imxphy->base + HW_USBPHY_PWD);
 
 	/* set utmilvl2/3 */
-	writel(USBPHY_CTRL_ENUTMILEVEL3 | USBPHY_CTRL_ENUTMILEVEL2,
-	       imxphy->base + USBPHY_CTRL + SET);
+	writel(BM_USBPHY_CTRL_ENUTMILEVEL3 | BM_USBPHY_CTRL_ENUTMILEVEL2,
+	       imxphy->base + HW_USBPHY_CTRL_SET);
 
 	return 0;
 }
@@ -74,8 +75,8 @@ static int imx_usbphy_notify_connect(struct usb_phy *phy,
 	struct imx_usbphy *imxphy = container_of(phy, struct imx_usbphy, usb_phy);
 
 	if (speed == USB_SPEED_HIGH) {
-		writel(USBPHY_CTRL_ENHOSTDISCONDETECT,
-		       imxphy->base + USBPHY_CTRL + SET);
+		writel(BM_USBPHY_CTRL_ENHOSTDISCONDETECT,
+		       imxphy->base + HW_USBPHY_CTRL_SET);
 	}
 
 	return 0;
@@ -86,8 +87,8 @@ static int imx_usbphy_notify_disconnect(struct usb_phy *phy,
 {
 	struct imx_usbphy *imxphy = container_of(phy, struct imx_usbphy, usb_phy);
 
-	writel(USBPHY_CTRL_ENHOSTDISCONDETECT,
-	       imxphy->base + USBPHY_CTRL + CLR);
+	writel(BM_USBPHY_CTRL_ENHOSTDISCONDETECT,
+	       imxphy->base + HW_USBPHY_CTRL_CLR);
 
 	return 0;
 }
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

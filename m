Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmxS-0004ih-Vl
 for barebox@lists.infradead.org; Mon, 20 May 2019 18:24:24 +0000
Received: by mail-pl1-x642.google.com with SMTP id g9so7084679plm.6
 for <barebox@lists.infradead.org>; Mon, 20 May 2019 11:24:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 20 May 2019 11:23:59 -0700
Message-Id: <20190520182402.12753-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/5] usb: imx-usb-phy: Wrap lines to silence checkpatch
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Those two line are the only thing that checkpatch is complaining
about. Wrap them to slince it. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/imx/imx-usb-phy.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index df7e192d3..01bf04b67 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -72,7 +72,8 @@ static int imx_usbphy_phy_init(struct phy *phy)
 static int imx_usbphy_notify_connect(struct usb_phy *phy,
 				     enum usb_device_speed speed)
 {
-	struct imx_usbphy *imxphy = container_of(phy, struct imx_usbphy, usb_phy);
+	struct imx_usbphy *imxphy = container_of(phy, struct imx_usbphy,
+						 usb_phy);
 
 	if (speed == USB_SPEED_HIGH) {
 		writel(BM_USBPHY_CTRL_ENHOSTDISCONDETECT,
@@ -85,7 +86,8 @@ static int imx_usbphy_notify_connect(struct usb_phy *phy,
 static int imx_usbphy_notify_disconnect(struct usb_phy *phy,
 					enum usb_device_speed speed)
 {
-	struct imx_usbphy *imxphy = container_of(phy, struct imx_usbphy, usb_phy);
+	struct imx_usbphy *imxphy = container_of(phy, struct imx_usbphy,
+						 usb_phy);
 
 	writel(BM_USBPHY_CTRL_ENHOSTDISCONDETECT,
 	       imxphy->base + HW_USBPHY_CTRL_CLR);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

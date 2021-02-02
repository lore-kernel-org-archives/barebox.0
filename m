Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l70oq-0007yI-R8
 for barebox@lists.infradead.org; Tue, 02 Feb 2021 18:54:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1l70on-0004ot-18
 for barebox@lists.infradead.org; Tue, 02 Feb 2021 19:54:29 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1l70om-0004mv-Oy
 for barebox@lists.infradead.org; Tue, 02 Feb 2021 19:54:28 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Tue,  2 Feb 2021 19:54:12 +0100
Message-Id: <20210202185413.18332-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 1/2] usb: imx: fix overcurrent polarity handling on i.MX7
To: barebox@lists.infradead.org

The reference manual says the overcurrent polarity is changed to low
with the bit set. We fix that according to the description.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/imx/imx-usb-misc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index b663d073aa..660ebecd78 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -353,7 +353,7 @@ static __maybe_unused struct imx_usb_misc_data mx5_data = {
 
 #define MX6_USB_CTRL(n)			((n) * 4)
 #define MX6_USB_CTRL_OVER_CUR_DIS	(1 << 7)
-#define MX6_USB_CTRL_OVER_CUR_ACT_HIGH	(1 << 8)
+#define MX6_USB_CTRL_OVER_CUR_ACT_LOW	(1 << 8)
 #define MX6_USB_CTRL_PWR_POLARITY	(1 << 9)
 
 static void mx6_hsic_pullup(unsigned long reg, int on)
@@ -453,9 +453,9 @@ static int usbmisc_imx7d_init(void __iomem *base, int port,
 	} else {
 		reg &= ~MX6_USB_CTRL_OVER_CUR_DIS;
 		if (flags & MXC_EHCI_OC_PIN_ACTIVE_LOW)
-			reg &= ~MX6_USB_CTRL_OVER_CUR_ACT_HIGH;
+			reg |= MX6_USB_CTRL_OVER_CUR_ACT_LOW;
 		else
-			reg |= MX6_USB_CTRL_OVER_CUR_ACT_HIGH;
+			reg &= ~MX6_USB_CTRL_OVER_CUR_ACT_LOW;
 	}
 	if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
 		reg |= MX6_USB_CTRL_PWR_POLARITY;
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

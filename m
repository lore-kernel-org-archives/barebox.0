Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khDmZ-0007GN-0t
 for barebox@lists.infradead.org; Mon, 23 Nov 2020 15:29:36 +0000
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1khDmV-0005MR-VZ
 for barebox@lists.infradead.org; Mon, 23 Nov 2020 16:29:32 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 23 Nov 2020 16:29:30 +0100
Message-Id: <20201123152931.4480-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] usb: imx: add support for setting power pin polarity on
 i.MX6/7
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/usb/imx/imx-usb-misc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index 3a5ec236e532..b663d073aa88 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -354,6 +354,7 @@ static __maybe_unused struct imx_usb_misc_data mx5_data = {
 #define MX6_USB_CTRL(n)			((n) * 4)
 #define MX6_USB_CTRL_OVER_CUR_DIS	(1 << 7)
 #define MX6_USB_CTRL_OVER_CUR_ACT_HIGH	(1 << 8)
+#define MX6_USB_CTRL_PWR_POLARITY	(1 << 9)
 
 static void mx6_hsic_pullup(unsigned long reg, int on)
 {
@@ -380,6 +381,8 @@ static __maybe_unused int mx6_initialize_usb_hw(void __iomem *base, int port,
 		val = readl(base + MX6_USB_CTRL(port));
 		if (flags & MXC_EHCI_DISABLE_OVERCURRENT)
 			val |= MX6_USB_CTRL_OVER_CUR_DIS;
+		if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
+			val |= MX6_USB_CTRL_PWR_POLARITY;
 		writel(val, base + MX6_USB_CTRL(port));
 		break;
 	case 2: /* HSIC port */
@@ -454,6 +457,8 @@ static int usbmisc_imx7d_init(void __iomem *base, int port,
 		else
 			reg |= MX6_USB_CTRL_OVER_CUR_ACT_HIGH;
 	}
+	if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
+		reg |= MX6_USB_CTRL_PWR_POLARITY;
 	writel(reg, base);
 
 	reg = readl(base + MX7D_USBNC_USB_CTRL2);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

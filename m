Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l70oq-0007yM-QF
 for barebox@lists.infradead.org; Tue, 02 Feb 2021 18:54:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1l70on-0004oz-GX
 for barebox@lists.infradead.org; Tue, 02 Feb 2021 19:54:29 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1l70on-0004my-7x
 for barebox@lists.infradead.org; Tue, 02 Feb 2021 19:54:29 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Tue,  2 Feb 2021 19:54:13 +0100
Message-Id: <20210202185413.18332-2-m.grzeschik@pengutronix.de>
In-Reply-To: <20210202185413.18332-1-m.grzeschik@pengutronix.de>
References: <20210202185413.18332-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 2/2] usb: imx: add overcurrent polarity handling on i.MX6
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/imx/imx-usb-misc.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index 660ebecd78..c16b4cf0ab 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -379,8 +379,15 @@ static __maybe_unused int mx6_initialize_usb_hw(void __iomem *base, int port,
 	case 0:
 	case 1:
 		val = readl(base + MX6_USB_CTRL(port));
-		if (flags & MXC_EHCI_DISABLE_OVERCURRENT)
+		if (flags & MXC_EHCI_DISABLE_OVERCURRENT) {
 			val |= MX6_USB_CTRL_OVER_CUR_DIS;
+		} else {
+			val &= ~MX6_USB_CTRL_OVER_CUR_DIS;
+			if (flags & MXC_EHCI_OC_PIN_ACTIVE_LOW)
+				val |= MX6_USB_CTRL_OVER_CUR_ACT_LOW;
+			else
+				val &= ~MX6_USB_CTRL_OVER_CUR_ACT_LOW;
+		}
 		if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
 			val |= MX6_USB_CTRL_PWR_POLARITY;
 		writel(val, base + MX6_USB_CTRL(port));
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

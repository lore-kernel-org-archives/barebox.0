Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XBrSx-0000DH-I5
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 20:24:21 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Mon, 28 Jul 2014 22:23:01 +0200
Message-Id: <1406578981-3761-2-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1406578981-3761-1-git-send-email-mpa@pengutronix.de>
References: <1406578981-3761-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH 2/2] usb: imx-usb-misc: Use reasonable defaults to setup the
 ports
To: barebox@lists.infradead.org

This code is partly backported from the linux kernel which also uses
some defaults to setup the USB ports.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/usb/imx/imx-usb-misc.c | 44 +++++-------------------------------------
 1 file changed, 5 insertions(+), 39 deletions(-)

diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index ed44d78b0f7c..0a3d4ac6badb 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -51,47 +51,13 @@ static __maybe_unused int mx25_initialize_usb_hw(void __iomem *base, int port, u
 
 	switch (port) {
 	case 0:	/* OTG port */
-		v &= ~(MX25_OTG_SIC_MASK | MX25_OTG_PM_BIT | MX25_OTG_PP_BIT |
-			MX25_OTG_OCPOL_BIT);
-		v |= (flags & MXC_EHCI_INTERFACE_MASK) << MX25_OTG_SIC_SHIFT;
-
-		if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
-			v |= MX25_OTG_PM_BIT;
-
-		if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
-			v |= MX25_OTG_PP_BIT;
-
-		if (!(flags & MXC_EHCI_OC_PIN_ACTIVE_LOW))
-			v |= MX25_OTG_OCPOL_BIT;
-
+		v &= ~(MX25_OTG_SIC_MASK | MX25_OTG_PP_BIT);
+		v |= (MX25_OTG_PM_BIT | MX25_OTG_OCPOL_BIT);
 		break;
 	case 1: /* H1 port */
-		v &= ~(MX25_H1_SIC_MASK | MX25_H1_PM_BIT | MX25_H1_PP_BIT |
-			MX25_H1_OCPOL_BIT | MX25_H1_TLL_BIT | MX25_H1_USBTE_BIT |
-			MX25_H1_IPPUE_DOWN_BIT | MX25_H1_IPPUE_UP_BIT);
-		v |= (flags & MXC_EHCI_INTERFACE_MASK) << MX25_H1_SIC_SHIFT;
-
-		if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
-			v |= MX25_H1_PM_BIT;
-
-		if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
-			v |= MX25_H1_PP_BIT;
-
-		if (!(flags & MXC_EHCI_OC_PIN_ACTIVE_LOW))
-			v |= MX25_H1_OCPOL_BIT;
-
-		if (!(flags & MXC_EHCI_TLL_ENABLED))
-			v |= MX25_H1_TLL_BIT;
-
-		if (flags & MXC_EHCI_INTERNAL_PHY)
-			v |= MX25_H1_USBTE_BIT;
-
-		if (flags & MXC_EHCI_IPPUE_DOWN)
-			v |= MX25_H1_IPPUE_DOWN_BIT;
-
-		if (flags & MXC_EHCI_IPPUE_UP)
-			v |= MX25_H1_IPPUE_UP_BIT;
-
+		v &= ~(MX25_H1_SIC_MASK | MX25_H1_PP_BIT |  MX25_H1_IPPUE_UP_BIT);
+		v |= (MX25_H1_PM_BIT | MX25_H1_OCPOL_BIT | MX25_H1_TLL_BIT |
+			MX25_H1_USBTE_BIT | MX25_H1_IPPUE_DOWN_BIT);
 		break;
 	default:
 		return -EINVAL;
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

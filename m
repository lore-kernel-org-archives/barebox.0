Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qa0-x235.google.com ([2607:f8b0:400d:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XekYC-0002aL-E6
 for barebox@lists.infradead.org; Thu, 16 Oct 2014 12:53:05 +0000
Received: by mail-qa0-f53.google.com with SMTP id v10so2261347qac.26
 for <barebox@lists.infradead.org>; Thu, 16 Oct 2014 05:52:42 -0700 (PDT)
From: Dmitry Voytik <voytikd@gmail.com>
Date: Thu, 16 Oct 2014 16:52:20 +0400
Message-Id: <1413463940-9651-1-git-send-email-voytikd@gmail.com>
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
Subject: [PATCH] usb: ehci-hcd: Correct CLEAR_FEATURE code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Dmitry Voytik <voytikd@gmail.com>, barebox@lists.infradead.org

This commit broke USB on olinuxino board:

  87b9bea USB: host: hub: Use usb_hub_power_on from U-Boot

This patch was ported from U-Boot with small changes. See discussion:
http://lists.denx.de/pipermail/u-boot/2013-May/153920.html

The root cause seems to be a missing mask and missing 'break' in
ehci-hcd.c. Fix both.

Signed-off-by: Dmitry Voytik <voytikd@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 5624552..d2e1296 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -675,21 +675,23 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 		break;
 	case USB_REQ_CLEAR_FEATURE | ((USB_DIR_OUT | USB_RT_PORT) << 8):
 		reg = ehci_readl(status_reg);
+		reg &= ~EHCI_PS_CLEAR;
 		switch (le16_to_cpu(req->value)) {
 		case USB_PORT_FEAT_ENABLE:
 			reg &= ~EHCI_PS_PE;
 			break;
 		case USB_PORT_FEAT_C_ENABLE:
-			reg = (reg & ~EHCI_PS_CLEAR) | EHCI_PS_PE;
+			reg |= EHCI_PS_PEC;
 			break;
 		case USB_PORT_FEAT_POWER:
 			if (HCS_PPC(ehci_readl(&ehci->hccr->cr_hcsparams)))
-				reg = reg & ~(EHCI_PS_CLEAR | EHCI_PS_PP);
+				reg &= ~ EHCI_PS_PP;
+			break;
 		case USB_PORT_FEAT_C_CONNECTION:
-			reg = (reg & ~EHCI_PS_CLEAR) | EHCI_PS_CSC;
+			reg |= EHCI_PS_CSC;
 			break;
 		case USB_PORT_FEAT_OVER_CURRENT:
-			reg = (reg & ~EHCI_PS_CLEAR) | EHCI_PS_OCC;
+			reg |= EHCI_PS_OCC;
 			break;
 		case USB_PORT_FEAT_C_RESET:
 			ehci->portreset &= ~(1 << le16_to_cpu(req->index));
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RIyo2-0000kY-5f
	for barebox@lists.infradead.org; Wed, 26 Oct 2011 08:25:51 +0000
Received: by bkbc12 with SMTP id c12so1711764bkb.36
	for <barebox@lists.infradead.org>; Wed, 26 Oct 2011 01:25:47 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 26 Oct 2011 12:25:40 +0400
Message-Id: <1319617540-18475-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] usb: ehci-hcd.c: fix 'value computed is not used' warning
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 72f1c14..81e3a42 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -714,7 +714,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 			goto unknown;
 		}
 		/* unblock posted writes */
-		ehci_readl(&ehci->hcor->or_usbcmd);
+		(void) ehci_readl(&ehci->hcor->or_usbcmd);
 		break;
 	case USB_REQ_CLEAR_FEATURE | ((USB_DIR_OUT | USB_RT_PORT) << 8):
 		reg = ehci_readl(status_reg);
@@ -743,7 +743,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 		}
 		ehci_writel(status_reg, reg);
 		/* unblock posted write */
-		ehci_readl(&ehci->hcor->or_usbcmd);
+		(void) ehci_readl(&ehci->hcor->or_usbcmd);
 		break;
 	default:
 		debug("Unknown request\n");
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

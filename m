Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XXQne-0004mY-09
 for barebox@lists.infradead.org; Fri, 26 Sep 2014 08:22:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Sep 2014 10:22:09 +0200
Message-Id: <1411719735-30949-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
References: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] USB: gadget: allow multiple udc drivers
To: barebox@lists.infradead.org

Since the MUSB driver will have it's own directory the Kconfig
entries won't be in drivers/usb/gadget/Kconfig. This is incompatible
with the current 'choice' approach for udc drivers. The udc drivers
do not implement the global usb_gadget_poll() anymore, so we can
drop the choice and allow multiple gadget drivers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/Kconfig | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 883a19f..65315e6 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -1,9 +1,4 @@
-config USB_HAVE_GADGET_DRIVER
-	bool
-	default y if ARCH_IMX || ARCH_MXS || ARCH_AT91 || ARCH_PXA
-
 menuconfig USB_GADGET
-	depends on USB_HAVE_GADGET_DRIVER
 	select USB
 	bool "USB gadget support"
 
@@ -12,13 +7,11 @@ if USB_GADGET
 config USB_GADGET_DUALSPEED
 	bool
 
-choice
-	prompt "USB Peripheral Controller"
-
 config USB_GADGET_DRIVER_ARC
 	bool
 	prompt "Arc OTG device core"
 	depends on ARCH_IMX || ARCH_MXS
+	default y
 	select USB_GADGET_DUALSPEED
 	select POLLER
 
@@ -26,6 +19,7 @@ config USB_GADGET_DRIVER_AT91
 	bool
 	prompt "at91 gadget driver"
 	depends on ARCH_AT91
+	default y
 	select USB_GADGET_DUALSPEED
 	select POLLER
 
@@ -33,9 +27,9 @@ config USB_GADGET_DRIVER_PXA27X
 	bool
 	prompt "PXA27x gadget driver"
 	depends on ARCH_PXA
+	default y
 	select USB_GADGET_DUALSPEED
 	select POLLER
-endchoice
 
 comment "USB Gadget drivers"
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

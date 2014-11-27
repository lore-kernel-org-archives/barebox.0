Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xu1mp-0002EM-OC
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 16:19:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2014 17:15:29 +0100
Message-Id: <1417104932-13960-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417104932-13960-1-git-send-email-s.hauer@pengutronix.de>
References: <1417104932-13960-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] USB: Gadget: Select poller from USB_GADGET option
To: barebox@lists.infradead.org

The poller has been merged to the gadget core, so
now the core needs poller support, not the individual drivers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/Kconfig | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index d75f54e..cd21ba7 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -1,5 +1,6 @@
 menuconfig USB_GADGET
 	select USB
+	select POLLER
 	bool "USB gadget support"
 
 if USB_GADGET
@@ -13,7 +14,6 @@ config USB_GADGET_DRIVER_ARC
 	depends on ARCH_IMX || ARCH_MXS
 	default y
 	select USB_GADGET_DUALSPEED
-	select POLLER
 
 config USB_GADGET_DRIVER_AT91
 	bool
@@ -21,7 +21,6 @@ config USB_GADGET_DRIVER_AT91
 	depends on ARCH_AT91
 	default y
 	select USB_GADGET_DUALSPEED
-	select POLLER
 
 config USB_GADGET_DRIVER_PXA27X
 	bool
@@ -29,7 +28,6 @@ config USB_GADGET_DRIVER_PXA27X
 	depends on ARCH_PXA
 	default y
 	select USB_GADGET_DUALSPEED
-	select POLLER
 
 comment "USB Gadget drivers"
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

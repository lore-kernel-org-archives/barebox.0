Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqgUW-0001xd-Lt
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 08:17:17 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 16 Jul 2012 10:15:31 +0200
Message-Id: <1342426531-14831-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2] usb: gadget: enable for MXS
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
Changes since v1:
- enable Arc OTG Driver, too (tnx Sascha)

Marc

 drivers/usb/gadget/Kconfig |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index f7f2697..465121c 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -4,7 +4,7 @@ menuconfig USB_GADGET
 
 config USB_HAVE_GADGET_DRIVER
 	bool
-	default y if ARCH_IMX || ARCH_AT91 || ARCH_PXA
+	default y if ARCH_IMX || ARCH_MXS || ARCH_AT91 || ARCH_PXA
 
 if USB_GADGET
 
@@ -17,7 +17,7 @@ choice
 config USB_GADGET_DRIVER_ARC
 	bool
 	prompt "Arc OTG device core"
-	depends on ARCH_IMX
+	depends on ARCH_IMX || ARCH_MXS
 	select USB_GADGET_DUALSPEED
 	select POLLER
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

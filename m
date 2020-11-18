Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kfU9l-0005t6-DL
 for barebox@lists.infradead.org; Wed, 18 Nov 2020 20:34:22 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 18 Nov 2020 21:34:09 +0100
Message-Id: <20201118203409.7858-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] usb: gadget: fastboot: fix no longer accurate help text
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Since 38d7ba55da26 ("fastboot: rename usbgadget.fastboot_* variables to
fastboot.*"), the variables are named differently. Amend the help text.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 977f6c0dba23..7e0c570914d7 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -39,7 +39,7 @@ config USB_GADGET_AUTOSTART
 	help
 	  Enabling this option allows to automatically start a dfu or
 	  fastboot gadget during boot. This behaviour is controlled with
-	  the global.usbgadget.{dfu,fastboot}_function variable.
+	  the global.usbgadget.dfu_function and global.fastboot.* variables.
 
 comment "USB Gadget drivers"
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

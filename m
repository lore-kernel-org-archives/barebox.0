Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Smrra-0002DW-PZ
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:40 +0200
Message-Id: <1341517020-5581-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
References: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/30] mfd TWL4030: Fix Kconfig dependencies
To: barebox@lists.infradead.org

The twl core does not depend on the twl usb support. It's the other
way round.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/Kconfig     |    1 -
 drivers/usb/otg/Kconfig |    1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 57f4003..af67935 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -25,7 +25,6 @@ config I2C_TWLCORE
 
 config I2C_TWL4030
 	depends on I2C
-	depends on USB_TWL4030
 	select I2C_TWLCORE
 	bool "TWL4030 driver"
 
diff --git a/drivers/usb/otg/Kconfig b/drivers/usb/otg/Kconfig
index d871677..892c21e 100644
--- a/drivers/usb/otg/Kconfig
+++ b/drivers/usb/otg/Kconfig
@@ -4,4 +4,5 @@ config USB_ULPI
 	  Support for transceivers that conforms ULPI specification.
 
 config USB_TWL4030
+	depends on I2C_TWL4030
 	bool "TWL4030 Transceiver support"
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

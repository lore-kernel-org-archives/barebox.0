Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahze-00052W-VO
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:43 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz9-0006u0-4K
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:07 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:45 +0100
Message-Id: <20191129151505.23946-20-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 19/39] usb: usb251xb: depend on OFDEVICE
To: barebox@lists.infradead.org

The usb2551x driver gets all its configuration info from the DT, so
there is no point in allowing this driver to be build when probing
from DT isn't enabled.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/usb/misc/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/misc/Kconfig b/drivers/usb/misc/Kconfig
index 7d6c9da59462..270606f50bb8 100644
--- a/drivers/usb/misc/Kconfig
+++ b/drivers/usb/misc/Kconfig
@@ -6,6 +6,7 @@ comment "USB Miscellaneous drivers"
 config USB_HUB_USB251XB
 	bool "USB251XB Hub Controller Configuration Driver"
 	depends on I2C
+	depends on OFDEVICE
 	select NLS
 	help
 	  This option enables support for configuration via SMBus of the
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

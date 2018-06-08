Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fRFDn-0005FA-Te
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 11:06:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1fRFDZ-0003sf-W0
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 13:06:06 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  8 Jun 2018 13:06:05 +0200
Message-Id: <20180608110605.8248-1-l.stach@pengutronix.de>
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
Subject: [PATCH] serdev: select POLLER
To: barebox@lists.infradead.org

A lot of the inner working of the serdev framework depend on the poller,
so there is no point in allowing to build without poller support.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/serial/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 8a56d39f7c84..d462c11c169d 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -3,6 +3,7 @@ menu "serial drivers"
 
 config SERIAL_DEV_BUS
 	bool "Serial device bus"
+	select POLLER
 	depends on CONSOLE_FULL
 	help
 	  Core support for devices connected via a serial port.
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

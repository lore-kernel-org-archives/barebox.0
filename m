Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmHof-0005AL-7D
 for barebox@lists.infradead.org; Wed, 14 Oct 2015 08:53:46 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZmHoN-0005FH-H4
 for barebox@lists.infradead.org; Wed, 14 Oct 2015 10:53:27 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 14 Oct 2015 10:53:25 +0200
Message-Id: <1444812807-2331-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] input: usb-kbd: depend on CONSOLE_FULL
To: barebox@lists.infradead.org

Fixes:
In function `usb_kbd_probe':
(usb_kbd_probe): undefined reference to `console_set_active'

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/input/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index 24a5d10f89bc..336b9f581406 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -49,6 +49,7 @@ config KEYBOARD_TWL6030
 config KEYBOARD_USB
 	bool "USB keyboard"
 	depends on USB_HOST
+	depends on CONSOLE_FULL
 	select POLLER
 	help
 	  This driver implements support for usb keyboard.
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

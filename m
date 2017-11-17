Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eFlJ4-0001Yn-0k
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 18:24:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1eFlIe-00044H-Ew
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 19:23:36 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 17 Nov 2017 19:23:36 +0100
Message-Id: <20171117182336.11178-1-l.stach@pengutronix.de>
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
Subject: [PATCH] usbgadget: fastboot: select FILE_LIST
To: barebox@lists.infradead.org

The file list functions are used by the fastboot gadget since
a3976c3a84f2 (usbgadget: fastboot: Use function to find file_list
entry by name).

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/usb/gadget/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 4292371f09c6..64347f0d18c4 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -56,6 +56,7 @@ config USB_GADGET_SERIAL
 config USB_GADGET_FASTBOOT
 	bool
 	select BANNER
+	select FILE_LIST
 	prompt "Android Fastboot support"
 
 endif
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

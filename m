Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4nh-0008Ok-MN
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:46:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cT4nK-0005ol-GQ
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 11:45:46 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 16 Jan 2017 11:45:45 +0100
Message-Id: <20170116104546.21842-2-l.stach@pengutronix.de>
In-Reply-To: <20170116104546.21842-1-l.stach@pengutronix.de>
References: <20170116104546.21842-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] usb: gadget: disable AT91 driver on SAMA5D4
To: barebox@lists.infradead.org

This architecture is missing the right defines for the system
peripherals, that are needed for this driver to build successfully.

Disable it for now until someone with a clue about this architecture
can fill in the gap.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/usb/gadget/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 81c372320008..eb279ae8df4f 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -19,6 +19,7 @@ config USB_GADGET_DRIVER_AT91
 	bool
 	prompt "at91 gadget driver"
 	depends on ARCH_AT91
+	depends on !ARCH_SAMA5D4
 	default y
 	select USB_GADGET_DUALSPEED
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

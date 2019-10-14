Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzJr-0002MP-6Q
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:19:24 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 14:18:52 +0200
Message-Id: <20191014121901.19471-4-a.fatoum@pengutronix.de>
In-Reply-To: <20191014121901.19471-1-a.fatoum@pengutronix.de>
References: <20191014121901.19471-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 03/12] usb: gadget: at91_udc: don't depend on !ARCH_SAMA5D4
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The negative depends rules out using UDC for some targets of a
multi-image barebox while still supporting SAMA5D4.
We don't (yet) have such a configuration, but seeing as there is little
to gain by restricting the selection, drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index ca1bfc1b4e89..9d6a262038d3 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -19,7 +19,6 @@ config USB_GADGET_DRIVER_AT91
 	bool
 	prompt "at91 gadget driver"
 	depends on ARCH_AT91
-	depends on !ARCH_SAMA5D4
 	default y
 	select USB_GADGET_DUALSPEED
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

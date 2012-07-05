Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Smrra-0002Dg-P4
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:50 +0200
Message-Id: <1341517020-5581-20-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/30] usb gadget: Enable gadget support only when a driver is
 available
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/Kconfig |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 4eb2f62..f7f2697 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -1,6 +1,11 @@
 menuconfig USB_GADGET
+	depends on USB_HAVE_GADGET_DRIVER
 	bool "USB gadget support            "
 
+config USB_HAVE_GADGET_DRIVER
+	bool
+	default y if ARCH_IMX || ARCH_AT91 || ARCH_PXA
+
 if USB_GADGET
 
 config USB_GADGET_DUALSPEED
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCssH-0006r8-IM
 for barebox@lists.infradead.org; Sat, 15 Sep 2012 13:57:34 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Sat, 15 Sep 2012 15:56:24 +0200
Message-Id: <1347717385-24815-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/2] ARM i.MX6: add usb function prototypes
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Add missing prototypes to mach/usb.h

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/usb.h |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/usb.h b/arch/arm/mach-imx/include/mach/usb.h
index 5d6670d..d953bf0 100644
--- a/arch/arm/mach-imx/include/mach/usb.h
+++ b/arch/arm/mach-imx/include/mach/usb.h
@@ -11,4 +11,7 @@
 #define MX35_H1_USBTE_BIT	(1 << 4)
 #define MXC_EHCI_INTERFACE_SINGLE_UNI	(2 << 0)
 
+
+int imx6_usb_phy1_disable_oc(void);
+int imx6_usb_phy1_enable(void);
 #endif /* __MACH_USB_H_*/
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

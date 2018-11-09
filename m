Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3TI-0002hX-Bx
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:53:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Nov 2018 10:52:38 +0100
Message-Id: <20181109095246.15068-13-s.hauer@pengutronix.de>
In-Reply-To: <20181109095246.15068-1-s.hauer@pengutronix.de>
References: <20181109095246.15068-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/20] ARM: i.MX6 usb: Add missing include
To: Barebox List <barebox@lists.infradead.org>

include header file providing the protype for functions that usb-imx6.c
implements.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/usb-imx6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/usb-imx6.c b/arch/arm/mach-imx/usb-imx6.c
index 5e3df10e44..4236bcb772 100644
--- a/arch/arm/mach-imx/usb-imx6.c
+++ b/arch/arm/mach-imx/usb-imx6.c
@@ -20,6 +20,7 @@
 #include <common.h>
 #include <io.h>
 #include <mach/imx6-regs.h>
+#include <mach/usb.h>
 
 #define SET				0x4
 #define CLR				0x8
@@ -33,7 +34,6 @@
 #define USB_UH1_USBCMD			0x340
 
 #define USB_CMD_RUNSTOP			(1 <<  0)
-#define USB_CMD_RESET			(1 <<  1)
 
 #define USB_OVER_CUR_DIS		(1 <<  7)
 #define USBPHY_CTRL_SFTRST		(1 << 31)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

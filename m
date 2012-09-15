Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCssI-0006r9-1l
 for barebox@lists.infradead.org; Sat, 15 Sep 2012 13:57:34 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Sat, 15 Sep 2012 15:56:25 +0200
Message-Id: <1347717385-24815-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1347717385-24815-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1347717385-24815-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] ARM i.MX6: fix usb_ehci warnings for sabrelite
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

This fixes the following warnings:

arch/arm/boards/freescale-mx6-sabrelite/board.c: In function 'sabrelite_ehci_init':
arch/arm/boards/freescale-mx6-sabrelite/board.c:265:2: warning: implicit declaration of function 'imx6_usb_phy1_disable_oc' [-Wimplicit-function-declaration]
arch/arm/boards/freescale-mx6-sabrelite/board.c:266:2: warning: implicit declaration of function 'imx6_usb_phy1_enable' [-Wimplicit-function-declaration]

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

---
 arch/arm/boards/freescale-mx6-sabrelite/board.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 1ac401e..c5bcf8b 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -40,6 +40,7 @@
 #include <mach/gpio.h>
 #include <spi/spi.h>
 #include <mach/spi.h>
+#include <mach/usb.h>
 
 #define SABRELITE_SD3_WP	IMX_GPIO_NR(7, 1)
 #define SABRELITE_SD3_CD	IMX_GPIO_NR(7, 0)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

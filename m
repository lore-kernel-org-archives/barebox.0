Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXSOx-00075V-22
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 13:19:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dXSOb-0006LK-LV
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 15:18:37 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 18 Jul 2017 15:18:36 +0200
Message-Id: <20170718131837.26877-3-l.stach@pengutronix.de>
In-Reply-To: <20170718131837.26877-1-l.stach@pengutronix.de>
References: <20170718131837.26877-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: rdu2: remove unecessary includes
To: barebox@lists.infradead.org

The board file has many more includes than what is really needed,
clean this up.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx6q-rdu2/board.c | 20 ++------------------
 1 file changed, 2 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index 4176ca79353d..85140f8b5c61 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -14,26 +14,10 @@
  */
 
 #include <common.h>
-#include <init.h>
-#include <environment.h>
-#include <mach/imx6-regs.h>
 #include <gpio.h>
-#include <asm/armlinux.h>
-#include <generated/mach-types.h>
-#include <partition.h>
-#include <linux/phy.h>
-#include <asm/io.h>
-#include <asm/mmu.h>
-#include <mach/generic.h>
-#include <linux/sizes.h>
-#include <net.h>
-#include <mach/imx6.h>
-#include <mach/devices-imx6.h>
-#include <mach/iomux-mx6.h>
-#include <spi/spi.h>
-#include <mach/spi.h>
-#include <mach/usb.h>
+#include <init.h>
 #include <mach/bbu.h>
+#include <mach/imx6.h>
 
 #define RDU2_DAC1_RESET	IMX_GPIO_NR(1, 0)
 #define RDU2_DAC2_RESET	IMX_GPIO_NR(1, 2)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

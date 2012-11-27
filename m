Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TdRLU-0002Qj-07
 for barebox@lists.infradead.org; Tue, 27 Nov 2012 20:01:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Nov 2012 21:01:16 +0100
Message-Id: <1354046477-17530-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354046477-17530-1-git-send-email-s.hauer@pengutronix.de>
References: <1354046477-17530-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] i.MX27 regs remove unnecessary include
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S |    1 +
 arch/arm/mach-imx/include/mach/imx27-regs.h    |    2 --
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
index 8f0000f..38cc55c 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
@@ -7,6 +7,7 @@
 #include <config.h>
 #include <mach/imx27-regs.h>
 #include <mach/imx-pll.h>
+#include <mach/esdctl.h>
 #include <asm/barebox-arm-head.h>
 
 #define writel(val, reg) \
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 90b4614..44bc1d3 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -124,8 +124,6 @@
 #define MX27_WBCR	0x1C	/* Well Bias Control Register */
 #define MX27_DSCR(x)	(0x1C + ((x) << 2))	/* Driving Strength Control Register 1 - 13 */
 
-#include "esdctl.h"
-
 /* PLL registers (base: MX27_CCM_BASE_ADDR) */
 #define MX27_CSCR	0x00 /* Clock Source Control Register       */
 #define MX27_MPCTL0	0x04 /* MCU PLL Control Register 0          */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

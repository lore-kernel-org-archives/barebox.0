Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMFLs-0001f1-Ad
	for barebox@lists.infradead.org; Wed, 09 Jun 2010 07:05:29 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Wed,  9 Jun 2010 10:05:02 +0300
Message-Id: <1b4ced2813ef508ad294faba378f9999431c9cdd.1276065824.git.baruch@tkos.co.il>
In-Reply-To: <cover.1276065824.git.baruch@tkos.co.il>
References: <cover.1276065824.git.baruch@tkos.co.il>
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
Subject: [PATCH 3/8] mx25 3ds: cleanup lowlevel_init code
To: barebox@lists.infradead.org
Cc: Baruch Siach <baruch@tkos.co.il>

* remove unused asm/cache-l2x0.h header include
* remove out of place comment
* remove redundant defines

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 board/freescale-mx25-3-stack/lowlevel_init.S |   13 +++----------
 1 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/board/freescale-mx25-3-stack/lowlevel_init.S b/board/freescale-mx25-3-stack/lowlevel_init.S
index bf03390..73bb147 100644
--- a/board/freescale-mx25-3-stack/lowlevel_init.S
+++ b/board/freescale-mx25-3-stack/lowlevel_init.S
@@ -24,7 +24,6 @@
 #include <mach/imx-regs.h>
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
-#include <asm/cache-l2x0.h>
 
 #define writel(val, reg) \
 	ldr		r0,	=reg;	\
@@ -56,13 +55,7 @@ CCM_BASE_ADDR_W:        .word   IMX_CCM_BASE
 board_init_lowlevel:
 	mov     r10, lr
 
-/*
- * End of ARM1136 init
- */
 #define MX25_CCM_MCR	0x64
-#define MX25_CCM_CGR0	0x0c
-#define MX25_CCM_CGR1	0x10
-#define MX25_CCM_CGR2	0x14
 
 	ldr r0, CCM_BASE_ADDR_W
 	/* default CLKO to 1/32 of the ARM core */
@@ -75,9 +68,9 @@ board_init_lowlevel:
 	str r1, [r0, #MX25_CCM_MCR]
 
 	/* enable all the clocks */
-	writel(0x1FFFFFFF, IMX_CCM_BASE + MX25_CCM_CGR0)
-	writel(0xFFFFFFFF, IMX_CCM_BASE + MX25_CCM_CGR1)
-	writel(0x000FDFFF, IMX_CCM_BASE + MX25_CCM_CGR2)
+	writel(0x1FFFFFFF, IMX_CCM_BASE + CCM_CGCR0)
+	writel(0xFFFFFFFF, IMX_CCM_BASE + CCM_CGCR1)
+	writel(0x000FDFFF, IMX_CCM_BASE + CCM_CGCR2)
 	writel(0x0000FEFF, IMX_CCM_BASE + MX25_CCM_MCR)
 
 	/* Skip SDRAM initialization if we run from RAM */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

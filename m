Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZldZL-0007NB-8E
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 13:55:16 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZldYy-0007wI-Hm
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 15:54:52 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 12 Oct 2015 15:54:51 +0200
Message-Id: <1444658092-26864-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1444658092-26864-1-git-send-email-l.stach@pengutronix.de>
References: <1444658092-26864-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: imx6: use l2x0 header for register definitions
To: barebox@lists.infradead.org

Instead of using a redundant definition. This makes things a bit cleaner
and also avoids to introduce another private define in the next patch.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index ceabe19dc2ab..509ac8460216 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -23,6 +23,7 @@
 #include <mach/imx6-regs.h>
 #include <mach/generic.h>
 #include <asm/mmu.h>
+#include <asm/cache-l2x0.h>
 
 #define SI_REV 0x260
 
@@ -195,8 +196,6 @@ int imx6_devices_init(void)
 	return 0;
 }
 
-#define L310_PREFETCH_CTRL		0xF60
-
 static int imx6_mmu_init(void)
 {
 	void __iomem *l2x0_base = IOMEM(0x00a02000);
@@ -205,8 +204,8 @@ static int imx6_mmu_init(void)
 	if (!cpu_is_mx6())
 		return 0;
 
-	/* Configure the L2 PREFETCH and POWER registers */
-	val = readl(l2x0_base + L310_PREFETCH_CTRL);
+	/* configure the PREFETCH register */
+	val = readl(l2x0_base + L2X0_PREFETCH_CTRL);
 	val |= 0x70800000;
 
 	/*
@@ -221,7 +220,7 @@ static int imx6_mmu_init(void)
 	if (cpu_is_mx6q())
 		val &= ~(1 << 30 | 1 << 23);
 
-	writel(val, l2x0_base + L310_PREFETCH_CTRL);
+	writel(val, l2x0_base + L2X0_PREFETCH_CTRL);
 
 	l2x0_init(l2x0_base, 0x0, ~0UL);
 
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

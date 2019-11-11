Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU9cj-0004SS-UK
 for barebox@lists.infradead.org; Mon, 11 Nov 2019 13:20:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Nov 2019 14:20:45 +0100
Message-Id: <20191111132045.20058-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: am335x: Enable MMC2 clock
To: Barebox List <barebox@lists.infradead.org>
Cc: rsc@pengutronix.de, rhi@pengutronix.de

Since Kernel commit 5b63fb90adb9 ("ARM: dts: Fix incomplete dts data for
am3 and am4 mmc") (barebox commit 419db1f984 ("dts: update to
v5.3-rc7")) the AM33xx MMC2 controller is unconditionally enabled in the
dts. This has the effect that the driver probes for this device and then
can't access the registers as the clock is disabled. Enable the clock to
let the driver probe successfully.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_clock.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
index e63e93601e..0a49038270 100644
--- a/arch/arm/mach-omap/am33xx_clock.c
+++ b/arch/arm/mach-omap/am33xx_clock.c
@@ -142,11 +142,13 @@ void am33xx_enable_per_clocks(void)
 	__raw_writel(PRCM_MOD_EN, CM_PER_CPSW_CLKSTCTRL);
 	while ((__raw_readl(CM_PER_CPGMAC0_CLKCTRL) & 0x30000) != 0x0);
 
-	/* MMC 0 & 1 */
+	/* MMC 0, 1 & 2 */
 	__raw_writel(PRCM_MOD_EN, CM_PER_MMC0_CLKCTRL);
 	while (__raw_readl(CM_PER_MMC0_CLKCTRL) != PRCM_MOD_EN);
 	__raw_writel(PRCM_MOD_EN, CM_PER_MMC1_CLKCTRL);
 	while (__raw_readl(CM_PER_MMC1_CLKCTRL) != PRCM_MOD_EN);
+	__raw_writel(PRCM_MOD_EN, CM_PER_MMC2_CLKCTRL);
+	while (__raw_readl(CM_PER_MMC2_CLKCTRL) != PRCM_MOD_EN);
 
 	/* Enable the control module though RBL would have done it*/
 	__raw_writel(PRCM_MOD_EN, CM_WKUP_CONTROL_CLKCTRL);
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

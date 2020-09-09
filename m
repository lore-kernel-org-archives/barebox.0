Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-dm6nam12on2115.outbound.protection.outlook.com
 ([40.107.243.115] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kG5uE-0006rd-1c
 for barebox@lists.infradead.org; Wed, 09 Sep 2020 19:37:22 +0000
From: Trent Piepho <trent.piepho@synapse.com>
Date: Wed,  9 Sep 2020 12:36:49 -0700
Message-Id: <20200909193650.347646-3-trent.piepho@synapse.com>
In-Reply-To: <20200909193650.347646-1-trent.piepho@synapse.com>
References: <20200909193650.347646-1-trent.piepho@synapse.com>
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
Subject: [PATCH 3/4] ARM: am335x: Enable TSC/ADC clock
To: barebox@lists.infradead.org
Cc: Trent Piepho <trent.piepho@synapse.com>

Now that there is a Barebox driver for the ADC, enable the clock to the
TSC/ADC block.

This machine doesn't use common clock framework clocks in Barebox, and
instead enables any clock that might get used.  Enalbing the clock could
be made conditional based on enabling the driver, but none of the other
clocks do this.

Signed-off-by: Trent Piepho <trent.piepho@synapse.com>
---
 arch/arm/mach-omap/am33xx_clock.c              | 4 ++++
 arch/arm/mach-omap/include/mach/am33xx-clock.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
index 0a4903827..8fa2c70aa 100644
--- a/arch/arm/mach-omap/am33xx_clock.c
+++ b/arch/arm/mach-omap/am33xx_clock.c
@@ -165,6 +165,10 @@ void am33xx_enable_per_clocks(void)
 	__raw_writel(PRCM_MOD_EN, CM_PER_USB0_CLKCTRL);
 	while ((__raw_readl(CM_PER_USB0_CLKCTRL) & 0x30000) != 0x0);
 
+	/* TSC & ADC */
+	__raw_writel(PRCM_MOD_EN, CM_WKUP_ADC_TSC_CLKCTRL);
+	while (__raw_readl(CM_WKUP_ADC_TSC_CLKCTRL) != PRCM_MOD_EN);
+
 	clkdcoldo = __raw_readl(CM_CLKDCOLDO_DPLL_PER);
 	clkdcoldo = clkdcoldo | 0x100;
 	__raw_writel(clkdcoldo, CM_CLKDCOLDO_DPLL_PER);
diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/mach-omap/include/mach/am33xx-clock.h
index 284d5f8cf..e71ecbcd2 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
@@ -138,6 +138,7 @@
 #define CM_PER_I2C1_CLKCTRL             (CM_PER + 0x48) /* I2C1 */
 #define CM_PER_I2C2_CLKCTRL             (CM_PER + 0x44) /* I2C2 */
 #define CM_WKUP_GPIO0_CLKCTRL           (CM_WKUP + 0x8) /* GPIO0 */
+#define CM_WKUP_ADC_TSC_CLKCTRL         (CM_WKUP + 0xbc)/* TSCADC */
 
 #define CM_PER_MMC0_CLKCTRL             (CM_PER + 0x3C)
 #define CM_PER_MMC1_CLKCTRL             (CM_PER + 0xF4)
-- 
2.25.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

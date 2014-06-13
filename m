Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f47.google.com ([209.85.215.47])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvMKk-0008S4-P6
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:55:35 +0000
Received: by mail-la0-f47.google.com with SMTP id pn19so1244931lab.20
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:55:07 -0700 (PDT)
Received: from mars.ipredator.se (anon-32-73.vpn.ipredator.se. [46.246.32.73])
 by mx.google.com with ESMTPSA id
 fb6sm512523lac.40.2014.06.13.00.55.05
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 13 Jun 2014 00:55:06 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 13 Jun 2014 09:54:18 +0200
Message-Id: <1402646075-22747-2-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
References: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
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
Subject: [PATCH 01/18] arm: am33xx: add USB clocks
To: barebox@lists.infradead.org

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 arch/arm/mach-omap/am33xx_clock.c              |    7 +++++++
 arch/arm/mach-omap/include/mach/am33xx-clock.h |    2 ++
 2 files changed, 9 insertions(+)

diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
index 9105ddc..f4b1f4e 100644
--- a/arch/arm/mach-omap/am33xx_clock.c
+++ b/arch/arm/mach-omap/am33xx_clock.c
@@ -26,6 +26,8 @@
 #define PLL_LOCK_MODE	0x7
 #define PLL_MULTIPLIER_SHIFT	 8
 
+#define DPLL_CLKDCOLDO_GATE_EN	(0x1 << 8)
+
 static void interface_clocks_enable(void)
 {
 	/* Enable all the Interconnect Modules */
@@ -154,6 +156,11 @@ static void per_clocks_enable(void)
 
 	__raw_writel(PRCM_MOD_EN, CM_PER_SPI1_CLKCTRL);
 	while (__raw_readl(CM_PER_SPI1_CLKCTRL) != PRCM_MOD_EN);
+
+	/* USB */
+	__raw_writel(DPLL_CLKDCOLDO_GATE_EN, CM_CLKDCOLDO_DPLL_PER);
+	__raw_writel(PRCM_MOD_EN, CM_PER_USB0_CLKCTRL);
+	while (__raw_readl(CM_PER_USB0_CLKCTRL) != PRCM_MOD_EN);
 }
 
 static void mpu_pll_config(int mpupll_M, int osc)
diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/mach-omap/include/mach/am33xx-clock.h
index 65fbed6..996f531 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
@@ -120,6 +120,8 @@
 #define CM_PER_TIMER2_CLKCTRL           (CM_PER + 0x80) /* Timer2 */
 #define CM_WKUP_UART0_CLKCTRL           (CM_WKUP + 0xB4)/* UART0 */
 #define CM_WKUP_CONTROL_CLKCTRL         (CM_WKUP + 0x4) /* Control Module */
+#define CM_PER_USB0_CLKCTRL             (CM_PER + 0x1C) /* USB */
+#define CM_CLKDCOLDO_DPLL_PER           (CM_WKUP + 0x7C)/* USB phy */
 #define CM_PER_EMIF_CLKCTRL             (CM_PER + 0x28) /* EMIF */
 #define CM_PER_EMIF_FW_CLKCTRL          (CM_PER + 0xD0) /* EMIF FW */
 #define CM_PER_GPMC_CLKCTRL             (CM_PER + 0x30) /* GPMC */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkrQt-0001W4-Ma
 for barebox@lists.infradead.org; Thu, 15 May 2014 08:54:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 10:54:07 +0200
Message-Id: <1400144048-7933-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: am33xx: Pass uart_base to soft_reset function
To: barebox@lists.infradead.org

To make am33xx_uart0_soft_reset more flexible rename it to
am33xx_uart_soft_reset and pass the UART base to it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/lowlevel.c            |  2 +-
 arch/arm/boards/phytec-phycore-am335x/lowlevel.c |  2 +-
 arch/arm/mach-omap/am33xx_generic.c              | 12 ++++++------
 arch/arm/mach-omap/include/mach/am33xx-silicon.h |  2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 66fd371..350e3ff 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -147,7 +147,7 @@ static noinline int beaglebone_sram_init(void)
 				&ddr2_data);
 	}
 
-	am33xx_uart0_soft_reset();
+	am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
 	am33xx_enable_uart0_pin_mux();
 	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
 	putc_ll('>');
diff --git a/arch/arm/boards/phytec-phycore-am335x/lowlevel.c b/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
index f04961d..a0ba86a 100644
--- a/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
@@ -76,7 +76,7 @@ static noinline void pcm051_board_init(void)
 			&MT41J256M8HX15E_2x256M8_regs,
 			&MT41J256M8HX15E_2x256M8_data);
 
-	am33xx_uart0_soft_reset();
+	am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
 	am33xx_enable_uart0_pin_mux();
 	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
 	putc_ll('>');
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index cee817e..1b53c06 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -226,22 +226,22 @@ int am33xx_devices_init(void)
 #define UART_RESET		(0x1 << 1)
 #define UART_SMART_IDLE_EN	(0x1 << 0x3)
 
-void am33xx_uart0_soft_reset(void)
+void am33xx_uart_soft_reset(void __iomem *uart_base)
 {
 	int reg;
 
-	reg = readl(AM33XX_UART0_BASE + UART_SYSCFG_OFFSET);
+	reg = readl(uart_base + UART_SYSCFG_OFFSET);
 	reg |= UART_RESET;
-	writel(reg, (AM33XX_UART0_BASE + UART_SYSCFG_OFFSET));
+	writel(reg, (uart_base + UART_SYSCFG_OFFSET));
 
-	while ((readl(AM33XX_UART0_BASE + UART_SYSSTS_OFFSET) &
+	while ((readl(uart_base + UART_SYSSTS_OFFSET) &
 		UART_CLK_RUNNING_MASK) != UART_CLK_RUNNING_MASK)
 		;
 
 	/* Disable smart idle */
-	reg = readl((AM33XX_UART0_BASE + UART_SYSCFG_OFFSET));
+	reg = readl((uart_base + UART_SYSCFG_OFFSET));
 	reg |= UART_SMART_IDLE_EN;
-	writel(reg, (AM33XX_UART0_BASE + UART_SYSCFG_OFFSET));
+	writel(reg, (uart_base + UART_SYSCFG_OFFSET));
 }
 
 
diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
index 16e665f..20b8e81 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
@@ -228,7 +228,7 @@ struct am33xx_ddr_data {
 	u32 dll_lock_diff0;
 };
 
-void am33xx_uart0_soft_reset(void);
+void am33xx_uart_soft_reset(void __iomem *uart_base);
 void am33xx_config_vtp(void);
 void am33xx_ddr_phydata_cmd_macro(const struct am33xx_cmd_control *cmd_ctrl);
 void am33xx_config_io_ctrl(int ioctrl);
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

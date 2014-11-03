Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XlQOn-0006JF-Qf
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 22:47:00 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id F007626C2003
 for <barebox@lists.infradead.org>; Mon,  3 Nov 2014 23:45:17 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon,  3 Nov 2014 23:52:23 +0100
Message-Id: <1415055144-6119-11-git-send-email-dev@lynxeye.de>
In-Reply-To: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
References: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 11/12] tegra: remove custom UART setup
To: barebox@lists.infradead.org

The config option doesn't make any sense anymore
when building a multiimage barebox. With a proper
DT built into the image we don't need the ODMdata
mechanism to find the debug UART anymore.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/Kconfig                 | 33 ---------------------
 arch/arm/mach-tegra/include/mach/lowlevel.h | 45 -----------------------------
 arch/arm/mach-tegra/tegra20.c               | 41 --------------------------
 3 files changed, 119 deletions(-)

diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index 1bdea8e..160732f 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -7,39 +7,6 @@ config ARCH_TEXT_BASE
 config BOARDINFO
 	default ""
 
-choice
-	prompt "Tegra debug UART"
-	help
-	  This is the first serial console that gets activated by barebox.
-	  Normally each board vendor should program a valid debug UART into
-	  the ODMdata section of the boot configuration table, so it's a
-	  reasonably good bet to use that.
-	  If you know your ODMdata is broken, or you don't wish to activate
-	  any serial console at all you can override the default here.
-
-config TEGRA_UART_ODMDATA
-	bool "ODMdata defined UART"
-
-config TEGRA_UART_A
-	bool "UART A"
-
-config TEGRA_UART_B
-	bool "UART B"
-
-config TEGRA_UART_C
-	bool "UART C"
-
-config TEGRA_UART_D
-	bool "UART D"
-
-config TEGRA_UART_E
-	bool "UART E"
-
-config TEGRA_UART_NONE
-	bool "None"
-
-endchoice
-
 # ---------------------------------------------------------
 
 config ARCH_TEGRA_2x_SOC
diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index c65be0b..3e7e41b 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -176,37 +176,6 @@ uint32_t tegra30_get_ramsize(void)
 	}
 }
 
-static long uart_id_to_base[] = {
-	TEGRA_UARTA_BASE,
-	TEGRA_UARTB_BASE,
-	TEGRA_UARTC_BASE,
-	TEGRA_UARTD_BASE,
-	TEGRA_UARTE_BASE,
-};
-
-static __always_inline
-long tegra20_get_debuguart_base(void)
-{
-	u32 odmdata;
-	int id;
-
-	odmdata = tegra_get_odmdata();
-
-	/*
-	 * Get type, we accept both "2" and "3", as they both demark a UART,
-	 * depending on the board type.
-	 */
-	if (!(((odmdata & T20_ODMDATA_UARTTYPE_MASK) >>
-	      T20_ODMDATA_UARTTYPE_SHIFT) & 0x2))
-		return 0;
-
-	id = (odmdata & T20_ODMDATA_UARTID_MASK) >> T20_ODMDATA_UARTID_SHIFT;
-	if (id > ARRAY_SIZE(uart_id_to_base))
-		return 0;
-
-	return uart_id_to_base[id];
-}
-
 #define CRC_OSC_CTRL			0x050
 #define CRC_OSC_CTRL_OSC_FREQ_SHIFT	30
 #define CRC_OSC_CTRL_OSC_FREQ_MASK	(0x3 << CRC_OSC_CTRL_OSC_FREQ_SHIFT)
@@ -231,20 +200,6 @@ int tegra_get_osc_clock(void)
 	}
 }
 
-static __always_inline
-int tegra_get_pllp_rate(void)
-{
-	switch (tegra_get_chiptype()) {
-	case TEGRA20:
-		return 216000000;
-	case TEGRA30:
-	case TEGRA124:
-		return 408000000;
-	default:
-		return 0;
-	}
-}
-
 #define TIMER_CNTR_1US	0x00
 #define TIMER_USEC_CFG	0x04
 
diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
index dcc55ae..8d1cd5b 100644
--- a/arch/arm/mach-tegra/tegra20.c
+++ b/arch/arm/mach-tegra/tegra20.c
@@ -22,47 +22,6 @@
 #include <mach/lowlevel.h>
 #include <mach/tegra114-sysctr.h>
 
-static struct NS16550_plat debug_uart = {
-	.shift = 2,
-};
-
-static int tegra_add_debug_console(void)
-{
-	unsigned long base = 0;
-
-	if (!of_machine_is_compatible("nvidia,tegra20") &&
-	    !of_machine_is_compatible("nvidia,tegra30") &&
-	    !of_machine_is_compatible("nvidia,tegra124"))
-		return 0;
-
-	/* figure out which UART to use */
-	if (IS_ENABLED(CONFIG_TEGRA_UART_NONE))
-		return 0;
-	if (IS_ENABLED(CONFIG_TEGRA_UART_ODMDATA))
-		base = tegra20_get_debuguart_base();
-	if (IS_ENABLED(CONFIG_TEGRA_UART_A))
-		base = TEGRA_UARTA_BASE;
-	if (IS_ENABLED(CONFIG_TEGRA_UART_B))
-		base = TEGRA_UARTB_BASE;
-	if (IS_ENABLED(CONFIG_TEGRA_UART_C))
-		base = TEGRA_UARTC_BASE;
-	if (IS_ENABLED(CONFIG_TEGRA_UART_D))
-		base = TEGRA_UARTD_BASE;
-	if (IS_ENABLED(CONFIG_TEGRA_UART_E))
-		base = TEGRA_UARTE_BASE;
-
-	if (!base)
-		return -ENODEV;
-
-	debug_uart.clock = tegra_get_pllp_rate();
-
-	add_ns16550_device(DEVICE_ID_DYNAMIC, base, 8 << debug_uart.shift,
-			   IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &debug_uart);
-
-	return 0;
-}
-console_initcall(tegra_add_debug_console);
-
 static int tegra20_mem_init(void)
 {
 	if (!of_machine_is_compatible("nvidia,tegra20"))
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

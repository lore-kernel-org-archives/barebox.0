Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZKTd-0001Ra-OD
 for barebox@lists.infradead.org; Sun, 13 Apr 2014 13:29:42 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p578FE321.dip0.t-ipconnect.de [87.143.227.33])
 by lynxeye.de (Postfix) with ESMTPA id A4A0418B425E
 for <barebox@lists.infradead.org>; Sun, 13 Apr 2014 15:27:56 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 13 Apr 2014 15:27:38 +0200
Message-Id: <1397395668-9325-9-git-send-email-dev@lynxeye.de>
In-Reply-To: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
References: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 08/18] tegra: recognize T30 in debug UART code
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 13 +++++++++++++
 arch/arm/mach-tegra/tegra20.c               | 11 ++++++++---
 2 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index d7b6f1e994fc..52b405d5f859 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -200,6 +200,19 @@ int tegra_get_osc_clock(void)
 	}
 }
 
+static __always_inline
+int tegra_get_pllp_rate(void)
+{
+	switch (tegra_get_chiptype()) {
+	case TEGRA20:
+		return 216000000;
+	case TEGRA30:
+		return 408000000;
+	default:
+		return 0;
+	}
+}
+
 #define TIMER_CNTR_1US	0x00
 #define TIMER_USEC_CFG	0x04
 
diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
index 0d76df9844dd..3ae77a120fe7 100644
--- a/arch/arm/mach-tegra/tegra20.c
+++ b/arch/arm/mach-tegra/tegra20.c
@@ -22,14 +22,17 @@
 #include <mach/lowlevel.h>
 
 static struct NS16550_plat debug_uart = {
-	.clock = 216000000, /* pll_p rate */
 	.shift = 2,
 };
 
-static int tegra20_add_debug_console(void)
+static int tegra_add_debug_console(void)
 {
 	unsigned long base = 0;
 
+	if (!of_machine_is_compatible("nvidia,tegra20") &&
+	    !of_machine_is_compatible("nvidia,tegra30"))
+		return 0;
+
 	/* figure out which UART to use */
 	if (IS_ENABLED(CONFIG_TEGRA_UART_NONE))
 		return 0;
@@ -49,12 +52,14 @@ static int tegra20_add_debug_console(void)
 	if (!base)
 		return -ENODEV;
 
+	debug_uart.clock = tegra_get_pllp_rate();
+
 	add_ns16550_device(DEVICE_ID_DYNAMIC, base, 8 << debug_uart.shift,
 			   IORESOURCE_MEM_8BIT, &debug_uart);
 
 	return 0;
 }
-console_initcall(tegra20_add_debug_console);
+console_initcall(tegra_add_debug_console);
 
 static int tegra20_mem_init(void)
 {
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x236.google.com ([2a00:1450:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAaM-00017C-UB
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:30 +0000
Received: by mail-wi0-f182.google.com with SMTP id bs8so4868547wib.15
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:11:05 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:54 +0200
Message-Id: <1403554262-12777-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403554262-12777-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403554262-12777-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 03/11] ARM: mvebu: convert Kirkwood devices to be probed from
 DT
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

With Kirkwood DT files available, convert Kirkwood SoC init
to register basic devices from DT only. Makefile targets for
dtbs will be removed again as soon as MULTI_PBL is available.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/dts/Makefile                             |  4 +-
 arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts | 14 +++++++
 arch/arm/dts/kirkwood-topkick-bb.dts              | 14 +++++++
 arch/arm/mach-mvebu/kirkwood.c                    | 46 -----------------------
 4 files changed, 31 insertions(+), 47 deletions(-)
 create mode 100644 arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts
 create mode 100644 arch/arm/dts/kirkwood-topkick-bb.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index a5e6fd29c39e..547dba4461f8 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -32,7 +32,9 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6q-var-custom.dtb \
 	imx6s-riotboard.dtb \
 	imx6q-phytec-pbaa03.dtb
-dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox-bb.dtb
+dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox-bb.dtb \
+	kirkwood-guruplug-server-plus-bb.dtb \
+	kirkwood-topkick-bb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3188-radxarock.dtb
 dtb-$(CONFIG_ARCH_SOCFPGA) += socfpga_cyclone5_sockit.dtb \
 	socfpga_cyclone5_socrates.dtb
diff --git a/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts b/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts
new file mode 100644
index 000000000000..aba7c06160d0
--- /dev/null
+++ b/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts
@@ -0,0 +1,14 @@
+/*
+ * Barebox specific DT overlay for Globalscale Guruplug
+ *   Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ */
+
+#include "arm/kirkwood-guruplug-server-plus.dts"
+
+/ {
+	gpio-leds {
+		health-r {
+			barebox,default-trigger = "heartbeat";
+		};
+	};
+};
diff --git a/arch/arm/dts/kirkwood-topkick-bb.dts b/arch/arm/dts/kirkwood-topkick-bb.dts
new file mode 100644
index 000000000000..20b74b111d91
--- /dev/null
+++ b/arch/arm/dts/kirkwood-topkick-bb.dts
@@ -0,0 +1,14 @@
+/*
+ * Barebox specific DT overlay for USI Topkick
+ *   Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ */
+
+#include "arm/kirkwood-topkick.dts"
+
+/ {
+	gpio-leds {
+		system {
+			barebox,default-trigger = "heartbeat";
+		};
+	};
+};
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index c79d13002a6a..fe9ca9cbe4d3 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -16,16 +16,9 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <ns16550.h>
-#include <linux/clk.h>
-#include <linux/clkdev.h>
 #include <asm/memory.h>
 #include <mach/kirkwood-regs.h>
 
-#define CONSOLE_UART_BASE	KIRKWOOD_UARTn_BASE(CONFIG_MVEBU_CONSOLE_UART)
-
-static struct clk *tclk;
-
 static inline void kirkwood_memory_find(unsigned long *phys_base,
 					unsigned long *phys_size)
 {
@@ -49,39 +42,6 @@ static inline void kirkwood_memory_find(unsigned long *phys_base,
 	}
 }
 
-static struct NS16550_plat uart_plat = {
-	.shift = 2,
-};
-
-static int kirkwood_add_uart(void)
-{
-	uart_plat.clock = clk_get_rate(tclk);
-	if (!add_ns16550_device(DEVICE_ID_DYNAMIC,
-				(unsigned int)CONSOLE_UART_BASE, 32,
-				IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
-				&uart_plat))
-		return -ENODEV;
-	return 0;
-}
-
-static int kirkwood_init_clocks(void)
-{
-	u32 val = readl(KIRKWOOD_SAR_BASE);
-	unsigned int rate;
-
-	/*
-	 * On Kirkwood, the TCLK frequency can be either
-	 * 166 Mhz or 200 Mhz
-	 */
-	if ((val & SAR_TCLK_FREQ) == SAR_TCLK_FREQ)
-		rate = 166666667;
-	else
-		rate = 200000000;
-
-	tclk = clk_fixed("tclk", rate);
-	return 0;
-}
-
 static int kirkwood_init_soc(void)
 {
 	unsigned long phys_base, phys_size;
@@ -89,14 +49,8 @@ static int kirkwood_init_soc(void)
 	barebox_set_model("Marvell Kirkwood");
 	barebox_set_hostname("kirkwood");
 
-	kirkwood_init_clocks();
-	clkdev_add_physbase(tclk, (unsigned int)KIRKWOOD_TIMER_BASE, NULL);
-	add_generic_device("orion-timer", DEVICE_ID_SINGLE, NULL,
-			   (unsigned int)KIRKWOOD_TIMER_BASE, 0x30,
-			   IORESOURCE_MEM, NULL);
 	kirkwood_memory_find(&phys_base, &phys_size);
 	arm_add_mem_device("ram0", phys_base, phys_size);
-	kirkwood_add_uart();
 
 	return 0;
 }
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

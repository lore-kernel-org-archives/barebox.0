Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x231.google.com ([2a00:1450:400c:c05::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAaN-00017M-Pd
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:31 +0000
Received: by mail-wi0-f177.google.com with SMTP id r20so4754513wiv.16
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:11:05 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:55 +0200
Message-Id: <1403554262-12777-5-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 04/11] ARM: mvebu: convert Armada 370/XP devices to be probed
 from DT
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

With Armada 370/XP DT files available, convert Armada 370/XP SoC init
to register basic devices from DT only. Makefile targets for dtbs will
be removed again as soon as MULTI_PBL is available.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/dts/Makefile                          |  3 ++
 arch/arm/dts/armada-370-mirabox-bb.dts         | 18 +++++++
 arch/arm/dts/armada-xp-gp-bb.dts               |  6 +++
 arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts | 18 +++++++
 arch/arm/mach-mvebu/armada-370-xp.c            | 66 +-------------------------
 5 files changed, 46 insertions(+), 65 deletions(-)
 create mode 100644 arch/arm/dts/armada-370-mirabox-bb.dts
 create mode 100644 arch/arm/dts/armada-xp-gp-bb.dts
 create mode 100644 arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 547dba4461f8..4642f979f6d5 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -33,6 +33,9 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6s-riotboard.dtb \
 	imx6q-phytec-pbaa03.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox-bb.dtb \
+	armada-370-mirabox-bb.dtb \
+	armada-xp-gp-bb.dtb \
+	armada-xp-openblocks-ax3-4-bb.dtb \
 	kirkwood-guruplug-server-plus-bb.dtb \
 	kirkwood-topkick-bb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3188-radxarock.dtb
diff --git a/arch/arm/dts/armada-370-mirabox-bb.dts b/arch/arm/dts/armada-370-mirabox-bb.dts
new file mode 100644
index 000000000000..22fec18aaf93
--- /dev/null
+++ b/arch/arm/dts/armada-370-mirabox-bb.dts
@@ -0,0 +1,18 @@
+/*
+ * Barebox specific DT overlay for Globalscale Mirabox
+ *   Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ */
+
+#include "arm/armada-370-mirabox.dts"
+
+/ {
+	soc {
+		internal-regs {
+			gpio_leds {
+				green_pwr_led {
+					barebox,default-trigger = "heartbeat";
+				};
+			};
+		};
+	};
+};
diff --git a/arch/arm/dts/armada-xp-gp-bb.dts b/arch/arm/dts/armada-xp-gp-bb.dts
new file mode 100644
index 000000000000..e27a9664451d
--- /dev/null
+++ b/arch/arm/dts/armada-xp-gp-bb.dts
@@ -0,0 +1,6 @@
+/*
+ * Barebox specific DT overlay for Marvell Armada XP DB-MV784MP-GP
+ *   Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ */
+
+#include "arm/armada-xp-gp.dts"
diff --git a/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts b/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
new file mode 100644
index 000000000000..350aa1cb0a6d
--- /dev/null
+++ b/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
@@ -0,0 +1,18 @@
+/*
+ * Barebox specific DT overlay for OpenBlocks AX3-4 board
+ *   Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ */
+
+#include "arm/armada-xp-openblocks-ax3-4.dts"
+
+/ {
+	soc {
+		internal-regs {
+			gpio_leds {
+				red_led {
+					barebox,default-trigger = "heartbeat";
+				};
+			};
+		};
+	};
+};
diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 051323eeb36c..e416a3876539 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -17,18 +17,9 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <ns16550.h>
-#include <linux/clk.h>
-#include <linux/clkdev.h>
 #include <asm/memory.h>
 #include <mach/armada-370-xp-regs.h>
 
-#define CONSOLE_UART_BASE	\
-	ARMADA_370_XP_UARTn_BASE(CONFIG_MVEBU_CONSOLE_UART)
-
-static struct clk *tclk;
-static struct clk *refclk;
-
 static inline void armada_370_xp_memory_find(unsigned long *phys_base,
 					     unsigned long *phys_size)
 {
@@ -52,53 +43,6 @@ static inline void armada_370_xp_memory_find(unsigned long *phys_base,
 	}
 }
 
-static struct NS16550_plat uart_plat = {
-	.shift = 2,
-};
-
-static int armada_370_xp_add_uart(void)
-{
-	uart_plat.clock = clk_get_rate(tclk);
-	if (!add_ns16550_device(DEVICE_ID_DYNAMIC,
-				(unsigned int)CONSOLE_UART_BASE, 32,
-				IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
-				&uart_plat))
-	    return -ENODEV;
-	return 0;
-}
-
-#if defined(CONFIG_ARCH_ARMADA_370)
-static int armada_370_init_clocks(void)
-{
-	u32 val = readl(ARMADA_370_XP_SAR_BASE + SAR_LOW);
-	unsigned int rate;
-
-	/*
-	 * On Armada 370, the TCLK frequency can be either
-	 * 166 Mhz or 200 Mhz
-	 */
-	if ((val & SAR_TCLK_FREQ) == SAR_TCLK_FREQ)
-		rate = 200000000;
-	else
-		rate = 166000000;
-
-	tclk = clk_fixed("tclk", rate);
-	return clk_register_clkdev(tclk, NULL, "mvebu-timer");
-}
-#define armada_370_xp_init_clocks()	armada_370_init_clocks()
-#endif
-
-#if defined(CONFIG_ARCH_ARMADA_XP)
-static int armada_xp_init_clocks(void)
-{
-	/* On Armada XP, the TCLK frequency is always 250 Mhz */
-	tclk = clk_fixed("tclk", 250000000);
-	refclk = clk_fixed("ref25M", 25000000);
-	return 0;
-}
-#define armada_370_xp_init_clocks()	armada_xp_init_clocks()
-#endif
-
 static int armada_370_xp_init_soc(void)
 {
 	unsigned long phys_base, phys_size;
@@ -106,17 +50,9 @@ static int armada_370_xp_init_soc(void)
 	barebox_set_model("Marvell Armada 370/XP");
 	barebox_set_hostname("armada");
 
-	armada_370_xp_init_clocks();
-	clkdev_add_physbase(tclk, (unsigned int)ARMADA_370_XP_TIMER_BASE, NULL);
-	if (refclk && !IS_ERR(refclk))
-		clkdev_add_physbase(refclk, (u32)ARMADA_370_XP_TIMER_BASE,
-				    "fixed");
-	add_generic_device("mvebu-timer", DEVICE_ID_SINGLE, NULL,
-			   (unsigned int)ARMADA_370_XP_TIMER_BASE, 0x30,
-			   IORESOURCE_MEM, NULL);
 	armada_370_xp_memory_find(&phys_base, &phys_size);
 	arm_add_mem_device("ram0", phys_base, phys_size);
-	armada_370_xp_add_uart();
+
 	return 0;
 }
 core_initcall(armada_370_xp_init_soc);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqYmA-0001BK-9x
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 09:11:40 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 11:11:06 +0200
Message-Id: <20200701091122.3437-13-a.fatoum@pengutronix.de>
In-Reply-To: <20200701091122.3437-1-a.fatoum@pengutronix.de>
References: <20200701091122.3437-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 12/28] ARM: at91: add sama5d2 cache init
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The L2 cache controller needs some initialization before use. Same goes
for the CAN SRAM, do so after the MMU setup.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Makefile  |  1 +
 arch/arm/mach-at91/sama5d2.c | 52 ++++++++++++++++++++++++++++++++++++
 2 files changed, 53 insertions(+)
 create mode 100644 arch/arm/mach-at91/sama5d2.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 6aaef7c531da..7c8399ee76f2 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -26,6 +26,7 @@ obj-$(CONFIG_SOC_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
 obj-$(CONFIG_SOC_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
 endif
 lwl-$(CONFIG_SOC_SAMA5D2)	+= sama5d2_ll.o
+obj-$(CONFIG_SOC_SAMA5D2)	+= sama5d2.o
 obj-$(CONFIG_SOC_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_SOC_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
 obj-$(CONFIG_SOC_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
diff --git a/arch/arm/mach-at91/sama5d2.c b/arch/arm/mach-at91/sama5d2.c
new file mode 100644
index 000000000000..2f74b0b38df1
--- /dev/null
+++ b/arch/arm/mach-at91/sama5d2.c
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <of.h>
+#include <init.h>
+#include <mach/sama5d2.h>
+#include <asm/cache-l2x0.h>
+#include <asm/mmu.h>
+
+#define SFR_CAN		0x48
+#define SFR_L2CC_HRAMC	0x58
+
+static void sama5d2_can_ram_init(void)
+{
+	writel(0x00210021, SAMA5D2_BASE_SFR + SFR_CAN);
+}
+
+static void sama5d2_l2x0_init(void)
+{
+	void __iomem *l2x0_base = SAMA5D2_BASE_L2CC;
+	u32 cfg;
+
+	writel(0x1, SAMA5D2_BASE_SFR + SFR_L2CC_HRAMC);
+
+	/* Prefetch Control */
+	cfg = readl(l2x0_base + L2X0_PREFETCH_CTRL);
+	/* prefetch offset: TODO find proper values */
+	cfg |= 0x1;
+	cfg |= L2X0_INCR_DOUBLE_LINEFILL_EN | L2X0_PREFETCH_DROP_EN
+		| L2X0_DOUBLE_LINEFILL_EN;
+	cfg |= L2X0_DATA_PREFETCH_EN | L2X0_INSTRUCTION_PREFETCH_EN;
+	writel(cfg, l2x0_base + L2X0_PREFETCH_CTRL);
+
+	/* Power Control */
+	cfg = readl(l2x0_base + L2X0_POWER_CTRL);
+	cfg |= L2X0_STNDBY_MODE_EN | L2X0_DYNAMIC_CLK_GATING_EN;
+	writel(cfg, l2x0_base + L2X0_POWER_CTRL);
+
+	l2x0_init(l2x0_base, 0x0, ~0UL);
+}
+
+static int sama5d2_init(void)
+{
+	if (!of_machine_is_compatible("atmel,sama5d2"))
+		return 0;
+
+	sama5d2_can_ram_init();
+	sama5d2_l2x0_init();
+
+	return 0;
+}
+postmmu_initcall(sama5d2_init);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

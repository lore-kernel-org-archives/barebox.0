Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVDm-0004qt-Vo
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:23:56 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 07:23:18 +0200
Message-Id: <20200701052340.9462-7-a.fatoum@pengutronix.de>
In-Reply-To: <20200701052340.9462-1-a.fatoum@pengutronix.de>
References: <20200701052340.9462-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 06/28] ARM: at91: import early_udelay from at91bootstrap
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For use by the incoming at91bootstrap DDRAMC initialization code,
this commit provides an early_udelay function usable in PBL imported from
https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/driver/at91_pit.c

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Makefile                   |  1 +
 arch/arm/mach-at91/early_udelay.c             | 56 +++++++++++++++++++
 arch/arm/mach-at91/include/mach/at91_pmc_ll.h | 13 ++++-
 .../arm/mach-at91/include/mach/early_udelay.h | 14 +++++
 4 files changed, 83 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-at91/early_udelay.c
 create mode 100644 arch/arm/mach-at91/include/mach/early_udelay.h

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 89aff54b8af7..863b62eddcd0 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,5 +1,6 @@
 obj-y += setup.o
 lwl-y += at91_pmc_ll.o
+lwl-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += early_udelay.o
 
 ifeq ($(CONFIG_COMMON_CLK_OF_PROVIDER),)
 obj-y += clock.o
diff --git a/arch/arm/mach-at91/early_udelay.c b/arch/arm/mach-at91/early_udelay.c
new file mode 100644
index 000000000000..632e797bebe9
--- /dev/null
+++ b/arch/arm/mach-at91/early_udelay.c
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: BSD-1-Clause
+/*
+ * Copyright (c) 2012, Atmel Corporation
+ */
+
+#include <mach/hardware.h>
+#include <asm/io.h>
+#include <mach/at91_pmc_ll.h>
+#include <mach/at91_pit.h>
+#include <mach/early_udelay.h>
+
+static unsigned int master_clock;
+static void __iomem *pmc, *pit;
+static bool has_h32mxdiv;
+
+/* Because the below statement is used in the function:
+ *	((MASTER_CLOCK >> 10) * usec) is used,
+ * to our 32-bit system. the argu "usec" maximum value is:
+ * supposed "MASTER_CLOCK" is 132M.
+ *	132000000 / 1024 = 128906
+ *	(0xffffffff) / 128906 = 33318.
+ * So the maximum delay time is 33318 us.
+ */
+/* requires PIT to be initialized, but not the clocksource framework */
+void early_udelay(unsigned int usec)
+{
+	unsigned int delay;
+	unsigned int current;
+	unsigned int base = readl(pit + AT91_PIT_PIIR);
+
+	if (has_h32mxdiv)
+		master_clock /= 2;
+
+	delay = ((master_clock >> 10) * usec) >> 14;
+
+	do {
+		current = readl(pit + AT91_PIT_PIIR);
+		current -= base;
+	} while (current < delay);
+}
+
+void early_udelay_init(void __iomem *pmc_base,
+		       void __iomem *pit_base,
+		       unsigned int clock,
+		       unsigned int master_clock_rate,
+		       unsigned int flags)
+{
+	master_clock = master_clock_rate;
+	pmc = pmc_base;
+	pit = pit_base;
+	has_h32mxdiv = at91_pmc_check_mck_h32mxdiv(pmc, flags);
+
+	writel(AT91_PIT_PIV | AT91_PIT_PITEN, pit + AT91_PIT_MR);
+
+	at91_pmc_enable_periph_clock(pmc_base, clock);
+}
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc_ll.h b/arch/arm/mach-at91/include/mach/at91_pmc_ll.h
index eda40e8e12e7..e3d3e3ad59db 100644
--- a/arch/arm/mach-at91/include/mach/at91_pmc_ll.h
+++ b/arch/arm/mach-at91/include/mach/at91_pmc_ll.h
@@ -13,6 +13,7 @@
 #define AT91_PMC_LL_FLAG_SAM9X5_PMC	(1 << 0)
 #define AT91_PMC_LL_FLAG_MEASURE_XTAL	(1 << 1)
 #define AT91_PMC_LL_FLAG_DISABLE_RC	(1 << 2)
+#define AT91_PMC_LL_FLAG_H32MXDIV	(1 << 3)
 
 #define AT91_PMC_LL_AT91RM9200	(0)
 #define AT91_PMC_LL_AT91SAM9260	(0)
@@ -27,7 +28,8 @@
 				 AT91_PMC_LL_FLAG_MEASURE_XTAL)
 #define AT91_PMC_LL_SAMA5D3	(AT91_PMC_LL_FLAG_SAM9X5_PMC | \
 				 AT91_PMC_LL_FLAG_DISABLE_RC)
-#define AT91_PMC_LL_SAMA5D4	(AT91_PMC_LL_FLAG_SAM9X5_PMC)
+#define AT91_PMC_LL_SAMA5D4	(AT91_PMC_LL_FLAG_SAM9X5_PMC | \
+				 AT91_PMC_LL_FLAG_H32MXDIV)
 
 void at91_pmc_init(void __iomem *pmc_base, unsigned int flags);
 void at91_pmc_cfg_mck(void __iomem *pmc_base, u32 pmc_mckr, unsigned int flags);
@@ -75,4 +77,13 @@ static inline int at91_pmc_sam9x5_enable_periph_clock(void __iomem *pmc_base,
        return 0;
 }
 
+static inline bool at91_pmc_check_mck_h32mxdiv(void __iomem *pmc_base,
+					       unsigned flags)
+{
+	if (flags & AT91_PMC_LL_FLAG_H32MXDIV)
+		return readl(pmc_base + AT91_PMC_MCKR) & AT91_PMC_H32MXDIV;
+
+	return false;
+}
+
 #endif
diff --git a/arch/arm/mach-at91/include/mach/early_udelay.h b/arch/arm/mach-at91/include/mach/early_udelay.h
new file mode 100644
index 000000000000..1c1b0123fee8
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/early_udelay.h
@@ -0,0 +1,14 @@
+#ifndef __EARLY_UDELAY_H__
+#define __EARLY_UDELAY_H__
+
+#include <linux/compiler.h>
+
+/* requires PIT to be initialized, but not the clocksource framework */
+void early_udelay(unsigned int usec);
+void early_udelay_init(void __iomem *pmc_base,
+		       void __iomem *pit_base,
+		       unsigned int clock,
+		       unsigned int master_clock_rate,
+		       unsigned int flags);
+
+#endif
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

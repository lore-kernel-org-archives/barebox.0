Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjpGO-00063H-Q0
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 17:46:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gjpGL-0006gY-BT
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:01 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC4)
 (envelope-from <afa@pengutronix.de>) id 1gjpGK-0007qm-RU
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Jan 2019 18:45:54 +0100
Message-Id: <20190116174559.17416-7-a.fatoum@pengutronix.de>
In-Reply-To: <20190116174559.17416-1-a.fatoum@pengutronix.de>
References: <20190116174559.17416-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 06/11] ARM: at91: import early_udelay from at91bootstrap
To: barebox@lists.infradead.org

For use by the incoming at91bootstrap DDRAMC initialization code,
this commit provides an early_udelay function usable in PBL imported from
https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/driver/at91_pit.c

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig                    |  4 ++
 arch/arm/mach-at91/Makefile                   |  1 +
 arch/arm/mach-at91/early_udelay.c             | 61 +++++++++++++++++++
 .../arm/mach-at91/include/mach/early_udelay.h | 13 ++++
 4 files changed, 79 insertions(+)
 create mode 100644 arch/arm/mach-at91/early_udelay.c
 create mode 100644 arch/arm/mach-at91/include/mach/early_udelay.h

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 63e6e7285931..98d18c8b26db 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -15,6 +15,9 @@ config HAVE_AT91_UTMI
 config HAVE_AT91_USB_CLK
 	bool
 
+config HAVE_AT91_H32MXDIV
+	bool
+
 config COMMON_CLK_AT91
 	bool
 	select COMMON_CLK
@@ -196,6 +199,7 @@ config ARCH_SAMA5D4
 	select HAVE_AT91_DBGU2
 	select HAS_MACB
 	select HAVE_MACH_ARM_HEAD
+	select HAVE_AT91_H32MXDIV
 
 endchoice
 
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 7c4c58b080a1..b8ff6428d05a 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,5 +1,6 @@
 obj-y += setup.o
 pbl-y += lowlevel_clock.o
+pbl-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += early_udelay.o
 
 ifeq ($(CONFIG_COMMON_CLK_OF_PROVIDER),)
 obj-y += clock.o
diff --git a/arch/arm/mach-at91/early_udelay.c b/arch/arm/mach-at91/early_udelay.c
new file mode 100644
index 000000000000..b25b5d558833
--- /dev/null
+++ b/arch/arm/mach-at91/early_udelay.c
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: BSD-1-Clause
+/*
+ * Copyright (c) 2012, Atmel Corporation
+ */
+
+#include <mach/hardware.h>
+#include <asm/io.h>
+#include <mach/at91_lowlevel_clock.h>
+#include <mach/at91_pit.h>
+#include <mach/early_udelay.h>
+
+static unsigned int master_clock;
+static void __iomem *pmc, *pit;
+
+static bool pmc_check_mck_h32mxdiv(void)
+{
+	if (IS_ENABLED(CONFIG_HAVE_AT91_H32MXDIV))
+		return __raw_readl(pmc + AT91_PMC_MCKR) & AT91_PMC_H32MXDIV;
+
+	return false;
+}
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
+	unsigned int base = __raw_readl(pit + AT91_PIT_PIIR);
+
+	if (pmc_check_mck_h32mxdiv())
+		master_clock /= 2;
+
+	delay = ((master_clock >> 10) * usec) >> 14;
+
+	do {
+		current = __raw_readl(pit + AT91_PIT_PIIR);
+		current -= base;
+	} while (current < delay);
+}
+
+void early_udelay_init(void __iomem *pmc_base,
+		       void __iomem *pit_base,
+		       unsigned clock,
+		       unsigned int master_clock_rate)
+{
+	master_clock = master_clock_rate;
+	pmc = pmc_base;
+	pit = pit_base;
+
+	__raw_writel(AT91_PIT_PIV | AT91_PIT_PITEN, pit + AT91_PIT_MR);
+
+	at91_pmc_enable_periph_clock(pmc_base, clock);
+}
diff --git a/arch/arm/mach-at91/include/mach/early_udelay.h b/arch/arm/mach-at91/include/mach/early_udelay.h
new file mode 100644
index 000000000000..120b586310f0
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/early_udelay.h
@@ -0,0 +1,13 @@
+#ifndef __EARLY_UDELAY_H__
+#define __EARLY_UDELAY_H__
+
+#include <linux/compiler.h>
+
+/* requires PIT to be initialized, but not the clocksource framework */
+void early_udelay(unsigned int usec);
+void early_udelay_init(void __iomem *pmc_base,
+		       void __iomem *pit_base,
+		       unsigned clock,
+		       unsigned int master_clock_rate);
+
+#endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

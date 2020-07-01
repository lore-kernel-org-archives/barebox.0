Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVDl-0004r1-QJ
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:23:48 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 07:23:25 +0200
Message-Id: <20200701052340.9462-14-a.fatoum@pengutronix.de>
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
Subject: [PATCH 13/28] ARM: at91: add necessary Advanced Interrupt Controller
 configuration
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Without reconfiguration of the AIC redirection, the OS interrupt
handling will misbehave later on. Add it to the SoC init.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Makefile           |  2 +-
 arch/arm/mach-at91/aic.c              | 28 +++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/aic.h |  9 +++++++++
 arch/arm/mach-at91/sama5d2.c          |  2 ++
 4 files changed, 40 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-at91/aic.c
 create mode 100644 arch/arm/mach-at91/include/mach/aic.h

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 7c8399ee76f2..254bbeef2773 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,4 +1,4 @@
-obj-y += setup.o
+obj-y += setup.o aic.o
 lwl-y += at91_pmc_ll.o ddramc_ll.o matrix.o
 lwl-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += early_udelay.o
 
diff --git a/arch/arm/mach-at91/aic.c b/arch/arm/mach-at91/aic.c
new file mode 100644
index 000000000000..b40f1d214b28
--- /dev/null
+++ b/arch/arm/mach-at91/aic.c
@@ -0,0 +1,28 @@
+// SPDX-License-Identifier: BSD-1-Clause
+/*
+ * Copyright (c) 2015, Atmel Corporation
+ *
+ * Atmel's name may not be used to endorse or promote products derived from
+ * this software without specific prior written permission.
+ */
+
+#include <mach/aic.h>
+#include <io.h>
+
+#define SFR_AICREDIR	0x54
+#define SFR_SN1		0x50	/* Serial Number 1 Register */
+
+void at91_aic_redir(void __iomem *sfr, u32 key)
+{
+	u32 key32;
+
+	if (readl(sfr + SFR_AICREDIR) & 0x01)
+		return;
+
+	key32 = readl(sfr + SFR_SN1) ^ key;
+	writel(key32 | 0x01, sfr + SFR_AICREDIR);
+		/* bits[31:1] = key */
+		/* bit[0] = 1 => all interrupts redirected to AIC */
+		/* bit[0] = 0 => secure interrupts directed to SAIC,
+					others to AIC (default) */
+}
diff --git a/arch/arm/mach-at91/include/mach/aic.h b/arch/arm/mach-at91/include/mach/aic.h
new file mode 100644
index 000000000000..c1f026b60c62
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/aic.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: BSD-1-Clause */
+#ifndef __AT91_AIC_H_
+#define __AT91_AIC_H_
+
+#include <linux/compiler.h>
+
+void at91_aic_redir(void __iomem *sfr, u32 key);
+
+#endif
diff --git a/arch/arm/mach-at91/sama5d2.c b/arch/arm/mach-at91/sama5d2.c
index 2f74b0b38df1..c498b0964534 100644
--- a/arch/arm/mach-at91/sama5d2.c
+++ b/arch/arm/mach-at91/sama5d2.c
@@ -3,6 +3,7 @@
 #include <common.h>
 #include <of.h>
 #include <init.h>
+#include <mach/aic.h>
 #include <mach/sama5d2.h>
 #include <asm/cache-l2x0.h>
 #include <asm/mmu.h>
@@ -44,6 +45,7 @@ static int sama5d2_init(void)
 	if (!of_machine_is_compatible("atmel,sama5d2"))
 		return 0;
 
+	at91_aic_redir(SAMA5D2_BASE_SFR, SAMA5D2_AICREDIR_KEY);
 	sama5d2_can_ram_init();
 	sama5d2_l2x0_init();
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

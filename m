Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzhQ0-0000D6-L1
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 07:14:58 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 25 Jun 2014 09:18:19 +0200
Message-Id: <1403680701-10494-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1403680701-10494-1-git-send-email-dev@lynxeye.de>
References: <1403680701-10494-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/4] arm: imx6: add cpu lowlevel init function
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Enables all relevant errata workarounds for the
i.MX6 SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/Makefile               |  1 +
 arch/arm/mach-imx/cpu_init.c             | 27 +++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/generic.h |  2 ++
 3 files changed, 30 insertions(+)
 create mode 100644 arch/arm/mach-imx/cpu_init.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 03e5b10..1d311a4 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -22,3 +22,4 @@ obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX6_NAND) += imx6-bbu-nand.o
 pbl-y += esdctl.o
+lwl-y += cpu_init.o
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
new file mode 100644
index 0000000..68eacf7
--- /dev/null
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -0,0 +1,27 @@
+/*
+ * Copyright (C) 2014 Lucas Stach, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <asm/barebox-arm-head.h>
+#include <asm/errata.h>
+
+void imx6_cpu_lowlevel_init(void)
+{
+	arm_cpu_lowlevel_init();
+
+	enable_arm_errata_742230_war();
+	enable_arm_errata_743622_war();
+	enable_arm_errata_751472_war();
+	enable_arm_errata_761320_war();
+	enable_arm_errata_794072_war();
+}
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 506b1da..505a542 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -33,6 +33,8 @@ int imx51_devices_init(void);
 int imx53_devices_init(void);
 int imx6_devices_init(void);
 
+void imx6_cpu_lowlevel_init(void);
+
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
 #define IMX_GPIO_NR(bank, nr)		(((bank) - 1) * 32 + (nr))
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

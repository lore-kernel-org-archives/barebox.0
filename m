Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShLHb-0001HW-99
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 13:49:20 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ShLHX-0001Ho-SZ
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 15:49:15 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1ShLHX-0000tD-R4
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 15:49:15 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 20 Jun 2012 15:49:12 +0200
Message-Id: <1340200153-9215-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1340200153-9215-1-git-send-email-jbe@pengutronix.de>
References: <1340200153-9215-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ARM/MXS: add new way to reset the whole SoC
To: barebox@lists.infradead.org

Currently the watchdog is occupied for system reset. This usage collides with
the dedicated usage of a watchdog. This patch change the behaviour of at least
i.MX23/i.MX28 where the chipset supports a simple and powerful alternative
to reset the whole SoC (including the PMIC).

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-mxs/soc-imx23.c |   37 +++++++++++++++++++++++++++++++++++++
 arch/arm/mach-mxs/soc-imx28.c |   37 +++++++++++++++++++++++++++++++++++++
 2 files changed, 74 insertions(+)
 create mode 100644 arch/arm/mach-mxs/soc-imx23.c
 create mode 100644 arch/arm/mach-mxs/soc-imx28.c

diff --git a/arch/arm/mach-mxs/soc-imx23.c b/arch/arm/mach-mxs/soc-imx23.c
new file mode 100644
index 0000000..964b722
--- /dev/null
+++ b/arch/arm/mach-mxs/soc-imx23.c
@@ -0,0 +1,37 @@
+/*
+ * (c) 2012 Juergen Beisert <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * Collection of some SoC specific functions
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/imx-regs.h>
+#include <io.h>
+
+#define HW_CLKCTRL_RESET 0x120
+# define HW_CLKCTRL_RESET_CHIP (1 << 1)
+
+/* Reset the full i.MX23 SoC via a chipset feature */
+void __noreturn reset_cpu (unsigned long addr)
+{
+	u32 reg;
+
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_RESET);
+	writel(reg | HW_CLKCTRL_RESET_CHIP, IMX_CCM_BASE + HW_CLKCTRL_RESET);
+
+	while (1)
+		;
+	/*NOTREACHED*/
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
new file mode 100644
index 0000000..c7a34a8
--- /dev/null
+++ b/arch/arm/mach-mxs/soc-imx28.c
@@ -0,0 +1,37 @@
+/*
+ * (c) 2012 Juergen Beisert <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * Collection of some SoC specific functions
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/imx-regs.h>
+#include <io.h>
+
+#define HW_CLKCTRL_RESET 0x1e0
+# define HW_CLKCTRL_RESET_CHIP (1 << 1)
+
+/* Reset the full i.MX28 SoC via a chipset feature */
+void __noreturn reset_cpu (unsigned long addr)
+{
+	u32 reg;
+
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_RESET);
+	writel(reg | HW_CLKCTRL_RESET_CHIP, IMX_CCM_BASE + HW_CLKCTRL_RESET);
+
+	while (1)
+		;
+	/*NOTREACHED*/
+}
+EXPORT_SYMBOL(reset_cpu);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjSRM-0007nQ-8a
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 09:52:15 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 26 Jun 2012 11:51:47 +0200
Message-Id: <1340704314-12593-6-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 05/12] mach-davinci: add support for the PSC (Power and Sleep
 Controller)
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-davinci/Makefile |    1 +
 arch/arm/mach-davinci/psc.c    |   85 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 86 insertions(+)
 create mode 100644 arch/arm/mach-davinci/psc.c

diff --git a/arch/arm/mach-davinci/Makefile b/arch/arm/mach-davinci/Makefile
index d617d9e..0ac8f9b 100644
--- a/arch/arm/mach-davinci/Makefile
+++ b/arch/arm/mach-davinci/Makefile
@@ -3,3 +3,4 @@ obj-y += clocksource.o
 obj-y += da850.o
 obj-y += gpio.o
 obj-y += mux.o
+obj-y += psc.o
diff --git a/arch/arm/mach-davinci/psc.c b/arch/arm/mach-davinci/psc.c
new file mode 100644
index 0000000..88d6182
--- /dev/null
+++ b/arch/arm/mach-davinci/psc.c
@@ -0,0 +1,85 @@
+/*
+ * Power and Sleep Controller (PSC) functions.
+ *
+ * Copyright (C) 2007 Sergey Kubushyn <ksi@koi8.net>
+ * Copyright (C) 2008 Lyrtech <www.lyrtech.com>
+ * Copyright (C) 2004 Texas Instruments.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/hardware.h>
+
+/*
+ * The PSC manages three inputs to a "module" which may be a peripheral or
+ * CPU.  Those inputs are the module's:  clock; reset signal; and sometimes
+ * its power domain.  For our purposes, we only care whether clock and power
+ * are active, and the module is out of reset.
+ *
+ * DaVinci chips may include two separate power domains: "Always On" and "DSP".
+ * Chips without a DSP generally have only one domain.
+ *
+ * The "Always On" power domain is always on when the chip is on, and is
+ * powered by the VDD pins (on DM644X). The majority of DaVinci modules
+ * lie within the "Always On" power domain.
+ *
+ * A separate domain called the "DSP" domain houses the C64x+ and other video
+ * hardware such as VICP. In some chips, the "DSP" domain is not always on.
+ * The "DSP" power domain is powered by the CVDDDSP pins (on DM644X).
+ */
+
+/* Works on Always On power domain only (no PD argument) */
+void lpsc_on(unsigned int id)
+{
+	dv_reg_p mdstat, mdctl, ptstat, ptcmd;
+	struct davinci_psc_regs *psc_regs;
+
+	if (id < DAVINCI_LPSC_PSC1_BASE) {
+		if (id >= PSC_PSC0_MODULE_ID_CNT)
+			return;
+		psc_regs = davinci_psc0_regs;
+		mdstat = &psc_regs->psc0.mdstat[id];
+		mdctl = &psc_regs->psc0.mdctl[id];
+	} else {
+		id -= DAVINCI_LPSC_PSC1_BASE;
+		if (id >= PSC_PSC1_MODULE_ID_CNT)
+			return;
+		psc_regs = davinci_psc1_regs;
+		mdstat = &psc_regs->psc1.mdstat[id];
+		mdctl = &psc_regs->psc1.mdctl[id];
+	}
+	ptstat = &psc_regs->ptstat;
+	ptcmd = &psc_regs->ptcmd;
+
+	while (readl(ptstat) & 0x01)
+		continue;
+
+	if ((readl(mdstat) & 0x1f) == 0x03)
+		return; /* Already on and enabled */
+
+	writel(readl(mdctl) | 0x03, mdctl);
+
+	writel(0x01, ptcmd);
+
+	while (readl(ptstat) & 0x01)
+		continue;
+	while ((readl(mdstat) & 0x1f) != 0x03)
+		continue;
+}
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

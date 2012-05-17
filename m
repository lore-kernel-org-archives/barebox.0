Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og108.obsmtp.com ([64.18.0.186])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV3tt-0004QJ-17
 for barebox@lists.infradead.org; Thu, 17 May 2012 16:50:06 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 17 May 2012 17:49:47 +0100
Message-Id: <1337273391-20858-6-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1337273391-20858-1-git-send-email-renaud.barbier@ge.com>
References: <1337273391-20858-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH V5 5/9] 85xx clocking support
To: barebox@lists.infradead.org

This patch contains functions that returns information on
the CPU and buses frequency (LBC, DDR, system).
It also includes the clock source driver.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc85xx/speed.c |  104 +++++++++++++++++++++++++++++++++++++++++
 arch/ppc/mach-mpc85xx/time.c  |   53 +++++++++++++++++++++
 2 files changed, 157 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/mach-mpc85xx/speed.c
 create mode 100644 arch/ppc/mach-mpc85xx/time.c

diff --git a/arch/ppc/mach-mpc85xx/speed.c b/arch/ppc/mach-mpc85xx/speed.c
new file mode 100644
index 0000000..40d3664
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/speed.c
@@ -0,0 +1,104 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ *
+ * Copyright 2004, 2007-2011 Freescale Semiconductor, Inc.
+ *
+ * (C) Copyright 2003 Motorola Inc.
+ * Xianghua Xiao, (X.Xiao@motorola.com)
+ *
+ * (C) Copyright 2000
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <asm/processor.h>
+#include <mach/clocks.h>
+#include <mach/immap_85xx.h>
+#include <mach/mpc85xx.h>
+
+void fsl_get_sys_info(struct sys_info *sysInfo)
+{
+	void __iomem *gur = (void __iomem *)(MPC85xx_GUTS_ADDR);
+	uint plat_ratio, e500_ratio, half_freqSystemBus;
+	uint lcrr_div;
+	int i;
+
+	plat_ratio = in_be32(gur + MPC85xx_GUTS_PORPLLSR_OFFSET) & 0x0000003e;
+	plat_ratio >>= 1;
+	sysInfo->freqSystemBus = plat_ratio * CFG_SYS_CLK_FREQ;
+
+	/*
+	 * Divide before multiply to avoid integer
+	 * overflow for processor speeds above 2GHz.
+	 */
+	half_freqSystemBus = sysInfo->freqSystemBus/2;
+	for (i = 0; i < fsl_cpu_numcores(); i++) {
+		e500_ratio = (in_be32(gur + MPC85xx_GUTS_PORPLLSR_OFFSET) >>
+				(i * 8 + 16)) & 0x3f;
+		sysInfo->freqProcessor[i] = e500_ratio * half_freqSystemBus;
+	}
+
+	/* Note: freqDDRBus is the MCLK frequency, not the data rate. */
+	sysInfo->freqDDRBus = sysInfo->freqSystemBus;
+
+#ifdef CFG_DDR_CLK_FREQ
+	{
+		u32 ddr_ratio = (in_be32(gur + MPC85xx_GUTS_PORPLLSR_OFFSET) &
+					MPC85xx_PORPLLSR_DDR_RATIO) >>
+					MPC85xx_PORPLLSR_DDR_RATIO_SHIFT;
+		if (ddr_ratio != 0x7)
+			sysInfo->freqDDRBus = ddr_ratio * CFG_DDR_CLK_FREQ;
+	}
+#endif
+
+	lcrr_div = in_be32(LBC_BASE_ADDR + FSL_LBC_LCCR) & LCRR_CLKDIV;
+
+	if (lcrr_div == 2 || lcrr_div == 4 || lcrr_div == 8) {
+		/*
+		 * The entire PQ38 family use the same bit-representation
+		 * for twice the clock divider values.
+		 */
+		lcrr_div *= 2;
+
+		sysInfo->freqLocalBus = sysInfo->freqSystemBus / lcrr_div;
+	} else {
+		/* In case anyone cares what the unknown value is */
+		sysInfo->freqLocalBus = lcrr_div;
+	}
+}
+
+unsigned long fsl_get_bus_freq(ulong dummy)
+{
+	struct sys_info sys_info;
+
+	fsl_get_sys_info(&sys_info);
+
+	return sys_info.freqSystemBus;
+}
+
+unsigned long fsl_get_timebase_clock(void)
+{
+	struct sys_info sysinfo;
+
+	fsl_get_sys_info(&sysinfo);
+
+	return (sysinfo.freqSystemBus + 4UL)/8UL;
+}
diff --git a/arch/ppc/mach-mpc85xx/time.c b/arch/ppc/mach-mpc85xx/time.c
new file mode 100644
index 0000000..408a28a
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/time.c
@@ -0,0 +1,53 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * (C) Copyright 2000, 2001
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <init.h>
+#include <mach/clocks.h>
+
+uint64_t ppc_clocksource_read(void)
+{
+	return get_ticks();
+}
+
+static struct clocksource cs = {
+	.read	= ppc_clocksource_read,
+	.mask	= CLOCKSOURCE_MASK(64),
+};
+
+static int clocksource_init(void)
+{
+	/* reset time base */
+	asm ("li 3,0 ; mttbu 3 ; mttbl 3 ;");
+
+	clocks_calc_mult_shift(&cs.mult, &cs.shift,
+				fsl_get_timebase_clock(), NSEC_PER_SEC, 10);
+
+	init_clock(&cs);
+
+	return 0;
+}
+
+core_initcall(clocksource_init);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dT7LL-0005SS-Mm
 for barebox@lists.infradead.org; Thu, 06 Jul 2017 14:01:26 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  6 Jul 2017 16:00:41 +0200
Message-Id: <20170706140042.5029-2-o.rempel@pengutronix.de>
In-Reply-To: <20170706140042.5029-1-o.rempel@pengutronix.de>
References: <20170706140042.5029-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 2/3] ARM: i.MX: provide handler for power off over standby
To: barebox@lists.infradead.org, l.stach@pengutronix.de
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

One of the Freescale recommended sequences for power off with external
PMIC is the following:
...
3.  SoC is programming PMIC for power off when standby is asserted.
4.  In CCM STOP mode, Standby is asserted, PMIC gates SoC supplies.

See:
http://www.nxp.com/assets/documents/data/en/reference-manuals/IMX6DQRM.pdf
page 5083

This patch implements step 4. of this sequence.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c              | 49 +++++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx6.h |  1 +
 2 files changed, 50 insertions(+)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 5afbf6b30f..96c1f64093 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -25,6 +25,19 @@
 #include <asm/mmu.h>
 #include <asm/cache-l2x0.h>
 
+#include <poweroff.h>
+#include <mach/imx6-regs.h>
+#include <io.h>
+
+#define CLPCR				0x54
+#define BP_CLPCR_LPM(mode)		((mode) & 0x3)
+#define BM_CLPCR_LPM			(0x3 << 0)
+#define BM_CLPCR_SBYOS			(0x1 << 6)
+#define BM_CLPCR_VSTBY			(0x1 << 8)
+#define BP_CLPCR_STBY_COUNT		9
+#define BM_CLPCR_COSC_PWRDOWN		(0x1 << 11)
+#define BM_CLPCR_BYP_MMDC_CH1_LPM_HS	(0x1 << 21)
+
 void imx6_init_lowlevel(void)
 {
 	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
@@ -296,3 +309,39 @@ static int imx6_fixup_cpus_register(void)
 	return of_register_fixup(imx6_fixup_cpus, NULL);
 }
 device_initcall(imx6_fixup_cpus_register);
+
+void __noreturn imx6_pm_stby_poweroff(void)
+{
+	void *ccm_base = IOMEM(MX6_CCM_BASE_ADDR);
+	void *gpc_base = IOMEM(MX6_GPC_BASE_ADDR);
+	u32 val;
+
+	/*
+	 * All this is done to get the PMIC_STBY_REQ line high which will
+	 * cause the PMIC to turn off the i.MX6.
+	 */
+
+	/*
+	 * First mask all interrupts in the GPC. This is necessary for
+	 * unknown reasons
+	 */
+	writel(0xffffffff, gpc_base + 0x8);
+	writel(0xffffffff, gpc_base + 0xc);
+	writel(0xffffffff, gpc_base + 0x10);
+	writel(0xffffffff, gpc_base + 0x14);
+
+	val = readl(ccm_base + CLPCR);
+
+	val &= ~BM_CLPCR_LPM;
+	val |= BP_CLPCR_LPM(2);
+	val |= 0x3 << BP_CLPCR_STBY_COUNT;
+	val |= BM_CLPCR_VSTBY;
+	val |= BM_CLPCR_SBYOS;
+	val |= BM_CLPCR_BYP_MMDC_CH1_LPM_HS;
+
+	writel(val, ccm_base + CLPCR);
+
+	asm("wfi");
+
+	while(1);
+}
diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index 6ad53433cb..e4633ed5f2 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -7,6 +7,7 @@
 #include <mach/revision.h>
 
 void imx6_init_lowlevel(void);
+void __noreturn imx6_pm_stby_poweroff(void);
 
 #define IMX6_ANATOP_SI_REV 0x260
 #define IMX6SL_ANATOP_SI_REV 0x280
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

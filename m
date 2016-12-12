Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGUxH-0005GF-Af
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 18:04:07 +0000
Received: by mail-pf0-x243.google.com with SMTP id i88so815756pfk.2
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2016 10:03:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 12 Dec 2016 10:02:57 -0800
Message-Id: <1481565788-9115-11-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
References: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 10/21] i.MX: vf610: Ramp CPU clock to maximum frequency
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Mask ROM leaves the CPU running at 264Mhz, so configure the clock tree
such that CPU runs at maximum supported frequency. Maximum supported
frequncy is determined from speed grading burned into OCOTP fusebox by
the vendor.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Kconfig   |   1 +
 drivers/clk/imx/clk-vf610.c | 163 +++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 162 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index af533ea..074f90f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -162,6 +162,7 @@ config ARCH_VF610
 	select OFTREE
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
+	select IMX_OCOTP	# Needed for clock adjustement
 
 config IMX_MULTI_BOARDS
 	bool "Allow multiple boards to be selected"
diff --git a/drivers/clk/imx/clk-vf610.c b/drivers/clk/imx/clk-vf610.c
index 9b9ac6c..41fa3e9 100644
--- a/drivers/clk/imx/clk-vf610.c
+++ b/drivers/clk/imx/clk-vf610.c
@@ -16,7 +16,10 @@
 #include <of_address.h>
 #include <linux/clkdev.h>
 #include <linux/clk.h>
+#include <notifier.h>
 #include <dt-bindings/clock/vf610-clock.h>
+#include <mach/vf610-regs.h>
+#include <mach/vf610-fusemap.h>
 
 #include "clk.h"
 
@@ -76,6 +79,7 @@
 #define PLL6_CTRL		(anatop_base + 0xa0)
 #define PLL7_CTRL		(anatop_base + 0x20)
 #define ANA_MISC1		(anatop_base + 0x160)
+#define PLL_LOCK		(anatop_base + 0x2c0)
 
 static void __iomem *anatop_base;
 static void __iomem *ccm_base;
@@ -188,8 +192,9 @@ static void __init vf610_clocks_init(struct device_node *ccm_node)
 	clk[VF610_CLK_PLL6_BYPASS_SRC] = imx_clk_mux("pll6_bypass_src", PLL6_CTRL, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
 	clk[VF610_CLK_PLL7_BYPASS_SRC] = imx_clk_mux("pll7_bypass_src", PLL7_CTRL, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
 
-	clk[VF610_CLK_PLL1] = imx_clk_pllv3(IMX_PLLV3_GENERIC, "pll1", "pll1_bypass_src", PLL1_CTRL, 0x1);
-	clk[VF610_CLK_PLL2] = imx_clk_pllv3(IMX_PLLV3_GENERIC, "pll2", "pll2_bypass_src", PLL2_CTRL, 0x1);
+	clk[VF610_CLK_PLL1] = imx_clk_pllv3_locked(IMX_PLLV3_SYS_VF610, "pll1", "pll1_bypass_src", PLL1_CTRL, 0x1, PLL_LOCK, BIT(6));
+	clk[VF610_CLK_PLL2] = imx_clk_pllv3_locked(IMX_PLLV3_SYS_VF610, "pll2", "pll2_bypass_src", PLL2_CTRL, 0x1, PLL_LOCK, BIT(5));
+
 	clk[VF610_CLK_PLL3] = imx_clk_pllv3(IMX_PLLV3_USB_VF610,     "pll3", "pll3_bypass_src", PLL3_CTRL, 0x2);
 	clk[VF610_CLK_PLL4] = imx_clk_pllv3(IMX_PLLV3_AV,      "pll4", "pll4_bypass_src", PLL4_CTRL, 0x7f);
 	clk[VF610_CLK_PLL5] = imx_clk_pllv3(IMX_PLLV3_ENET,    "pll5", "pll5_bypass_src", PLL5_CTRL, 0x3);
@@ -444,3 +449,157 @@ static void __init vf610_clocks_init(struct device_node *ccm_node)
 	of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
 }
 CLK_OF_DECLARE(vf610, "fsl,vf610-ccm", vf610_clocks_init);
+
+enum {
+	VF610_SPEED_500 = 0b1110,
+	VF610_SPEED_400 = 0b1001,
+	VF610_SPEED_266 = 0b0001,
+
+	DDRMC_CR117 = 0x01d4,
+	DDRMC_CR117_AXI0_FITYPEREG_SYNC = 0b01 << 16,
+};
+
+static int vf610_switch_cpu_clock_to_500mhz(void)
+{
+	int ret;
+
+	/*
+	 * When switching A5 CPU to 500Mhz we expect DDRC to be
+	 * clocked by PLL2_PFD2 and the system to be configured in
+	 * asynchronous mode.
+	 *
+	 * We also can't just use default PFD1 output of PLL1 due to
+	 * Errata e6235, so we have to re-clock the PLL itself and use
+	 * its output to clock the CPU directly.
+	 */
+
+	if (clk_get_parent(clk[VF610_CLK_DDR_SEL]) != clk[VF610_CLK_PLL2_PFD2]) {
+		pr_warn("DDRC is clocked by PLL1, can't switch CPU clock");
+		return -EINVAL;
+	}
+
+	ret = clk_set_parent(clk[VF610_CLK_SYS_SEL], clk[VF610_CLK_PLL2_BUS]);
+	if (ret < 0) {
+		pr_crit("Unable to re-parent '%s'\n",
+			clk[VF610_CLK_SYS_SEL]->name);
+		return ret;
+	}
+
+	ret = clk_set_rate(clk[VF610_CLK_PLL1], 500000000);
+	if (ret < 0) {
+		pr_crit("Unable to set %s to 500Mhz %d\n",
+			clk[VF610_CLK_PLL1]->name, ret);
+		return ret;
+	}
+
+	ret = clk_set_parent(clk[VF610_CLK_PLL1_PFD_SEL], clk[VF610_CLK_PLL1_SYS]);
+	if (ret < 0) {
+		pr_crit("Unable to re-parent '%s'\n",
+			clk[VF610_CLK_PLL1_PFD_SEL]->name);
+		return ret;
+	}
+
+	ret = clk_set_parent(clk[VF610_CLK_SYS_SEL], clk[VF610_CLK_PLL1_PFD_SEL]);
+	if (ret < 0) {
+		pr_crit("Unable to re-parent '%s'\n",
+			clk[VF610_CLK_SYS_SEL]->name);
+		return ret;
+	}
+
+	/*
+	 * imx_clk_divider has no error path in its set_rate hook
+	 */
+	clk_set_rate(clk[VF610_CLK_SYS_BUS], clk_get_rate(clk[VF610_CLK_SYS_SEL]));
+	clk_set_rate(clk[VF610_CLK_PLATFORM_BUS], clk_get_rate(clk[VF610_CLK_SYS_BUS]) / 3);
+
+	return ret;
+}
+
+static int vf610_switch_cpu_clock_to_400mhz(void)
+{
+	int ret;
+	uint32_t cr117;
+	void * __iomem ddrmc = IOMEM(VF610_DDR_BASE_ADDR);
+
+	if (clk_get_parent(clk[VF610_CLK_DDR_SEL]) != clk[VF610_CLK_PLL2_PFD2]) {
+		pr_warn("DDRC is clocked by PLL1, can't switch CPU clock");
+		return -EINVAL;
+	}
+
+	ret = clk_set_parent(clk[VF610_CLK_PLL2_PFD_SEL], clk[VF610_CLK_PLL2_PFD2]);
+	if (ret < 0) {
+		pr_crit("Unable to re-parent '%s'\n",
+			clk[VF610_CLK_PLL2_PFD_SEL]->name);
+		return ret;
+	}
+
+	ret = clk_set_parent(clk[VF610_CLK_SYS_SEL], clk[VF610_CLK_PLL2_PFD_SEL]);
+	if (ret < 0) {
+		pr_crit("Unable to re-parent '%s'\n",
+			clk[VF610_CLK_SYS_SEL]->name);
+		return ret;
+	}
+
+	/*
+	 * imx_clk_divider has no error path in its set_rate hook
+	 */
+	clk_set_rate(clk[VF610_CLK_SYS_BUS], clk_get_rate(clk[VF610_CLK_SYS_SEL]));
+	clk_set_rate(clk[VF610_CLK_PLATFORM_BUS], clk_get_rate(clk[VF610_CLK_SYS_BUS]) / 3);
+
+	/*
+	 * Now that we are running off of the same clock as DDRMC we
+	 * shouldn't need to use clock domain crossing FIFO and
+	 * asynchronous mode and instead can swithch to sychronous
+	 * mode for AXI0 accesses
+	 */
+	cr117 =  readl(ddrmc + DDRMC_CR117);
+	cr117 |= DDRMC_CR117_AXI0_FITYPEREG_SYNC;
+	writel(cr117, ddrmc + DDRMC_CR117);
+
+	return 0;
+}
+
+static int vf610_switch_cpu_clock(void)
+{
+	int ret;
+	bool sense_enable;
+	uint32_t speed_grading;
+
+	if (!of_machine_is_compatible("fsl,vf610"))
+		return 0;
+
+	sense_enable = imx_ocotp_sense_enable(true);
+	ret = imx_ocotp_read_field(VF610_OCOTP_SPEED_GRADING, &speed_grading);
+	imx_ocotp_sense_enable(sense_enable);
+	if (ret < 0)
+		return ret;
+
+	switch (speed_grading) {
+	default:
+		pr_err("Unknown CPU speed grading %x\n", speed_grading);
+		return -EINVAL;
+
+	case VF610_SPEED_266:
+		return 0;
+
+	case VF610_SPEED_500:
+		ret = vf610_switch_cpu_clock_to_500mhz();
+		break;
+
+	case VF610_SPEED_400:
+		ret = vf610_switch_cpu_clock_to_400mhz();
+		break;
+	}
+
+	clock_notifier_call_chain();
+	return ret;
+}
+/*
+ * We can probably gain a bit of a boot speed if we switch CPU clock
+ * earlier, but if we do this we'd need to figure out a way how to
+ * re-adjust the baud rate settings of the UART for DEBUG_LL
+ * functionality, or, accept the fact that it will be unavailable
+ * after this hook is executed. Both are far from ideal, so a bit
+ * slower boot it is.
+ */
+postconsole_initcall(vf610_switch_cpu_clock);
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAi-0005Gn-FJ
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:39 +0100
Message-Id: <1394807569-23620-20-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/29] ARM: i.MX6: Add video clocks
To: barebox@lists.infradead.org

This adds the IPU, LVDS and HDMI clocks. As these are many, depend
on the IPU driver being compiled in.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c               | 153 ++++++++++++++++++++++++++++-
 arch/arm/mach-imx/clk.h                    |   6 ++
 arch/arm/mach-imx/include/mach/imx6-regs.h |   3 +
 3 files changed, 158 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index db16bb5..518fc00 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -19,6 +19,8 @@
 #include <linux/clkdev.h>
 #include <linux/err.h>
 #include <mach/imx6-regs.h>
+#include <mach/revision.h>
+#include <mach/imx6.h>
 
 #include "clk.h"
 
@@ -84,8 +86,10 @@ enum mx6q_clks {
 	usdhc4, vdo_axi, vpu_axi, cko1, pll1_sys, pll2_bus, pll3_usb_otg,
 	pll4_audio, pll5_video, pll8_mlb, pll7_usb_host, pll6_enet, ssi1_ipg,
 	ssi2_ipg, ssi3_ipg, rom, usbphy1, usbphy2, ldb_di0_div_3_5, ldb_di1_div_3_5,
-	sata_ref, pcie_ref, sata_ref_100m, pcie_ref_125m, enet_ref,
-	clk_max
+	sata_ref, sata_ref_100m, pcie_ref, pcie_ref_125m, enet_ref, usbphy1_gate,
+	usbphy2_gate, pll4_post_div, pll5_post_div, pll5_video_div, eim_slow,
+	spdif, cko2_sel, cko2_podf, cko2, cko, vdoa, pll4_audio_div,
+	lvds1_sel, lvds2_sel, lvds1_gate, lvds2_gate, clk_max
 };
 
 static struct clk *clks[clk_max];
@@ -171,6 +175,62 @@ static const char *cko1_sels[] = {
 	"pll4_audio",
 };
 
+static const char *ipu_sels[] = {
+	"mmdc_ch0_axi_podf",
+	"pll2_pfd2_396m",
+	"pll3_120m",
+	"pll3_pfd1_540m",
+};
+
+static const char *ldb_di_sels[] = {
+	"pll5_video_div",
+	"pll2_pfd0_352m",
+	"pll2_pfd2_396m",
+	"mmdc_ch1_axi_podf",
+	"pll3_usb_otg",
+};
+
+static const char *ipu_di_pre_sels[] = {
+	"mmdc_ch0_axi",
+	"pll3_usb_otg",
+	"pll5_video_div",
+	"pll2_pfd0_352m",
+	"pll2_pfd2_396m",
+	"pll3_pfd1_540m",
+};
+
+static const char *ipu1_di0_sels[] = {
+	"ipu1_di0_pre",
+	"dummy",
+	"dummy",
+	"ldb_di0_podf",
+	"ldb_di1_podf",
+};
+
+static const char *ipu1_di1_sels[] = {
+	"ipu1_di1_pre",
+	"dummy",
+	"dummy",
+	"ldb_di0_podf",
+	"ldb_di1_podf",
+};
+
+static const char *ipu2_di0_sels[] = {
+	"ipu2_di0_pre",
+	"dummy",
+	"dummy",
+	"ldb_di0_podf",
+	"ldb_di1_podf",
+};
+
+static const char *ipu2_di1_sels[] = {
+	"ipu2_di1_pre",
+	"dummy",
+	"dummy",
+	"ldb_di0_podf",
+	"ldb_di1_podf",
+};
+
 static struct clk_div_table clk_enet_ref_table[] = {
 	{ .val = 0, .div = 20, },
 	{ .val = 1, .div = 10, },
@@ -179,6 +239,86 @@ static struct clk_div_table clk_enet_ref_table[] = {
 	{ },
 };
 
+static struct clk_div_table post_div_table[] = {
+	{ .val = 2, .div = 1, },
+	{ .val = 1, .div = 2, },
+	{ .val = 0, .div = 4, },
+	{ /* sentinel */ }
+};
+
+static struct clk_div_table video_div_table[] = {
+	{ .val = 0, .div = 1, },
+	{ .val = 1, .div = 2, },
+	{ .val = 2, .div = 1, },
+	{ .val = 3, .div = 4, },
+	{ /* sentinel */ }
+};
+
+static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
+{
+	clks[pll5_post_div] = imx_clk_divider_table("pll5_post_div", "pll5_video", anab + 0xa0, 19, 2, post_div_table);
+	clks[pll5_video_div] = imx_clk_divider_table("pll5_video_div", "pll5_post_div", anab + 0x170, 30, 2, video_div_table);
+
+	clks[ipu1_sel]         = imx_clk_mux("ipu1_sel",         cb + 0x3c, 9,  2, ipu_sels,          ARRAY_SIZE(ipu_sels));
+	clks[ipu2_sel]         = imx_clk_mux("ipu2_sel",         cb + 0x3c, 14, 2, ipu_sels,          ARRAY_SIZE(ipu_sels));
+	clks[ldb_di0_sel]      = imx_clk_mux_p("ldb_di0_sel",      cb + 0x2c, 9,  3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
+	clks[ldb_di1_sel]      = imx_clk_mux_p("ldb_di1_sel",      cb + 0x2c, 12, 3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
+	clks[ipu1_di0_pre_sel] = imx_clk_mux_p("ipu1_di0_pre_sel", cb + 0x34, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clks[ipu1_di1_pre_sel] = imx_clk_mux_p("ipu1_di1_pre_sel", cb + 0x34, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clks[ipu2_di0_pre_sel] = imx_clk_mux_p("ipu2_di0_pre_sel", cb + 0x38, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clks[ipu2_di1_pre_sel] = imx_clk_mux_p("ipu2_di1_pre_sel", cb + 0x38, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clks[ipu1_di0_sel]     = imx_clk_mux_p("ipu1_di0_sel",     cb + 0x34, 0,  3, ipu1_di0_sels,     ARRAY_SIZE(ipu1_di0_sels));
+	clks[ipu1_di1_sel]     = imx_clk_mux_p("ipu1_di1_sel",     cb + 0x34, 9,  3, ipu1_di1_sels,     ARRAY_SIZE(ipu1_di1_sels));
+	clks[ipu2_di0_sel]     = imx_clk_mux_p("ipu2_di0_sel",     cb + 0x38, 0,  3, ipu2_di0_sels,     ARRAY_SIZE(ipu2_di0_sels));
+	clks[ipu2_di1_sel]     = imx_clk_mux_p("ipu2_di1_sel",     cb + 0x38, 9,  3, ipu2_di1_sels,     ARRAY_SIZE(ipu2_di1_sels));
+
+	clks[ipu1_podf]        = imx_clk_divider("ipu1_podf",        "ipu1_sel",          cb + 0x3c, 11, 3);
+	clks[ipu2_podf]        = imx_clk_divider("ipu2_podf",        "ipu2_sel",          cb + 0x3c, 16, 3);
+	clks[ldb_di0_div_3_5]  = imx_clk_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
+	clks[ldb_di0_podf]     = imx_clk_divider("ldb_di0_podf", "ldb_di0_div_3_5", cb + 0x20, 10, 1);
+	clks[ldb_di1_div_3_5]  = imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
+	clks[ldb_di1_podf]     = imx_clk_divider("ldb_di1_podf", "ldb_di1_div_3_5", cb + 0x20, 11, 1);
+	clks[ipu1_di0_pre]     = imx_clk_divider("ipu1_di0_pre",     "ipu1_di0_pre_sel",  cb + 0x34, 3,  3);
+	clks[ipu1_di1_pre]     = imx_clk_divider("ipu1_di1_pre",     "ipu1_di1_pre_sel",  cb + 0x34, 12, 3);
+	clks[ipu2_di0_pre]     = imx_clk_divider("ipu2_di0_pre",     "ipu2_di0_pre_sel",  cb + 0x38, 3,  3);
+	clks[ipu2_di1_pre]     = imx_clk_divider("ipu2_di1_pre",     "ipu2_di1_pre_sel",  cb + 0x38, 12, 3);
+
+	clkdev_add_physbase(clks[ipu1_podf], MX6_IPU1_BASE_ADDR, "bus");
+	clkdev_add_physbase(clks[ipu1_di0_sel], MX6_IPU1_BASE_ADDR, "di0");
+	clkdev_add_physbase(clks[ipu1_di1_sel], MX6_IPU1_BASE_ADDR, "di1");
+	clkdev_add_physbase(clks[ipu2_podf], MX6_IPU2_BASE_ADDR, "bus");
+	clkdev_add_physbase(clks[ipu2_di0_sel], MX6_IPU2_BASE_ADDR, "di0");
+	clkdev_add_physbase(clks[ipu2_di1_sel], MX6_IPU2_BASE_ADDR, "di1");
+
+	clkdev_add_physbase(clks[ldb_di0_sel], 0x020e0008, "di0_pll");
+	clkdev_add_physbase(clks[ldb_di1_sel], 0x020e0008, "di1_pll");
+	clkdev_add_physbase(clks[ipu1_di0_sel], 0x020e0008, "di0_sel");
+	clkdev_add_physbase(clks[ipu1_di1_sel], 0x020e0008, "di1_sel");
+	clkdev_add_physbase(clks[ipu2_di0_sel], 0x020e0008, "di2_sel");
+	clkdev_add_physbase(clks[ipu2_di1_sel], 0x020e0008, "di3_sel");
+	clkdev_add_physbase(clks[ldb_di0], 0x020e0008, "di0");
+	clkdev_add_physbase(clks[ldb_di1], 0x020e0008, "di1");
+	clkdev_add_physbase(clks[ahb], 0x00120000, "iahb");
+	clkdev_add_physbase(clks[pll3_pfd1_540m], 0x00120000, "isfr");
+
+	clk_set_parent(clks[ipu1_di0_sel], clks[ipu1_di0_pre]);
+	clk_set_parent(clks[ipu1_di1_sel], clks[ipu1_di1_pre]);
+	clk_set_parent(clks[ipu2_di0_sel], clks[ipu2_di0_pre]);
+	clk_set_parent(clks[ipu2_di1_sel], clks[ipu2_di1_pre]);
+
+	clk_set_parent(clks[ipu1_di0_pre_sel], clks[pll5_video_div]);
+	clk_set_parent(clks[ipu1_di1_pre_sel], clks[pll5_video_div]);
+	clk_set_parent(clks[ipu2_di0_pre_sel], clks[pll5_video_div]);
+	clk_set_parent(clks[ipu2_di1_pre_sel], clks[pll5_video_div]);
+
+	if ((imx_silicon_revision() != IMX_CHIP_REV_1_0) ||
+	    cpu_is_mx6dl()) {
+		clk_set_parent(clks[ldb_di0_sel], clks[pll5_video_div]);
+		clk_set_parent(clks[ldb_di1_sel], clks[pll5_video_div]);
+	}
+
+}
+
 static int imx6_ccm_probe(struct device_d *dev)
 {
 	void __iomem *base, *anatop_base, *ccm_base;
@@ -281,7 +421,6 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[arm]               = imx_clk_busy_divider("arm",               "pll1_sw",     base + 0x10, 0,   3,   base + 0x48, 16);
 	clks[ahb]               = imx_clk_busy_divider("ahb",               "periph",      base + 0x14, 10,  3,   base + 0x48, 1);
 
-
 	clkdev_add_physbase(clks[uart_serial_podf], MX6_UART1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[uart_serial_podf], MX6_UART2_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[uart_serial_podf], MX6_UART3_BASE_ADDR, NULL);
@@ -310,10 +449,16 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[ipg_per], MX6_PWM3_BASE_ADDR, "per");
 	clkdev_add_physbase(clks[ipg_per], MX6_PWM4_BASE_ADDR, "per");
 
+	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
+		imx6_add_video_clks(anatop_base, ccm_base);
+
 	writel(0xffffffff, ccm_base + CCGR0);
 	writel(0xf0ffffff, ccm_base + CCGR1); /* gate GPU3D, GPU2D */
 	writel(0xffffffff, ccm_base + CCGR2);
-	writel(0x3fff0000, ccm_base + CCGR3); /* gate OpenVG, LDB, IPU1, IPU2 */
+	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
+		writel(0xffffffff, ccm_base + CCGR3); /* gate OpenVG */
+	else
+		writel(0x3fffffff, ccm_base + CCGR3); /* gate OpenVG, LDB, IPU1, IPU2 */
 	writel(0xffffffff, ccm_base + CCGR4);
 	writel(0xffffffff, ccm_base + CCGR5);
 	writel(0xffff3fff, ccm_base + CCGR6); /* gate VPU */
diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
index d83266b..32a02db 100644
--- a/arch/arm/mach-imx/clk.h
+++ b/arch/arm/mach-imx/clk.h
@@ -27,6 +27,12 @@ static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
 	return clk_mux(name, reg, shift, width, parents, num_parents, 0);
 }
 
+static inline struct clk *imx_clk_mux_p(const char *name, void __iomem *reg,
+		u8 shift, u8 width, const char **parents, u8 num_parents)
+{
+	return clk_mux(name, reg, shift, width, parents, num_parents, CLK_SET_RATE_PARENT);
+}
+
 static inline struct clk *imx_clk_gate(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index 833280a..facbe51 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -26,6 +26,9 @@
 #define MX6_SPBA_BASE_ADDR              (MX6_ATZ1_BASE_ADDR + 0x3C000)
 #define MX6_VPU_BASE_ADDR               (MX6_ATZ1_BASE_ADDR + 0x40000)
 
+#define MX6_IPU1_BASE_ADDR		0x02400000
+#define MX6_IPU2_BASE_ADDR		0x02800000
+
 /* ATZ#1- On Platform */
 #define MX6_AIPS1_ON_BASE_ADDR          (MX6_ATZ1_BASE_ADDR + 0x7C000)
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

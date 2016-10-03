Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x243.google.com ([2607:f8b0:400e:c03::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4Qv-0008GZ-Gd
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:55 +0000
Received: by mail-pa0-x243.google.com with SMTP id r9so7947225paz.1
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:48 -0700
Message-Id: <1475505657-898-12-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/20] i.MX: Add VF610 clock tree initialization code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Based on analogous code from Linux kernel

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/imx/Makefile    |    1 +
 drivers/clk/imx/clk-vf610.c | 1224 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 1225 insertions(+)
 create mode 100644 drivers/clk/imx/clk-vf610.c

diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 0303c0b..2665f49 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -1 +1,2 @@
 obj-y += clk.o
+obj-$(CONFIG_ARCH_VF610) += clk-vf610.o
diff --git a/drivers/clk/imx/clk-vf610.c b/drivers/clk/imx/clk-vf610.c
new file mode 100644
index 0000000..2fbdbb3
--- /dev/null
+++ b/drivers/clk/imx/clk-vf610.c
@@ -0,0 +1,1224 @@
+/*
+ * Copyright (c) 2016 Zodiac Inflight Innovations
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * Based on analogous code from Linux kernel
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <of.h>
+#include <of_address.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mfd/syscon.h>
+#include <dt-bindings/clock/vf610-clock.h>
+
+#include "../../../arch/arm/mach-imx/clk.h"
+
+enum {
+	CCM_CCR		= 0x00,
+	CCM_CSR		= 0x04,
+	CCM_CCSR	= 0x08,
+	CCM_CACRR	= 0x0c,
+	CCM_CSCMR1	= 0x10,
+	CCM_CSCDR1	= 0x14,
+	CCM_CSCDR2	= 0x18,
+	CCM_CSCDR3	= 0x1c,
+	CCM_CSCMR2	= 0x20,
+	CCM_CSCDR4	= 0x24,
+	CCM_CLPCR	= 0x2c,
+	CCM_CISR	= 0x30,
+	CCM_CIMR	= 0x34,
+	CCM_CGPR	= 0x3c,
+	CCM_CCGR0	= 0x40,
+	CCM_CCGR1	= 0x44,
+	CCM_CCGR2	= 0x48,
+	CCM_CCGR3	= 0x4c,
+	CCM_CCGR4	= 0x50,
+	CCM_CCGR5	= 0x54,
+	CCM_CCGR6	= 0x58,
+	CCM_CCGR7	= 0x5c,
+	CCM_CCGR8	= 0x60,
+	CCM_CCGR9	= 0x64,
+	CCM_CCGR10	= 0x68,
+	CCM_CCGR11	= 0x6c,
+
+	CCM_CMEOR0	= 0x70,
+	CCM_CMEOR1	= 0x74,
+	CCM_CMEOR2	= 0x78,
+	CCM_CMEOR3	= 0x7c,
+	CCM_CMEOR4	= 0x80,
+	CCM_CMEOR5	= 0x84,
+	CCM_CPPDSR	= 0x88,
+	CCM_CCOWR	= 0x8c,
+	CCM_CCPGR0	= 0x90,
+	CCM_CCPGR1	= 0x94,
+	CCM_CCPGR2	= 0x98,
+	CCM_CCPGR3	= 0x9c,
+};
+
+/* CCM_CCGRx(x)		(CCM_CCGR0 + (x) * 4) */
+
+static int vf610_ccm_ccgrx_cgn(int n) {
+	return n * 2;
+}
+
+
+enum {
+	PFD_PLL1_BASE	= 0x2b0,
+	PFD_PLL2_BASE	= 0x100,
+	PFD_PLL3_BASE	= 0x0f0,
+	ANA_MISC1	= 0x160,
+};
+
+static const unsigned int PLL_CTRL[7] = {
+	0x270,
+	0x030,
+	0x010,
+	0x070,
+	0x0e0,
+	0x0a0,
+	0x020,
+};
+
+
+static struct clk *clk[VF610_CLK_END];
+struct clk_onecell_data clk_data;
+
+static struct clk * __init vf610_get_fixed_clock(struct device_node *np,
+						 const char *name)
+{
+	struct clk *clk = of_clk_get_by_name(np, name);
+
+	/* Backward compatibility if device tree is missing clks assignments */
+	if (IS_ERR(clk))
+		clk = imx_obtain_fixed_clock(name, 0);
+
+	return clk;
+};
+
+static void vf610_ccm_setup_fixed(struct device_node *np,
+				  void __iomem *anatop,
+				  void __iomem *ccm)
+{
+	clk[VF610_CLK_DUMMY]	 = clk_fixed("dummy", 0);
+	clk[VF610_CLK_SIRC_128K] = clk_fixed("sirc_128k", 128000);
+	clk[VF610_CLK_SIRC_32K]  = clk_fixed("sirc_32k", 32000);
+	clk[VF610_CLK_FIRC]	 = clk_fixed("firc", 24000000);
+}
+
+static void vf610_ccm_setup_from_dt(struct device_node *np,
+				    void __iomem *anatop,
+				    void __iomem *ccm)
+{
+	clk[VF610_CLK_SXOSC]     = vf610_get_fixed_clock(np, "sxosc");
+	clk[VF610_CLK_FXOSC]     = vf610_get_fixed_clock(np, "fxosc");
+	clk[VF610_CLK_AUDIO_EXT] = vf610_get_fixed_clock(np, "audio_ext");
+	clk[VF610_CLK_ENET_EXT]  = vf610_get_fixed_clock(np, "enet_ext");
+
+	/* Clock source from external clock via LVDs PAD */
+	clk[VF610_CLK_ANACLK1] = vf610_get_fixed_clock(np, "anaclk1");
+
+	clk[VF610_CLK_FXOSC_HALF] = imx_clk_fixed_factor("fxosc_half",
+							 "fxosc", 1, 2);
+}
+
+static void vf610_ccm_setup_slow_clk(struct device_node *np,
+				     void __iomem *anatop,
+				     void __iomem *ccm)
+{
+	static const char *sources[] = {
+		"sirc_32k",
+		"sxosc",
+	};
+
+	clk[VF610_CLK_SLOW_CLK_SEL] = imx_clk_mux("slow_clk_sel",
+						  ccm + CCM_CCSR,
+						  4, 1,
+						  sources,
+						  ARRAY_SIZE(sources));
+}
+
+static void vf610_ccm_setup_fast_clk(struct device_node *np,
+				     void __iomem *anatop,
+				     void __iomem *ccm)
+{
+	static const char *sources[] = {
+		"firc",
+		"fxosc",
+	};
+
+	clk[VF610_CLK_FASK_CLK_SEL] = imx_clk_mux("fast_clk_sel",
+						  ccm + CCM_CCSR,
+						  5, 1,
+						  sources,
+						  ARRAY_SIZE(sources));
+}
+
+static void vf610_ccm_setup_pll_bypass_srcs(struct device_node *np,
+					    void __iomem *anatop,
+					    void __iomem *ccm)
+{
+	size_t i;
+
+	static const char *parents[] = {
+		"fast_clk_sel",
+		"lvds1_in",
+	};
+
+#define VF610_CLK_PLL_BYPASS_SRC(n)			\
+	{ VF610_CLK_PLL##n##_BYPASS_SRC, "pll" #n "_bypass_src" }
+
+	static const struct {
+		int id;
+		const char *name;
+	} clocks[] = {
+		VF610_CLK_PLL_BYPASS_SRC(1),
+		VF610_CLK_PLL_BYPASS_SRC(2),
+		VF610_CLK_PLL_BYPASS_SRC(3),
+		VF610_CLK_PLL_BYPASS_SRC(4),
+		VF610_CLK_PLL_BYPASS_SRC(5),
+		VF610_CLK_PLL_BYPASS_SRC(6),
+		VF610_CLK_PLL_BYPASS_SRC(7),
+	};
+
+#undef VF610_CLK_PLL_BYPASS_SRC
+
+	for (i = 0; i < ARRAY_SIZE(clocks); i++) {
+		const char *name = clocks[i].name;
+		const int id = clocks[i].id;
+
+		clk[id] = imx_clk_mux(name, anatop + PLL_CTRL[i],
+				      14, 1,
+				      parents, ARRAY_SIZE(parents));
+	}
+}
+
+static void vf610_ccm_setup_plls(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+{
+	size_t i;
+
+#define VF610_CLK_PLL(n, type, mask)				   \
+	{ VF610_CLK_PLL##n, type, "pll" #n, "pll" #n "_bypass_src", mask }
+
+	static const struct {
+		int id;
+		int type;
+		const char *name;
+		const char *parent;
+		u32 mask;
+	} clocks[] = {
+		VF610_CLK_PLL(1, IMX_PLLV3_GENERIC,   0x01),
+		VF610_CLK_PLL(2, IMX_PLLV3_GENERIC,   0x01),
+		VF610_CLK_PLL(3, IMX_PLLV3_USB_VF610, 0x02),
+		VF610_CLK_PLL(4, IMX_PLLV3_AV,        0x7f),
+		VF610_CLK_PLL(5, IMX_PLLV3_ENET,      0x03),
+		VF610_CLK_PLL(6, IMX_PLLV3_AV,        0x7f),
+		VF610_CLK_PLL(7, IMX_PLLV3_USB_VF610, 0x02),
+	};
+
+#undef VF610_CLK_PLL
+
+	for (i = 0; i < ARRAY_SIZE(clocks); i++) {
+		const char *name = clocks[i].name;
+		const int id = clocks[i].id;
+
+		clk[id] = imx_clk_pllv3(clocks[i].type,
+					name,
+					clocks[i].parent,
+					anatop + PLL_CTRL[i],
+					clocks[i].mask);
+	}
+}
+
+static void vf610_ccm_setup_pll_bypass(struct device_node *np,
+				       void __iomem *anatop,
+				       void __iomem *ccm)
+{
+	size_t i;
+	static const char *pll_bypass_parents[][2] = {
+		{ "pll1", "pll1_bypass_src" },
+		{ "pll2", "pll2_bypass_src" },
+		{ "pll3", "pll3_bypass_src" },
+		{ "pll4", "pll4_bypass_src" },
+		{ "pll5", "pll5_bypass_src" },
+		{ "pll6", "pll6_bypass_src" },
+		{ "pll7", "pll7_bypass_src" },
+	};
+
+#define VF610_PLL_BYPASS(n)				\
+	{ VF610_PLL##n##_BYPASS, "pll" #n "_bypass" }
+
+	static const struct {
+		int id;
+		const char *name;
+	} clocks[] = {
+		VF610_PLL_BYPASS(1),
+		VF610_PLL_BYPASS(2),
+		VF610_PLL_BYPASS(3),
+		VF610_PLL_BYPASS(4),
+		VF610_PLL_BYPASS(5),
+		VF610_PLL_BYPASS(6),
+		VF610_PLL_BYPASS(7),
+	};
+
+#undef VF610_PLL_BYPASS
+
+	for (i = 0; i < ARRAY_SIZE(clocks); i++) {
+		const char *name = clocks[i].name;
+		const int id = clocks[i].id;
+
+		clk[id] = imx_clk_mux_p(name,
+					anatop + PLL_CTRL[i],
+					16, 1,
+					pll_bypass_parents[i],
+					ARRAY_SIZE(pll_bypass_parents[i]));
+	}
+}
+
+static void vf610_ccm_setup_group1(struct device_node *np,
+				   void __iomem *anatop,
+				   void __iomem *ccm)
+{
+	size_t i;
+
+	static const struct {
+		int id;
+		const char *name;
+		const char *parent;
+		unsigned int reg;
+	} clocks[] = {
+		{ VF610_CLK_PLL1_SYS,      "pll1_sys",      "pll1_bypass" },
+		{ VF610_CLK_PLL2_BUS,      "pll2_bus",      "pll2_bypass" },
+		{ VF610_CLK_PLL3_USB_OTG,  "pll3_usb_otg",  "pll3_bypass" },
+		{ VF610_CLK_PLL4_AUDIO,    "pll4_audio",    "pll4_bypass" },
+		{ VF610_CLK_PLL5_ENET,     "pll5_enet",     "pll5_bypass" },
+		{ VF610_CLK_PLL6_VIDEO,    "pll6_video",    "pll6_bypass" },
+		{ VF610_CLK_PLL7_USB_HOST, "pll7_usb_host", "pll7_bypass" },
+	};
+
+	for (i = 0; i < ARRAY_SIZE(clocks); i++) {
+		const char *name = clocks[i].name;
+		const int id = clocks[i].id;
+
+		clk[id] = imx_clk_gate(name, clocks[i].parent,
+				       anatop + PLL_CTRL[i], 13);
+	}
+}
+
+static void vf610_ccm_setup_pfds(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+{
+	size_t i;
+
+#define VF610_CLK_PLL_PFD(n, m)						\
+	{ VF610_CLK_PLL##n##_PFD##m, "pll" #n "_pfd" #m,		\
+	  "pll" #n "_sys", PFD_PLL##n##_BASE, m - 1 }
+
+	const static struct {
+		int id;
+		const char *name;
+		const char *parent;
+		unsigned int reg;
+		u8 idx;
+	} clocks[] = {
+		VF610_CLK_PLL_PFD(1, 1),
+		VF610_CLK_PLL_PFD(1, 2),
+		VF610_CLK_PLL_PFD(1, 3),
+		VF610_CLK_PLL_PFD(1, 4),
+
+		VF610_CLK_PLL_PFD(2, 1),
+		VF610_CLK_PLL_PFD(2, 2),
+		VF610_CLK_PLL_PFD(2, 3),
+		VF610_CLK_PLL_PFD(2, 4),
+
+		VF610_CLK_PLL_PFD(3, 1),
+		VF610_CLK_PLL_PFD(3, 2),
+		VF610_CLK_PLL_PFD(3, 3),
+		VF610_CLK_PLL_PFD(3, 4),
+	};
+
+#undef VF610_CLK_PLL_PFD
+
+	for (i = 0; i < ARRAY_SIZE(clocks); i++) {
+		const char *name = clocks[i].name;
+		const int id = clocks[i].id;
+
+		clk[id] = imx_clk_pfd(name,
+				      clocks[i].parent,
+				      anatop + clocks[i].reg,
+				      clocks[i].idx);
+	}
+}
+
+static void vf610_ccm_setup_pll1_pfd_out(struct device_node *np,
+					 void __iomem *anatop,
+					 void __iomem *ccm)
+{
+	static const char *sources[] = {
+		"pll1_sys",
+		"pll1_pfd1",
+		"pll1_pfd2",
+		"pll1_pfd3",
+		"pll1_pfd4",
+	};
+
+	clk[VF610_CLK_PLL1_PFD_SEL] = imx_clk_mux("pll1_pfd_sel",
+						  ccm + CCM_CCSR,
+						  16, 3,
+						  sources, ARRAY_SIZE(sources));
+}
+
+static void vf610_ccm_setup_pll2_pfd_out(struct device_node *np,
+					 void __iomem *anatop,
+					 void __iomem *ccm)
+{
+	static const char *sources[] = {
+		"pll2_bus",
+		"pll2_pfd1",
+		"pll2_pfd2",
+		"pll2_pfd3",
+		"pll2_pfd4",
+	};
+
+	clk[VF610_CLK_PLL2_PFD_SEL] = imx_clk_mux("pll2_pfd_sel",
+						  ccm + CCM_CCSR,
+						  19, 3,
+						  sources, ARRAY_SIZE(sources));
+}
+
+static void vf610_ccm_setup_sys_out(struct device_node *np,
+				   void __iomem *anatop,
+				   void __iomem *ccm)
+{
+	static const char *sources[] = {
+		"fast_clk_sel",
+		"slow_clk_sel",
+		"pll2_pfd_sel",
+		"pll2_bus",
+		"pll1_pfd_sel",
+		"pll3_usb_otg",
+	};
+
+	clk[VF610_CLK_SYS_SEL] = imx_clk_mux("sys_sel",
+					     ccm + CCM_CCSR,
+					     0, 3,
+					     sources, ARRAY_SIZE(sources));
+}
+
+static void vf610_ccm_setup_ddr_out(struct device_node *np,
+				    void __iomem *anatop,
+				    void __iomem *ccm)
+{
+	static const char *sources[] = {
+		"pll2_pfd2",
+		"sys_sel",
+	};
+
+	clk[VF610_CLK_DDR_SEL] = imx_clk_mux("ddr_sel",
+					     ccm + CCM_CCSR,
+					     6, 1,
+					     sources, ARRAY_SIZE(sources));
+}
+
+static void vf610_ccm_setup_dividers(struct device_node *np,
+				     void __iomem *anatop,
+				     void __iomem *ccm)
+{
+	size_t i;
+
+	static const struct {
+		int id;
+		const char *name;
+		const char *parent;
+		u8 shift;
+		u8 width;
+	} clocks[] = {
+		{
+			.id	= VF610_CLK_SYS_BUS,
+			.name	= "sys_bus",
+			.parent = "sys_sel",
+			.shift	= 0,
+			.width	= 3,
+		},
+		{
+			.id	= VF610_CLK_PLATFORM_BUS,
+			.name	= "platform_bus",
+			.parent = "sys_bus",
+			.shift	= 3,
+			.width	= 3,
+		},
+		{
+			.id	= VF610_CLK_IPG_BUS,
+			.name	= "ipg_bus",
+			.parent = "platform_bus",
+			.shift	= 11,
+			.width	= 2,
+		},
+		{
+			.id	= VF610_CLK_PLL3_MAIN_DIV,
+			.name	= "pll3_usb_otg_div",
+			.parent = "pll3_usb_otg",
+			.shift	= 20,
+			.width	= 1,
+		},
+		{
+			.id	= VF610_CLK_PLL6_MAIN_DIV,
+			.name	= "pll6_video_div",
+			.parent = "pll6_video",
+			.shift	= 21,
+			.width	= 1,
+		},
+	};
+
+	for (i = 0; i < ARRAY_SIZE(clocks); i++)
+		clk[clocks[i].id] = imx_clk_divider(clocks[i].name,
+						    clocks[i].parent,
+						    ccm + CCM_CACRR,
+						    clocks[i].shift,
+						    clocks[i].width);
+}
+
+static void vf610_ccm_setup_pll4_main_div(struct device_node *np,
+					  void __iomem *anatop,
+					  void __iomem *ccm)
+{
+	static const struct clk_div_table div_table[] = {
+		{ .val = 0, .div = 1  },
+		{ .val = 1, .div = 2  },
+		{ .val = 2, .div = 6  },
+		{ .val = 3, .div = 8  },
+		{ .val = 4, .div = 10 },
+		{ .val = 5, .div = 12 },
+		{ .val = 6, .div = 14 },
+		{ .val = 7, .div = 16 },
+		{ }
+	};
+
+	clk[VF610_CLK_PLL4_MAIN_DIV] = clk_divider_table("pll4_audio_div",
+							 "pll4_audio",
+							 ccm +  CCM_CACRR, 6, 3,
+							 div_table, 0);
+}
+
+static void vf610_ccm_setup_ddrmc(struct device_node *np,
+				  void __iomem *anatop,
+				  void __iomem *ccm)
+{
+	clk[VF610_CLK_DDRMC] = imx_clk_gate2_cgr("ddrmc",
+						 "ddr_sel",
+						 ccm + CCM_CCGR6,
+						 vf610_ccm_ccgrx_cgn(14),
+						 0x2);
+}
+
+static void vf610_ccm_setup_wkpu(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+{
+	clk[VF610_CLK_WKPU] = imx_clk_gate2_cgr("wkpu",
+						"ipg_bus",
+						ccm + CCM_CCGR4,
+						vf610_ccm_ccgrx_cgn(10),
+						0x2);
+}
+
+static void vf610_ccm_setup_usbphys(struct device_node *np,
+				    void __iomem *anatop,
+				    void __iomem *ccm)
+{
+	clk[VF610_CLK_USBPHY0] = imx_clk_gate("usbphy0", "pll3_usb_otg",
+					      anatop + PLL_CTRL[2], 6);
+	clk[VF610_CLK_USBPHY1] = imx_clk_gate("usbphy1", "pll7_usb_host",
+					      anatop + PLL_CTRL[6], 6);
+}
+
+static void vf610_ccm_setup_usbcs(struct device_node *np,
+				  void __iomem *anatop,
+				  void __iomem *ccm)
+
+{
+
+	clk[VF610_CLK_USBC0] = imx_clk_gate2("usbc0", "ipg_bus",
+					     ccm + CCM_CCGR1,
+					     vf610_ccm_ccgrx_cgn(4));
+	clk[VF610_CLK_USBC1] = imx_clk_gate2("usbc1", "ipg_bus",
+					     ccm + CCM_CCGR7,
+					     vf610_ccm_ccgrx_cgn(4));
+
+}
+
+static void vf610_ccm_setup_qspis(struct device_node *np,
+				  void __iomem *anatop,
+				  void __iomem *ccm)
+{
+	static const char *sources[] = {
+		"pll3_usb_otg",
+		"pll3_pfd4",
+		"pll2_pfd4",
+		"pll1_pfd4",
+	};
+
+	clk[VF610_CLK_QSPI0_SEL] = imx_clk_mux("qspi0_sel",
+					       ccm + CCM_CSCMR1,
+					       22, 2,
+					       sources, ARRAY_SIZE(sources));
+	clk[VF610_CLK_QSPI0_EN] = imx_clk_gate("qspi0_en", "qspi0_sel",
+					       ccm + CCM_CSCDR3, 4);
+	clk[VF610_CLK_QSPI0_X4_DIV] = imx_clk_divider("qspi0_x4", "qspi0_en",
+						      ccm + CCM_CSCDR3, 0, 2);
+	clk[VF610_CLK_QSPI0_X2_DIV] = imx_clk_divider("qspi0_x2", "qspi0_x4",
+						      ccm + CCM_CSCDR3, 2, 1);
+	clk[VF610_CLK_QSPI0_X1_DIV] = imx_clk_divider("qspi0_x1", "qspi0_x2",
+						      ccm + CCM_CSCDR3, 3, 1);
+	clk[VF610_CLK_QSPI0] = imx_clk_gate2("qspi0", "qspi0_x1",
+					     ccm + CCM_CCGR2,
+					     vf610_ccm_ccgrx_cgn(4));
+
+	clk[VF610_CLK_QSPI1_SEL] = imx_clk_mux("qspi1_sel",
+					       ccm + CCM_CSCMR1,
+					       24, 2,
+					       sources, ARRAY_SIZE(sources));
+	clk[VF610_CLK_QSPI1_EN] = imx_clk_gate("qspi1_en", "qspi1_sel",
+					       ccm + CCM_CSCDR3, 12);
+	clk[VF610_CLK_QSPI1_X4_DIV] = imx_clk_divider("qspi1_x4", "qspi1_en",
+						      ccm + CCM_CSCDR3, 8, 2);
+	clk[VF610_CLK_QSPI1_X2_DIV] = imx_clk_divider("qspi1_x2", "qspi1_x4",
+						      ccm + CCM_CSCDR3, 10, 1);
+	clk[VF610_CLK_QSPI1_X1_DIV] = imx_clk_divider("qspi1_x1", "qspi1_x2",
+						      ccm + CCM_CSCDR3, 11, 1);
+	clk[VF610_CLK_QSPI1] = imx_clk_gate2("qspi1", "qspi1_x1",
+					     ccm + CCM_CCGR8,
+					     vf610_ccm_ccgrx_cgn(4));
+}
+
+static void vf610_ccm_setup_enets(struct device_node *np,
+				  void __iomem *anatop,
+				  void __iomem *ccm)
+{
+	static const char *enet_sels[] = {
+		"enet_ext",
+		"audio_ext",
+		"enet_50m",
+		"enet_25m",
+	};
+
+	static const char *enet_ts_sels[] = {
+		"enet_ext",
+		"fxosc",
+		"audio_ext",
+		"usb",
+		"enet_ts",
+		"enet_25m",
+		"enet_50m",
+	};
+
+	clk[VF610_CLK_ENET_50M] = imx_clk_fixed_factor("enet_50m",
+						       "pll5_enet", 1, 10);
+	clk[VF610_CLK_ENET_25M] = imx_clk_fixed_factor("enet_25m",
+						       "pll5_enet", 1, 20);
+	clk[VF610_CLK_ENET_SEL] = imx_clk_mux("enet_sel",
+					      ccm + CCM_CSCMR2, 4, 2,
+					      enet_sels,
+					      ARRAY_SIZE(enet_sels));
+	clk[VF610_CLK_ENET_TS_SEL] = imx_clk_mux("enet_ts_sel",
+						 ccm + CCM_CSCMR2, 0, 3,
+						 enet_ts_sels,
+						 ARRAY_SIZE(enet_ts_sels));
+	clk[VF610_CLK_ENET] = imx_clk_gate("enet", "enet_sel",
+					   ccm + CCM_CSCDR1, 24);
+	clk[VF610_CLK_ENET_TS] = imx_clk_gate("enet_ts", "enet_ts_sel",
+					      ccm + CCM_CSCDR1, 23);
+	clk[VF610_CLK_ENET0] = imx_clk_gate2("enet0", "ipg_bus",
+					     ccm + CCM_CCGR9,
+					     vf610_ccm_ccgrx_cgn(0));
+	clk[VF610_CLK_ENET1] = imx_clk_gate2("enet1", "ipg_bus",
+					     ccm + CCM_CCGR9,
+					     vf610_ccm_ccgrx_cgn(1));
+}
+
+static void vf610_ccm_setup_pit(struct device_node *np,
+				  void __iomem *anatop,
+				  void __iomem *ccm)
+{
+	clk[VF610_CLK_PIT] = imx_clk_gate2("pit", "ipg_bus",
+					   ccm + CCM_CCGR1,
+					   vf610_ccm_ccgrx_cgn(7));
+}
+
+static void vf610_ccm_setup_uarts(struct device_node *np,
+				  void __iomem *anatop,
+				  void __iomem *ccm)
+{
+	clk[VF610_CLK_UART0] = imx_clk_gate2("uart0", "ipg_bus",
+					     ccm + CCM_CCGR0,
+					     vf610_ccm_ccgrx_cgn(7));
+	clk[VF610_CLK_UART1] = imx_clk_gate2("uart1", "ipg_bus",
+					     ccm + CCM_CCGR0,
+					     vf610_ccm_ccgrx_cgn(8));
+	clk[VF610_CLK_UART2] = imx_clk_gate2("uart2", "ipg_bus",
+					     ccm + CCM_CCGR0,
+					     vf610_ccm_ccgrx_cgn(9));
+	clk[VF610_CLK_UART3] = imx_clk_gate2("uart3", "ipg_bus",
+					     ccm + CCM_CCGR0,
+					     vf610_ccm_ccgrx_cgn(10));
+	clk[VF610_CLK_UART4] = imx_clk_gate2("uart4", "ipg_bus",
+					     ccm + CCM_CCGR6,
+					     vf610_ccm_ccgrx_cgn(9));
+	clk[VF610_CLK_UART5] = imx_clk_gate2("uart5", "ipg_bus",
+					     ccm + CCM_CCGR6,
+					     vf610_ccm_ccgrx_cgn(10));
+}
+
+static void vf610_ccm_setup_i2cs(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+
+{
+	clk[VF610_CLK_I2C0] = imx_clk_gate2("i2c0", "ipg_bus",
+					    ccm + CCM_CCGR4,
+					    vf610_ccm_ccgrx_cgn(6));
+	clk[VF610_CLK_I2C1] = imx_clk_gate2("i2c1", "ipg_bus",
+					    ccm + CCM_CCGR4,
+					    vf610_ccm_ccgrx_cgn(7));
+	clk[VF610_CLK_I2C2] = imx_clk_gate2("i2c2", "ipg_bus",
+					    ccm + CCM_CCGR10,
+					    vf610_ccm_ccgrx_cgn(6));
+	clk[VF610_CLK_I2C3] = imx_clk_gate2("i2c3", "ipg_bus",
+					    ccm + CCM_CCGR10,
+					    vf610_ccm_ccgrx_cgn(7));
+}
+
+static void vf610_ccm_setup_dspis(struct device_node *np,
+				  void __iomem *anatop,
+				  void __iomem *ccm)
+{
+	clk[VF610_CLK_DSPI0] = imx_clk_gate2("dspi0", "ipg_bus",
+					     ccm + CCM_CCGR0,
+					     vf610_ccm_ccgrx_cgn(12));
+	clk[VF610_CLK_DSPI1] = imx_clk_gate2("dspi1", "ipg_bus",
+					     ccm + CCM_CCGR0,
+					     vf610_ccm_ccgrx_cgn(13));
+	clk[VF610_CLK_DSPI2] = imx_clk_gate2("dspi2", "ipg_bus",
+					     ccm + CCM_CCGR6,
+					     vf610_ccm_ccgrx_cgn(12));
+	clk[VF610_CLK_DSPI3] = imx_clk_gate2("dspi3", "ipg_bus",
+					     ccm + CCM_CCGR6,
+					     vf610_ccm_ccgrx_cgn(13));
+}
+
+static void vf610_ccm_setup_wdt(struct device_node *np,
+				void __iomem *anatop,
+				void __iomem *ccm)
+{
+	clk[VF610_CLK_WDT] = imx_clk_gate2("wdt", "ipg_bus",
+					   ccm + CCM_CCGR1,
+					   vf610_ccm_ccgrx_cgn(14));
+}
+
+static void vf610_ccm_setup_esdhcs(struct device_node *np,
+				   void __iomem *anatop,
+				   void __iomem *ccm)
+{
+	static const char *sources[] = {
+		"pll3_usb_otg",
+		"pll3_pfd3",
+		"pll1_pfd3",
+		"platform_bus",
+	};
+
+	clk[VF610_CLK_ESDHC0_SEL] = imx_clk_mux("esdhc0_sel",
+						ccm + CCM_CSCMR1, 16, 2,
+						sources, ARRAY_SIZE(sources));
+	clk[VF610_CLK_ESDHC0_EN] = imx_clk_gate("esdhc0_en", "esdhc0_sel",
+						ccm + CCM_CSCDR2, 28);
+	clk[VF610_CLK_ESDHC0_DIV] = imx_clk_divider("esdhc0_div", "esdhc0_en",
+						    ccm +CCM_CSCDR2, 16, 4);
+	clk[VF610_CLK_ESDHC0] = imx_clk_gate2("eshc0", "esdhc0_div",
+					      ccm + CCM_CCGR7,
+					      vf610_ccm_ccgrx_cgn(1));
+
+	clk[VF610_CLK_ESDHC1_SEL] = imx_clk_mux("esdhc1_sel",
+						ccm + CCM_CSCMR1, 18, 2,
+						sources, ARRAY_SIZE(sources));
+	clk[VF610_CLK_ESDHC1_EN] = imx_clk_gate("esdhc1_en", "esdhc1_sel",
+						ccm + CCM_CSCDR2, 29);
+	clk[VF610_CLK_ESDHC1_DIV] = imx_clk_divider("esdhc1_div", "esdhc1_en",
+						    ccm + CCM_CSCDR2, 20, 4);
+	clk[VF610_CLK_ESDHC1] = imx_clk_gate2("eshc1", "esdhc1_div",
+					      ccm + CCM_CCGR7,
+					      vf610_ccm_ccgrx_cgn(2));
+}
+
+static void vf610_ccm_setup_ftms(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+{
+	/* FTM counter clock source, not module clock */
+	static const char *ftm_ext_sels[] = {
+		"sirc_128k",
+		"sxosc",
+		"fxosc_half",
+		"audio_ext",
+	};
+
+	static const char *ftm_fix_sels[] = {
+		"sxosc",
+		"ipg_bus",
+	};
+
+	/*
+	 * ftm_ext_clk and ftm_fix_clk are FTM timer counter's
+	 * selectable clock sources, both use a common enable bit
+	 * in CCM_CSCDR1, selecting "dummy" clock as parent of
+	 * "ftm0_ext_fix" make it serve only for enable/disable.
+	 */
+	clk[VF610_CLK_FTM0_EXT_SEL] = imx_clk_mux("ftm0_ext_sel",
+						  ccm + CCM_CSCMR2, 6, 2,
+						  ftm_ext_sels,
+						  ARRAY_SIZE(ftm_ext_sels));
+	clk[VF610_CLK_FTM0_FIX_SEL] = imx_clk_mux("ftm0_fix_sel",
+						  ccm + CCM_CSCMR2, 14, 1,
+						  ftm_fix_sels,
+						  ARRAY_SIZE(ftm_fix_sels));
+	clk[VF610_CLK_FTM0_EXT_FIX_EN] = imx_clk_gate("ftm0_ext_fix_en",
+						      "dummy",
+						      ccm + CCM_CSCDR1, 25);
+	clk[VF610_CLK_FTM1_EXT_SEL] = imx_clk_mux("ftm1_ext_sel",
+						  ccm + CCM_CSCMR2, 8, 2,
+						  ftm_ext_sels,
+						  ARRAY_SIZE(ftm_ext_sels));
+	clk[VF610_CLK_FTM1_FIX_SEL] = imx_clk_mux("ftm1_fix_sel",
+						  ccm + CCM_CSCMR2, 15, 1,
+						  ftm_fix_sels,
+						  ARRAY_SIZE(ftm_fix_sels));
+	clk[VF610_CLK_FTM1_EXT_FIX_EN] = imx_clk_gate("ftm1_ext_fix_en",
+						      "dummy",
+						      ccm + CCM_CSCDR1, 26);
+	clk[VF610_CLK_FTM2_EXT_SEL] = imx_clk_mux("ftm2_ext_sel",
+						  ccm + CCM_CSCMR2, 10, 2,
+						  ftm_ext_sels,
+						  ARRAY_SIZE(ftm_ext_sels));
+	clk[VF610_CLK_FTM2_FIX_SEL] = imx_clk_mux("ftm2_fix_sel",
+						  ccm + CCM_CSCMR2, 16, 1,
+						  ftm_fix_sels,
+						  ARRAY_SIZE(ftm_fix_sels));
+	clk[VF610_CLK_FTM2_EXT_FIX_EN] = imx_clk_gate("ftm2_ext_fix_en",
+						      "dummy",
+						      ccm + CCM_CSCDR1, 27);
+	clk[VF610_CLK_FTM3_EXT_SEL] = imx_clk_mux("ftm3_ext_sel",
+						  ccm + CCM_CSCMR2, 12, 2,
+						  ftm_ext_sels,
+						  ARRAY_SIZE(ftm_ext_sels));
+	clk[VF610_CLK_FTM3_FIX_SEL] = imx_clk_mux("ftm3_fix_sel",
+						  ccm + CCM_CSCMR2, 17, 1,
+						  ftm_fix_sels,
+						  ARRAY_SIZE(ftm_fix_sels));
+	clk[VF610_CLK_FTM3_EXT_FIX_EN] = imx_clk_gate("ftm3_ext_fix_en",
+						      "dummy",
+						      ccm + CCM_CSCDR1, 28);
+
+	/* ftm(n)_clk are FTM module operation clock */
+	clk[VF610_CLK_FTM0] = imx_clk_gate2("ftm0", "ipg_bus",
+					    ccm + CCM_CCGR1,
+					    vf610_ccm_ccgrx_cgn(8));
+	clk[VF610_CLK_FTM1] = imx_clk_gate2("ftm1", "ipg_bus",
+					    ccm + CCM_CCGR1,
+					    vf610_ccm_ccgrx_cgn(9));
+	clk[VF610_CLK_FTM2] = imx_clk_gate2("ftm2", "ipg_bus",
+					    ccm + CCM_CCGR7,
+					    vf610_ccm_ccgrx_cgn(8));
+	clk[VF610_CLK_FTM3] = imx_clk_gate2("ftm3", "ipg_bus",
+					    ccm + CCM_CCGR7,
+					    vf610_ccm_ccgrx_cgn(9));
+}
+
+static void vf610_ccm_setup_dcus(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+{
+	static const char *sources[] = {
+		"pll1_pfd2",
+		"pll3_usb_otg",
+	};
+
+	clk[VF610_CLK_DCU0_SEL] = imx_clk_mux("dcu0_sel",
+					      ccm + CCM_CSCMR1, 28, 1,
+					      sources, ARRAY_SIZE(sources));
+	clk[VF610_CLK_DCU0_EN] = imx_clk_gate("dcu0_en", "dcu0_sel",
+					      ccm + CCM_CSCDR3, 19);
+	clk[VF610_CLK_DCU0_DIV] = imx_clk_divider("dcu0_div", "dcu0_en",
+						  ccm + CCM_CSCDR3, 16, 3);
+	clk[VF610_CLK_DCU0] = imx_clk_gate2("dcu0", "ipg_bus",
+					    ccm + CCM_CCGR3,
+					    vf610_ccm_ccgrx_cgn(8));
+	clk[VF610_CLK_DCU1_SEL] = imx_clk_mux("dcu1_sel",
+					      ccm + CCM_CSCMR1, 29, 1,
+					      sources, ARRAY_SIZE(sources));
+	clk[VF610_CLK_DCU1_EN] = imx_clk_gate("dcu1_en", "dcu1_sel",
+					      ccm + CCM_CSCDR3, 23);
+	clk[VF610_CLK_DCU1_DIV] = imx_clk_divider("dcu1_div", "dcu1_en",
+						  ccm + CCM_CSCDR3, 20, 3);
+	clk[VF610_CLK_DCU1] = imx_clk_gate2("dcu1", "ipg_bus",
+					    ccm + CCM_CCGR9,
+					    vf610_ccm_ccgrx_cgn(8));
+}
+
+static void vf610_ccm_setup_tcons(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+{
+	clk[VF610_CLK_TCON0] = imx_clk_gate2("tcon0", "platform_bus",
+					     ccm + CCM_CCGR1,
+					     vf610_ccm_ccgrx_cgn(13));
+	clk[VF610_CLK_TCON1] = imx_clk_gate2("tcon1", "platform_bus",
+					     ccm + CCM_CCGR7,
+					     vf610_ccm_ccgrx_cgn(13));
+}
+
+
+static void vf610_ccm_setup_esai(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+{
+	static const char *sources[] = {
+		"audio_ext",
+		"mlb",
+		"spdif_rx",
+		"pll4_audio_div",
+	};
+
+	clk[VF610_CLK_ESAI_SEL] = imx_clk_mux("esai_sel",
+					      ccm + CCM_CSCMR1, 20, 2,
+					      sources, ARRAY_SIZE(sources));
+	clk[VF610_CLK_ESAI_EN] = imx_clk_gate("esai_en", "esai_sel",
+					      ccm + CCM_CSCDR2, 30);
+	clk[VF610_CLK_ESAI_DIV] = imx_clk_divider("esai_div", "esai_en",
+						  ccm + CCM_CSCDR2, 24, 4);
+	clk[VF610_CLK_ESAI] = imx_clk_gate2("esai", "esai_div",
+					    ccm + CCM_CCGR4,
+					    vf610_ccm_ccgrx_cgn(2));
+}
+
+static void vf610_ccm_setup_sais(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+{
+	static const char *sources[] = {
+		"audio_ext",
+		"mlb",
+		"spdif_rx",
+		"pll4_audio_div",
+	};
+
+	clk[VF610_CLK_SAI0_SEL] = imx_clk_mux("sai0_sel",
+					      ccm + CCM_CSCMR1, 0, 2,
+					      sources, ARRAY_SIZE(sources));
+	clk[VF610_CLK_SAI0_EN] = imx_clk_gate("sai0_en", "sai0_sel",
+					      ccm + CCM_CSCDR1, 16);
+	clk[VF610_CLK_SAI0_DIV] = imx_clk_divider("sai0_div", "sai0_en",
+						  ccm + CCM_CSCDR1, 0, 4);
+	clk[VF610_CLK_SAI0] = imx_clk_gate2("sai0", "ipg_bus",
+					    ccm + CCM_CCGR0,
+					    vf610_ccm_ccgrx_cgn(15));
+
+	clk[VF610_CLK_SAI1_SEL] = imx_clk_mux("sai1_sel",
+					      ccm + CCM_CSCMR1, 2, 2,
+					      sources, ARRAY_SIZE(sources));
+	clk[VF610_CLK_SAI1_EN] = imx_clk_gate("sai1_en", "sai1_sel",
+					      ccm + CCM_CSCDR1, 17);
+	clk[VF610_CLK_SAI1_DIV] = imx_clk_divider("sai1_div", "sai1_en",
+						  ccm + CCM_CSCDR1, 4, 4);
+	clk[VF610_CLK_SAI1] = imx_clk_gate2("sai1", "ipg_bus",
+					    ccm + CCM_CCGR1,
+					    vf610_ccm_ccgrx_cgn(0));
+
+	clk[VF610_CLK_SAI2_SEL] = imx_clk_mux("sai2_sel",
+					      ccm + CCM_CSCMR1, 4, 2,
+					      sources, ARRAY_SIZE(sources));
+	clk[VF610_CLK_SAI2_EN] = imx_clk_gate("sai2_en", "sai2_sel",
+					      ccm + CCM_CSCDR1, 18);
+	clk[VF610_CLK_SAI2_DIV] = imx_clk_divider("sai2_div", "sai2_en",
+						  ccm + CCM_CSCDR1, 8, 4);
+	clk[VF610_CLK_SAI2] = imx_clk_gate2("sai2", "ipg_bus",
+					    ccm + CCM_CCGR1,
+					    vf610_ccm_ccgrx_cgn(1));
+
+	clk[VF610_CLK_SAI3_SEL] = imx_clk_mux("sai3_sel",
+					      ccm + CCM_CSCMR1, 6, 2,
+					      sources, ARRAY_SIZE(sources));
+	clk[VF610_CLK_SAI3_EN] = imx_clk_gate("sai3_en", "sai3_sel",
+					      ccm + CCM_CSCDR1, 19);
+	clk[VF610_CLK_SAI3_DIV] = imx_clk_divider("sai3_div", "sai3_en",
+						  ccm + CCM_CSCDR1, 12, 4);
+	clk[VF610_CLK_SAI3] = imx_clk_gate2("sai3", "ipg_bus",
+					    ccm + CCM_CCGR1,
+					    vf610_ccm_ccgrx_cgn(2));
+}
+
+static void vf610_ccm_setup_nfc(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+{
+	static const char *sources[] = {
+		"platform_bus",
+		"pll1_pfd1",
+		"pll3_pfd1",
+		"pll3_pfd3",
+	};
+
+	clk[VF610_CLK_NFC_SEL] = imx_clk_mux("nfc_sel",
+					     ccm + CCM_CSCMR1, 12, 2,
+					     sources, ARRAY_SIZE(sources));
+	clk[VF610_CLK_NFC_EN] = imx_clk_gate("nfc_en", "nfc_sel",
+					     ccm + CCM_CSCDR2, 9);
+	clk[VF610_CLK_NFC_PRE_DIV] = imx_clk_divider("nfc_pre_div", "nfc_en",
+						     ccm + CCM_CSCDR3, 13, 3);
+	clk[VF610_CLK_NFC_FRAC_DIV] = imx_clk_divider("nfc_frac_div",
+						      "nfc_pre_div",
+						      ccm + CCM_CSCDR2, 4, 4);
+	clk[VF610_CLK_NFC] = imx_clk_gate2("nfc", "nfc_frac_div",
+					   ccm + CCM_CCGR10,
+					   vf610_ccm_ccgrx_cgn(0));
+}
+
+static void vf610_ccm_setup_gpu(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+{
+	static const char *sources[] = {
+		"pll2_pfd2",
+		"pll3_pfd2",
+	};
+
+	clk[VF610_CLK_GPU_SEL] = imx_clk_mux("gpu_sel",
+					     ccm + CCM_CSCMR1, 14, 1,
+					     sources, ARRAY_SIZE(sources));
+	clk[VF610_CLK_GPU_EN] = imx_clk_gate("gpu_en", "gpu_sel",
+					     ccm + CCM_CSCDR2, 10);
+	clk[VF610_CLK_GPU2D] = imx_clk_gate2("gpu", "gpu_en",
+					     ccm + CCM_CCGR8,
+					     vf610_ccm_ccgrx_cgn(15));
+}
+
+static void vf610_ccm_setup_vadc(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+{
+	static const char *sources[] = {
+		"pll6_video_div",
+		"pll3_usb_otg_div",
+		"pll3_usb_otg",
+	};
+
+	clk[VF610_CLK_VADC_SEL] = imx_clk_mux("vadc_sel",
+					      ccm + CCM_CSCMR1, 8, 2,
+					      sources, ARRAY_SIZE(sources));
+	clk[VF610_CLK_VADC_EN] = imx_clk_gate("vadc_en", "vadc_sel",
+					      ccm + CCM_CSCDR1, 22);
+	clk[VF610_CLK_VADC_DIV] = imx_clk_divider("vadc_div", "vadc_en",
+						  ccm + CCM_CSCDR1, 20, 2);
+	clk[VF610_CLK_VADC_DIV_HALF] = imx_clk_fixed_factor("vadc_div_half",
+							    "vadc_div",
+							    1, 2);
+	clk[VF610_CLK_VADC] = imx_clk_gate2("vadc", "vadc_div",
+					    ccm + CCM_CCGR8,
+					    vf610_ccm_ccgrx_cgn(7));
+}
+
+
+static void vf610_ccm_setup_adcs(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+{
+	clk[VF610_CLK_ADC0] = imx_clk_gate2("adc0", "ipg_bus",
+					    ccm + CCM_CCGR1,
+					    vf610_ccm_ccgrx_cgn(11));
+	clk[VF610_CLK_ADC1] = imx_clk_gate2("adc1", "ipg_bus",
+					    ccm + CCM_CCGR7,
+					    vf610_ccm_ccgrx_cgn(11));
+	clk[VF610_CLK_DAC0] = imx_clk_gate2("dac0", "ipg_bus",
+					    ccm + CCM_CCGR8,
+					    vf610_ccm_ccgrx_cgn(12));
+	clk[VF610_CLK_DAC1] = imx_clk_gate2("dac1", "ipg_bus",
+					    ccm + CCM_CCGR8,
+					    vf610_ccm_ccgrx_cgn(13));
+}
+
+static void vf610_ccm_setup_flexcans(struct device_node *np,
+				     void __iomem *anatop,
+				     void __iomem *ccm)
+{
+	clk[VF610_CLK_FLEXCAN0_EN] = imx_clk_gate("flexcan0_en", "ipg_bus",
+						  ccm + CCM_CSCDR2, 11);
+	clk[VF610_CLK_FLEXCAN0] = imx_clk_gate2("flexcan0", "flexcan0_en",
+						ccm + CCM_CCGR0,
+						vf610_ccm_ccgrx_cgn(0));
+	clk[VF610_CLK_FLEXCAN1_EN] = imx_clk_gate("flexcan1_en", "ipg_bus",
+						  ccm + CCM_CSCDR2, 12);
+	clk[VF610_CLK_FLEXCAN1] = imx_clk_gate2("flexcan1", "flexcan1_en",
+						ccm + CCM_CCGR9,
+						vf610_ccm_ccgrx_cgn(4));
+}
+
+static void vf610_ccm_setup_dmas(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+{
+	clk[VF610_CLK_DMAMUX0] = imx_clk_gate2("dmamux0", "platform_bus",
+					       ccm + CCM_CCGR0,
+					       vf610_ccm_ccgrx_cgn(4));
+	clk[VF610_CLK_DMAMUX1] = imx_clk_gate2("dmamux1", "platform_bus",
+					       ccm + CCM_CCGR0,
+					       vf610_ccm_ccgrx_cgn(5));
+	clk[VF610_CLK_DMAMUX2] = imx_clk_gate2("dmamux2", "platform_bus",
+					       ccm + CCM_CCGR6,
+					       vf610_ccm_ccgrx_cgn(1));
+	clk[VF610_CLK_DMAMUX3] = imx_clk_gate2("dmamux3", "platform_bus",
+					       ccm + CCM_CCGR6,
+					       vf610_ccm_ccgrx_cgn(2));
+}
+
+static void vf610_ccm_setup_misc(struct device_node *np,
+				 void __iomem *anatop,
+				 void __iomem *ccm)
+{
+	clk[VF610_CLK_ASRC] = imx_clk_gate2("asrc", "ipg_bus",
+					    ccm + CCM_CCGR4,
+					    vf610_ccm_ccgrx_cgn(1));
+	clk[VF610_CLK_SNVS] = imx_clk_gate2("snvs-rtc", "ipg_bus",
+					    ccm + CCM_CCGR6,
+					    vf610_ccm_ccgrx_cgn(7));
+	clk[VF610_CLK_DAP] = imx_clk_gate("dap", "platform_bus",
+					  ccm + CCM_CCSR, 24);
+	clk[VF610_CLK_OCOTP] = imx_clk_gate("ocotp", "ipg_bus",
+					    ccm + CCM_CCGR6,
+					    vf610_ccm_ccgrx_cgn(5));
+
+	clk[VF610_CLK_LVDS1_IN] = imx_clk_gate_exclusive("lvds1_in",
+							 "anaclk1",
+							 anatop + ANA_MISC1,
+							 12, BIT(10));
+}
+
+typedef void (*vf610_ccm_group_setup_func) (struct device_node *np,
+					    void __iomem *anatop,
+					    void __iomem *ccm);
+
+static void __init vf610_clocks_init(struct device_node *np)
+{
+	size_t i;
+	struct device_node *node;
+	void __iomem *anatop;
+	void __iomem *ccm;
+
+	static const vf610_ccm_group_setup_func group_setup_funcs[] = {
+		vf610_ccm_setup_fixed,
+		vf610_ccm_setup_from_dt,
+		vf610_ccm_setup_slow_clk,
+		vf610_ccm_setup_fast_clk,
+		vf610_ccm_setup_pll_bypass_srcs,
+		vf610_ccm_setup_plls,
+		vf610_ccm_setup_pll_bypass,
+		vf610_ccm_setup_group1,
+		vf610_ccm_setup_pfds,
+		vf610_ccm_setup_pll1_pfd_out,
+		vf610_ccm_setup_pll2_pfd_out,
+		vf610_ccm_setup_sys_out,
+		vf610_ccm_setup_ddr_out,
+		vf610_ccm_setup_dividers,
+		vf610_ccm_setup_pll4_main_div,
+		vf610_ccm_setup_ddrmc,
+		vf610_ccm_setup_wkpu,
+		vf610_ccm_setup_usbphys,
+		vf610_ccm_setup_usbcs,
+		vf610_ccm_setup_qspis,
+		vf610_ccm_setup_enets,
+		vf610_ccm_setup_pit,
+		vf610_ccm_setup_uarts,
+		vf610_ccm_setup_i2cs,
+		vf610_ccm_setup_dspis,
+		vf610_ccm_setup_wdt,
+		vf610_ccm_setup_esdhcs,
+		vf610_ccm_setup_ftms,
+		vf610_ccm_setup_dcus,
+		vf610_ccm_setup_tcons,
+		vf610_ccm_setup_esai,
+		vf610_ccm_setup_sais,
+		vf610_ccm_setup_nfc,
+		vf610_ccm_setup_gpu,
+		vf610_ccm_setup_vadc,
+		vf610_ccm_setup_adcs,
+		vf610_ccm_setup_flexcans,
+		vf610_ccm_setup_dmas,
+		vf610_ccm_setup_misc,
+	};
+
+	ccm = of_iomap(np, 0);
+	BUG_ON(!ccm);
+
+	node = of_find_compatible_node(NULL, NULL, "fsl,vf610-anatop");
+	anatop = of_iomap(node, 0);
+	/* anatop = syscon_base_lookup_by_phandle(np, "fsl,anatop"); */
+	BUG_ON(IS_ERR(anatop));
+
+	for (i = 0; i < ARRAY_SIZE(group_setup_funcs); i++)
+		group_setup_funcs[i](np, anatop, ccm);
+
+	imx_check_clocks(clk, VF610_CLK_END);
+
+	/* Do not bypass PLLs initially */
+
+	clk_set_parent(clk[VF610_PLL1_BYPASS], clk[VF610_CLK_PLL1]);
+	clk_set_parent(clk[VF610_PLL2_BYPASS], clk[VF610_CLK_PLL2]);
+	clk_set_parent(clk[VF610_PLL3_BYPASS], clk[VF610_CLK_PLL3]);
+	clk_set_parent(clk[VF610_PLL4_BYPASS], clk[VF610_CLK_PLL4]);
+	clk_set_parent(clk[VF610_PLL5_BYPASS], clk[VF610_CLK_PLL5]);
+	clk_set_parent(clk[VF610_PLL6_BYPASS], clk[VF610_CLK_PLL6]);
+	clk_set_parent(clk[VF610_PLL7_BYPASS], clk[VF610_CLK_PLL7]);
+
+	clk_set_parent(clk[VF610_CLK_QSPI0_SEL], clk[VF610_CLK_PLL1_PFD4]);
+	clk_set_rate(clk[VF610_CLK_QSPI0_X4_DIV],
+		     clk_get_rate(clk[VF610_CLK_QSPI0_SEL]) / 2);
+	clk_set_rate(clk[VF610_CLK_QSPI0_X2_DIV],
+		     clk_get_rate(clk[VF610_CLK_QSPI0_X4_DIV]) / 2);
+	clk_set_rate(clk[VF610_CLK_QSPI0_X1_DIV],
+		     clk_get_rate(clk[VF610_CLK_QSPI0_X2_DIV]) / 2);
+
+	clk_set_parent(clk[VF610_CLK_QSPI1_SEL], clk[VF610_CLK_PLL1_PFD4]);
+	clk_set_rate(clk[VF610_CLK_QSPI1_X4_DIV],
+		     clk_get_rate(clk[VF610_CLK_QSPI1_SEL]) / 2);
+	clk_set_rate(clk[VF610_CLK_QSPI1_X2_DIV],
+		     clk_get_rate(clk[VF610_CLK_QSPI1_X4_DIV]) / 2);
+	clk_set_rate(clk[VF610_CLK_QSPI1_X1_DIV],
+		     clk_get_rate(clk[VF610_CLK_QSPI1_X2_DIV]) / 2);
+
+	clk_set_parent(clk[VF610_CLK_SAI0_SEL], clk[VF610_CLK_AUDIO_EXT]);
+	clk_set_parent(clk[VF610_CLK_SAI1_SEL], clk[VF610_CLK_AUDIO_EXT]);
+	clk_set_parent(clk[VF610_CLK_SAI2_SEL], clk[VF610_CLK_AUDIO_EXT]);
+	clk_set_parent(clk[VF610_CLK_SAI3_SEL], clk[VF610_CLK_AUDIO_EXT]);
+
+	clk_enable(clk[VF610_CLK_SYS_BUS]);
+	clk_enable(clk[VF610_CLK_DDR_SEL]);
+	clk_enable(clk[VF610_CLK_DAP]);
+	clk_enable(clk[VF610_CLK_DDRMC]);
+	clk_enable(clk[VF610_CLK_WKPU]);
+
+	clk_data.clks = clk;
+	clk_data.clk_num = ARRAY_SIZE(clk);
+	of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
+}
+CLK_OF_DECLARE(vf610, "fsl,vf610-ccm", vf610_clocks_init);
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

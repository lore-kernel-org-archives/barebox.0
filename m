Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg5e-0000Pb-GJ
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:47:53 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id 1444618B425A
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:46:06 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:42 +0200
Message-Id: <1400100352-13002-15-git-send-email-dev@lynxeye.de>
In-Reply-To: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
References: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 15/25] pinctrl: tegra30: parse drive groups
To: barebox@lists.infradead.org

These are special groups to configure pad properties
such as drive strength and slew rate for a group of
pads.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pinctrl/pinctrl-tegra30.c | 159 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 158 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index 032377fe8cd2..888bf04b0409 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -37,6 +37,23 @@ struct tegra30_pingroup {
 	u16 reg;
 };
 
+struct tegra30_drive_pingroup {
+	const char *name;
+	u16 reg;
+	u32 hsm_bit:5;
+	u32 schmitt_bit:5;
+	u32 lpmd_bit:5;
+	u32 drvdn_bit:5;
+	u32 drvup_bit:5;
+	u32 slwr_bit:5;
+	u32 slwf_bit:5;
+	u32 drvtype_bit:5;
+	u32 drvdn_width:6;
+	u32 drvup_width:6;
+	u32 slwr_width:6;
+	u32 slwf_width:6;
+};
+
 #define PG(pg_name, f0, f1, f2, f3, offset)		\
 	{						\
 		.name = #pg_name,			\
@@ -44,6 +61,25 @@ struct tegra30_pingroup {
 		.reg = offset				\
 	}
 
+#define DRV_PG(pg_name, r, hsm_b, schmitt_b, lpmd_b,	\
+               drvdn_b, drvdn_w, drvup_b, drvup_w,	\
+               slwr_b, slwr_w, slwf_b, slwf_w)		\
+	{						\
+		.name = "drive_" #pg_name,		\
+		.reg = r - 0x868,			\
+		.hsm_bit = hsm_b,			\
+		.schmitt_bit = schmitt_b,		\
+		.lpmd_bit = lpmd_b,			\
+		.drvdn_bit = drvdn_b,			\
+		.drvdn_width = drvdn_w,			\
+		.drvup_bit = drvup_b,			\
+		.drvup_width = drvup_w,			\
+		.slwr_bit = slwr_b,			\
+		.slwr_width = slwr_w,			\
+		.slwf_bit = slwf_b,			\
+		.slwf_width = slwf_w,			\
+	}
+
 static const struct tegra30_pingroup tegra30_groups[] = {
 	/* name,                 f0,        f1,        f2,        f3,           reg  */
 	PG(clk_32k_out_pa0,      blink,     rsvd2,     rsvd3,     rsvd4,        0x31c),
@@ -297,6 +333,122 @@ static const struct tegra30_pingroup tegra30_groups[] = {
 	PG(pwr_int_n,            pwr_int_n, rsvd2,     rsvd3,     rsvd4,        0x32c),
 };
 
+static const struct tegra30_drive_pingroup tegra30_drive_groups[] = {
+	DRV_PG(ao1,   0x868,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(ao2,   0x86c,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(at1,   0x870,  2,  3,  4,  14,  5,  19,  5,  24,  2,  28,  2),
+	DRV_PG(at2,   0x874,  2,  3,  4,  14,  5,  19,  5,  24,  2,  28,  2),
+	DRV_PG(at3,   0x878,  2,  3,  4,  14,  5,  19,  5,  28,  2,  30,  2),
+	DRV_PG(at4,   0x87c,  2,  3,  4,  14,  5,  19,  5,  28,  2,  30,  2),
+	DRV_PG(at5,   0x880,  2,  3,  4,  14,  5,  19,  5,  28,  2,  30,  2),
+	DRV_PG(cdev1, 0x884,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(cdev2, 0x888,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(cec,   0x938,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(crt,   0x8f8,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(csus,  0x88c, -1, -1, -1,  12,  5,  19,  5,  24,  4,  28,  4),
+	DRV_PG(dap1,  0x890,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(dap2,  0x894,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(dap3,  0x898,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(dap4,  0x89c,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(dbg,   0x8a0,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(ddc,   0x8fc,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(dev3,  0x92c,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(gma,   0x900, -1, -1, -1,  14,  5,  19,  5,  24,  4,  28,  4),
+	DRV_PG(gmb,   0x904, -1, -1, -1,  14,  5,  19,  5,  24,  4,  28,  4),
+	DRV_PG(gmc,   0x908, -1, -1, -1,  14,  5,  19,  5,  24,  4,  28,  4),
+	DRV_PG(gmd,   0x90c, -1, -1, -1,  14,  5,  19,  5,  24,  4,  28,  4),
+	DRV_PG(gme,   0x910,  2,  3,  4,  14,  5,  19,  5,  28,  2,  30,  2),
+	DRV_PG(gmf,   0x914,  2,  3,  4,  14,  5,  19,  5,  28,  2,  30,  2),
+	DRV_PG(gmg,   0x918,  2,  3,  4,  14,  5,  19,  5,  28,  2,  30,  2),
+	DRV_PG(gmh,   0x91c,  2,  3,  4,  14,  5,  19,  5,  28,  2,  30,  2),
+	DRV_PG(gpv,   0x928,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(lcd1,  0x8a4,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(lcd2,  0x8a8,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(owr,   0x920,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(sdio1, 0x8ec,  2,  3, -1,  12,  7,  20,  7,  28,  2,  30,  2),
+	DRV_PG(sdio2, 0x8ac,  2,  3, -1,  12,  7,  20,  7,  28,  2,  30,  2),
+	DRV_PG(sdio3, 0x8b0,  2,  3, -1,  12,  7,  20,  7,  28,  2,  30,  2),
+	DRV_PG(spi,   0x8b4,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(uaa,   0x8b8,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(uab,   0x8bc,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(uart2, 0x8c0,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(uart3, 0x8c4,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(uda,   0x924,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(vi1,   0x8c8, -1, -1, -1,  14,  5,  19,  5,  24,  4,  28,  4),
+};
+
+static int pinctrl_tegra30_set_drvstate(struct pinctrl_tegra30 *ctrl,
+                                        struct device_node *np)
+{
+	const char *pins = NULL;
+	const struct tegra30_drive_pingroup *group = NULL;
+	int hsm = -1, schmitt = -1, pds = -1, pus = -1, srr = -1, srf = -1;
+	int i;
+	u32 __iomem *regaddr;
+	u32 val;
+
+	if (of_property_read_string(np, "nvidia,pins", &pins))
+		return 0;
+
+	for (i = 0; i < ARRAY_SIZE(tegra30_drive_groups); i++) {
+		if (!strcmp(pins, tegra30_drive_groups[i].name)) {
+			group = &tegra30_drive_groups[i];
+			break;
+		}
+	}
+	/* if no matching drivegroup is found */
+	if (i == ARRAY_SIZE(tegra30_groups))
+		return 0;
+
+	regaddr = ctrl->regs.ctrl + (group->reg >> 2);
+
+	of_property_read_u32_array(np, "nvidia,high-speed-mode", &hsm, 1);
+	of_property_read_u32_array(np, "nvidia,schmitt", &schmitt, 1);
+	of_property_read_u32_array(np, "nvidia,pull-down-strength", &pds, 1);
+	of_property_read_u32_array(np, "nvidia,pull-up-strength", &pus, 1);
+	of_property_read_u32_array(np, "nvidia,slew-rate-rising", &srr, 1);
+	of_property_read_u32_array(np, "nvidia,slew-rate-falling", &srf, 1);
+
+	if (hsm >= 0) {
+		val = readl(regaddr);
+		val &= ~(0x1 << group->hsm_bit);
+		val |= hsm << group->hsm_bit;
+		writel(val, regaddr);
+	}
+	if (schmitt >= 0) {
+		val = readl(regaddr);
+		val &= ~(0x1 << group->schmitt_bit);
+		val |= hsm << group->schmitt_bit;
+		writel(val, regaddr);
+	}
+	if (pds >= 0) {
+		val = readl(regaddr);
+		val &= ~(((1 << group->drvdn_width) - 1) << group->drvdn_bit);
+		val |= hsm << group->drvdn_bit;
+		writel(val, regaddr);
+	}
+	if (pus >= 0) {
+		val = readl(regaddr);
+		val &= ~(((1 << group->drvup_width) - 1) << group->drvup_bit);
+		val |= hsm << group->drvup_bit;
+		writel(val, regaddr);
+	}
+	if (srr >= 0) {
+		val = readl(regaddr);
+		val &= ~(((1 << group->slwr_width) - 1) << group->slwr_bit);
+		val |= hsm << group->slwr_bit;
+		writel(val, regaddr);
+	}
+	if (srf >= 0) {
+		val = readl(regaddr);
+		val &= ~(((1 << group->slwf_width) - 1) << group->slwf_bit);
+		val |= hsm << group->slwf_bit;
+		writel(val, regaddr);
+	}
+
+	return 1;
+}
+
 static void pinctrl_tegra30_set_func(struct pinctrl_tegra30 *ctrl,
 				     u32 reg, int func)
 {
@@ -405,8 +557,13 @@ static int pinctrl_tegra30_set_state(struct pinctrl_device *pdev,
 				break;
 			}
 		}
-		/* if no matching pingroup is found bail out */
+		/* if no matching pingroup is found */
 		if (j == ARRAY_SIZE(tegra30_groups)) {
+			/* see if we can find a drivegroup */
+			if (pinctrl_tegra30_set_drvstate(ctrl, np))
+				continue;
+
+			/* nothing matching found, warn and bail out */
 			dev_warn(ctrl->pinctrl.dev,
 				 "invalid pingroup %s referenced in node %s\n",
 				 pins, np->name);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

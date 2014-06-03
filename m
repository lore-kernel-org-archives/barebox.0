Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvOS-0004WL-R4
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:33:14 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 75D0218B425F
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:31 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:35:08 +0200
Message-Id: <1401827717-6420-22-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 21/30] pinctrl: tegra30: introduce drvdata
To: barebox@lists.infradead.org

Access pin and drivegroups through a drvdata pointer.
This allows to insert other groups for SoCs with a
similar bit layout easily.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pinctrl/pinctrl-tegra30.c | 48 +++++++++++++++++++++++++++------------
 1 file changed, 34 insertions(+), 14 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index 888bf04..d1e87a7 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -23,21 +23,24 @@
 #include <malloc.h>
 #include <pinctrl.h>
 
+struct pinctrl_tegra30_drvdata;
+
 struct pinctrl_tegra30 {
 	struct {
 		u32 __iomem *ctrl;
 		u32 __iomem *mux;
 	} regs;
 	struct pinctrl_device pinctrl;
+	struct pinctrl_tegra30_drvdata *drvdata;
 };
 
-struct tegra30_pingroup {
+struct tegra_pingroup {
 	const char *name;
 	const char *funcs[4];
 	u16 reg;
 };
 
-struct tegra30_drive_pingroup {
+struct tegra_drive_pingroup {
 	const char *name;
 	u16 reg;
 	u32 hsm_bit:5;
@@ -54,6 +57,13 @@ struct tegra30_drive_pingroup {
 	u32 slwf_width:6;
 };
 
+struct pinctrl_tegra30_drvdata {
+	const struct tegra_pingroup *pingrps;
+	const unsigned int num_pingrps;
+	const struct tegra_drive_pingroup *drvgrps;
+	const unsigned int num_drvgrps;
+};
+
 #define PG(pg_name, f0, f1, f2, f3, offset)		\
 	{						\
 		.name = #pg_name,			\
@@ -80,7 +90,7 @@ struct tegra30_drive_pingroup {
 		.slwf_width = slwf_w,			\
 	}
 
-static const struct tegra30_pingroup tegra30_groups[] = {
+static const struct tegra_pingroup tegra30_pin_groups[] = {
 	/* name,                 f0,        f1,        f2,        f3,           reg  */
 	PG(clk_32k_out_pa0,      blink,     rsvd2,     rsvd3,     rsvd4,        0x31c),
 	PG(uart3_cts_n_pa1,      uartc,     rsvd2,     gmi,       rsvd4,        0x17c),
@@ -333,7 +343,7 @@ static const struct tegra30_pingroup tegra30_groups[] = {
 	PG(pwr_int_n,            pwr_int_n, rsvd2,     rsvd3,     rsvd4,        0x32c),
 };
 
-static const struct tegra30_drive_pingroup tegra30_drive_groups[] = {
+static const struct tegra_drive_pingroup tegra30_drive_groups[] = {
 	DRV_PG(ao1,   0x868,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
 	DRV_PG(ao2,   0x86c,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
 	DRV_PG(at1,   0x870,  2,  3,  4,  14,  5,  19,  5,  24,  2,  28,  2),
@@ -377,11 +387,18 @@ static const struct tegra30_drive_pingroup tegra30_drive_groups[] = {
 	DRV_PG(vi1,   0x8c8, -1, -1, -1,  14,  5,  19,  5,  24,  4,  28,  4),
 };
 
+static const struct pinctrl_tegra30_drvdata tegra30_drvdata = {
+	.pingrps = tegra30_pin_groups,
+	.num_pingrps = ARRAY_SIZE(tegra30_pin_groups),
+	.drvgrps = tegra30_drive_groups,
+	.num_drvgrps = ARRAY_SIZE(tegra30_drive_groups),
+};
+
 static int pinctrl_tegra30_set_drvstate(struct pinctrl_tegra30 *ctrl,
                                         struct device_node *np)
 {
 	const char *pins = NULL;
-	const struct tegra30_drive_pingroup *group = NULL;
+	const struct tegra_drive_pingroup *group = NULL;
 	int hsm = -1, schmitt = -1, pds = -1, pus = -1, srr = -1, srf = -1;
 	int i;
 	u32 __iomem *regaddr;
@@ -390,14 +407,14 @@ static int pinctrl_tegra30_set_drvstate(struct pinctrl_tegra30 *ctrl,
 	if (of_property_read_string(np, "nvidia,pins", &pins))
 		return 0;
 
-	for (i = 0; i < ARRAY_SIZE(tegra30_drive_groups); i++) {
-		if (!strcmp(pins, tegra30_drive_groups[i].name)) {
-			group = &tegra30_drive_groups[i];
+	for (i = 0; i < ctrl->drvdata->num_drvgrps; i++) {
+		if (!strcmp(pins, ctrl->drvdata->drvgrps[i].name)) {
+			group = &ctrl->drvdata->drvgrps[i];
 			break;
 		}
 	}
 	/* if no matching drivegroup is found */
-	if (i == ARRAY_SIZE(tegra30_groups))
+	if (i == ctrl->drvdata->num_drvgrps)
 		return 0;
 
 	regaddr = ctrl->regs.ctrl + (group->reg >> 2);
@@ -529,7 +546,7 @@ static int pinctrl_tegra30_set_state(struct pinctrl_device *pdev,
 	struct device_node *childnode;
 	int pull = -1, tri = -1, in = -1, od = -1, ior = -1, i, j, k;
 	const char *pins, *func = NULL;
-	const struct tegra30_pingroup *group;
+	const struct tegra_pingroup *group = NULL;
 
 	/*
 	 * At first look if the node we are pointed at has children,
@@ -551,14 +568,14 @@ static int pinctrl_tegra30_set_state(struct pinctrl_device *pdev,
 		if (of_property_read_string_index(np, "nvidia,pins", i, &pins))
 			break;
 
-		for (j = 0; j < ARRAY_SIZE(tegra30_groups); j++) {
-			if (!strcmp(pins, tegra30_groups[j].name)) {
-				group = &tegra30_groups[j];
+		for (j = 0; j < ctrl->drvdata->num_pingrps; j++) {
+			if (!strcmp(pins, ctrl->drvdata->pingrps[j].name)) {
+				group = &ctrl->drvdata->pingrps[j];
 				break;
 			}
 		}
 		/* if no matching pingroup is found */
-		if (j == ARRAY_SIZE(tegra30_groups)) {
+		if (j == ctrl->drvdata->num_pingrps) {
 			/* see if we can find a drivegroup */
 			if (pinctrl_tegra30_set_drvstate(ctrl, np))
 				continue;
@@ -629,6 +646,8 @@ static int pinctrl_tegra30_probe(struct device_d *dev)
 		}
 	}
 
+	dev_get_drvdata(dev, (unsigned long *)&ctrl->drvdata);
+
 	ctrl->pinctrl.dev = dev;
 	ctrl->pinctrl.ops = &pinctrl_tegra30_ops;
 
@@ -642,6 +661,7 @@ static int pinctrl_tegra30_probe(struct device_d *dev)
 static __maybe_unused struct of_device_id pinctrl_tegra30_dt_ids[] = {
 	{
 		.compatible = "nvidia,tegra30-pinmux",
+		.data = (unsigned long)&tegra30_drvdata,
 	}, {
 		/* sentinel */
 	}
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

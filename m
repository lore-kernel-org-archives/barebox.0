Delivery-date: Tue, 08 Jun 2021 16:07:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqcOL-0007In-95
	for lore@lore.pengutronix.de; Tue, 08 Jun 2021 16:07:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqcOJ-0001ne-EU
	for lore@pengutronix.de; Tue, 08 Jun 2021 16:07:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QW4cUDdGiFUvJBGLk/PX5ZacH8Kvzci58QhTDqvhDUg=; b=wQZ4mYpoPIE19O
	9a/duNsEEHyQqCmwTPz1/1DKrOUa0m8TRV8UPHbhkouwRYsfCbM8zOYoS73N0hoMbdD9brrieB/+N
	YIAx2sVY8292B5GetSKHffLZXdNWbWIA/XSexmAKu0FPX17dNjRg7nzj5db0jn9USYAjTTqUmlqso
	sRNXKw6FVhS4XKxNZd3CfJSpddS+5xNj+B45C02gqoJ2C6BG0DVKkT0+rhx/dIgmRZrsdLk5s4nmi
	2GHEPY9eTjtVE6GuCADZw7chxeQsR3M7qSVBoHaEnYRkRF9jIl3ykdNZkoFGdS3XNt0kiizCOvl+o
	K31Gdh4OZdz3WGZoXtdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqcMz-008klf-Vs; Tue, 08 Jun 2021 14:06:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqcMW-008k4L-S2
 for barebox@lists.infradead.org; Tue, 08 Jun 2021 14:05:53 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqcMU-0001HI-KV; Tue, 08 Jun 2021 16:05:46 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqcMU-00005K-A2; Tue, 08 Jun 2021 16:05:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Jun 2021 16:05:43 +0200
Message-Id: <20210608140545.30696-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210608140545.30696-1-s.hauer@pengutronix.de>
References: <20210608140545.30696-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_070549_150911_08F632E8 
X-CRM114-Status: GOOD (  26.92  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] pinctrl: Rockchip: Update from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Linux Rockchip pinctrl driver is more flexible when it comes
to register offsets which are different between SoCs. This patch
updates different pieces of the driver to prepare merging support
for newer SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl-rockchip.c | 283 ++++++++++++++++++++++++++++-
 1 file changed, 275 insertions(+), 8 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 3b44847afb..4b69d0d069 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -27,6 +27,7 @@
 #include <of.h>
 #include <of_address.h>
 #include <pinctrl.h>
+#include <dt-bindings/pinctrl/rockchip.h>
 
 #include <linux/basic_mmio_gpio.h>
 #include <linux/clk.h>
@@ -43,6 +44,54 @@ enum rockchip_pin_bank_type {
 	RK3188_BANK0,
 };
 
+/*
+ * Encode variants of iomux registers into a type variable
+ */
+#define IOMUX_GPIO_ONLY		BIT(0)
+#define IOMUX_WIDTH_4BIT	BIT(1)
+#define IOMUX_SOURCE_PMU	BIT(2)
+#define IOMUX_UNROUTED		BIT(3)
+#define IOMUX_WIDTH_3BIT	BIT(4)
+#define IOMUX_WIDTH_2BIT	BIT(5)
+
+/**
+ * struct rockchip_iomux
+ * @type: iomux variant using IOMUX_* constants
+ * @offset: if initialized to -1 it will be autocalculated, by specifying
+ *	    an initial offset value the relevant source offset can be reset
+ *	    to a new value for autocalculating the following iomux registers.
+ */
+struct rockchip_iomux {
+	int				type;
+	int				offset;
+};
+
+/*
+ * enum type index corresponding to rockchip_perpin_drv_list arrays index.
+ */
+enum rockchip_pin_drv_type {
+	DRV_TYPE_IO_DEFAULT = 0,
+	DRV_TYPE_IO_1V8_OR_3V0,
+	DRV_TYPE_IO_1V8_ONLY,
+	DRV_TYPE_IO_1V8_3V0_AUTO,
+	DRV_TYPE_IO_3V3_ONLY,
+	DRV_TYPE_MAX
+};
+
+/**
+ * struct rockchip_drv
+ * @drv_type: drive strength variant using rockchip_perpin_drv_type
+ * @offset: if initialized to -1 it will be autocalculated, by specifying
+ *	    an initial offset value the relevant source offset can be reset
+ *	    to a new value for autocalculating the following drive strength
+ *	    registers. if used chips own cal_drv func instead to calculate
+ *	    registers offset, the variant could be ignored.
+ */
+struct rockchip_drv {
+	enum rockchip_pin_drv_type	drv_type;
+	int				offset;
+};
+
 struct rockchip_pin_bank {
 	void __iomem			*reg_base;
 	struct clk			*clk;
@@ -50,11 +99,14 @@ struct rockchip_pin_bank {
 	u8				nr_pins;
 	char				*name;
 	u8				bank_num;
+	struct rockchip_iomux		iomux[4];
+	struct rockchip_drv		drv[4];
 	enum rockchip_pin_bank_type	bank_type;
 	bool				valid;
 	struct device_node		*of_node;
 	struct rockchip_pinctrl		*drvdata;
 	struct bgpio_chip		bgpio_chip;
+	u32				route_mask;
 };
 
 #define PIN_BANK(id, pins, label)			\
@@ -64,6 +116,62 @@ struct rockchip_pin_bank {
 		.name		= label,		\
 	}
 
+#define PIN_BANK_IOMUX_FLAGS(id, pins, label, iom0, iom1, iom2, iom3)	\
+	{								\
+		.bank_num	= id,					\
+		.nr_pins	= pins,					\
+		.name		= label,				\
+		.iomux		= {					\
+			{ .type = iom0, .offset = -1 },			\
+			{ .type = iom1, .offset = -1 },			\
+			{ .type = iom2, .offset = -1 },			\
+			{ .type = iom3, .offset = -1 },			\
+		},							\
+	}
+
+#define PIN_BANK_MUX_ROUTE_FLAGS(ID, PIN, FUNC, REG, VAL, FLAG)		\
+	{								\
+		.bank_num	= ID,					\
+		.pin		= PIN,					\
+		.func		= FUNC,					\
+		.route_offset	= REG,					\
+		.route_val	= VAL,					\
+		.route_location	= FLAG,					\
+	}
+
+#define RK_MUXROUTE_SAME(ID, PIN, FUNC, REG, VAL)	\
+	PIN_BANK_MUX_ROUTE_FLAGS(ID, PIN, FUNC, REG, VAL, ROCKCHIP_ROUTE_SAME)
+
+#define RK_MUXROUTE_GRF(ID, PIN, FUNC, REG, VAL)	\
+	PIN_BANK_MUX_ROUTE_FLAGS(ID, PIN, FUNC, REG, VAL, ROCKCHIP_ROUTE_GRF)
+
+#define RK_MUXROUTE_PMU(ID, PIN, FUNC, REG, VAL)	\
+	PIN_BANK_MUX_ROUTE_FLAGS(ID, PIN, FUNC, REG, VAL, ROCKCHIP_ROUTE_PMU)
+
+enum rockchip_mux_route_location {
+	ROCKCHIP_ROUTE_SAME = 0,
+	ROCKCHIP_ROUTE_PMU,
+	ROCKCHIP_ROUTE_GRF,
+};
+
+/**
+ * struct rockchip_mux_recalced_data: represent a pin iomux data.
+ * @bank_num: bank number.
+ * @pin: index at register or used to calc index.
+ * @func: the min pin.
+ * @route_location: the mux route location (same, pmu, grf).
+ * @route_offset: the max pin.
+ * @route_val: the register offset.
+ */
+struct rockchip_mux_route_data {
+	u8 bank_num;
+	u8 pin;
+	u8 func;
+	enum rockchip_mux_route_location route_location;
+	u32 route_offset;
+	u32 route_val;
+};
+
 struct rockchip_pin_ctrl {
 	struct rockchip_pin_bank	*pin_banks;
 	u32				nr_banks;
@@ -71,6 +179,11 @@ struct rockchip_pin_ctrl {
 	char				*label;
 	enum rockchip_pinctrl_type	type;
 	int				grf_mux_offset;
+	int				pmu_mux_offset;
+	int				grf_drv_offset;
+	int				pmu_drv_offset;
+	struct rockchip_mux_route_data *iomux_routes;
+	u32				niomux_routes;
 	void	(*pull_calc_reg)(struct rockchip_pin_bank *bank, int pin_num,
 				 void __iomem **reg, u8 *bit);
 };
@@ -225,18 +338,90 @@ static void rk3188_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 	}
 }
 
+static struct rockchip_mux_route_data rk3188_mux_route_data[] = {
+	RK_MUXROUTE_SAME(0, RK_PD0, 1, 0xa0, BIT(16 + 11)), /* non-iomuxed emmc/flash pins on flash-dqs */
+	RK_MUXROUTE_SAME(0, RK_PD0, 2, 0xa0, BIT(16 + 11) | BIT(11)), /* non-iomuxed emmc/flash pins on emmc-clk */
+};
+
+static bool rockchip_get_mux_route(struct rockchip_pin_bank *bank, int pin,
+				   int mux, u32 *loc, u32 *reg, u32 *value)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+	struct rockchip_pin_ctrl *ctrl = info->ctrl;
+	struct rockchip_mux_route_data *data;
+	int i;
+
+	for (i = 0; i < ctrl->niomux_routes; i++) {
+		data = &ctrl->iomux_routes[i];
+		if ((data->bank_num == bank->bank_num) &&
+		    (data->pin == pin) && (data->func == mux))
+			break;
+	}
+
+	if (i >= ctrl->niomux_routes)
+		return false;
+
+	*loc = data->route_location;
+	*reg = data->route_offset;
+	*value = data->route_val;
+
+	return true;
+}
+
 static int rockchip_pinctrl_set_func(struct rockchip_pin_bank *bank, int pin,
 				     int mux)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
-	void __iomem *reg = info->reg_base + info->ctrl->grf_mux_offset;
+	void __iomem *reg;
 	u8 bit;
-	u32 data;
+	u32 data, route_location, route_reg, route_val;
+	int iomux_num = (pin / 8);
+	int mux_type;
+	int mask;
+
+	reg = (bank->iomux[iomux_num].type & IOMUX_SOURCE_PMU)
+				? info->reg_pmu : info->reg_base;
+
+	/* get basic quadrupel of mux registers and the correct reg inside */
+	mux_type = bank->iomux[iomux_num].type;
+	reg += bank->iomux[iomux_num].offset;
+
+	dev_dbg(info->pctl_dev.dev, "setting func of GPIO%d-%d to %d\n",
+		 bank->bank_num, pin, mux);
+
+	if (mux_type & IOMUX_WIDTH_4BIT) {
+		if ((pin % 8) >= 4)
+			reg += 0x4;
+		bit = (pin % 4) * 4;
+		mask = 0xf;
+	} else if (mux_type & IOMUX_WIDTH_3BIT) {
+		if ((pin % 8) >= 5)
+			reg += 0x4;
+		bit = (pin % 8 % 5) * 3;
+		mask = 0x7;
+	} else {
+		bit = (pin % 8) * 2;
+		mask = 0x3;
+	}
+
+	if (bank->route_mask & BIT(pin)) {
+		if (rockchip_get_mux_route(bank, pin, mux, &route_location,
+					   &route_reg, &route_val)) {
+			void __iomem  *route = reg;
+
+			/* handle special locations */
+			switch (route_location) {
+			case ROCKCHIP_ROUTE_PMU:
+				route = info->reg_pmu;
+				break;
+			case ROCKCHIP_ROUTE_GRF:
+				route = info->reg_base;
+				break;
+			}
 
-	/* get basic quadruple of mux registers and the correct reg inside */
-	reg += bank->bank_num * 0x10;
-	reg += (pin / 8) * 4;
-	bit = (pin % 8) * 2;
+			writel(route_val, route + route_reg);
+		}
+	}
 
 	data = 3 << (bit + 16);
 	data |= (mux & 3) << bit;
@@ -373,7 +558,7 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
 	struct rockchip_pin_ctrl *ctrl;
 	struct rockchip_pin_bank *bank;
 	char *name;
-	int i;
+	int grf_offs, pmu_offs, drv_grf_offs, drv_pmu_offs, i, j;
 
 	match = of_match_node(rockchip_pinctrl_dt_match, node);
 	ctrl = (struct rockchip_pin_ctrl *)match->data;
@@ -395,11 +580,91 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
 		}
 	}
 
+	grf_offs = ctrl->grf_mux_offset;
+	pmu_offs = ctrl->pmu_mux_offset;
+	drv_pmu_offs = ctrl->pmu_drv_offset;
+	drv_grf_offs = ctrl->grf_drv_offset;
 	bank = ctrl->pin_banks;
 	for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
+		int bank_pins = 0;
+
 		bank->drvdata = d;
 		bank->pin_base = ctrl->nr_pins;
 		ctrl->nr_pins += bank->nr_pins;
+
+		/* calculate iomux and drv offsets */
+		for (j = 0; j < 4; j++) {
+			struct rockchip_iomux *iom = &bank->iomux[j];
+			struct rockchip_drv *drv = &bank->drv[j];
+			int inc;
+
+			if (bank_pins >= bank->nr_pins)
+				break;
+
+			/* preset iomux offset value, set new start value */
+			if (iom->offset >= 0) {
+				if (iom->type & IOMUX_SOURCE_PMU)
+					pmu_offs = iom->offset;
+				else
+					grf_offs = iom->offset;
+			} else { /* set current iomux offset */
+				iom->offset = (iom->type & IOMUX_SOURCE_PMU) ?
+							pmu_offs : grf_offs;
+			}
+
+			/* preset drv offset value, set new start value */
+			if (drv->offset >= 0) {
+				if (iom->type & IOMUX_SOURCE_PMU)
+					drv_pmu_offs = drv->offset;
+				else
+					drv_grf_offs = drv->offset;
+			} else { /* set current drv offset */
+				drv->offset = (iom->type & IOMUX_SOURCE_PMU) ?
+						drv_pmu_offs : drv_grf_offs;
+			}
+
+			dev_dbg(dev, "bank %d, iomux %d has iom_offset 0x%x drv_offset 0x%x\n",
+				i, j, iom->offset, drv->offset);
+
+			/*
+			 * Increase offset according to iomux width.
+			 * 4bit iomux'es are spread over two registers.
+			 */
+			inc = (iom->type & (IOMUX_WIDTH_4BIT |
+					    IOMUX_WIDTH_3BIT |
+					    IOMUX_WIDTH_2BIT)) ? 8 : 4;
+			if (iom->type & IOMUX_SOURCE_PMU)
+				pmu_offs += inc;
+			else
+				grf_offs += inc;
+
+			/*
+			 * Increase offset according to drv width.
+			 * 3bit drive-strenth'es are spread over two registers.
+			 */
+			if ((drv->drv_type == DRV_TYPE_IO_1V8_3V0_AUTO) ||
+			    (drv->drv_type == DRV_TYPE_IO_3V3_ONLY))
+				inc = 8;
+			else
+				inc = 4;
+
+			if (iom->type & IOMUX_SOURCE_PMU)
+				drv_pmu_offs += inc;
+			else
+				drv_grf_offs += inc;
+
+			bank_pins += 8;
+		}
+
+		/* calculate the per-bank route_mask */
+		for (j = 0; j < ctrl->niomux_routes; j++) {
+			int pin = 0;
+
+			if (ctrl->iomux_routes[j].bank_num == bank->bank_num) {
+				pin = ctrl->iomux_routes[j].pin;
+				bank->route_mask |= BIT(pin);
+			}
+		}
 	}
 
 	return ctrl;
@@ -498,7 +763,7 @@ static struct rockchip_pin_ctrl rk3066b_pin_ctrl = {
 };
 
 static struct rockchip_pin_bank rk3188_pin_banks[] = {
-	PIN_BANK(0, 32, "gpio0"),
+	PIN_BANK_IOMUX_FLAGS(0, 32, "gpio0", IOMUX_GPIO_ONLY, 0, 0, 0),
 	PIN_BANK(1, 32, "gpio1"),
 	PIN_BANK(2, 32, "gpio2"),
 	PIN_BANK(3, 32, "gpio3"),
@@ -509,6 +774,8 @@ static struct rockchip_pin_ctrl rk3188_pin_ctrl = {
 	.nr_banks	= ARRAY_SIZE(rk3188_pin_banks),
 	.type		= RK3188,
 	.grf_mux_offset	= 0x60,
+	.iomux_routes	= rk3188_mux_route_data,
+	.niomux_routes	= ARRAY_SIZE(rk3188_mux_route_data),
 	.pull_calc_reg	= rk3188_calc_pull_reg_and_bit,
 };
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


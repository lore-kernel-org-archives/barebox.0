Delivery-date: Tue, 15 Oct 2024 13:21:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcZ-004dnc-1U
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 13:21:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcV-0000SX-Vh
	for lore@pengutronix.de; Tue, 15 Oct 2024 13:21:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X+UdTym8IWxEb5uyyudw9ZG52m92FxjWNBx3mw+K7Do=; b=C+wrfTbDlHW0PuBhteZobWxV33
	OSeRdPfBXO4/BP3UYQoGgO/k0nuVBPPi0odFtuMvoGNr7Vw6SM51MSTmilLJEeqJSbTm7Mm5esbeR
	q8f2UQtCHCV4uiZLRwawb9B1mvfV60Wit8SlcvVtwH8QUeQGeI3Dqy0zLuMnxboHL2AyX4SntVm9S
	TftXDw4fbf/oMXa6RgPAVh7qwnD57v0eq6nM1dg81IpX/zd8xFqe3BYGo4c5QR4uw1mToQW/7e7HA
	bYcfOXvtQwDEqGRLg8C+twGxqekOb73wu64Lr2CUlVwkMD8q0dLh4HKQmWOPuD6QBXYXCkB+QDFI+
	9+722VKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fbb-00000007zjz-3BeV;
	Tue, 15 Oct 2024 11:20:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fSC-00000007yDg-3UKy
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 11:11:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-0007uk-JD; Tue, 15 Oct 2024 13:11:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-00219H-21; Tue, 15 Oct 2024 13:11:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSA-000ubB-39;
	Tue, 15 Oct 2024 13:11:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2024 13:11:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241015-rockchip-spi-rk808-v1-7-e276b4b59603@pengutronix.de>
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
In-Reply-To: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1728990662; l=55153;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=QHqVqHwwFkKfMX+YvUn6avYVbAtHfoUq3llYARztIPk=;
 b=ijv2HpTFdM3x+JlN/y5apxSTEH0G0vyhRgQTf3+K7SZXXYDV2IPYpDIWVg2aEsqOQMiFmIiTZ
 6/C0FUe1apqA8ncV7kueFEWLV/XIWg9jKT4KtYr3TyIb3NjgQ8tnvIR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_041105_504666_82A6642F 
X-CRM114-Status: GOOD (  20.11  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] regulator: rk808: update from kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This syncs the rk808 regulator driver with Linux-6.12-rc1. A lot has
changed in the Kernel driver which makes an incremental update hard to
do.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/rk808-regulator.c | 1085 ++++++++++++++++++++++-------------
 include/linux/mfd/rk808.h           |   15 +-
 2 files changed, 680 insertions(+), 420 deletions(-)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index b361dae8cf..0a28f84fc1 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -17,6 +17,7 @@
 #include <linux/regulator/of_regulator.h>
 #include <regulator.h>
 #include <linux/mfd/rk808.h>
+#include <linux/gpio/consumer.h>
 
 /* Field Definitions */
 #define RK808_BUCK_VSEL_MASK	0x3f
@@ -35,13 +36,47 @@
 #define RK818_LDO3_ON_VSEL_MASK		0xf
 #define RK818_BOOST_ON_VSEL_MASK	0xe0
 
+#define RK806_DCDC_SLP_REG_OFFSET	0x0A
+#define RK806_NLDO_SLP_REG_OFFSET	0x05
+#define RK806_PLDO_SLP_REG_OFFSET	0x06
+
+#define RK806_BUCK_SEL_CNT		0xff
+#define RK806_LDO_SEL_CNT		0xff
+
+/* Ramp rate definitions for buck1 / buck2 only */
+#define RK808_RAMP_RATE_OFFSET		3
+#define RK808_RAMP_RATE_MASK		(3 << RK808_RAMP_RATE_OFFSET)
+#define RK808_RAMP_RATE_2MV_PER_US	(0 << RK808_RAMP_RATE_OFFSET)
+#define RK808_RAMP_RATE_4MV_PER_US	(1 << RK808_RAMP_RATE_OFFSET)
+#define RK808_RAMP_RATE_6MV_PER_US	(2 << RK808_RAMP_RATE_OFFSET)
+#define RK808_RAMP_RATE_10MV_PER_US	(3 << RK808_RAMP_RATE_OFFSET)
+
+#define RK808_DVS2_POL		BIT(2)
+#define RK808_DVS1_POL		BIT(1)
+
+/* Offset from XXX_ON_VSEL to XXX_SLP_VSEL */
+#define RK808_SLP_REG_OFFSET 1
+
+/* Offset from XXX_ON_VSEL to XXX_DVS_VSEL */
+#define RK808_DVS_REG_OFFSET 2
+
+/* Offset from XXX_EN_REG to SLEEP_SET_OFF_XXX */
+#define RK808_SLP_SET_OFF_REG_OFFSET 2
+
+/* max steps for increase voltage of Buck1/2, equal 100mv*/
+#define MAX_STEPS_ONE_TIME 8
+
 #define ENABLE_MASK(id)			(BIT(id) | BIT(4 + (id)))
 #define DISABLE_VAL(id)			(BIT(4 + (id)))
 
-#define RK817_BOOST_DESC(_supply_name, _min, _max, _step, _vreg,\
-	_vmask, _ereg, _emask, _enval, _disval, _etime)		\
-	{{							\
-		.supply_name	= (_supply_name),			\
+#define RK817_BOOST_DESC(_id, _match, _supply, _min, _max, _step, _vreg,\
+	_vmask, _ereg, _emask, _enval, _disval, _etime, m_drop)		\
+	{							\
+		.name		= (_match),				\
+		.supply_name	= (_supply),				\
+		.of_match	= of_match_ptr(_match),			\
+		.regulators_node = of_match_ptr("regulators"),		\
+		.id		= (_id),				\
 		.n_voltages	= (((_max) - (_min)) / (_step) + 1),	\
 		.min_uV		= (_min) * 1000,			\
 		.uV_step	= (_step) * 1000,			\
@@ -51,14 +86,17 @@
 		.enable_mask	= (_emask),				\
 		.enable_val     = (_enval),				\
 		.disable_val     = (_disval),				\
-		.off_on_delay	= (_etime),				\
 		.ops		= &rk817_boost_ops,			\
-	}}
+	}
 
-#define RK8XX_DESC_COM(_supply_name, _min, _max, _step, _vreg,	\
+#define RK8XX_DESC_COM(_id, _match, _supply, _min, _max, _step, _vreg,	\
 	_vmask, _ereg, _emask, _enval, _disval, _etime, _ops)		\
-	{{								\
-		.supply_name	= (_supply_name),			\
+	{								\
+		.name		= (_match),				\
+		.supply_name	= (_supply),				\
+		.of_match	= of_match_ptr(_match),			\
+		.regulators_node = of_match_ptr("regulators"),		\
+		.id		= (_id),				\
 		.n_voltages	= (((_max) - (_min)) / (_step) + 1),	\
 		.min_uV		= (_min) * 1000,			\
 		.uV_step	= (_step) * 1000,			\
@@ -68,45 +106,89 @@
 		.enable_mask	= (_emask),				\
 		.enable_val     = (_enval),				\
 		.disable_val     = (_disval),				\
-		.off_on_delay	= (_etime),				\
 		.ops		= _ops,			\
-	}}
+	}
 
-#define RK805_DESC(_supply_name, _min, _max, _step, _vreg,	\
+#define RK805_DESC(_id, _match, _supply, _min, _max, _step, _vreg,	\
 	_vmask, _ereg, _emask, _etime)					\
-	RK8XX_DESC_COM(_supply_name, _min, _max, _step, _vreg,	\
-	_vmask, _ereg, _emask, 0, 0, _etime, &rk808_reg_ops)
+	RK8XX_DESC_COM(_id, _match, _supply, _min, _max, _step, _vreg,	\
+	_vmask, _ereg, _emask, 0, 0, _etime, &rk805_reg_ops)
+
+#define RK806_REGULATOR(_name, _supply_name, _id, _ops,\
+			_n_voltages, _vr, _er, _lr, ctrl_bit,\
+			_rr, _rm, _rt)\
+[_id] = {\
+		.name = _name,\
+		.supply_name = _supply_name,\
+		.of_match = of_match_ptr(_name),\
+		.regulators_node = of_match_ptr("regulators"),\
+		.id = _id,\
+		.ops = &_ops,\
+		.n_voltages = _n_voltages,\
+		.linear_ranges = _lr,\
+		.n_linear_ranges = ARRAY_SIZE(_lr),\
+		.vsel_reg = _vr,\
+		.vsel_mask = 0xff,\
+		.enable_reg = _er,\
+		.enable_mask = ENABLE_MASK(ctrl_bit),\
+		.enable_val = ENABLE_MASK(ctrl_bit),\
+		.disable_val = DISABLE_VAL(ctrl_bit),\
+	}
 
-#define RK8XX_DESC(_supply_name, _min, _max, _step, _vreg,	\
+#define RK8XX_DESC(_id, _match, _supply, _min, _max, _step, _vreg,	\
 	_vmask, _ereg, _emask, _etime)					\
-	RK8XX_DESC_COM(_supply_name, _min, _max, _step, _vreg,	\
+	RK8XX_DESC_COM(_id, _match, _supply, _min, _max, _step, _vreg,	\
 	_vmask, _ereg, _emask, 0, 0, _etime, &rk808_reg_ops)
 
-#define RK817_DESC(_supply_name, _min, _max, _step, _vreg,	\
+#define RK816_DESC(_id, _match, _supply, _min, _max, _step, _vreg,	\
+	_vmask, _ereg, _emask, _disval, _etime)				\
+	RK8XX_DESC_COM(_id, _match, _supply, _min, _max, _step, _vreg,	\
+	_vmask, _ereg, _emask, _emask, _disval, _etime, &rk816_reg_ops)
+
+#define RK817_DESC(_id, _match, _supply, _min, _max, _step, _vreg,	\
 	_vmask, _ereg, _emask, _disval, _etime)				\
-	RK8XX_DESC_COM(_supply_name, _min, _max, _step, _vreg,	\
+	RK8XX_DESC_COM(_id, _match, _supply, _min, _max, _step, _vreg,	\
 	_vmask, _ereg, _emask, _emask, _disval, _etime, &rk817_reg_ops)
 
-#define RKXX_DESC_SWITCH_COM(_supply_name,_ereg, _emask,	\
+#define RKXX_DESC_SWITCH_COM(_id, _match, _supply, _ereg, _emask,	\
 	_enval, _disval, _ops)						\
-	{{								\
-		.supply_name	= (_supply_name),			\
+	{								\
+		.name		= (_match),				\
+		.supply_name	= (_supply),				\
+		.of_match	= of_match_ptr(_match),			\
+		.regulators_node = of_match_ptr("regulators"),		\
+		.id		= (_id),				\
 		.enable_reg	= (_ereg),				\
 		.enable_mask	= (_emask),				\
 		.enable_val     = (_enval),				\
 		.disable_val     = (_disval),				\
 		.ops		= _ops					\
-	}}
+	}
 
-#define RK817_DESC_SWITCH(_supply_name, _ereg, _emask,		\
+#define RK817_DESC_SWITCH(_id, _match, _supply, _ereg, _emask,		\
 	_disval)							\
-	RKXX_DESC_SWITCH_COM(_supply_name, _ereg, _emask,	\
+	RKXX_DESC_SWITCH_COM(_id, _match, _supply, _ereg, _emask,	\
 	_emask, _disval, &rk817_switch_ops)
 
-#define RK8XX_DESC_SWITCH(_supply_name, _ereg, _emask)		\
-	RKXX_DESC_SWITCH_COM(_supply_name, _ereg, _emask,	\
+#define RK8XX_DESC_SWITCH(_id, _match, _supply, _ereg, _emask)		\
+	RKXX_DESC_SWITCH_COM(_id, _match, _supply, _ereg, _emask,	\
 	0, 0, &rk808_switch_ops)
 
+struct rk8xx_register_bit {
+	u8 reg;
+	u8 bit;
+};
+
+#define RK8XX_REG_BIT(_reg, _bit)					\
+	{								\
+		.reg = _reg,						\
+		.bit = BIT(_bit),						\
+	}
+
+struct rk808_regulator_data {
+	struct gpio_desc *dvs_gpio[2];
+};
+
 static const struct regulator_linear_range rk808_ldo3_voltage_ranges[] = {
 	REGULATOR_LINEAR_RANGE(800000, 0, 13, 100000),
 	REGULATOR_LINEAR_RANGE(2500000, 15, 15, 0),
@@ -157,11 +239,72 @@ static const struct regulator_linear_range rk817_buck3_voltage_ranges[] = {
 			       RK817_BUCK3_SEL_CNT, RK817_BUCK1_STP1),
 };
 
-struct rk_regulator_cfg {
-	struct regulator_desc desc;
-	struct regulator_dev rdev;
+static const __maybe_unused unsigned int rk808_buck1_2_ramp_table[] = {
+	2000, 4000, 6000, 10000
+};
+
+/* RK817/RK809/RK816 (buck 1/2 only) */
+static const __maybe_unused unsigned int rk817_buck1_4_ramp_table[] = {
+	3000, 6300, 12500, 25000
 };
 
+static const __maybe_unused unsigned int rk806_ramp_delay_table_dcdc[] = {
+	50000, 25000, 12500, 6250, 3125, 1560, 961, 390
+};
+
+static const __maybe_unused unsigned int rk806_ramp_delay_table_ldo[] = {
+	100000, 50000, 25000, 12500, 6280, 3120, 1900, 780
+};
+
+static int rk808_buck1_2_set_voltage_sel(struct regulator_dev *rdev,
+					 unsigned sel)
+{
+	int ret, delta_sel;
+	unsigned int old_sel, tmp, val, mask = rdev->desc->vsel_mask;
+
+	ret = regmap_read(rdev->regmap, rdev->desc->vsel_reg, &val);
+	if (ret != 0)
+		return ret;
+
+	tmp = val & ~mask;
+	old_sel = val & mask;
+	old_sel >>= ffs(mask) - 1;
+	delta_sel = sel - old_sel;
+
+	/*
+	 * If directly modify the register to change the voltage, we will face
+	 * the risk of overshoot. Put it into a multi-step, can effectively
+	 * avoid this problem, a step is 100mv here.
+	 */
+	while (delta_sel > MAX_STEPS_ONE_TIME) {
+		old_sel += MAX_STEPS_ONE_TIME;
+		val = old_sel << (ffs(mask) - 1);
+		val |= tmp;
+
+		/*
+		 * i2c is 400kHz (2.5us per bit) and we must transmit _at least_
+		 * 3 bytes (24 bits) plus start and stop so 26 bits.  So we've
+		 * got more than 65 us between each voltage change and thus
+		 * won't ramp faster than ~1500 uV / us.
+		 */
+		ret = regmap_write(rdev->regmap, rdev->desc->vsel_reg, val);
+		delta_sel = sel - old_sel;
+	}
+
+	sel <<= ffs(mask) - 1;
+	val = tmp | sel;
+	ret = regmap_write(rdev->regmap, rdev->desc->vsel_reg, val);
+
+	/*
+	 * When we change the voltage register directly, the ramp rate is about
+	 * 100000uv/us, wait 1us to make sure the target voltage to be stable,
+	 * so we needn't wait extra time after that.
+	 */
+	udelay(1);
+
+	return ret;
+}
+
 static int rk8xx_is_enabled_wmsk_regmap(struct regulator_dev *rdev)
 {
 	unsigned int val;
@@ -185,15 +328,67 @@ static int rk8xx_is_enabled_wmsk_regmap(struct regulator_dev *rdev)
 	return val != 0;
 }
 
-static struct regulator_ops rk808_buck1_2_ops = {
+static const struct regulator_ops rk805_reg_ops = {
+	.list_voltage           = regulator_list_voltage_linear,
+	.map_voltage            = regulator_map_voltage_linear,
+	.get_voltage_sel        = regulator_get_voltage_sel_regmap,
+	.set_voltage_sel        = regulator_set_voltage_sel_regmap,
+	.enable                 = regulator_enable_regmap,
+	.disable                = regulator_disable_regmap,
+	.is_enabled             = regulator_is_enabled_regmap,
+};
+
+static const struct regulator_ops rk805_switch_ops = {
+	.enable                 = regulator_enable_regmap,
+	.disable                = regulator_disable_regmap,
+	.is_enabled             = regulator_is_enabled_regmap,
+};
+
+static const struct regulator_ops rk806_ops_dcdc = {
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel        = regulator_set_voltage_sel_regmap,
+
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= rk8xx_is_enabled_wmsk_regmap,
+};
+
+static const struct regulator_ops rk806_ops_nldo = {
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel        = regulator_set_voltage_sel_regmap,
+
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+};
+
+static const struct regulator_ops rk806_ops_pldo = {
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel        = regulator_set_voltage_sel_regmap,
+
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+};
+
+static const struct regulator_ops rk808_buck1_2_ops = {
 	.list_voltage		= regulator_list_voltage_linear,
 	.map_voltage		= regulator_map_voltage_linear,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= rk808_buck1_2_set_voltage_sel,
 	.enable			= regulator_enable_regmap,
 	.disable		= regulator_disable_regmap,
 	.is_enabled		= regulator_is_enabled_regmap,
 };
 
-static struct regulator_ops rk808_reg_ops = {
+static const struct regulator_ops rk808_reg_ops = {
 	.list_voltage		= regulator_list_voltage_linear,
 	.map_voltage		= regulator_map_voltage_linear,
 	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
@@ -203,7 +398,7 @@ static struct regulator_ops rk808_reg_ops = {
 	.is_enabled		= regulator_is_enabled_regmap,
 };
 
-static struct regulator_ops rk808_reg_ops_ranges = {
+static const struct regulator_ops rk808_reg_ops_ranges = {
 	.list_voltage		= regulator_list_voltage_linear_range,
 	.map_voltage		= regulator_map_voltage_linear_range,
 	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
@@ -213,7 +408,7 @@ static struct regulator_ops rk808_reg_ops_ranges = {
 	.is_enabled		= regulator_is_enabled_regmap,
 };
 
-static struct regulator_ops rk808_switch_ops = {
+static const struct regulator_ops rk808_switch_ops = {
 	.enable			= regulator_enable_regmap,
 	.disable		= regulator_disable_regmap,
 	.is_enabled		= regulator_is_enabled_regmap,
@@ -235,6 +430,36 @@ static const struct regulator_ops rk809_buck5_ops_range = {
 	.is_enabled		= rk8xx_is_enabled_wmsk_regmap,
 };
 
+static const struct regulator_ops rk816_buck1_2_ops_ranges = {
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+};
+
+static const struct regulator_ops rk816_buck4_ops_ranges = {
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+};
+
+static const struct regulator_ops rk816_reg_ops = {
+	.list_voltage		= regulator_list_voltage_linear,
+	.map_voltage		= regulator_map_voltage_linear,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= rk8xx_is_enabled_wmsk_regmap,
+};
+
 static const struct regulator_ops rk817_reg_ops = {
 	.list_voltage		= regulator_list_voltage_linear,
 	.map_voltage		= regulator_map_voltage_linear,
@@ -271,10 +496,13 @@ static const struct regulator_ops rk817_switch_ops = {
 	.is_enabled		= rk8xx_is_enabled_wmsk_regmap,
 };
 
-static struct rk_regulator_cfg rk805_reg[] = {
-	{{
-		/* .name = "DCDC_REG1", */
+static const struct regulator_desc rk805_reg[] = {
+	{
+		.name = "DCDC_REG1",
 		.supply_name = "vcc1",
+		.of_match = of_match_ptr("DCDC_REG1"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK805_ID_DCDC1,
 		.ops = &rk808_reg_ops_ranges,
 		.n_voltages = 64,
 		.linear_ranges = rk805_buck_1_2_voltage_ranges,
@@ -283,9 +511,12 @@ static struct rk_regulator_cfg rk805_reg[] = {
 		.vsel_mask = RK818_BUCK_VSEL_MASK,
 		.enable_reg = RK805_DCDC_EN_REG,
 		.enable_mask = BIT(0),
-	}}, {{
-		/* .name = "DCDC_REG2", */
+	}, {
+		.name = "DCDC_REG2",
 		.supply_name = "vcc2",
+		.of_match = of_match_ptr("DCDC_REG2"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK805_ID_DCDC2,
 		.ops = &rk808_reg_ops_ranges,
 		.n_voltages = 64,
 		.linear_ranges = rk805_buck_1_2_voltage_ranges,
@@ -294,35 +525,146 @@ static struct rk_regulator_cfg rk805_reg[] = {
 		.vsel_mask = RK818_BUCK_VSEL_MASK,
 		.enable_reg = RK805_DCDC_EN_REG,
 		.enable_mask = BIT(1),
-	}}, {{
-		/* .name = "DCDC_REG3", */
+	}, {
+		.name = "DCDC_REG3",
 		.supply_name = "vcc3",
-		.ops = &rk808_switch_ops,
+		.of_match = of_match_ptr("DCDC_REG3"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK805_ID_DCDC3,
+		.ops = &rk805_switch_ops,
 		.n_voltages = 1,
 		.enable_reg = RK805_DCDC_EN_REG,
 		.enable_mask = BIT(2),
-	}},
+	},
 
-	RK805_DESC(/* "DCDC_REG4", */ "vcc4", 800, 3400, 100,
+	RK805_DESC(RK805_ID_DCDC4, "DCDC_REG4", "vcc4", 800, 3400, 100,
 		RK805_BUCK4_ON_VSEL_REG, RK818_BUCK4_VSEL_MASK,
 		RK805_DCDC_EN_REG, BIT(3), 0),
 
-	RK805_DESC(/* "LDO_REG1", */ "vcc5", 800, 3400, 100,
+	RK805_DESC(RK805_ID_LDO1, "LDO_REG1", "vcc5", 800, 3400, 100,
 		RK805_LDO1_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK805_LDO_EN_REG,
 		BIT(0), 400),
-	RK805_DESC(/* "LDO_REG2", */ "vcc5", 800, 3400, 100,
+	RK805_DESC(RK805_ID_LDO2, "LDO_REG2", "vcc5", 800, 3400, 100,
 		RK805_LDO2_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK805_LDO_EN_REG,
 		BIT(1), 400),
-	RK805_DESC(/* "LDO_REG3", */ "vcc6", 800, 3400, 100,
+	RK805_DESC(RK805_ID_LDO3, "LDO_REG3", "vcc6", 800, 3400, 100,
 		RK805_LDO3_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK805_LDO_EN_REG,
 		BIT(2), 400),
 };
-static_assert(ARRAY_SIZE(rk805_reg) == RK805_NUM_REGULATORS);
 
-static struct rk_regulator_cfg rk808_reg[] = {
-	{{
-		/* .name = "DCDC_REG1", */
+static const struct regulator_linear_range rk806_buck_voltage_ranges[] = {
+	REGULATOR_LINEAR_RANGE(500000, 0, 159, 6250), /* 500mV ~ 1500mV */
+	REGULATOR_LINEAR_RANGE(1500000, 160, 235, 25000), /* 1500mV ~ 3400mV */
+	REGULATOR_LINEAR_RANGE(3400000, 236, 255, 0),
+};
+
+static const struct regulator_linear_range rk806_ldo_voltage_ranges[] = {
+	REGULATOR_LINEAR_RANGE(500000, 0, 231, 12500), /* 500mV ~ 3400mV */
+	REGULATOR_LINEAR_RANGE(3400000, 232, 255, 0),
+};
+
+static const struct regulator_desc rk806_reg[] = {
+	RK806_REGULATOR("dcdc-reg1", "vcc1", RK806_ID_DCDC1, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK1_ON_VSEL,
+			RK806_POWER_EN0, rk806_buck_voltage_ranges, 0,
+			RK806_BUCK1_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+	RK806_REGULATOR("dcdc-reg2", "vcc2", RK806_ID_DCDC2, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK2_ON_VSEL,
+			RK806_POWER_EN0, rk806_buck_voltage_ranges, 1,
+			RK806_BUCK2_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+	RK806_REGULATOR("dcdc-reg3", "vcc3", RK806_ID_DCDC3, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK3_ON_VSEL,
+			RK806_POWER_EN0, rk806_buck_voltage_ranges, 2,
+			RK806_BUCK3_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+	RK806_REGULATOR("dcdc-reg4", "vcc4", RK806_ID_DCDC4, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK4_ON_VSEL,
+			RK806_POWER_EN0, rk806_buck_voltage_ranges, 3,
+			RK806_BUCK4_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+
+	RK806_REGULATOR("dcdc-reg5", "vcc5", RK806_ID_DCDC5, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK5_ON_VSEL,
+			RK806_POWER_EN1, rk806_buck_voltage_ranges, 0,
+			RK806_BUCK5_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+	RK806_REGULATOR("dcdc-reg6", "vcc6", RK806_ID_DCDC6, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK6_ON_VSEL,
+			RK806_POWER_EN1, rk806_buck_voltage_ranges, 1,
+			RK806_BUCK6_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+	RK806_REGULATOR("dcdc-reg7", "vcc7", RK806_ID_DCDC7, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK7_ON_VSEL,
+			RK806_POWER_EN1, rk806_buck_voltage_ranges, 2,
+			RK806_BUCK7_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+	RK806_REGULATOR("dcdc-reg8", "vcc8", RK806_ID_DCDC8, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK8_ON_VSEL,
+			RK806_POWER_EN1, rk806_buck_voltage_ranges, 3,
+			RK806_BUCK8_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+
+	RK806_REGULATOR("dcdc-reg9", "vcc9", RK806_ID_DCDC9, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK9_ON_VSEL,
+			RK806_POWER_EN2, rk806_buck_voltage_ranges, 0,
+			RK806_BUCK9_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+	RK806_REGULATOR("dcdc-reg10", "vcc10", RK806_ID_DCDC10, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK10_ON_VSEL,
+			RK806_POWER_EN2, rk806_buck_voltage_ranges, 1,
+			RK806_BUCK10_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+
+	RK806_REGULATOR("nldo-reg1", "vcc13", RK806_ID_NLDO1, rk806_ops_nldo,
+			RK806_LDO_SEL_CNT, RK806_NLDO1_ON_VSEL,
+			RK806_POWER_EN3, rk806_ldo_voltage_ranges, 0,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+	RK806_REGULATOR("nldo-reg2", "vcc13", RK806_ID_NLDO2, rk806_ops_nldo,
+			RK806_LDO_SEL_CNT, RK806_NLDO2_ON_VSEL,
+			RK806_POWER_EN3, rk806_ldo_voltage_ranges, 1,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+	RK806_REGULATOR("nldo-reg3", "vcc13", RK806_ID_NLDO3, rk806_ops_nldo,
+			RK806_LDO_SEL_CNT, RK806_NLDO3_ON_VSEL,
+			RK806_POWER_EN3, rk806_ldo_voltage_ranges, 2,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+	RK806_REGULATOR("nldo-reg4", "vcc14", RK806_ID_NLDO4, rk806_ops_nldo,
+			RK806_LDO_SEL_CNT, RK806_NLDO4_ON_VSEL,
+			RK806_POWER_EN3, rk806_ldo_voltage_ranges, 3,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+
+	RK806_REGULATOR("nldo-reg5", "vcc14", RK806_ID_NLDO5, rk806_ops_nldo,
+			RK806_LDO_SEL_CNT, RK806_NLDO5_ON_VSEL,
+			RK806_POWER_EN5, rk806_ldo_voltage_ranges, 2,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+
+	RK806_REGULATOR("pldo-reg1", "vcc11", RK806_ID_PLDO1, rk806_ops_pldo,
+			RK806_LDO_SEL_CNT, RK806_PLDO1_ON_VSEL,
+			RK806_POWER_EN4, rk806_ldo_voltage_ranges, 1,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+	RK806_REGULATOR("pldo-reg2", "vcc11", RK806_ID_PLDO2, rk806_ops_pldo,
+			RK806_LDO_SEL_CNT, RK806_PLDO2_ON_VSEL,
+			RK806_POWER_EN4, rk806_ldo_voltage_ranges, 2,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+	RK806_REGULATOR("pldo-reg3", "vcc11", RK806_ID_PLDO3, rk806_ops_pldo,
+			RK806_LDO_SEL_CNT, RK806_PLDO3_ON_VSEL,
+			RK806_POWER_EN4, rk806_ldo_voltage_ranges, 3,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+
+	RK806_REGULATOR("pldo-reg4", "vcc12", RK806_ID_PLDO4, rk806_ops_pldo,
+			RK806_LDO_SEL_CNT, RK806_PLDO4_ON_VSEL,
+			RK806_POWER_EN5, rk806_ldo_voltage_ranges, 0,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+	RK806_REGULATOR("pldo-reg5", "vcc12", RK806_ID_PLDO5, rk806_ops_pldo,
+			RK806_LDO_SEL_CNT, RK806_PLDO5_ON_VSEL,
+			RK806_POWER_EN5, rk806_ldo_voltage_ranges, 1,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+
+	RK806_REGULATOR("pldo-reg6", "vcca", RK806_ID_PLDO6, rk806_ops_pldo,
+			RK806_LDO_SEL_CNT, RK806_PLDO6_ON_VSEL,
+			RK806_POWER_EN4, rk806_ldo_voltage_ranges, 0,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+};
+
+
+static const struct regulator_desc rk808_reg[] = {
+	{
+		.name = "DCDC_REG1",
 		.supply_name = "vcc1",
+		.of_match = of_match_ptr("DCDC_REG1"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK808_ID_DCDC1,
 		.ops = &rk808_buck1_2_ops,
 		.min_uV = 712500,
 		.uV_step = 12500,
@@ -331,9 +673,12 @@ static struct rk_regulator_cfg rk808_reg[] = {
 		.vsel_mask = RK808_BUCK_VSEL_MASK,
 		.enable_reg = RK808_DCDC_EN_REG,
 		.enable_mask = BIT(0),
-	}}, {{
-		/* .name = "DCDC_REG2", */
+	}, {
+		.name = "DCDC_REG2",
 		.supply_name = "vcc2",
+		.of_match = of_match_ptr("DCDC_REG2"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK808_ID_DCDC2,
 		.ops = &rk808_buck1_2_ops,
 		.min_uV = 712500,
 		.uV_step = 12500,
@@ -342,51 +687,32 @@ static struct rk_regulator_cfg rk808_reg[] = {
 		.vsel_mask = RK808_BUCK_VSEL_MASK,
 		.enable_reg = RK808_DCDC_EN_REG,
 		.enable_mask = BIT(1),
-	}}, {{
-		/* .name = "DCDC_REG3", */
+	}, {
+		.name = "DCDC_REG3",
 		.supply_name = "vcc3",
+		.of_match = of_match_ptr("DCDC_REG3"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK808_ID_DCDC3,
 		.ops = &rk808_switch_ops,
 		.n_voltages = 1,
 		.enable_reg = RK808_DCDC_EN_REG,
 		.enable_mask = BIT(2),
-	}}, {{
-		/* .name = "DCDC_REG4", */
-		.supply_name = "vcc4",
-		.ops = &rk808_reg_ops,
-		.min_uV = 1800000,
-		.uV_step = 100000,
-		.n_voltages = 16,
-		.vsel_reg = RK808_BUCK4_ON_VSEL_REG,
-		.vsel_mask = RK808_BUCK4_VSEL_MASK,
-		.enable_reg = RK808_DCDC_EN_REG,
-		.enable_mask = BIT(3),
-	}}, {{
-		/* .name = "LDO_REG1", */
-		.supply_name = "vcc6",
-		.ops = &rk808_reg_ops,
-		.min_uV = 1800000,
-		.uV_step = 100000,
-		.n_voltages = 17,
-		.vsel_reg = RK808_LDO1_ON_VSEL_REG,
-		.vsel_mask = RK808_LDO_VSEL_MASK,
-		.enable_reg = RK808_LDO_EN_REG,
-		.enable_mask = BIT(0),
-		.off_on_delay = 400,
-	}}, {{
-		/* .name = "LDO_REG2", */
-		.supply_name = "vcc6",
-		.ops = &rk808_reg_ops,
-		.min_uV = 1800000,
-		.uV_step = 100000,
-		.n_voltages = 17,
-		.vsel_reg = RK808_LDO2_ON_VSEL_REG,
-		.vsel_mask = RK808_LDO_VSEL_MASK,
-		.enable_reg = RK808_LDO_EN_REG,
-		.enable_mask = BIT(1),
-		.off_on_delay = 400,
-	}}, {{
-		/* .name = "LDO_REG3", */
+	},
+	RK8XX_DESC(RK808_ID_DCDC4, "DCDC_REG4", "vcc4", 1800, 3300, 100,
+		RK808_BUCK4_ON_VSEL_REG, RK808_BUCK4_VSEL_MASK,
+		RK808_DCDC_EN_REG, BIT(3), 0),
+	RK8XX_DESC(RK808_ID_LDO1, "LDO_REG1", "vcc6", 1800, 3400, 100,
+		RK808_LDO1_ON_VSEL_REG, RK808_LDO_VSEL_MASK, RK808_LDO_EN_REG,
+		BIT(0), 400),
+	RK8XX_DESC(RK808_ID_LDO2, "LDO_REG2", "vcc6", 1800, 3400, 100,
+		RK808_LDO2_ON_VSEL_REG, RK808_LDO_VSEL_MASK, RK808_LDO_EN_REG,
+		BIT(1), 400),
+	{
+		.name = "LDO_REG3",
 		.supply_name = "vcc7",
+		.of_match = of_match_ptr("LDO_REG3"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK808_ID_LDO3,
 		.ops = &rk808_reg_ops_ranges,
 		.n_voltages = 16,
 		.linear_ranges = rk808_ldo3_voltage_ranges,
@@ -395,87 +721,35 @@ static struct rk_regulator_cfg rk808_reg[] = {
 		.vsel_mask = RK808_BUCK4_VSEL_MASK,
 		.enable_reg = RK808_LDO_EN_REG,
 		.enable_mask = BIT(2),
-		.off_on_delay = 400,
-	}}, {{
-		/* .name = "LDO_REG4", */
-		.supply_name = "vcc9",
-		.ops = &rk808_reg_ops,
-		.min_uV = 1800000,
-		.uV_step = 100000,
-		.n_voltages = 17,
-		.vsel_reg = RK808_LDO4_ON_VSEL_REG,
-		.vsel_mask = RK808_LDO_VSEL_MASK,
-		.enable_reg = RK808_LDO_EN_REG,
-		.enable_mask = BIT(3),
-		.off_on_delay = 400,
-	}}, {{
-		/* .name = "LDO_REG5", */
-		.supply_name = "vcc9",
-		.ops = &rk808_reg_ops,
-		.min_uV = 1800000,
-		.uV_step = 100000,
-		.n_voltages = 17,
-		.vsel_reg = RK808_LDO5_ON_VSEL_REG,
-		.vsel_mask = RK808_LDO_VSEL_MASK,
-		.enable_reg = RK808_LDO_EN_REG,
-		.enable_mask = BIT(4),
-		.off_on_delay = 400,
-	}}, {{
-		/* .name = "LDO_REG6", */
-		.supply_name = "vcc10",
-		.ops = &rk808_reg_ops,
-		.min_uV = 800000,
-		.uV_step = 100000,
-		.n_voltages = 18,
-		.vsel_reg = RK808_LDO6_ON_VSEL_REG,
-		.vsel_mask = RK808_LDO_VSEL_MASK,
-		.enable_reg = RK808_LDO_EN_REG,
-		.enable_mask = BIT(5),
-		.off_on_delay = 400,
-	}}, {{
-		/* .name = "LDO_REG7", */
-		.supply_name = "vcc7",
-		.ops = &rk808_reg_ops,
-		.min_uV = 800000,
-		.uV_step = 100000,
-		.n_voltages = 18,
-		.vsel_reg = RK808_LDO7_ON_VSEL_REG,
-		.vsel_mask = RK808_LDO_VSEL_MASK,
-		.enable_reg = RK808_LDO_EN_REG,
-		.enable_mask = BIT(6),
-		.off_on_delay = 400,
-	}}, {{
-		/* .name = "LDO_REG8", */
-		.supply_name = "vcc11",
-		.ops = &rk808_reg_ops,
-		.min_uV = 1800000,
-		.uV_step = 100000,
-		.n_voltages = 17,
-		.vsel_reg = RK808_LDO8_ON_VSEL_REG,
-		.vsel_mask = RK808_LDO_VSEL_MASK,
-		.enable_reg = RK808_LDO_EN_REG,
-		.enable_mask = BIT(7),
-		.off_on_delay = 400,
-	}}, {{
-		/* .name = "SWITCH_REG1", */
-		.supply_name = "vcc8",
-		.ops = &rk808_switch_ops,
-		.enable_reg = RK808_DCDC_EN_REG,
-		.enable_mask = BIT(5),
-	}}, {{
-		/* .name = "SWITCH_REG2", */
-		.supply_name = "vcc12",
-		.ops = &rk808_switch_ops,
-		.enable_reg = RK808_DCDC_EN_REG,
-		.enable_mask = BIT(6),
-	}},
+	},
+	RK8XX_DESC(RK808_ID_LDO4, "LDO_REG4", "vcc9", 1800, 3400, 100,
+		RK808_LDO4_ON_VSEL_REG, RK808_LDO_VSEL_MASK, RK808_LDO_EN_REG,
+		BIT(3), 400),
+	RK8XX_DESC(RK808_ID_LDO5, "LDO_REG5", "vcc9", 1800, 3400, 100,
+		RK808_LDO5_ON_VSEL_REG, RK808_LDO_VSEL_MASK, RK808_LDO_EN_REG,
+		BIT(4), 400),
+	RK8XX_DESC(RK808_ID_LDO6, "LDO_REG6", "vcc10", 800, 2500, 100,
+		RK808_LDO6_ON_VSEL_REG, RK808_LDO_VSEL_MASK, RK808_LDO_EN_REG,
+		BIT(5), 400),
+	RK8XX_DESC(RK808_ID_LDO7, "LDO_REG7", "vcc7", 800, 2500, 100,
+		RK808_LDO7_ON_VSEL_REG, RK808_LDO_VSEL_MASK, RK808_LDO_EN_REG,
+		BIT(6), 400),
+	RK8XX_DESC(RK808_ID_LDO8, "LDO_REG8", "vcc11", 1800, 3400, 100,
+		RK808_LDO8_ON_VSEL_REG, RK808_LDO_VSEL_MASK, RK808_LDO_EN_REG,
+		BIT(7), 400),
+	RK8XX_DESC_SWITCH(RK808_ID_SWITCH1, "SWITCH_REG1", "vcc8",
+		RK808_DCDC_EN_REG, BIT(5)),
+	RK8XX_DESC_SWITCH(RK808_ID_SWITCH2, "SWITCH_REG2", "vcc12",
+		RK808_DCDC_EN_REG, BIT(6)),
 };
-static_assert(ARRAY_SIZE(rk808_reg) == RK808_NUM_REGULATORS);
 
-static struct rk_regulator_cfg rk809_reg[] = {
-	{{
-		/* .name = "DCDC_REG1", */
+static const struct regulator_desc rk809_reg[] = {
+	{
+		.name = "DCDC_REG1",
 		.supply_name = "vcc1",
+		.of_match = of_match_ptr("DCDC_REG1"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK817_ID_DCDC1,
 		.ops = &rk817_buck_ops_range,
 		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
 		.linear_ranges = rk817_buck1_voltage_ranges,
@@ -486,9 +760,12 @@ static struct rk_regulator_cfg rk809_reg[] = {
 		.enable_mask = ENABLE_MASK(RK817_ID_DCDC1),
 		.enable_val = ENABLE_MASK(RK817_ID_DCDC1),
 		.disable_val = DISABLE_VAL(RK817_ID_DCDC1),
-	}}, {{
-		/* .name = "DCDC_REG2", */
+	}, {
+		.name = "DCDC_REG2",
 		.supply_name = "vcc2",
+		.of_match = of_match_ptr("DCDC_REG2"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK817_ID_DCDC2,
 		.ops = &rk817_buck_ops_range,
 		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
 		.linear_ranges = rk817_buck1_voltage_ranges,
@@ -499,9 +776,12 @@ static struct rk_regulator_cfg rk809_reg[] = {
 		.enable_mask = ENABLE_MASK(RK817_ID_DCDC2),
 		.enable_val = ENABLE_MASK(RK817_ID_DCDC2),
 		.disable_val = DISABLE_VAL(RK817_ID_DCDC2),
-	}}, {{
-		/* .name = "DCDC_REG3", */
+	}, {
+		.name = "DCDC_REG3",
 		.supply_name = "vcc3",
+		.of_match = of_match_ptr("DCDC_REG3"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK817_ID_DCDC3,
 		.ops = &rk817_buck_ops_range,
 		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
 		.linear_ranges = rk817_buck1_voltage_ranges,
@@ -512,9 +792,12 @@ static struct rk_regulator_cfg rk809_reg[] = {
 		.enable_mask = ENABLE_MASK(RK817_ID_DCDC3),
 		.enable_val = ENABLE_MASK(RK817_ID_DCDC3),
 		.disable_val = DISABLE_VAL(RK817_ID_DCDC3),
-	}}, {{
-		/* .name = "DCDC_REG4", */
+	}, {
+		.name = "DCDC_REG4",
 		.supply_name = "vcc4",
+		.of_match = of_match_ptr("DCDC_REG4"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK817_ID_DCDC4,
 		.ops = &rk817_buck_ops_range,
 		.n_voltages = RK817_BUCK3_SEL_CNT + 1,
 		.linear_ranges = rk817_buck3_voltage_ranges,
@@ -525,68 +808,166 @@ static struct rk_regulator_cfg rk809_reg[] = {
 		.enable_mask = ENABLE_MASK(RK817_ID_DCDC4),
 		.enable_val = ENABLE_MASK(RK817_ID_DCDC4),
 		.disable_val = DISABLE_VAL(RK817_ID_DCDC4),
-	}},
-	RK817_DESC(/* "LDO_REG1", */ "vcc5", 600, 3400, 25,
+	},
+	{
+		.name = "DCDC_REG5",
+		.supply_name = "vcc9",
+		.of_match = of_match_ptr("DCDC_REG5"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK809_ID_DCDC5,
+		.ops = &rk809_buck5_ops_range,
+		.n_voltages = RK809_BUCK5_SEL_CNT,
+		.linear_ranges = rk809_buck5_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk809_buck5_voltage_ranges),
+		.vsel_reg = RK809_BUCK5_CONFIG(0),
+		.vsel_mask = RK809_BUCK5_VSEL_MASK,
+		.enable_reg = RK817_POWER_EN_REG(3),
+		.enable_mask = ENABLE_MASK(1),
+		.enable_val = ENABLE_MASK(1),
+		.disable_val = DISABLE_VAL(1),
+	},
+	RK817_DESC(RK817_ID_LDO1, "LDO_REG1", "vcc5", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(0), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(1), ENABLE_MASK(0),
 		   DISABLE_VAL(0), 400),
-	RK817_DESC(/* "LDO_REG2", */ "vcc5", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO2, "LDO_REG2", "vcc5", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(1), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(1), ENABLE_MASK(1),
 		   DISABLE_VAL(1), 400),
-	RK817_DESC(/* "LDO_REG3", */ "vcc5", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO3, "LDO_REG3", "vcc5", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(2), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(1), ENABLE_MASK(2),
 		   DISABLE_VAL(2), 400),
-	RK817_DESC(/* "LDO_REG4", */ "vcc6", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO4, "LDO_REG4", "vcc6", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(3), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(1), ENABLE_MASK(3),
 		   DISABLE_VAL(3), 400),
-	RK817_DESC(/* "LDO_REG5", */ "vcc6", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO5, "LDO_REG5", "vcc6", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(4), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(2), ENABLE_MASK(0),
 		   DISABLE_VAL(0), 400),
-	RK817_DESC(/* "LDO_REG6", */ "vcc6", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO6, "LDO_REG6", "vcc6", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(5), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(2), ENABLE_MASK(1),
 		   DISABLE_VAL(1), 400),
-	RK817_DESC(/* "LDO_REG7", */ "vcc7", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO7, "LDO_REG7", "vcc7", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(6), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(2), ENABLE_MASK(2),
 		   DISABLE_VAL(2), 400),
-	RK817_DESC(/* "LDO_REG8", */ "vcc7", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO8, "LDO_REG8", "vcc7", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(7), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(2), ENABLE_MASK(3),
 		   DISABLE_VAL(3), 400),
-	RK817_DESC(/* "LDO_REG9", */ "vcc7", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO9, "LDO_REG9", "vcc7", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(8), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(3), ENABLE_MASK(0),
 		   DISABLE_VAL(0), 400),
-	{{
-		/* .name = "DCDC_REG5", */
-		.supply_name = "vcc9",
-		.ops = &rk809_buck5_ops_range,
-		.n_voltages = RK809_BUCK5_SEL_CNT,
-		.linear_ranges = rk809_buck5_voltage_ranges,
-		.n_linear_ranges = ARRAY_SIZE(rk809_buck5_voltage_ranges),
-		.vsel_reg = RK809_BUCK5_CONFIG(0),
-		.vsel_mask = RK809_BUCK5_VSEL_MASK,
-		.enable_reg = RK817_POWER_EN_REG(3),
-		.enable_mask = ENABLE_MASK(1),
-		.enable_val = ENABLE_MASK(1),
-		.disable_val = DISABLE_VAL(1),
-	}},
-	RK817_DESC_SWITCH(/* "SWITCH_REG1", */ "vcc9",
-			  RK817_POWER_EN_REG(3), ENABLE_MASK(2), DISABLE_VAL(2)),
-	RK817_DESC_SWITCH(/* "SWITCH_REG2", */ "vcc8",
-			  RK817_POWER_EN_REG(3), ENABLE_MASK(3), DISABLE_VAL(3)),
+	RK817_DESC_SWITCH(RK809_ID_SW1, "SWITCH_REG1", "vcc9",
+			  RK817_POWER_EN_REG(3), ENABLE_MASK(2),
+			  DISABLE_VAL(2)),
+	RK817_DESC_SWITCH(RK809_ID_SW2, "SWITCH_REG2", "vcc8",
+			  RK817_POWER_EN_REG(3), ENABLE_MASK(3),
+			  DISABLE_VAL(3)),
 };
-static_assert(ARRAY_SIZE(rk809_reg) == RK809_NUM_REGULATORS);
 
-static struct rk_regulator_cfg rk817_reg[] = {
-	{{
-		/* .name = "DCDC_REG1", */
+static const struct regulator_linear_range rk816_buck_4_voltage_ranges[] = {
+	REGULATOR_LINEAR_RANGE(800000, 0, 26, 100000),
+	REGULATOR_LINEAR_RANGE(3500000, 27, 31, 0),
+};
+
+static const struct regulator_desc rk816_reg[] = {
+	{
+		.name = "dcdc1",
 		.supply_name = "vcc1",
+		.of_match = of_match_ptr("dcdc1"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK816_ID_DCDC1,
+		.ops = &rk816_buck1_2_ops_ranges,
+		.n_voltages = 64,
+		.linear_ranges = rk805_buck_1_2_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk805_buck_1_2_voltage_ranges),
+		.vsel_reg = RK818_BUCK1_ON_VSEL_REG,
+		.vsel_mask = RK818_BUCK_VSEL_MASK,
+		.apply_reg = RK816_DCDC_EN_REG2,
+		.apply_bit = RK816_BUCK_DVS_CONFIRM,
+		.enable_reg = RK816_DCDC_EN_REG1,
+		.enable_mask = BIT(4) | BIT(0),
+		.enable_val = BIT(4) | BIT(0),
+		.disable_val = BIT(4),
+	}, {
+		.name = "dcdc2",
+		.supply_name = "vcc2",
+		.of_match = of_match_ptr("dcdc2"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK816_ID_DCDC2,
+		.ops = &rk816_buck1_2_ops_ranges,
+		.n_voltages = 64,
+		.linear_ranges = rk805_buck_1_2_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk805_buck_1_2_voltage_ranges),
+		.vsel_reg = RK818_BUCK2_ON_VSEL_REG,
+		.vsel_mask = RK818_BUCK_VSEL_MASK,
+		.apply_reg = RK816_DCDC_EN_REG2,
+		.apply_bit = RK816_BUCK_DVS_CONFIRM,
+		.enable_reg = RK816_DCDC_EN_REG1,
+		.enable_mask = BIT(5) | BIT(1),
+		.enable_val = BIT(5) | BIT(1),
+		.disable_val = BIT(5),
+	}, {
+		.name = "dcdc3",
+		.supply_name = "vcc3",
+		.of_match = of_match_ptr("dcdc3"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK816_ID_DCDC3,
+		.ops = &rk808_switch_ops,
+		.n_voltages = 1,
+		.enable_reg = RK816_DCDC_EN_REG1,
+		.enable_mask = BIT(6) | BIT(2),
+		.enable_val =  BIT(6) | BIT(2),
+		.disable_val = BIT(6),
+	}, {
+		.name = "dcdc4",
+		.supply_name = "vcc4",
+		.of_match = of_match_ptr("dcdc4"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK816_ID_DCDC4,
+		.ops = &rk816_buck4_ops_ranges,
+		.n_voltages = 32,
+		.linear_ranges = rk816_buck_4_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk816_buck_4_voltage_ranges),
+		.vsel_reg = RK818_BUCK4_ON_VSEL_REG,
+		.vsel_mask = RK818_BUCK4_VSEL_MASK,
+		.enable_reg = RK816_DCDC_EN_REG1,
+		.enable_mask = BIT(7) | BIT(3),
+		.enable_val = BIT(7) | BIT(3),
+		.disable_val = BIT(7),
+	},
+	RK816_DESC(RK816_ID_LDO1, "ldo1", "vcc5", 800, 3400, 100,
+		   RK818_LDO1_ON_VSEL_REG, RK818_LDO_VSEL_MASK,
+		   RK816_LDO_EN_REG1, ENABLE_MASK(0), DISABLE_VAL(0), 400),
+	RK816_DESC(RK816_ID_LDO2, "ldo2", "vcc5", 800, 3400, 100,
+		   RK818_LDO2_ON_VSEL_REG, RK818_LDO_VSEL_MASK,
+		   RK816_LDO_EN_REG1, ENABLE_MASK(1), DISABLE_VAL(1), 400),
+	RK816_DESC(RK816_ID_LDO3, "ldo3", "vcc5", 800, 3400, 100,
+		   RK818_LDO3_ON_VSEL_REG, RK818_LDO_VSEL_MASK,
+		   RK816_LDO_EN_REG1, ENABLE_MASK(2), DISABLE_VAL(2), 400),
+	RK816_DESC(RK816_ID_LDO4, "ldo4", "vcc6", 800, 3400, 100,
+		   RK818_LDO4_ON_VSEL_REG, RK818_LDO_VSEL_MASK,
+		   RK816_LDO_EN_REG1, ENABLE_MASK(3), DISABLE_VAL(3), 400),
+	RK816_DESC(RK816_ID_LDO5, "ldo5", "vcc6", 800, 3400, 100,
+		   RK818_LDO5_ON_VSEL_REG, RK818_LDO_VSEL_MASK,
+		   RK816_LDO_EN_REG2, ENABLE_MASK(0), DISABLE_VAL(0), 400),
+	RK816_DESC(RK816_ID_LDO6, "ldo6", "vcc6", 800, 3400, 100,
+		   RK818_LDO6_ON_VSEL_REG, RK818_LDO_VSEL_MASK,
+		   RK816_LDO_EN_REG2, ENABLE_MASK(1), DISABLE_VAL(1), 400),
+};
+
+static const struct regulator_desc rk817_reg[] = {
+	{
+		.name = "DCDC_REG1",
+		.supply_name = "vcc1",
+		.of_match = of_match_ptr("DCDC_REG1"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK817_ID_DCDC1,
 		.ops = &rk817_buck_ops_range,
 		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
 		.linear_ranges = rk817_buck1_voltage_ranges,
@@ -597,9 +978,12 @@ static struct rk_regulator_cfg rk817_reg[] = {
 		.enable_mask = ENABLE_MASK(RK817_ID_DCDC1),
 		.enable_val = ENABLE_MASK(RK817_ID_DCDC1),
 		.disable_val = DISABLE_VAL(RK817_ID_DCDC1),
-	 }}, {{
-		/* .name = "DCDC_REG2", */
+	}, {
+		.name = "DCDC_REG2",
 		.supply_name = "vcc2",
+		.of_match = of_match_ptr("DCDC_REG2"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK817_ID_DCDC2,
 		.ops = &rk817_buck_ops_range,
 		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
 		.linear_ranges = rk817_buck1_voltage_ranges,
@@ -610,9 +994,12 @@ static struct rk_regulator_cfg rk817_reg[] = {
 		.enable_mask = ENABLE_MASK(RK817_ID_DCDC2),
 		.enable_val = ENABLE_MASK(RK817_ID_DCDC2),
 		.disable_val = DISABLE_VAL(RK817_ID_DCDC2),
-	 }}, {{
-		/* .name = "DCDC_REG3", */
+	}, {
+		.name = "DCDC_REG3",
 		.supply_name = "vcc3",
+		.of_match = of_match_ptr("DCDC_REG3"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK817_ID_DCDC3,
 		.ops = &rk817_buck_ops_range,
 		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
 		.linear_ranges = rk817_buck1_voltage_ranges,
@@ -623,9 +1010,12 @@ static struct rk_regulator_cfg rk817_reg[] = {
 		.enable_mask = ENABLE_MASK(RK817_ID_DCDC3),
 		.enable_val = ENABLE_MASK(RK817_ID_DCDC3),
 		.disable_val = DISABLE_VAL(RK817_ID_DCDC3),
-	 }}, {{
-		/* .name = "DCDC_REG4", */
+	}, {
+		.name = "DCDC_REG4",
 		.supply_name = "vcc4",
+		.of_match = of_match_ptr("DCDC_REG4"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK817_ID_DCDC4,
 		.ops = &rk817_buck_ops_range,
 		.n_voltages = RK817_BUCK3_SEL_CNT + 1,
 		.linear_ranges = rk817_buck3_voltage_ranges,
@@ -636,56 +1026,59 @@ static struct rk_regulator_cfg rk817_reg[] = {
 		.enable_mask = ENABLE_MASK(RK817_ID_DCDC4),
 		.enable_val = ENABLE_MASK(RK817_ID_DCDC4),
 		.disable_val = DISABLE_VAL(RK817_ID_DCDC4),
-	}},
-	RK817_DESC(/* "LDO_REG1", */ "vcc5", 600, 3400, 25,
+	},
+	RK817_DESC(RK817_ID_LDO1, "LDO_REG1", "vcc5", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(0), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(1), ENABLE_MASK(0),
 		   DISABLE_VAL(0), 400),
-	RK817_DESC(/* "LDO_REG2", */ "vcc5", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO2, "LDO_REG2", "vcc5", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(1), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(1), ENABLE_MASK(1),
 		   DISABLE_VAL(1), 400),
-	RK817_DESC(/* "LDO_REG3", */ "vcc5", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO3, "LDO_REG3", "vcc5", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(2), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(1), ENABLE_MASK(2),
 		   DISABLE_VAL(2), 400),
-	RK817_DESC(/* "LDO_REG4", */ "vcc6", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO4, "LDO_REG4", "vcc6", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(3), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(1), ENABLE_MASK(3),
 		   DISABLE_VAL(3), 400),
-	RK817_DESC(/* "LDO_REG5", */ "vcc6", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO5, "LDO_REG5", "vcc6", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(4), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(2), ENABLE_MASK(0),
 		   DISABLE_VAL(0), 400),
-	RK817_DESC(/* "LDO_REG6", */ "vcc6", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO6, "LDO_REG6", "vcc6", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(5), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(2), ENABLE_MASK(1),
 		   DISABLE_VAL(1), 400),
-	RK817_DESC(/* "LDO_REG7", */ "vcc7", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO7, "LDO_REG7", "vcc7", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(6), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(2), ENABLE_MASK(2),
 		   DISABLE_VAL(2), 400),
-	RK817_DESC(/* "LDO_REG8", */ "vcc7", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO8, "LDO_REG8", "vcc7", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(7), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(2), ENABLE_MASK(3),
 		   DISABLE_VAL(3), 400),
-	RK817_DESC(/* "LDO_REG9", */ "vcc7", 600, 3400, 25,
+	RK817_DESC(RK817_ID_LDO9, "LDO_REG9", "vcc7", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(8), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(3), ENABLE_MASK(0),
 		   DISABLE_VAL(0), 400),
-	RK817_BOOST_DESC(/* "BOOST", */ "vcc8", 4700, 5400, 100,
+	RK817_BOOST_DESC(RK817_ID_BOOST, "BOOST", "vcc8", 4700, 5400, 100,
 			 RK817_BOOST_OTG_CFG, RK817_BOOST_VSEL_MASK,
 			 RK817_POWER_EN_REG(3), ENABLE_MASK(1), ENABLE_MASK(1),
-		   DISABLE_VAL(1), 400),
-	RK817_DESC_SWITCH(/* "OTG_SWITCH", */ "vcc9",
-			 RK817_POWER_EN_REG(3), ENABLE_MASK(2), DISABLE_VAL(2)),
+		   DISABLE_VAL(1), 400, 3500 - 5400),
+	RK817_DESC_SWITCH(RK817_ID_BOOST_OTG_SW, "OTG_SWITCH", "vcc9",
+			  RK817_POWER_EN_REG(3), ENABLE_MASK(2),
+			  DISABLE_VAL(2)),
 };
-static_assert(ARRAY_SIZE(rk817_reg) == RK817_NUM_REGULATORS);
 
-static struct rk_regulator_cfg rk818_reg[] = {
-	{{
-		/* .name = "DCDC_REG1", */
+static const struct regulator_desc rk818_reg[] = {
+	{
+		.name = "DCDC_REG1",
 		.supply_name = "vcc1",
+		.of_match = of_match_ptr("DCDC_REG1"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK818_ID_DCDC1,
 		.ops = &rk808_reg_ops,
 		.min_uV = 712500,
 		.uV_step = 12500,
@@ -694,9 +1087,12 @@ static struct rk_regulator_cfg rk818_reg[] = {
 		.vsel_mask = RK818_BUCK_VSEL_MASK,
 		.enable_reg = RK818_DCDC_EN_REG,
 		.enable_mask = BIT(0),
-	 }}, {{
-		/* .name = "DCDC_REG2", */
+	}, {
+		.name = "DCDC_REG2",
 		.supply_name = "vcc2",
+		.of_match = of_match_ptr("DCDC_REG2"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK818_ID_DCDC2,
 		.ops = &rk808_reg_ops,
 		.min_uV = 712500,
 		.uV_step = 12500,
@@ -705,29 +1101,35 @@ static struct rk_regulator_cfg rk818_reg[] = {
 		.vsel_mask = RK818_BUCK_VSEL_MASK,
 		.enable_reg = RK818_DCDC_EN_REG,
 		.enable_mask = BIT(1),
-	 }}, {{
-		/* .name = "DCDC_REG3", */
+	}, {
+		.name = "DCDC_REG3",
 		.supply_name = "vcc3",
+		.of_match = of_match_ptr("DCDC_REG3"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK818_ID_DCDC3,
 		.ops = &rk808_switch_ops,
 		.n_voltages = 1,
 		.enable_reg = RK818_DCDC_EN_REG,
 		.enable_mask = BIT(2),
-	}},
-	RK8XX_DESC(/* "DCDC_REG4", */ "vcc4", 1800, 3600, 100,
+	},
+	RK8XX_DESC(RK818_ID_DCDC4, "DCDC_REG4", "vcc4", 1800, 3600, 100,
 		RK818_BUCK4_ON_VSEL_REG, RK818_BUCK4_VSEL_MASK,
 		RK818_DCDC_EN_REG, BIT(3), 0),
-	RK8XX_DESC(/* "DCDC_BOOST", */ "boost", 4700, 5400, 100,
+	RK8XX_DESC(RK818_ID_BOOST, "DCDC_BOOST", "boost", 4700, 5400, 100,
 		RK818_BOOST_LDO9_ON_VSEL_REG, RK818_BOOST_ON_VSEL_MASK,
 		RK818_DCDC_EN_REG, BIT(4), 0),
-	RK8XX_DESC(/* "LDO_REG1", */ "vcc6", 1800, 3400, 100,
+	RK8XX_DESC(RK818_ID_LDO1, "LDO_REG1", "vcc6", 1800, 3400, 100,
 		RK818_LDO1_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
 		BIT(0), 400),
-	RK8XX_DESC(/* "LDO_REG2", */ "vcc6", 1800, 3400, 100,
+	RK8XX_DESC(RK818_ID_LDO2, "LDO_REG2", "vcc6", 1800, 3400, 100,
 		RK818_LDO2_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
 		BIT(1), 400),
-	{{
-		/* .name = "LDO_REG3", */
+	{
+		.name = "LDO_REG3",
 		.supply_name = "vcc7",
+		.of_match = of_match_ptr("LDO_REG3"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK818_ID_LDO3,
 		.ops = &rk808_reg_ops_ranges,
 		.n_voltages = 16,
 		.linear_ranges = rk808_ldo3_voltage_ranges,
@@ -736,214 +1138,85 @@ static struct rk_regulator_cfg rk818_reg[] = {
 		.vsel_mask = RK818_LDO3_ON_VSEL_MASK,
 		.enable_reg = RK818_LDO_EN_REG,
 		.enable_mask = BIT(2),
-		.off_on_delay = 400,
-	}},
-	RK8XX_DESC(/* "LDO_REG4", */ "vcc8", 1800, 3400, 100,
+	},
+	RK8XX_DESC(RK818_ID_LDO4, "LDO_REG4", "vcc8", 1800, 3400, 100,
 		RK818_LDO4_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
 		BIT(3), 400),
-	RK8XX_DESC(/* "LDO_REG5", */ "vcc7", 1800, 3400, 100,
+	RK8XX_DESC(RK818_ID_LDO5, "LDO_REG5", "vcc7", 1800, 3400, 100,
 		RK818_LDO5_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
 		BIT(4), 400),
-	RK8XX_DESC(/* "LDO_REG6", */ "vcc8", 800, 2500, 100,
+	RK8XX_DESC(RK818_ID_LDO6, "LDO_REG6", "vcc8", 800, 2500, 100,
 		RK818_LDO6_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
 		BIT(5), 400),
-	RK8XX_DESC(/* "LDO_REG7", */ "vcc7", 800, 2500, 100,
+	RK8XX_DESC(RK818_ID_LDO7, "LDO_REG7", "vcc7", 800, 2500, 100,
 		RK818_LDO7_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
 		BIT(6), 400),
-	RK8XX_DESC(/* "LDO_REG8", */ "vcc8", 1800, 3400, 100,
+	RK8XX_DESC(RK818_ID_LDO8, "LDO_REG8", "vcc8", 1800, 3400, 100,
 		RK818_LDO8_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
 		BIT(7), 400),
-	RK8XX_DESC(/* "LDO_REG9", */ "vcc9", 1800, 3400, 100,
+	RK8XX_DESC(RK818_ID_LDO9, "LDO_REG9", "vcc9", 1800, 3400, 100,
 		RK818_BOOST_LDO9_ON_VSEL_REG, RK818_LDO_VSEL_MASK,
 		RK818_DCDC_EN_REG, BIT(5), 400),
-	RK8XX_DESC_SWITCH(/* "SWITCH_REG", */ "vcc9",
-			  RK818_DCDC_EN_REG, BIT(6)),
-	RK8XX_DESC_SWITCH(/* "HDMI_SWITCH", */ "h_5v",
-			  RK818_H5V_EN_REG, BIT(0)),
-	RK8XX_DESC_SWITCH(/* "OTG_SWITCH", */ "usb",
-			  RK818_DCDC_EN_REG, BIT(7)),
-};
-static_assert(ARRAY_SIZE(rk818_reg) == RK818_NUM_REGULATORS);
-
-static int rk808_regulator_register(struct rk808 *rk808, int id,
-				    struct of_regulator_match *match,
-				    struct rk_regulator_cfg *cfg)
-{
-	struct device *dev = rk808->dev;
-	int ret;
-
-	if (!match->of_node) {
-		dev_dbg(dev, "Skip missing DTB regulator %s", match->name);
-		return 0;
-	}
-
-	cfg->rdev.desc = &cfg->desc;
-	cfg->rdev.dev = dev;
-	cfg->rdev.regmap = rk808->regmap;
-
-	ret = of_regulator_register(&cfg->rdev, match->of_node);
-	if (ret)
-		return dev_err_probe(dev, ret, "failed to register %s regulator\n",
-				     match->name);
-
-	dev_dbg(dev, "registered %s\n", match->name);
-
-	return 0;
-}
-
-#define MATCH(variant, _name, _id) [RK##variant##_ID_##_id] = \
-	{ .name = #_name, .desc = &rk##variant##_reg[RK##variant##_ID_##_id].desc }
-
-static struct of_regulator_match rk805_reg_matches[] = {
-	MATCH(805, DCDC_REG1, DCDC1),
-	MATCH(805, DCDC_REG2, DCDC2),
-	MATCH(805, DCDC_REG3, DCDC3),
-	MATCH(805, DCDC_REG4, DCDC4),
-	MATCH(805, LDO_REG1, LDO1),
-	MATCH(805, LDO_REG2, LDO2),
-	MATCH(805, LDO_REG3, LDO3),
-};
-static_assert(ARRAY_SIZE(rk805_reg_matches) == RK805_NUM_REGULATORS);
-
-static struct of_regulator_match rk808_reg_matches[] = {
-	MATCH(808, DCDC_REG1, DCDC1),
-	MATCH(808, DCDC_REG2, DCDC2),
-	MATCH(808, DCDC_REG3, DCDC3),
-	MATCH(808, DCDC_REG4, DCDC4),
-	MATCH(808, LDO_REG1, LDO1),
-	MATCH(808, LDO_REG2, LDO2),
-	MATCH(808, LDO_REG3, LDO3),
-	MATCH(808, LDO_REG4, LDO4),
-	MATCH(808, LDO_REG5, LDO5),
-	MATCH(808, LDO_REG6, LDO6),
-	MATCH(808, LDO_REG7, LDO7),
-	MATCH(808, LDO_REG8, LDO8),
-	MATCH(808, SWITCH_REG1, SWITCH1),
-	MATCH(808, SWITCH_REG2, SWITCH2),
-};
-static_assert(ARRAY_SIZE(rk808_reg_matches) == RK808_NUM_REGULATORS);
-
-static struct of_regulator_match rk809_reg_matches[] = {
-	MATCH(809, DCDC_REG1, DCDC1),
-	MATCH(809, DCDC_REG2, DCDC2),
-	MATCH(809, DCDC_REG3, DCDC3),
-	MATCH(809, DCDC_REG4, DCDC4),
-	MATCH(809, LDO_REG1, LDO1),
-	MATCH(809, LDO_REG2, LDO2),
-	MATCH(809, LDO_REG3, LDO3),
-	MATCH(809, LDO_REG4, LDO4),
-	MATCH(809, LDO_REG5, LDO5),
-	MATCH(809, LDO_REG6, LDO6),
-	MATCH(809, LDO_REG7, LDO7),
-	MATCH(809, LDO_REG8, LDO8),
-	MATCH(809, LDO_REG9, LDO9),
-	MATCH(809, DCDC_REG5, DCDC5),
-	MATCH(809, SWITCH_REG1, SW1),
-	MATCH(809, SWITCH_REG2, SW2),
-};
-static_assert(ARRAY_SIZE(rk809_reg_matches) == RK809_NUM_REGULATORS);
-
-static struct of_regulator_match rk817_reg_matches[] = {
-	MATCH(817, DCDC_REG1, DCDC1),
-	MATCH(817, DCDC_REG2, DCDC2),
-	MATCH(817, DCDC_REG3, DCDC3),
-	MATCH(817, DCDC_REG4, DCDC4),
-	MATCH(817, LDO_REG1, LDO1),
-	MATCH(817, LDO_REG2, LDO2),
-	MATCH(817, LDO_REG3, LDO3),
-	MATCH(817, LDO_REG4, LDO4),
-	MATCH(817, LDO_REG5, LDO5),
-	MATCH(817, LDO_REG6, LDO6),
-	MATCH(817, LDO_REG7, LDO7),
-	MATCH(817, LDO_REG8, LDO8),
-	MATCH(817, LDO_REG9, LDO9),
-	MATCH(817, BOOST, BOOST),
-	MATCH(817, OTG_SWITCH, BOOST_OTG_SW),
-};
-static_assert(ARRAY_SIZE(rk817_reg_matches) == RK817_NUM_REGULATORS);
-
-static struct of_regulator_match rk818_reg_matches[] = {
-	MATCH(818, DCDC_REG1, DCDC1),
-	MATCH(818, DCDC_REG2, DCDC2),
-	MATCH(818, DCDC_REG3, DCDC3),
-	MATCH(818, DCDC_REG4, DCDC4),
-	MATCH(818, DCDC_BOOST, BOOST),
-	MATCH(818, LDO_REG1, LDO1),
-	MATCH(818, LDO_REG2, LDO2),
-	MATCH(818, LDO_REG3, LDO3),
-	MATCH(818, LDO_REG4, LDO4),
-	MATCH(818, LDO_REG5, LDO5),
-	MATCH(818, LDO_REG6, LDO6),
-	MATCH(818, LDO_REG7, LDO7),
-	MATCH(818, LDO_REG8, LDO8),
-	MATCH(818, LDO_REG9, LDO9),
-	MATCH(818, SWITCH_REG, SWITCH),
-	MATCH(818, HDMI_SWITCH, HDMI_SWITCH),
-	MATCH(818, OTG_SWITCH, OTG_SWITCH),
-};
-static_assert(ARRAY_SIZE(rk818_reg_matches) == RK818_NUM_REGULATORS);
-
-static int rk808_regulator_dt_parse(struct device *dev,
-				    struct of_regulator_match *matches,
-				    int nregulators)
-{
-	struct device_node *np = dev->of_node;
-
-	np = of_get_child_by_name(np, "regulators");
-	if (!np)
-		return -ENOENT;
-
-	return of_regulator_match(dev, np, matches, nregulators);
-}
+	RK8XX_DESC_SWITCH(RK818_ID_SWITCH, "SWITCH_REG", "vcc9",
+		RK818_DCDC_EN_REG, BIT(6)),
+	RK8XX_DESC_SWITCH(RK818_ID_HDMI_SWITCH, "HDMI_SWITCH", "h_5v",
+		RK818_H5V_EN_REG, BIT(0)),
+	RK8XX_DESC_SWITCH(RK818_ID_OTG_SWITCH, "OTG_SWITCH", "usb",
+		RK818_DCDC_EN_REG, BIT(7)),
+};
 
 static int rk808_regulator_probe(struct device *dev)
 {
 	struct rk808 *rk808 = dev->parent->priv;
-	struct rk_regulator_cfg *regulators;
-	struct of_regulator_match *matches;
-	int ret, i, nregulators;
+	struct regulator_dev *rk808_rdev;
+	const struct regulator_desc *regulators;
+	int i, nregulators;
+	struct regulator_config config;
 
 	switch (rk808->variant) {
 	case RK805_ID:
 		regulators = rk805_reg;
-		matches = rk805_reg_matches;
 		nregulators = RK805_NUM_REGULATORS;
 		break;
+	case RK806_ID:
+		regulators = rk806_reg;
+		nregulators = ARRAY_SIZE(rk806_reg);
+		break;
 	case RK808_ID:
 		regulators = rk808_reg;
-		matches = rk808_reg_matches;
-		nregulators = RK809_NUM_REGULATORS;
+		nregulators = RK808_NUM_REGULATORS;
 		break;
 	case RK809_ID:
 		regulators = rk809_reg;
-		matches = rk809_reg_matches;
 		nregulators = RK809_NUM_REGULATORS;
 		break;
+	case RK816_ID:
+		regulators = rk816_reg;
+		nregulators = ARRAY_SIZE(rk816_reg);
+		break;
 	case RK817_ID:
 		regulators = rk817_reg;
-		matches = rk817_reg_matches;
 		nregulators = RK817_NUM_REGULATORS;
 		break;
 	case RK818_ID:
 		regulators = rk818_reg;
-		matches = rk818_reg_matches;
 		nregulators = RK818_NUM_REGULATORS;
 		break;
 	default:
-		dev_err(dev, "unsupported RK8XX ID %lu\n", rk808->variant);
+		dev_err(dev, "unsupported RK8XX ID %lu\n",
+			rk808->variant);
 		return -EINVAL;
 	}
 
-	ret = rk808_regulator_dt_parse(rk808->dev, matches, nregulators);
-	if (ret < 0)
-		return ret;
+	config.dev = dev;
+	config.regmap = rk808->regmap;
 
 	/* Instantiate the regulators */
 	for (i = 0; i < nregulators; i++) {
-		ret = rk808_regulator_register(rk808, i, &matches[i],
-					       &regulators[i]);
-		if (ret < 0)
-			return ret;
+		rk808_rdev = regulator_register(rk808->dev, &regulators[i], &config);
+		if (IS_ERR(rk808_rdev))
+			return dev_err_probe(dev, PTR_ERR(rk808_rdev),
+					     "failed to register %d regulator\n", i);
 	}
 
 	return 0;
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index 8cd152625b..8f94103c82 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -964,20 +964,7 @@ enum rk817_reg_id {
 };
 
 enum rk809_reg_id {
-	RK809_ID_DCDC1 = 0,
-	RK809_ID_DCDC2,
-	RK809_ID_DCDC3,
-	RK809_ID_DCDC4,
-	RK809_ID_LDO1,
-	RK809_ID_LDO2,
-	RK809_ID_LDO3,
-	RK809_ID_LDO4,
-	RK809_ID_LDO5,
-	RK809_ID_LDO6,
-	RK809_ID_LDO7,
-	RK809_ID_LDO8,
-	RK809_ID_LDO9,
-	RK809_ID_DCDC5,
+	RK809_ID_DCDC5 = RK817_ID_BOOST,
 	RK809_ID_SW1,
 	RK809_ID_SW2,
 	RK809_NUM_REGULATORS

-- 
2.39.5




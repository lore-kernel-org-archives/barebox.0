Delivery-date: Tue, 08 Jun 2021 16:07:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqcOA-0007Hv-95
	for lore@lore.pengutronix.de; Tue, 08 Jun 2021 16:07:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqcO9-0001jm-4a
	for lore@pengutronix.de; Tue, 08 Jun 2021 16:07:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1rA8wzZeRovbtq5ff2Ct59ZWaMIAQspp/dxKLq9r/Q=; b=Nna0kgIIs9x4YO
	PX1m5ks43oK0udAiYVzN6bPddeapqXq+Jsnnp/ZKruFLUtTU0ZUgclpNKT8Lm2HDXcH2XBXp9eqXE
	E3DfD14mxnAZFum4s9YnZ3teoQh+m+ZTsELbRGYjb3chajZ6qPee03rpiZq0+De5zTMXvqaF2XWnQ
	QYYr5sHCRzeFOWUF6Y/yg4x7Eq6rqKp5QEp3j7xm6CwtMn+Csymw579f2qXZvKlKV2Qx+fWIyzEzi
	pdXdK+SqeBexl7ua5D/GUvF3tPIrYUK7crcgmSKRCuuxvTKCV0/mkxt4lCcbLEyFteGBiwUlcaDWO
	G5O/lia5eFYpYbBoLrUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqcMq-008kYg-W5; Tue, 08 Jun 2021 14:06:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqcMW-008k4S-S4
 for barebox@lists.infradead.org; Tue, 08 Jun 2021 14:05:52 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqcMU-0001HJ-QK; Tue, 08 Jun 2021 16:05:46 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqcMU-00005S-AU; Tue, 08 Jun 2021 16:05:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Jun 2021 16:05:44 +0200
Message-Id: <20210608140545.30696-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210608140545.30696-1-s.hauer@pengutronix.de>
References: <20210608140545.30696-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_070549_059452_4EAF4918 
X-CRM114-Status: GOOD (  21.76  )
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
Subject: [PATCH 4/5] pinctrl: Rockchip: implement drive strength setting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Newer SoCs support a drive strength setting per pin. This patch adds
support for it. Currently a no-op as no currently supported SoC in the
driver has support for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl-rockchip.c | 126 ++++++++++++++++++++++++++++-
 1 file changed, 125 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 4b69d0d069..3bdae5c229 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -186,6 +186,8 @@ struct rockchip_pin_ctrl {
 	u32				niomux_routes;
 	void	(*pull_calc_reg)(struct rockchip_pin_bank *bank, int pin_num,
 				 void __iomem **reg, u8 *bit);
+	void	(*drv_calc_reg)(struct rockchip_pin_bank *bank,
+				    int pin_num, void __iomem **reg, u8 *bit);
 };
 
 struct rockchip_pinctrl {
@@ -468,12 +470,129 @@ static int rockchip_pinctrl_set_pull(struct rockchip_pin_bank *bank,
 	return 0;
 }
 
+static int rockchip_perpin_drv_list[DRV_TYPE_MAX][8] = {
+	{ 2, 4, 8, 12, -1, -1, -1, -1 },
+	{ 3, 6, 9, 12, -1, -1, -1, -1 },
+	{ 5, 10, 15, 20, -1, -1, -1, -1 },
+	{ 4, 6, 8, 10, 12, 14, 16, 18 },
+	{ 4, 7, 10, 13, 16, 19, 22, 26 }
+};
+
+#define RK3288_DRV_BITS_PER_PIN		2
+#define RK3399_DRV_3BITS_PER_PIN	3
+
+static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
+				     int pin_num, int strength)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+	struct rockchip_pin_ctrl *ctrl = info->ctrl;
+	int ret, i;
+	void __iomem *reg;
+	u32 data, rmask, rmask_bits, temp, val;
+	u8 bit;
+	int drv_type = bank->drv[pin_num / 8].drv_type;
+
+	if (!ctrl->drv_calc_reg)
+		return -ENOTSUPP;
+
+	dev_dbg(info->pctl_dev.dev, "setting drive of GPIO%d-%d to %d\n",
+		bank->bank_num, pin_num, strength);
+
+	ctrl->drv_calc_reg(bank, pin_num, &reg, &bit);
+
+	ret = -EINVAL;
+	for (i = 0; i < ARRAY_SIZE(rockchip_perpin_drv_list[drv_type]); i++) {
+		if (rockchip_perpin_drv_list[drv_type][i] == strength) {
+			ret = i;
+			break;
+		} else if (rockchip_perpin_drv_list[drv_type][i] < 0) {
+			ret = rockchip_perpin_drv_list[drv_type][i];
+			break;
+		}
+	}
+
+	if (ret < 0) {
+		dev_err(info->pctl_dev.dev, "unsupported driver strength %d\n",
+			strength);
+		return ret;
+	}
+
+	switch (drv_type) {
+	case DRV_TYPE_IO_1V8_3V0_AUTO:
+	case DRV_TYPE_IO_3V3_ONLY:
+		rmask_bits = RK3399_DRV_3BITS_PER_PIN;
+		switch (bit) {
+		case 0 ... 12:
+			/* regular case, nothing to do */
+			break;
+		case 15:
+			/*
+			 * drive-strength offset is special, as it is spread
+			 * over 2 registers, the bit data[15] contains bit 0
+			 * of the value while temp[1:0] contains bits 2 and 1
+			 */
+			data = (ret & 0x1) << 15;
+			temp = (ret >> 0x1) & 0x3;
+
+			rmask = BIT(15) | BIT(31);
+			data |= BIT(31);
+
+			val = readl(reg);
+			val &= ~rmask;
+			val |= data & rmask;
+			writel(val, reg);
+
+			rmask = 0x3 | (0x3 << 16);
+			temp |= (0x3 << 16);
+			reg += 0x4;
+
+			val = readl(reg);
+			val &= ~rmask;
+			val |= temp & rmask;
+			writel(val, reg);
+
+			return ret;
+		case 18 ... 21:
+			/* setting fully enclosed in the second register */
+			reg += 4;
+			bit -= 16;
+			break;
+		default:
+			dev_err(info->pctl_dev.dev, "unsupported bit: %d for pinctrl drive type: %d\n",
+				bit, drv_type);
+			return -EINVAL;
+		}
+		break;
+	case DRV_TYPE_IO_DEFAULT:
+	case DRV_TYPE_IO_1V8_OR_3V0:
+	case DRV_TYPE_IO_1V8_ONLY:
+		rmask_bits = RK3288_DRV_BITS_PER_PIN;
+		break;
+	default:
+		dev_err(info->pctl_dev.dev, "unsupported pinctrl drive type: %d\n",
+			drv_type);
+		return -EINVAL;
+	}
+
+	/* enable the write to the equivalent lower bits */
+	data = ((1 << rmask_bits) - 1) << (bit + 16);
+	rmask = data | (data >> 16);
+	data |= (ret << bit);
+
+	val = readl(reg);
+	val &= ~rmask;
+	val |= data & rmask;
+	writel(val, reg);
+
+	return ret;
+}
+
 static int rockchip_pinctrl_set_state(struct pinctrl_device *pdev,
 				      struct device_node *np)
 {
 	struct rockchip_pinctrl *info = to_rockchip_pinctrl(pdev);
 	const __be32 *list;
-	int i, size;
+	int i, size, ret;
 	int bank_num, pin_num, func;
 
 	/*
@@ -492,6 +611,7 @@ static int rockchip_pinctrl_set_state(struct pinctrl_device *pdev,
 		const __be32 *phandle;
 		struct device_node *np_config;
 		struct rockchip_pin_bank *bank;
+		u32 drive_strength;
 
 		bank_num = be32_to_cpu(*list++);
 		pin_num = be32_to_cpu(*list++);
@@ -506,6 +626,10 @@ static int rockchip_pinctrl_set_state(struct pinctrl_device *pdev,
 		rockchip_pinctrl_set_func(bank, pin_num, func);
 		rockchip_pinctrl_set_pull(bank, pin_num,
 					  parse_bias_config(np_config));
+
+		ret = of_property_read_u32(np_config, "drive-strength", &drive_strength);
+		if (!ret)
+			rockchip_set_drive_perpin(bank, pin_num, drive_strength);
 	}
 
 	return 0;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


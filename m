Delivery-date: Mon, 01 Jul 2024 09:33:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBX5-000QSe-1E
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:33:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBX4-0007LM-O2
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:33:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2DAtb8i8OlQwTgZksjNo2c9XuhIb6UTfqaRafu/XoZg=; b=XGup/Biar16cqxyY7Z6sxc567m
	Ouloz6MiQEJfcmK7i2ezi6my6DOTGRwogQEocZUr50vxDsyMsUHCHJK6r0N9GQOyMRRMfc45FWxio
	ThJG7f2vtPkuzRQA3eGbbtWgqLR23nmCYHLkk4x/GJuaEHJA038+m0BLAkCyYEMc1fc3EFDwZIBm7
	Or3mfbxNLkDd5roTO1cOR5rqV4sm1ztmH5vmgh203pFg0uLnG6ITLcWQwjBrOHKXd//TSdK/OB/O+
	Ms3FUGXMCF+Rj9aqeLem4steXY9+tTvHmbc75+PWfhiORJwMalJ1TA6MmYo8uGgIOy/C23/29L3dz
	twMEQ3gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBWf-000000022ra-2qF6;
	Mon, 01 Jul 2024 07:32:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBWR-000000022if-2rK8
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:32:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWQ-0006w3-Bv; Mon, 01 Jul 2024 09:32:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWP-006JjR-VB; Mon, 01 Jul 2024 09:32:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWP-000hos-2n;
	Mon, 01 Jul 2024 09:32:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:32:20 +0200
Message-Id: <20240701073220.165946-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240701073220.165946-1-a.fatoum@pengutronix.de>
References: <20240701073220.165946-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_003223_853251_0B563553 
X-CRM114-Status: GOOD (  13.67  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] pinctrl: rockchip: add support for configuring GPIO direction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Rockchip pinctrl binding can not only mux pins as GPIOs and
configure the bias, but also configure the direction.

This is used in some device trees to enable peripherals as a finer
grained gpio-hog.

In Linux, this is implemented by keeping a list of deferred pin configs,
but for barebox, let's just assume we can probe the GPIO controller on
demand and print a warning message otherwise.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-rockchip.c | 52 ++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 8e1e868fa78f..ddf8bfb9042b 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -242,6 +242,24 @@ static enum pin_config_param parse_bias_config(struct device_node *np)
 		return PIN_CONFIG_BIAS_DISABLE;
 }
 
+static unsigned long parse_gpio_direction(struct device_node *np)
+{
+	enum pin_config_param param = PIN_CONFIG_END;
+	u32 argument = 0;
+
+	if (of_property_read_bool(np, "input-enable")) {
+		param = PIN_CONFIG_INPUT_ENABLE;
+	} else if (of_property_read_bool(np, "output-low")) {
+		param = PIN_CONFIG_OUTPUT;
+		argument = 0;
+	} else if (of_property_read_bool(np, "output-high")) {
+		param = PIN_CONFIG_OUTPUT;
+		argument = 1;
+	}
+
+	return pinconf_to_config_packed(param, argument);
+}
+
 static struct rockchip_pin_bank *bank_num_to_bank(
 					struct rockchip_pinctrl *info,
 					unsigned num)
@@ -2396,6 +2414,39 @@ static int rockchip_set_schmitt(struct rockchip_pin_bank *bank,
 
 	return regmap_update_bits(regmap, reg, rmask, data);
 }
+
+static void rockchip_set_gpio(struct rockchip_pin_bank *bank,
+			      int pin_num, unsigned long config)
+{
+	enum pin_config_param param = pinconf_to_config_param(config);
+	struct gpio_chip *gpio;
+
+	if (param != PIN_CONFIG_OUTPUT && param != PIN_CONFIG_INPUT_ENABLE)
+		return;
+
+	gpio = of_gpio_get_chip_by_alias(bank->name);
+	if (!gpio) {
+		/* For simplicity, we don't implement rockchip_pinconf_defer_pin
+		 * like Linux and instead expect boards to be deep-probe enabled
+		 */
+		pr_warn("pinctrl config failed: GPIO controller '%s' not found\n",
+			bank->name);
+		return;
+	}
+
+	switch (param) {
+	case PIN_CONFIG_OUTPUT:
+		gpio->ops->direction_output(gpio, pin_num,
+					    pinconf_to_config_argument(config));
+		break;
+	case PIN_CONFIG_INPUT_ENABLE:
+		gpio->ops->direction_input(gpio, pin_num);
+		break;
+	default:
+		break;
+	}
+}
+
 static int rockchip_pinctrl_set_state(struct pinctrl_device *pdev,
 				      struct device_node *np)
 {
@@ -2434,6 +2485,7 @@ static int rockchip_pinctrl_set_state(struct pinctrl_device *pdev,
 		bank = bank_num_to_bank(info, bank_num);
 		rockchip_set_mux(bank, pin_num, func);
 		rockchip_set_pull(bank, pin_num, parse_bias_config(np_config));
+		rockchip_set_gpio(bank, pin_num, parse_gpio_direction(np_config));
 
 		ret = of_property_read_u32(np_config, "drive-strength", &drive_strength);
 		if (!ret)
-- 
2.39.2




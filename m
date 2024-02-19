Delivery-date: Mon, 19 Feb 2024 18:27:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc7QW-00ExlR-0e
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 18:27:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc7QV-0007UA-6Q
	for lore@pengutronix.de; Mon, 19 Feb 2024 18:27:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=s46VBENm1+Cjq/wOs5ZXBjAtnzUgbUtI1ui8poiWPiQ=; b=MJqjQpn8u9zoKxzIGxWvtg9tpo
	4Mr8Aj/sfMLB+owwluO+7oNA3es1J+EImPLxWH1eiWamPuyhQZ0w6198GPbFmFXXU9jTiFu7hFLXl
	B7gtk77EskI4+Ft2qxDQKjWQ4KKvncs0xHNKtD9bPnySKQZzE51pkCq5J85IpmAKnsqqp38VkSErr
	SglogCRditHdAcOQkVB/8v/Mxc4XoEUY91cZuZZhfUvJqepANlDLj0DApogO4Li1emgYcBQYLMoZY
	4vi8LM4wOrhSlRQCQ2TSVt4PN3SGI8vAhtsBrNOzwoYDLa8AUDhkiFdCrM1LapJh5a84DiMEShWMX
	NGDh8jSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc7Q2-0000000BVjw-1jKz;
	Mon, 19 Feb 2024 17:27:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc7Py-0000000BVi4-24wr
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 17:27:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7Px-00076d-6x; Mon, 19 Feb 2024 18:27:01 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7Pw-001h0G-Qh; Mon, 19 Feb 2024 18:27:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7Pw-00FvgV-2N;
	Mon, 19 Feb 2024 18:27:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 18:26:59 +0100
Message-Id: <20240219172659.3796647-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_092702_719258_A3989AC1 
X-CRM114-Status: GOOD (  15.38  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] treewide: use dev_err_probe instead of comparisons against EPROBE_DEFER
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Drivers should not need to compare an error value against EPROBE_DEFER.
We have a number of drivers doing that though to decide whether to print
an error or not. This error message will be lost if the probe is
deferred, so use dev_err_probe to store the error in that case.

While at it, we shorten the error messages a bit. dev_err_probe will
already print the string 'error' before the error code string.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/led/led-gpio.c                         |  5 +----
 drivers/phy/phy-stm32-usbphyc.c                |  5 +----
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c  |  9 ++-------
 .../phy/rockchip/phy-rockchip-naneng-combphy.c | 10 ++--------
 drivers/power/reset/nvmem-reboot-mode.c        |  8 ++------
 drivers/soc/rockchip/io-domain.c               |  4 +---
 drivers/sound/pwm-beeper.c                     | 18 ++++--------------
 drivers/spi/gpio_spi.c                         |  9 +++------
 drivers/usb/musb/musb_core.c                   |  4 +---
 drivers/w1/masters/w1-gpio.c                   |  6 ++----
 10 files changed, 19 insertions(+), 59 deletions(-)

diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index 4b282c788679..c0d14256d3a1 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -214,10 +214,7 @@ static int led_gpio_of_probe(struct device *dev)
 
 		gpio = of_get_named_gpio_flags(child, "gpios", 0, &flags);
 		if (gpio < 0) {
-			if (gpio != -EPROBE_DEFER)
-				dev_err(dev, "failed to get gpio for %pOF: %d\n",
-					child, gpio);
-			ret = gpio;
+			ret = dev_err_probe(dev, gpio, "getting gpio for %pOF\n", child);
 			goto err;
 		}
 
diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
index 91f4e7f7e08d..6bac5e1e594a 100644
--- a/drivers/phy/phy-stm32-usbphyc.c
+++ b/drivers/phy/phy-stm32-usbphyc.c
@@ -693,10 +693,7 @@ static int stm32_usbphyc_probe(struct device *dev)
 
 		phy = phy_create(phydev, child, &stm32_usbphyc_phy_ops);
 		if (IS_ERR(phy)) {
-			ret = PTR_ERR(phy);
-			if (ret != -EPROBE_DEFER)
-				dev_err(dev, "failed to create phy%d: %d\n",
-					port, ret);
+			ret = dev_errp_probe(dev, phy, "creating phy%d\n", port);
 			goto clk_disable;
 		}
 
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 7349a92d567c..08b5eabf7b90 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -453,13 +453,8 @@ static int rockchip_usb2phy_probe(struct device *dev)
 		of_platform_device_dummy_drv(phydev);
 
 		phy = phy_create(phydev, child, &rockchip_usb2phy_ops);
-		if (IS_ERR(phy)) {
-			ret = PTR_ERR(phy);
-			if (ret != -EPROBE_DEFER)
-				dev_err(dev, "failed to create phy%d: %d\n",
-					port, ret);
-			return ret;
-		}
+		if (IS_ERR(phy))
+			return dev_errp_probe(dev, phy, "creating phy%d\n", port);
 
 		p = xzalloc(sizeof(*p));
 
diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 9e52beed1bbb..8a9f9cbeb75f 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -321,14 +321,8 @@ static int rockchip_combphy_parse_dt(struct device *dev,
 			    true);
 
 	priv->phy_rst = reset_control_get(dev, NULL);
-	if (IS_ERR(priv->phy_rst)) {
-		ret = PTR_ERR(priv->phy_rst);
-
-		if (ret != -EPROBE_DEFER)
-			dev_warn(dev, "failed to get phy reset\n");
-
-		return ret;
-	}
+	if (IS_ERR(priv->phy_rst))
+		dev_errp_probe(dev, priv->phy_rst, "getting phy reset\n");
 
 	return reset_control_assert(priv->phy_rst);
 }
diff --git a/drivers/power/reset/nvmem-reboot-mode.c b/drivers/power/reset/nvmem-reboot-mode.c
index b8dd1c1d46ce..1a9422800ef7 100644
--- a/drivers/power/reset/nvmem-reboot-mode.c
+++ b/drivers/power/reset/nvmem-reboot-mode.c
@@ -43,12 +43,8 @@ static int nvmem_reboot_mode_probe(struct device *dev)
 	int ret;
 
 	cell = nvmem_cell_get(dev, "reboot-mode");
-	if (IS_ERR(cell)) {
-		ret = PTR_ERR(cell);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to get the nvmem cell reboot-mode: %pe\n", cell);
-		return ret;
-	}
+	if (IS_ERR(cell))
+		return dev_errp_probe(dev, cell, "getting nvmem cell 'reboot-mode'\n");
 
 	nvmem_rbm = xzalloc(sizeof(*nvmem_rbm));
 
diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index d31d38b1daf7..9f60b6eb4c28 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -172,9 +172,7 @@ static int rockchip_iodomain_probe(struct device *dev)
 			/* If a supply wasn't specified, that's OK */
 			if (ret == -ENODEV)
 				continue;
-			else if (ret != -EPROBE_DEFER)
-				dev_err(dev, "couldn't get regulator %s\n",
-					supply_name);
+			dev_err_probe(dev, ret, "getting regulator\n");
 			goto out;
 		}
 
diff --git a/drivers/sound/pwm-beeper.c b/drivers/sound/pwm-beeper.c
index a3d2adb279af..21e57d4b070b 100644
--- a/drivers/sound/pwm-beeper.c
+++ b/drivers/sound/pwm-beeper.c
@@ -61,13 +61,8 @@ static int pwm_beeper_probe(struct device *dev)
 	dev->priv = beeper;
 
 	beeper->pwm = of_pwm_request(dev->of_node, NULL);
-	if (IS_ERR(beeper->pwm)) {
-		error = PTR_ERR(beeper->pwm);
-		if (error != -EPROBE_DEFER)
-			dev_err(dev, "Failed to request PWM device: %d\n",
-				error);
-		return error;
-	}
+	if (IS_ERR(beeper->pwm))
+		return dev_errp_probe(dev, beeper->pwm, "requesting PWM device\n");
 
 	/* Sync up PWM state and ensure it is off. */
 	pwm_init_state(beeper->pwm, &state);
@@ -80,13 +75,8 @@ static int pwm_beeper_probe(struct device *dev)
 	}
 
 	beeper->amplifier = regulator_get(dev, "amp");
-	if (IS_ERR(beeper->amplifier)) {
-		error = PTR_ERR(beeper->amplifier);
-		if (error != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get 'amp' regulator: %d\n",
-				error);
-		return error;
-	}
+	if (IS_ERR(beeper->amplifier))
+		return dev_errp_probe(dev, beeper->amplifier, "getting 'amp' regulator\n");
 
 	error = of_property_read_u32(dev->of_node, "beeper-hz",
 				     &bell_frequency);
diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
index f751ab307879..e5664df3feb7 100644
--- a/drivers/spi/gpio_spi.c
+++ b/drivers/spi/gpio_spi.c
@@ -136,12 +136,9 @@ static int gpio_spi_of_probe(struct device *dev)
 		return 0;
 
 	sck = of_get_named_gpio(np, "gpio-sck", 0);
-	if (sck == -EPROBE_DEFER)
-		return sck;
-	if (!gpio_is_valid(sck)) {
-		dev_err(dev, "missing mandatory SCK gpio\n");
-		return sck;
-	}
+	if (!gpio_is_valid(sck))
+		return dev_err_probe(dev, sck < 0 ? sck : -EINVAL,
+				     "missing mandatory SCK gpio\n");
 
 	pdata = xzalloc(sizeof(*pdata));
 	pdata->sck = sck;
diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index 76622b4d55bf..9c6c4e7bb4b1 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -1108,9 +1108,7 @@ musb_init_controller(struct musb *musb, struct musb_hdrc_platform_data *plat)
 	musb_platform_exit(musb);
 
 fail1:
-	if (status != -EPROBE_DEFER)
-		dev_err(musb->controller,
-			"musb_init_controller failed with status %d\n", status);
+	dev_err_probe(musb->controller, status, "musb_init_controller failed\n");
 
 	musb_free(musb);
 
diff --git a/drivers/w1/masters/w1-gpio.c b/drivers/w1/masters/w1-gpio.c
index 10841e39dd13..20f79ae8dfe7 100644
--- a/drivers/w1/masters/w1-gpio.c
+++ b/drivers/w1/masters/w1-gpio.c
@@ -55,10 +55,8 @@ static int w1_gpio_probe_dt(struct device *dev)
 
 	gpio = of_get_gpio(np, 0);
 	if (!gpio_is_valid(gpio)) {
-		if (gpio != -EPROBE_DEFER)
-			dev_err(dev,
-				"Failed to parse gpio property for data pin (%d)\n",
-				gpio);
+		gpio = dev_err_probe(dev, gpio < 0 ? gpio : -EINVAL,
+				     "parsing gpio property for data pin\n");
 
 		goto free_pdata;
 	}
-- 
2.39.2




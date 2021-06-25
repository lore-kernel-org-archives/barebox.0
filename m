Delivery-date: Fri, 25 Jun 2021 16:06:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwmTo-0006Wr-7T
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 16:06:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwmTm-0006QZ-R1
	for lore@pengutronix.de; Fri, 25 Jun 2021 16:06:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nN8USCOuxBM5AMT5yWINV4Q6W0JgJYcSU97ryf73D9g=; b=xPy18QKBkOaRib
	TitRhCuaAbwvkhc+EgJWp0mWhMPrqUbCwC85ZJKFP25qhCchaLiUCMAgrefUlmxzHRhd+S7HjLAlX
	Lt6dEgdDrwWbB5yVNGnO6pTbhnUNEzLtUT9nKOLg911qV4oQfs/j9QV32DL57nO2jnjdwBzm1BaoA
	Ke39katqpf1BSViv6OGdxFZxxP2lgSleFgGN9ywSFyasZgrQ913/Vg7twYbOzTfVIAhyfxV/mVqAA
	RpZPZctVxwsJYv7ExiIV46oH3c92dqThije/TdToOCALjdUQ3Zrvozm/vjjI3KFVw7Qob/GIHWPr/
	yQu4ghLI3neFMZgzmoLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwmSZ-001pCD-Jx; Fri, 25 Jun 2021 14:05:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwmSU-001pBZ-OR
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 14:05:28 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwmST-00069f-IY; Fri, 25 Jun 2021 16:05:25 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwmST-0000Xg-9M; Fri, 25 Jun 2021 16:05:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 16:05:24 +0200
Message-Id: <20210625140524.1584-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_070526_838289_1567CA36 
X-CRM114-Status: GOOD (  18.55  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pinctrl: rockchip: Register gpios as device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The gpio device nodes are subnodes of the pinctrl device node, so we can
register a regular driver for it. With this deep-probe support finds a
driver for the gpio device nodes and of_device_ensure_probed() can
correctly work on the gpio nodes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl-rockchip.c | 104 +++++++++++++++--------------
 1 file changed, 54 insertions(+), 50 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index be44067c8f..9b832c97d6 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -332,63 +332,52 @@ static struct gpio_ops rockchip_gpio_ops = {
 	.get_direction = rockchip_gpiov2_get_direction,
 };
 
-static int rockchip_gpiolib_register(struct device_d *dev,
-				     struct rockchip_pinctrl *info)
+static int rockchip_gpio_probe(struct device_d *dev)
 {
+	struct rockchip_pinctrl *info = dev->parent->priv;
 	struct rockchip_pin_ctrl *ctrl = info->ctrl;
-	struct rockchip_pin_bank *bank = ctrl->pin_banks;
+	struct rockchip_pin_bank *bank;
+	struct gpio_chip *gpio;
 	void __iomem *reg_base;
-	int ret;
-	int i;
+	int ret, bankno;
 
-	for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
-		struct gpio_chip *gpio = &bank->bgpio_chip.gc;
+	bankno = of_alias_get_id(dev->device_node, "gpio");
+	bank = &ctrl->pin_banks[bankno];
+	gpio = &bank->bgpio_chip.gc;
 
-		if (!bank->valid) {
-			dev_warn(dev, "bank %s is not valid\n", bank->name);
-			continue;
-		}
+	if (!bank->valid)
+		dev_warn(dev, "bank %s is not valid\n", bank->name);
 
-		reg_base = bank->reg_base;
-
-		if (ctrl->type == RK3568) {
-			gpio->ngpio = 32;
-			gpio->dev = dev;
-			gpio->ops = &rockchip_gpio_ops;
-			gpio->base = of_alias_get_id(bank->of_node, "gpio");
-			if (gpio->base < 0)
-				return -EINVAL;
-			gpio->base *= 32;
-		} else {
-			ret = bgpio_init(&bank->bgpio_chip, dev, 4,
-					 reg_base + RK_GPIO_EXT_PORT,
-					 reg_base + RK_GPIO_SWPORT_DR, NULL,
-					 reg_base + RK_GPIO_SWPORT_DDR, NULL, 0);
-			if (ret)
-				goto fail;
-		}
+	reg_base = bank->reg_base;
 
-		bank->bgpio_chip.gc.dev = of_find_device_by_node(bank->of_node);
+	if (ctrl->type == RK3568) {
+		gpio->ngpio = 32;
+		gpio->dev = dev;
+		gpio->ops = &rockchip_gpio_ops;
+		gpio->base = bankno;
+		if (gpio->base < 0)
+			return -EINVAL;
+		gpio->base *= 32;
+	} else {
+		ret = bgpio_init(&bank->bgpio_chip, dev, 4,
+				 reg_base + RK_GPIO_EXT_PORT,
+				 reg_base + RK_GPIO_SWPORT_DR, NULL,
+				 reg_base + RK_GPIO_SWPORT_DDR, NULL, 0);
+		if (ret)
+			return ret;
+	}
 
-		bank->bgpio_chip.gc.ngpio = bank->nr_pins;
-		ret = gpiochip_add(&bank->bgpio_chip.gc);
-		if (ret) {
-			dev_err(dev, "failed to register gpio_chip %s, error code: %d\n",
-				bank->name, ret);
-			goto fail;
-		}
+	bank->bgpio_chip.gc.dev = dev;
 
+	bank->bgpio_chip.gc.ngpio = bank->nr_pins;
+	ret = gpiochip_add(&bank->bgpio_chip.gc);
+	if (ret) {
+		dev_err(dev, "failed to register gpio_chip %s, error code: %d\n",
+			bank->name, ret);
+		return ret;
 	}
 
 	return 0;
-fail:
-	for (--i, --bank; i >= 0; --i, --bank) {
-		if (!bank->valid)
-			continue;
-
-		gpiochip_remove(&bank->bgpio_chip.gc);
-	}
-	return ret;
 }
 
 static struct rockchip_pinctrl *to_rockchip_pinctrl(struct pinctrl_device *pdev)
@@ -1010,8 +999,6 @@ static int rockchip_pinctrl_probe(struct device_d *dev)
 	struct rockchip_pin_ctrl *ctrl;
 	int ret;
 
-	of_platform_populate(dev->device_node, NULL, NULL);
-
 	info = xzalloc(sizeof(struct rockchip_pinctrl));
 
 	ctrl = rockchip_pinctrl_get_soc_data(info, dev);
@@ -1038,9 +1025,9 @@ static int rockchip_pinctrl_probe(struct device_d *dev)
 	info->pctl_dev.dev = dev;
 	info->pctl_dev.ops = &rockchip_pinctrl_ops;
 
-	ret = rockchip_gpiolib_register(dev, info);
-	if (ret)
-		return ret;
+	dev->priv = info;
+
+	of_platform_populate(dev->device_node, NULL, dev);
 
 	if (!IS_ENABLED(CONFIG_PINCTRL))
 		return 0;
@@ -1282,3 +1269,20 @@ static struct driver_d rockchip_pinctrl_driver = {
 };
 
 core_platform_driver(rockchip_pinctrl_driver);
+
+static struct of_device_id rockchip_gpio_dt_match[] = {
+	{
+		.compatible = "rockchip,gpio-bank",
+		.data = &rk2928_pin_ctrl,
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d rockchip_gpio_driver = {
+	.name = "rockchip-gpio",
+	.probe = rockchip_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(rockchip_gpio_dt_match),
+};
+
+core_platform_driver(rockchip_gpio_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


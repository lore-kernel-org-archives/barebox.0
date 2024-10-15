Delivery-date: Tue, 15 Oct 2024 13:21:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcJ-004dkk-0q
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 13:21:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcI-0000Jd-Bq
	for lore@pengutronix.de; Tue, 15 Oct 2024 13:21:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dxvn/U2lW1OOQl1uwQ8AmNCbiRt7zVz6jjdNbQ7azzU=; b=TXpHHusAceVQ4pQ3PSJZMRs3HQ
	PfCO0fIkyTven/hSBnFKYr4cyF7jnebyqHLU88o/YC2augh1rP1lBJcsTNPEicu+XOGAkn1MGkh+u
	k/49Q/sYs3LCjigAPJQX0utoWD8DJyDH/vw4J/DLt5y/n3mlIylzwZopgnBcVqHCbJbOb0HyuXG/y
	jkSYpa0o9Fu5CEP6iBerw1tSdJbHjv4Z3fvN3R+3PDsmaqyTtN/iKTYO37rH7L1Wm0G2fmdqs0IMf
	PeMWaTtiMaItl+tXcjXCYD1ygFIGWfRTqfu4NqTNZTr5IcV214smrA1wIp0xTZuFq25z2QSRoK3GK
	djmufpAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fbc-00000007zk8-1OYj;
	Tue, 15 Oct 2024 11:20:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fSK-00000007yGU-3GNu
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 11:11:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-0007uh-KI; Tue, 15 Oct 2024 13:11:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-00219D-0v; Tue, 15 Oct 2024 13:11:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSA-000ubB-35;
	Tue, 15 Oct 2024 13:11:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2024 13:11:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241015-rockchip-spi-rk808-v1-3-e276b4b59603@pengutronix.de>
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
In-Reply-To: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1728990662; l=5313;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=kh2S0sgOLOokA0ODvjVswKrJ27YUv0Q/6wQaDKNQXHY=;
 b=kb+cHNILH/A2ShI639saoLc5lrHu8fnTNBbp0F7oy6cQh/W3hw47CzYVf85jfTHZC1Krqjg6b
 +B2MZ2iH14PDI8scZs4FxcHIkkzouX2EnBUfCT2lTMXvEnaueqn/6V6
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_041112_858434_72478DE1 
X-CRM114-Status: GOOD (  16.78  )
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
Subject: [PATCH 3/7] mfd: rk808: factor out common probe function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The RK806 comes with SPI support. Factor out a common probe function to
be used with both I2C and SPI.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/rk808.c | 114 ++++++++++++++++++++++++++++++++--------------------
 1 file changed, 70 insertions(+), 44 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 565215f26c..788e463c20 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -247,17 +247,14 @@ static void rk808_poweroff(struct poweroff_handler *handler)
 	hang();
 }
 
-static int rk808_probe(struct device *dev)
+static int rk8xx_probe(struct device *dev, int variant, struct regmap *regmap)
 {
-	struct i2c_client *client = to_i2c_client(dev);
 	struct device_node *np = dev->of_node;
 	struct rk808 *rk808;
 	const struct rk808_reg_data *pre_init_reg;
 	const struct mfd_cell *cells;
 	int nr_pre_init_regs;
 	int nr_cells;
-	int msb, lsb;
-	unsigned char pmic_id_msb, pmic_id_lsb;
 	int ret;
 	int i;
 
@@ -266,51 +263,24 @@ static int rk808_probe(struct device *dev)
 		return -ENOMEM;
 
 	dev->priv = rk808;
-
-	if (of_device_is_compatible(np, "rockchip,rk817") ||
-	    of_device_is_compatible(np, "rockchip,rk809")) {
-		pmic_id_msb = RK817_ID_MSB;
-		pmic_id_lsb = RK817_ID_LSB;
-	} else {
-		pmic_id_msb = RK808_ID_MSB;
-		pmic_id_lsb = RK808_ID_LSB;
-	}
-
-	/* Read chip variant */
-	msb = i2c_smbus_read_byte_data(client, pmic_id_msb);
-	if (msb < 0) {
-		dev_err(dev, "failed to read the chip id at 0x%x\n",
-			RK808_ID_MSB);
-		return msb;
-	}
-
-	lsb = i2c_smbus_read_byte_data(client, pmic_id_lsb);
-	if (lsb < 0) {
-		dev_err(dev, "failed to read the chip id at 0x%x\n",
-			RK808_ID_LSB);
-		return lsb;
-	}
-
-	rk808->variant = ((msb << 8) | lsb) & RK8XX_ID_MSK;
-	dev_info(dev, "chip id: 0x%x\n", (unsigned int)rk808->variant);
+	rk808->regmap = regmap;
+	rk808->dev = dev;
+	rk808->variant = variant;
 
 	switch (rk808->variant) {
 	case RK805_ID:
-		rk808->regmap_cfg = &rk805_regmap_config;
 		pre_init_reg = rk805_pre_init_reg;
 		nr_pre_init_regs = ARRAY_SIZE(rk805_pre_init_reg);
 		cells = rk805s;
 		nr_cells = ARRAY_SIZE(rk805s);
 		break;
 	case RK808_ID:
-		rk808->regmap_cfg = &rk808_regmap_config;
 		pre_init_reg = rk808_pre_init_reg;
 		nr_pre_init_regs = ARRAY_SIZE(rk808_pre_init_reg);
 		cells = rk808s;
 		nr_cells = ARRAY_SIZE(rk808s);
 		break;
 	case RK818_ID:
-		rk808->regmap_cfg = &rk818_regmap_config;
 		pre_init_reg = rk818_pre_init_reg;
 		nr_pre_init_regs = ARRAY_SIZE(rk818_pre_init_reg);
 		cells = rk818s;
@@ -318,7 +288,6 @@ static int rk808_probe(struct device *dev)
 		break;
 	case RK809_ID:
 	case RK817_ID:
-		rk808->regmap_cfg = &rk817_regmap_config;
 		pre_init_reg = rk817_pre_init_reg;
 		nr_pre_init_regs = ARRAY_SIZE(rk817_pre_init_reg);
 		cells = rk817s;
@@ -330,15 +299,6 @@ static int rk808_probe(struct device *dev)
 		return -EINVAL;
 	}
 
-	rk808->dev = &client->dev;
-	i2c_set_clientdata(client, rk808);
-
-	rk808->regmap = regmap_init_i2c_smbus(client, rk808->regmap_cfg);
-	if (IS_ERR(rk808->regmap)) {
-		dev_err(dev, "regmap initialization failed\n");
-		return PTR_ERR(rk808->regmap);
-	}
-
 	ret = regmap_register_cdev(rk808->regmap, NULL);
 	if (ret)
 		return ret;
@@ -370,9 +330,75 @@ static int rk808_probe(struct device *dev)
 		rk808->poweroff.priority += 100;
 
 	poweroff_handler_register(&rk808->poweroff);
+
 	return 0;
 }
 
+static int rk808_probe(struct device *dev)
+{
+	struct device_node *np = dev->of_node;
+	struct i2c_client *client = to_i2c_client(dev);
+	int msb, lsb;
+	unsigned char pmic_id_msb, pmic_id_lsb;
+	struct regmap *regmap;
+	int variant;
+	const struct regmap_config *regmap_cfg;
+
+	if (of_device_is_compatible(np, "rockchip,rk817") ||
+	    of_device_is_compatible(np, "rockchip,rk809")) {
+		pmic_id_msb = RK817_ID_MSB;
+		pmic_id_lsb = RK817_ID_LSB;
+	} else {
+		pmic_id_msb = RK808_ID_MSB;
+		pmic_id_lsb = RK808_ID_LSB;
+	}
+
+	/* Read chip variant */
+	msb = i2c_smbus_read_byte_data(client, pmic_id_msb);
+	if (msb < 0) {
+		dev_err(dev, "failed to read the chip id at 0x%x\n",
+			RK808_ID_MSB);
+		return msb;
+	}
+
+	lsb = i2c_smbus_read_byte_data(client, pmic_id_lsb);
+	if (lsb < 0) {
+		dev_err(dev, "failed to read the chip id at 0x%x\n",
+			RK808_ID_LSB);
+		return lsb;
+	}
+
+	variant = ((msb << 8) | lsb) & RK8XX_ID_MSK;
+	dev_info(dev, "chip id: 0x%x\n", (unsigned int)variant);
+
+	switch (variant) {
+	case RK805_ID:
+		regmap_cfg = &rk805_regmap_config;
+		break;
+	case RK808_ID:
+		regmap_cfg = &rk808_regmap_config;
+		break;
+	case RK818_ID:
+		regmap_cfg = &rk818_regmap_config;
+		break;
+	case RK809_ID:
+	case RK817_ID:
+		regmap_cfg = &rk817_regmap_config;
+		break;
+	default:
+		dev_err(dev, "Unsupported RK8XX ID %u\n", variant);
+		return -EINVAL;
+	}
+
+	regmap = regmap_init_i2c_smbus(client, regmap_cfg);
+	if (IS_ERR(regmap)) {
+		dev_err(dev, "regmap initialization failed\n");
+		return PTR_ERR(regmap);
+	}
+
+	return rk8xx_probe(dev, variant, regmap);
+}
+
 static const struct of_device_id rk808_of_match[] = {
 	{ .compatible = "rockchip,rk805" },
 	{ .compatible = "rockchip,rk808" },

-- 
2.39.5




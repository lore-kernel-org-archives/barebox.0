Delivery-date: Mon, 15 Apr 2024 07:36:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwF1A-001ZPb-2p
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:36:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwF19-0006aV-Og
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:36:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=teT8DuTY7GY3mshkfC6FijqsdCNzEeNXxaf202l3K8I=; b=OAEMSjxNp+JFxXam7LxAwMeLOD
	WZveUQkmA4FdVu/xRInvPBMcsvn45MzWaSlCGHs9bXX3IkwYIM/kPqCimVkpwnb6RO0fhkvgAfAG5
	ifH+WAEKYonh7vth1Aq32g9wdLksJIwbE1SXeOKn0dPQ4UYPmMTydF0V8Y9+AqsKRfaY25xKQ/AV3
	ecz8To473yluryXt5VXmtjaJD0iQVGYBXAwG+3IwXQy1Afi9i9zkkq8POWC6HuqBv1cmRNyrkA3WY
	BdRIyJKQyASL12VKeni5izCx7k/f9eF7GZ3hOZ13y9LQqVIldOWQhB/xRgmFYfOR3FgVf/QCg1pmr
	f7x9sgXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwF0i-000000071OT-3b7d;
	Mon, 15 Apr 2024 05:36:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwF0d-000000071LO-3WJY
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:36:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-0005qV-MQ; Mon, 15 Apr 2024 07:36:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-00CMnD-98; Mon, 15 Apr 2024 07:36:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-001YQH-0d;
	Mon, 15 Apr 2024 07:36:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:35:55 +0200
Message-Id: <20240415053600.370622-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240415053600.370622-1-a.fatoum@pengutronix.de>
References: <20240415053600.370622-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_223604_015978_4DB8A6DB 
X-CRM114-Status: GOOD (  14.98  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] PWM: core: add struct pwm_chip::dev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For compatibility with Linux, let's add a dev member into struct pwm_chip
instead of passing it as argument to pwmchip_add

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/core.c      | 6 +++---
 drivers/pwm/pwm-atmel.c | 3 ++-
 drivers/pwm/pwm-imx.c   | 3 ++-
 drivers/pwm/pwm-mxs.c   | 3 ++-
 drivers/pwm/pwm-stm32.c | 3 ++-
 drivers/pwm/pxa_pwm.c   | 3 ++-
 include/pwm.h           | 4 +++-
 7 files changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index 976357e6062f..ab7e55b00079 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -91,7 +91,7 @@ static int set_enable(struct param_d *p, void *priv)
  * register a new pwm. pwm->devname must be initialized, usually
  * from dev_name(dev) from the hardware driver.
  */
-int pwmchip_add(struct pwm_chip *chip, struct device *dev)
+int pwmchip_add(struct pwm_chip *chip)
 {
 	struct pwm_device *pwm;
 	struct param_d *p;
@@ -105,11 +105,11 @@ int pwmchip_add(struct pwm_chip *chip, struct device *dev)
 
 	pwm = xzalloc(sizeof(*pwm));
 	pwm->chip = chip;
-	pwm->hwdev = dev;
+	pwm->hwdev = chip->dev;
 
 	dev_set_name(&pwm->dev, chip->devname);
 	pwm->dev.id = DEVICE_ID_SINGLE;
-	pwm->dev.parent = dev;
+	pwm->dev.parent = chip->dev;
 
 	ret = register_device(&pwm->dev);
 	if (ret)
diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
index d5e70600ee59..52b5926097b5 100644
--- a/drivers/pwm/pwm-atmel.c
+++ b/drivers/pwm/pwm-atmel.c
@@ -453,7 +453,8 @@ static int atmel_pwm_probe(struct device *dev)
 
 		chip->ops = &atmel_pwm_ops;
 		chip->id = i;
-		ret = pwmchip_add(chip, dev);
+		chip->dev = dev;
+		ret = pwmchip_add(chip);
 		if (ret) {
 			dev_err(dev, "failed to add pwm chip %d\n", ret);
 			return ret;
diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index c9db4aef3443..0b79b0831a5c 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -267,6 +267,7 @@ static int imx_pwm_probe(struct device *dev)
 		return PTR_ERR(iores);
 	imx->mmio_base = IOMEM(iores->start);
 
+	imx->chip.dev = dev;
 	imx->chip.ops = &imx_pwm_ops;
 	if (dev->of_node) {
 		imx->chip.devname = of_alias_get(dev->of_node);
@@ -280,7 +281,7 @@ static int imx_pwm_probe(struct device *dev)
 	imx->config = data->config;
 	imx->set_enable = data->set_enable;
 
-	return pwmchip_add(&imx->chip, dev);;
+	return pwmchip_add(&imx->chip);
 }
 
 static struct driver imx_pwm_driver = {
diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index 6b89ac192ad9..e94fcf538488 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -130,9 +130,10 @@ static int mxs_pwm_probe(struct device *dev)
 		mxspwm->chip.ops = &mxs_pwm_ops;
 		mxspwm->chip.devname = basprintf("pwm%d", i);
 		mxspwm->chip.id = i;
+		mxspwm->chip.dev = dev;
 		mxspwm->mxs = mxs;
 
-		ret = pwmchip_add(&mxspwm->chip, dev);
+		ret = pwmchip_add(&mxspwm->chip);
 		if (ret < 0) {
 			dev_err(dev, "failed to add pwm chip %d\n", ret);
 			return ret;
diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
index 5c2029ab6ad6..7c7a8e2ce68e 100644
--- a/drivers/pwm/pwm-stm32.c
+++ b/drivers/pwm/pwm-stm32.c
@@ -377,8 +377,9 @@ static int stm32_pwm_probe(struct device *dev)
 
 		chip->ops = &stm32pwm_ops;
 		chip->id = i;
+		chip->dev = dev;
 
-		ret = pwmchip_add(chip, dev);
+		ret = pwmchip_add(chip);
 		if (ret < 0) {
 			dev_err(dev, "failed to add pwm chip %d\n", ret);
 			return ret;
diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
index 0ed69d999f02..69ff7dfb7736 100644
--- a/drivers/pwm/pxa_pwm.c
+++ b/drivers/pwm/pxa_pwm.c
@@ -141,9 +141,10 @@ static int pxa_pwm_probe(struct device *dev)
 		return PTR_ERR(iores);
 	chip->iobase = IOMEM(iores->start);
 	chip->id = dev->id;
+	chip->chip.dev = dev;
 	dev->priv = chip;
 
-	return pwmchip_add(&chip->chip, dev);
+	return pwmchip_add(&chip->chip);
 }
 
 static struct driver pxa_pwm_driver = {
diff --git a/include/pwm.h b/include/pwm.h
index 4d403fe1746c..5157fee7d43d 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -128,12 +128,14 @@ struct pwm_ops {
 
 /**
  * struct pwm_chip - abstract a PWM
+ * @dev: device providing the PWMs
  * @id: The id of this pwm
  * @devname: unique identifier for this pwm
  * @ops: The callbacks for this PWM
  * @state: current state of the PWM
  */
 struct pwm_chip {
+	struct device		*dev;
 	int			id;
 	const char		*devname;
 	const struct pwm_ops	*ops;
@@ -141,7 +143,7 @@ struct pwm_chip {
 	struct pwm_state	state;
 };
 
-int pwmchip_add(struct pwm_chip *chip, struct device *dev);
+int pwmchip_add(struct pwm_chip *chip);
 int pwmchip_remove(struct pwm_chip *chip);
 
 #endif /* __PWM_H */
-- 
2.39.2




Delivery-date: Fri, 08 Jul 2022 07:55:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9gxB-00AA0T-0z
	for lore@lore.pengutronix.de; Fri, 08 Jul 2022 07:55:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9gxC-0000z1-VN
	for lore@pengutronix.de; Fri, 08 Jul 2022 07:55:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1AL2K+o0iJP1sE/N+Y6E5KGniDo96QOAA6rCvkXullg=; b=4WNafVOXhenIWl/MZimPhkSRix
	oG+IFPOxHvVGuKtT4D91TymGlIe1HWcKSUIjV+OJET9JW9O5jsyWgjmKlIAlIjrRNBTkQCDlfem7x
	BO2eOG+2ZOLmmQMlmVAZPxfVTvJ21kEsgkbfiQqSiSkfEmuKPf27iJHU9E26qIBxpRRW+D3/13qE6
	7962CtJhzbudmGFHWD+GlXhev82UCjFOcC8kNJxrt63vOjyHgdoisFwjGgA4cFTAI9VxOn2AtxMhi
	ZloS68cLYbPXhxfrJ+DaKteJ9kGKOWuqnJbg61GdVbXhzY+hgquc1Hm1Doib2BEyckiTee9XdRR8e
	+xk04p8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gvd-001rxn-OK; Fri, 08 Jul 2022 05:53:25 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gvN-001rtI-8i
	for barebox@lists.infradead.org; Fri, 08 Jul 2022 05:53:12 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id B19531C000B;
	Fri,  8 Jul 2022 05:53:02 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  8 Jul 2022 07:52:49 +0200
Message-Id: <20220708055250.1175444-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220708055250.1175444-1-ahmad@a3f.at>
References: <20220708055250.1175444-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_225309_648261_B610E256 
X-CRM114-Status: GOOD (  12.02  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] pinctrl: stm32: keep GPIO bank clocks enabled throughout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Mirror the Linux change of always keeping the clocks running. For
barebox. This simplifies the code and improves bitbanging throughput.

Origin: https://lore.kernel.org/all/20220422143608.226580-1-fabien.dessenne@foss.st.com/
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/pinctrl/pinctrl-stm32.c | 42 +++++++--------------------------
 1 file changed, 9 insertions(+), 33 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index cee10636cef9..fc0cc78f430d 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -24,7 +24,6 @@
 struct stm32_gpio_bank {
 	void __iomem *base;
 	struct gpio_chip chip;
-	struct clk *clk;
 	const char *name;
 };
 
@@ -154,8 +153,6 @@ static int __stm32_pinctrl_set_state(struct device_d *dev, struct device_node *p
 			"fn %u, mode %u, alt %u\n",
 			bank->name, offset, func, mode, alt);
 
-		clk_enable(bank->clk);
-
 		__stm32_pmx_set_mode(bank->base, offset, mode, alt);
 
 		if (adjust_slew_rate)
@@ -173,8 +170,6 @@ static int __stm32_pinctrl_set_state(struct device_d *dev, struct device_node *p
 			__stm32_pmx_gpio_output(bank->base, offset, 0);
 		else if (dir == PIN_OUTPUT_HIGH)
 			__stm32_pmx_gpio_output(bank->base, offset, 1);
-
-		clk_disable(bank->clk);
 	}
 
 	return 0;
@@ -219,8 +214,6 @@ static int stm32_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
 	int ret;
 	u32 mode, alt;
 
-	clk_enable(bank->clk);
-
 	__stm32_pmx_get_mode(bank->base, stm32_gpio_pin(gpio, NULL), &mode, &alt);
 	if ((alt == 0) && (mode == 0))
 		ret = 1;
@@ -229,8 +222,6 @@ static int stm32_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
 	else
 		ret = -EINVAL;
 
-	clk_disable(bank->clk);
-
 	return ret;
 }
 
@@ -238,37 +229,22 @@ static void stm32_gpio_set(struct gpio_chip *chip, unsigned gpio, int value)
 {
 	struct stm32_gpio_bank *bank = to_stm32_gpio_bank(chip);
 
-	clk_enable(bank->clk);
-
 	__stm32_pmx_gpio_set(bank->base, stm32_gpio_pin(gpio, NULL), value);
-
-	clk_disable(bank->clk);
 }
 
 static int stm32_gpio_get(struct gpio_chip *chip, unsigned gpio)
 {
 	struct stm32_gpio_bank *bank = to_stm32_gpio_bank(chip);
-	int ret;
-
-	clk_enable(bank->clk);
-
-	ret = __stm32_pmx_gpio_get(bank->base, stm32_gpio_pin(gpio, NULL));
 
-	clk_disable(bank->clk);
-
-	return ret;
+	return __stm32_pmx_gpio_get(bank->base, stm32_gpio_pin(gpio, NULL));
 }
 
 static int stm32_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
 {
 	struct stm32_gpio_bank *bank = to_stm32_gpio_bank(chip);
 
-	clk_enable(bank->clk);
-
 	__stm32_pmx_gpio_input(bank->base, stm32_gpio_pin(gpio, NULL));
 
-	clk_disable(bank->clk);
-
 	return 0;
 }
 
@@ -277,12 +253,8 @@ static int stm32_gpio_direction_output(struct gpio_chip *chip,
 {
 	struct stm32_gpio_bank *bank = to_stm32_gpio_bank(chip);
 
-	clk_enable(bank->clk);
-
 	__stm32_pmx_gpio_output(bank->base, stm32_gpio_pin(gpio, NULL), value);
 
-	clk_disable(bank->clk);
-
 	return 0;
 }
 
@@ -302,6 +274,7 @@ static int stm32_gpiochip_add(struct stm32_gpio_bank *bank,
 	struct resource *iores;
 	enum { PINCTRL_PHANDLE, GPIOCTRL_OFFSET, PINCTRL_OFFSET, PINCOUNT, GPIO_RANGE_NCELLS };
 	const __be32 *gpio_ranges;
+	struct clk *clk;
 	u32 ngpios;
 	int ret, size;
 
@@ -350,12 +323,15 @@ static int stm32_gpiochip_add(struct stm32_gpio_bank *bank,
 	bank->chip.base = be32_to_cpu(gpio_ranges[PINCTRL_OFFSET]);
 	bank->chip.ops  = &stm32_gpio_ops;
 	bank->chip.dev  = dev;
-	bank->clk = clk_get(dev, NULL);
-	if (IS_ERR(bank->clk)) {
-		dev_err(dev, "failed to get clk (%ld)\n", PTR_ERR(bank->clk));
-		return PTR_ERR(bank->clk);
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk)) {
+		dev_err(dev, "failed to get clk (%ld)\n", PTR_ERR(clk));
+		return PTR_ERR(clk);
 	}
 
+	clk_enable(clk);
+
 	return gpiochip_add(&bank->chip);
 }
 
-- 
2.34.1




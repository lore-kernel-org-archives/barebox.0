Delivery-date: Thu, 03 Aug 2023 12:51:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvU-004wMk-H8
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:51:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvS-0001m0-Cy
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:51:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T0R1AvR7MYZZ41NNzUlyncbAt6lSNRha3mVhvNG3+TE=; b=Ea/F1hXL5N8HAKYOcmx4j1IpFX
	lnJ+u30gObF9iD59Eaikr0dFuAUDMtGabh7Ut4zJNP6czKcQxXqWLudjICTgjTSGggFcF6oLOVvsn
	+a0AWasTwuywbnhLVcMlX+twkhbbfVbSuOYoYZnniJ3R+8Q1suNk5HEHodrvvYj66WqSXIT/OtCNL
	6dsekMpOiusnxNW5ombT7RA5qdTU14ehrQE3Q5Y1rvmN2muvsdYSgfIOT4V3QH+/875qShg4DgyCR
	+SYXDqpYq4F4TCKzs0fLNZq3NVa7dxOkgxiEBd0JddCi/j0P5UB2/Q4mMW1CMmW+byAmylytS4S7O
	UqLMgD5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuI-007UdI-2P;
	Thu, 03 Aug 2023 10:50:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuB-007UWZ-1Z
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu9-0000u1-TW; Thu, 03 Aug 2023 12:50:05 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu9-000ouq-2g; Thu, 03 Aug 2023 12:50:05 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAyt-7g; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:43 +0200
Message-Id: <20230803105003.4088205-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035007_532944_5DF36313 
X-CRM114-Status: GOOD (  18.15  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/22] gpio: davinci: Redesign driver to accommodate ngpios in one gpio chip
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The davinci GPIO devices have up to 144 GPIOs per chip. Current driver
creates one chip for every 32 GPIOs in a controller. With this
translation of DT GPIO handles into GPIO chip/numbers does not work
correctly. This patch fixes that by registering all GPIOs of a
controller in a single GPIO chip.

Based on Linux commit:

commit b5cf3fd827d2e11355c126b44ea625650ebf4d39
Author: Keerthy <j-keerthy@ti.com>
Date:   Fri Jan 13 09:50:12 2017 +0530

    gpio: davinci: Redesign driver to accommodate ngpios in one gpio chip

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpio-davinci.c | 68 ++++++++++++++++---------------------
 1 file changed, 29 insertions(+), 39 deletions(-)

diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
index 6a839fb5cd..841a06e4a0 100644
--- a/drivers/gpio/gpio-davinci.c
+++ b/drivers/gpio/gpio-davinci.c
@@ -30,40 +30,42 @@ struct davinci_gpio_controller {
 	struct gpio_chip	chip;
 	/* Serialize access to GPIO registers */
 	void __iomem		*regs;
-	void __iomem		*set_data;
-	void __iomem		*clr_data;
-	void __iomem		*in_data;
 };
 
 #define chip2controller(chip)	\
 	container_of(chip, struct davinci_gpio_controller, chip)
 
-static struct davinci_gpio_regs __iomem *gpio2regs(void __iomem *gpio_base,
-							unsigned gpio)
+static struct davinci_gpio_regs __iomem *gpio2regs(struct davinci_gpio_controller *d,
+						   unsigned gpio)
 {
 	void __iomem *ptr;
 
 	if (gpio < 32 * 1)
-		ptr = gpio_base + 0x10;
+		ptr = d->regs + 0x10;
 	else if (gpio < 32 * 2)
-		ptr = gpio_base + 0x38;
+		ptr = d->regs + 0x38;
 	else if (gpio < 32 * 3)
-		ptr = gpio_base + 0x60;
+		ptr = d->regs + 0x60;
 	else if (gpio < 32 * 4)
-		ptr = gpio_base + 0x88;
+		ptr = d->regs + 0x88;
 	else if (gpio < 32 * 5)
-		ptr = gpio_base + 0xb0;
+		ptr = d->regs + 0xb0;
 	else
 		ptr = NULL;
 	return ptr;
 }
 
+static inline u32 __gpio_mask(unsigned gpio)
+{
+	return 1 << (gpio % 32);
+}
+
 static int davinci_get_direction(struct gpio_chip *chip, unsigned offset)
 {
 	struct davinci_gpio_controller *d = chip2controller(chip);
-	struct davinci_gpio_regs __iomem *g = d->regs;
+	struct davinci_gpio_regs __iomem *g = gpio2regs(d, offset);
 
-	return ((readl_relaxed(&g->dir)) & (1 << offset)) ?
+	return ((readl_relaxed(&g->dir)) & __gpio_mask(offset)) ?
 		GPIOF_DIR_IN : GPIOF_DIR_OUT;
 }
 
@@ -71,9 +73,9 @@ static inline int __davinci_direction(struct gpio_chip *chip,
 			unsigned offset, bool out, int value)
 {
 	struct davinci_gpio_controller *d = chip2controller(chip);
-	struct davinci_gpio_regs __iomem *g = d->regs;
+	struct davinci_gpio_regs __iomem *g = gpio2regs(d, offset);
 	u32 temp;
-	u32 mask = 1 << offset;
+	u32 mask = __gpio_mask(offset);
 
 	temp = readl_relaxed(&g->dir);
 	if (out) {
@@ -108,9 +110,9 @@ davinci_direction_out(struct gpio_chip *chip, unsigned offset, int value)
 static int davinci_gpio_get(struct gpio_chip *chip, unsigned offset)
 {
 	struct davinci_gpio_controller *d = chip2controller(chip);
-	struct davinci_gpio_regs __iomem *g = d->regs;
+	struct davinci_gpio_regs __iomem *g = gpio2regs(d, offset);
 
-	return ((1 << offset) & readl_relaxed(&g->in_data)) ? 1 : 0;
+	return (__gpio_mask(offset) & readl_relaxed(&g->in_data)) ? 1 : 0;
 }
 
 /*
@@ -120,9 +122,9 @@ static void
 davinci_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
 {
 	struct davinci_gpio_controller *d = chip2controller(chip);
-	struct davinci_gpio_regs __iomem *g = d->regs;
+	struct davinci_gpio_regs __iomem *g = gpio2regs(d, offset);
 
-	writel_relaxed((1 << offset), value ? &g->set_data : &g->clr_data);
+	writel_relaxed(__gpio_mask(offset), value ? &g->set_data : &g->clr_data);
 }
 
 static struct gpio_ops davinci_gpio_ops = {
@@ -139,9 +141,9 @@ static int davinci_gpio_probe(struct device *dev)
 	void __iomem *gpio_base;
 	int ret;
 	u32 val;
-	int i, base;
 	unsigned ngpio;
 	struct davinci_gpio_controller *chips;
+	struct gpio_chip *gc;
 
 	ret = of_property_read_u32(dev->of_node, "ti,ngpio", &val);
 	if (ret) {
@@ -154,7 +156,7 @@ static int davinci_gpio_probe(struct device *dev)
 	if (WARN_ON(ARCH_NR_GPIOS < ngpio))
 		ngpio = ARCH_NR_GPIOS;
 
-	chips = xzalloc((ngpio / 32 + 1) * sizeof(*chips));
+	chips = xzalloc(sizeof(*chips));
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores)) {
@@ -163,27 +165,15 @@ static int davinci_gpio_probe(struct device *dev)
 	}
 	gpio_base = IOMEM(iores->start);
 
-	for (i = 0, base = 0; base < ngpio; i++, base += 32) {
-		struct davinci_gpio_regs __iomem *regs;
-		struct gpio_chip *gc;
+	gc = &chips->chip;
+	gc->ops = &davinci_gpio_ops;
+	gc->dev = dev;
+	gc->ngpio = ngpio;
+	gc->base = -1;
 
-		gc = &chips[i].chip;
-		gc->ops = &davinci_gpio_ops;
+	chips->regs = gpio_base;
 
-		gc->dev = dev;
-		gc->base = base;
-		gc->ngpio = ngpio - base;
-		if (gc->ngpio > 32)
-			gc->ngpio = 32;
-
-		regs = gpio2regs(gpio_base, base);
-		chips[i].regs = regs;
-		chips[i].set_data = &regs->set_data;
-		chips[i].clr_data = &regs->clr_data;
-		chips[i].in_data = &regs->in_data;
-
-		gpiochip_add(gc);
-	}
+	gpiochip_add(gc);
 
 	return 0;
 }
-- 
2.39.2




Delivery-date: Mon, 23 Mar 2026 09:59:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4b81-0044UY-29
	for lore@lore.pengutronix.de;
	Mon, 23 Mar 2026 09:59:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4b7z-0003iF-Lm
	for lore@pengutronix.de; Mon, 23 Mar 2026 09:59:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HUwmxo1zvDaoO18t/3IAdid2L6+xB5+Z+0f4DlqyBZQ=; b=s1CBP2cPiANq7CnjsqQzoH8aYu
	ZPqzJqJ/vH6JB/sepaWE6Jq17elNNVh9amJGqwEekiddP/iBF6h0FyM29ihE8RtdEMru9gDKXuiuN
	X3VTf+ZcuXOsuEUV6E411Fprkl8I25aK0Ddi19Ty/Pf1OebpaF0jbnT9TVdVzGFxnbF8iQPETRxw+
	5HidiqAbu0rwWGf08kuwjQXw8YA576q8MmZMSuJAkBfX2CsnmS8haVZOYJI1brnR7bRP50cWebEMt
	fJgHCiSp6wVND5aXCxJY3XDb415yCrmkpMc0sikUA6PMoU6TNGhbdFh10I7Vdc2Fm+fQVCAKWGMfE
	mv8eHMKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4b7Q-0000000GJqT-2d7K;
	Mon, 23 Mar 2026 08:58:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4b7N-0000000GJp8-05u3
	for barebox@lists.infradead.org;
	Mon, 23 Mar 2026 08:58:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1w4b7K-0003Vc-Uw; Mon, 23 Mar 2026 09:58:35 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Mar 2026 09:58:29 +0100
Message-ID: <20260323085833.4073078-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_015837_413997_B3FF4CF2 
X-CRM114-Status: GOOD (  16.88  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] gpio: have gpio_chip::set return an error code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since Linux v6.17, the .set operation for GPIO controllers return a
signed integer to be able to indicate errors.

Align barebox with this new API and return error codes where immediately
obvious.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/gpio/gpio-74164.c             |  9 ++++-----
 drivers/gpio/gpio-ath79.c             |  5 +++--
 drivers/gpio/gpio-davinci.c           |  3 ++-
 drivers/gpio/gpio-digic.c             | 10 +++++-----
 drivers/gpio/gpio-dw.c                |  4 +++-
 drivers/gpio/gpio-generic.c           | 14 +++++++++-----
 drivers/gpio/gpio-imx.c               | 10 +++++++---
 drivers/gpio/gpio-intel.c             |  4 +++-
 drivers/gpio/gpio-jz4740.c            |  3 ++-
 drivers/gpio/gpio-latch.c             |  3 ++-
 drivers/gpio/gpio-libftdi1.c          |  3 ++-
 drivers/gpio/gpio-malta-fpga-i2c.c    |  3 ++-
 drivers/gpio/gpio-mxs.c               |  3 ++-
 drivers/gpio/gpio-omap.c              |  5 +++--
 drivers/gpio/gpio-orion.c             |  3 ++-
 drivers/gpio/gpio-pca953x.c           |  7 +++----
 drivers/gpio/gpio-pcf857x.c           |  4 ++--
 drivers/gpio/gpio-pl061.c             |  3 ++-
 drivers/gpio/gpio-raspberrypi-exp.c   |  7 +++++--
 drivers/gpio/gpio-rockchip.c          |  3 ++-
 drivers/gpio/gpio-sama5d2-piobu.c     |  4 ++--
 drivers/gpio/gpio-starfive-vic.c      |  5 +++--
 drivers/gpio/gpio-stmpe.c             |  8 +++++---
 drivers/gpio/gpio-sx150x.c            |  4 ++--
 drivers/gpio/gpio-tegra.c             |  3 ++-
 drivers/gpio/gpio-vf610.c             |  3 ++-
 drivers/gpio/gpio-zynq.c              |  7 ++++---
 drivers/mfd/da9063.c                  |  6 +++---
 drivers/pinctrl/pinctrl-at91-pio4.c   |  4 +++-
 drivers/pinctrl/pinctrl-at91.c        |  4 +++-
 drivers/pinctrl/pinctrl-bcm2835.c     |  3 ++-
 drivers/pinctrl/pinctrl-stm32.c       |  3 ++-
 drivers/pinctrl/sunxi/pinctrl-sunxi.c |  3 ++-
 include/gpio.h                        |  2 +-
 34 files changed, 101 insertions(+), 64 deletions(-)

diff --git a/drivers/gpio/gpio-74164.c b/drivers/gpio/gpio-74164.c
index fb96e281b27e..407aa5008393 100644
--- a/drivers/gpio/gpio-74164.c
+++ b/drivers/gpio/gpio-74164.c
@@ -59,8 +59,8 @@ static int gpio_74164_get_value(struct gpio_chip *chip, unsigned off)
 	return (priv->buffer[bank] >> pin) & 1;
 }
 
-static void gpio_74164_set_value(struct gpio_chip *chip,
-				 unsigned off, int val)
+static int gpio_74164_set_value(struct gpio_chip *chip,
+				unsigned off, int val)
 {
 	struct gpio_74164 *priv = gc_to_gpio_74164(chip);
 	u8 bank = off / 8;
@@ -71,14 +71,13 @@ static void gpio_74164_set_value(struct gpio_chip *chip,
 	else
 		priv->buffer[bank] &= ~BIT(pin);
 
-	gpio_74164_update_buffers(priv);
+	return gpio_74164_update_buffers(priv);
 }
 
 static int gpio_74164_direction_output(struct gpio_chip *chip,
 				       unsigned off, int val)
 {
-	gpio_74164_set_value(chip, off, val);
-	return 0;
+	return gpio_74164_set_value(chip, off, val);
 }
 
 static struct gpio_ops gpio_74164_ops = {
diff --git a/drivers/gpio/gpio-ath79.c b/drivers/gpio/gpio-ath79.c
index b32e9552ce14..cae7969cd14f 100644
--- a/drivers/gpio/gpio-ath79.c
+++ b/drivers/gpio/gpio-ath79.c
@@ -43,10 +43,11 @@ static int ath79_gpio_get_value(struct gpio_chip *chip, unsigned offset)
 	return __ath79_gpio_get_value(offset);
 }
 
-static void ath79_gpio_set_value(struct gpio_chip *chip,
-				  unsigned offset, int value)
+static int ath79_gpio_set_value(struct gpio_chip *chip,
+				unsigned offset, int value)
 {
 	__ath79_gpio_set_value(offset, value);
+	return 0;
 }
 
 static int ath79_gpio_direction_input(struct gpio_chip *chip,
diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
index 831da2fc7f43..d6aed8c02cda 100644
--- a/drivers/gpio/gpio-davinci.c
+++ b/drivers/gpio/gpio-davinci.c
@@ -118,13 +118,14 @@ static int davinci_gpio_get(struct gpio_chip *chip, unsigned offset)
 /*
  * Assuming the pin is muxed as a gpio output, set its output value.
  */
-static void
+static int
 davinci_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
 {
 	struct davinci_gpio_controller *d = chip2controller(chip);
 	struct davinci_gpio_regs __iomem *g = gpio2regs(d, offset);
 
 	writel_relaxed(__gpio_mask(offset), value ? &g->set_data : &g->clr_data);
+	return 0;
 }
 
 static struct gpio_ops davinci_gpio_ops = {
diff --git a/drivers/gpio/gpio-digic.c b/drivers/gpio/gpio-digic.c
index 7e2db85efe61..10e0f5787d44 100644
--- a/drivers/gpio/gpio-digic.c
+++ b/drivers/gpio/gpio-digic.c
@@ -46,14 +46,14 @@ static int digic_gpio_get_value(struct gpio_chip *gc, unsigned offset)
 	return digic_gpio_readl(chip, offset) & DIGIC_GPIO_IN_LVL;
 }
 
-static void digic_gpio_set_value(struct gpio_chip *gc, unsigned offset,
+static int digic_gpio_set_value(struct gpio_chip *gc, unsigned offset,
 					int value)
 {
 	struct digic_gpio_chip *chip = to_digic_gpio_chip(gc);
 	uint32_t t;
 
 	if (offset >= gc->ngpio)
-		return;
+		return -EINVAL;
 
 	t = digic_gpio_readl(chip, offset);
 	/* Port direction (1 = OUT, 0 = IN) */
@@ -62,6 +62,8 @@ static void digic_gpio_set_value(struct gpio_chip *gc, unsigned offset,
 	else
 		t &= ~(DIGIC_GPIO_OUT_LVL);
 	digic_gpio_writel(chip, t, offset);
+
+	return 0;
 }
 
 static int digic_gpio_direction_input(struct gpio_chip *gc, unsigned offset)
@@ -94,9 +96,7 @@ static int digic_gpio_direction_output(struct gpio_chip *gc, unsigned offset,
 	t |= DIGIC_GPIO_DIR;
 	digic_gpio_writel(chip, t, offset);
 
-	digic_gpio_set_value(gc, offset, value);
-
-	return 0;
+	return digic_gpio_set_value(gc, offset, value);
 }
 
 static struct gpio_ops digic_gpio_ops = {
diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index 688b2536be2b..40e57c7419b0 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -46,7 +46,7 @@ static int dw_gpio_get(struct gpio_chip *gc, unsigned offset)
 	return (readl(parent->regs + DW_GPIO_EXT) >> offset) & 1;
 }
 
-static void dw_gpio_set(struct gpio_chip *gc, unsigned offset, int value)
+static int dw_gpio_set(struct gpio_chip *gc, unsigned offset, int value)
 {
 	struct dw_gpio_instance *chip = to_dw_gpio(gc);
 	struct dw_gpio *parent = chip->parent;
@@ -55,6 +55,8 @@ static void dw_gpio_set(struct gpio_chip *gc, unsigned offset, int value)
 	data_reg = readl(parent->regs + DW_GPIO_DR);
 	data_reg = (data_reg & ~(1<<offset)) | (value << offset);
 	writel(data_reg, parent->regs + DW_GPIO_DR);
+
+	return 0;
 }
 
 static int dw_gpio_direction_input(struct gpio_chip *gc, unsigned offset)
diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index 6164e87073bd..1a0496de10a4 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -110,11 +110,12 @@ static int bgpio_get(struct gpio_chip *gc, unsigned int gpio)
 	return !!(bgc->read_reg(bgc->reg_dat) & bgpio_line2mask(bgc, gpio));
 }
 
-static void bgpio_set_none(struct gpio_chip *gc, unsigned int gpio, int val)
+static int bgpio_set_none(struct gpio_chip *gc, unsigned int gpio, int val)
 {
+	return 0;
 }
 
-static void bgpio_set(struct gpio_chip *gc, unsigned int gpio, int val)
+static int bgpio_set(struct gpio_chip *gc, unsigned int gpio, int val)
 {
 	struct bgpio_chip *bgc = to_bgpio_chip(gc);
 	unsigned long mask = bgpio_line2mask(bgc, gpio);
@@ -125,10 +126,11 @@ static void bgpio_set(struct gpio_chip *gc, unsigned int gpio, int val)
 		bgc->data &= ~mask;
 
 	bgc->write_reg(bgc->reg_dat, bgc->data);
+	return 0;
 }
 
-static void bgpio_set_with_clear(struct gpio_chip *gc, unsigned int gpio,
-				 int val)
+static int bgpio_set_with_clear(struct gpio_chip *gc, unsigned int gpio,
+				int val)
 {
 	struct bgpio_chip *bgc = to_bgpio_chip(gc);
 	unsigned long mask = bgpio_line2mask(bgc, gpio);
@@ -137,9 +139,10 @@ static void bgpio_set_with_clear(struct gpio_chip *gc, unsigned int gpio,
 		bgc->write_reg(bgc->reg_set, mask);
 	else
 		bgc->write_reg(bgc->reg_clr, mask);
+	return 0;
 }
 
-static void bgpio_set_set(struct gpio_chip *gc, unsigned int gpio, int val)
+static int bgpio_set_set(struct gpio_chip *gc, unsigned int gpio, int val)
 {
 	struct bgpio_chip *bgc = to_bgpio_chip(gc);
 	unsigned long mask = bgpio_line2mask(bgc, gpio);
@@ -150,6 +153,7 @@ static void bgpio_set_set(struct gpio_chip *gc, unsigned int gpio, int val)
 		bgc->data &= ~mask;
 
 	bgc->write_reg(bgc->reg_set, bgc->data);
+	return 0;
 }
 
 static int bgpio_simple_dir_in(struct gpio_chip *gc, unsigned int gpio)
diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index 4fd56927d20d..24a03e0cb913 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -38,14 +38,14 @@ static struct imx_gpio_regs regs_imx31 = {
 	.psr = 0x08,
 };
 
-static void imx_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
+static int imx_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
 {
 	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
 	void __iomem *base = imxgpio->base;
 	u32 val;
 
 	if (!base)
-		return;
+		return -EINVAL;
 
 	val = readl(base + imxgpio->regs->dr);
 
@@ -55,6 +55,7 @@ static void imx_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
 		val &= ~(1 << gpio);
 
 	writel(val, base + imxgpio->regs->dr);
+	return 0;
 }
 
 static int imx_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
@@ -79,8 +80,11 @@ static int imx_gpio_direction_output(struct gpio_chip *chip, unsigned gpio, int
 	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
 	void __iomem *base = imxgpio->base;
 	u32 val;
+	int ret;
 
-	imx_gpio_set_value(chip, gpio, value);
+	ret = imx_gpio_set_value(chip, gpio, value);
+	if (ret)
+		return ret;
 
 	val = readl(base + imxgpio->regs->gdir);
 	val |= 1 << gpio;
diff --git a/drivers/gpio/gpio-intel.c b/drivers/gpio/gpio-intel.c
index ebec220f46bf..61e63869e48c 100644
--- a/drivers/gpio/gpio-intel.c
+++ b/drivers/gpio/gpio-intel.c
@@ -65,7 +65,7 @@ static void intel_gpio_padcfg0_write(const struct intel_gpio_chip *chip,
 	writel(value, intel_gpio_padcfg0_reg(chip, gpio));
 }
 
-static void intel_gpio_set_value(struct gpio_chip *gc, unsigned int gpio,
+static int intel_gpio_set_value(struct gpio_chip *gc, unsigned int gpio,
 				 int value)
 {
 	struct intel_gpio_chip *chip = to_intel_gpio(gc);
@@ -77,6 +77,8 @@ static void intel_gpio_set_value(struct gpio_chip *gc, unsigned int gpio,
 	else
 		padcfg0 &= ~PADCFG0_GPIOTXSTATE;
 	intel_gpio_padcfg0_write(chip, gpio, padcfg0);
+
+	return 0;
 }
 
 static int intel_gpio_get_value(struct gpio_chip *gc, unsigned int gpio)
diff --git a/drivers/gpio/gpio-jz4740.c b/drivers/gpio/gpio-jz4740.c
index 911f9f24704f..cab1d5b2caba 100644
--- a/drivers/gpio/gpio-jz4740.c
+++ b/drivers/gpio/gpio-jz4740.c
@@ -39,11 +39,12 @@ static int jz4740_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
 	return !!(readl(CHIP_TO_REG(chip, JZ_REG_GPIO_PIN)) & BIT(gpio));
 }
 
-static void jz4740_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
+static int jz4740_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
 {
 	uint32_t __iomem *reg = CHIP_TO_REG(chip, JZ_REG_GPIO_DATA_SET);
 	reg += !value;
 	writel(BIT(gpio), reg);
+	return 0;
 }
 
 static int jz4740_gpio_get_direction(struct gpio_chip *chip, unsigned gpio)
diff --git a/drivers/gpio/gpio-latch.c b/drivers/gpio/gpio-latch.c
index 9dbf4bda14fe..ce7b9ff9a756 100644
--- a/drivers/gpio/gpio-latch.c
+++ b/drivers/gpio/gpio-latch.c
@@ -62,7 +62,7 @@ static int gpio_latch_get_direction(struct gpio_chip *gc, unsigned int offset)
 	return 0;
 }
 
-static void gpio_latch_set(struct gpio_chip *gc, unsigned int offset, int val)
+static int gpio_latch_set(struct gpio_chip *gc, unsigned int offset, int val)
 {
 	struct gpio_latch_priv *priv = container_of(gc, struct gpio_latch_priv, gc);
 	int latch = offset / priv->n_latched_gpios;
@@ -78,6 +78,7 @@ static void gpio_latch_set(struct gpio_chip *gc, unsigned int offset, int val)
 	gpio_set_value(priv->clk_gpios[latch], 1);
 	ndelay(priv->clock_duration_ns);
 	gpio_set_value(priv->clk_gpios[latch], 0);
+	return 0;
 }
 static int gpio_latch_direction_output(struct gpio_chip *gc, unsigned gpio, int val)
 {
diff --git a/drivers/gpio/gpio-libftdi1.c b/drivers/gpio/gpio-libftdi1.c
index b7c94b573dbf..3d615ad600ff 100644
--- a/drivers/gpio/gpio-libftdi1.c
+++ b/drivers/gpio/gpio-libftdi1.c
@@ -49,7 +49,7 @@ static int libftdi1_gpio_get_value(struct gpio_chip *chip, unsigned off)
 	return barebox_libftdi1_gpio_get_value(gpio->ftbb, off);
 }
 
-static void libftdi1_gpio_set_value(
+static int libftdi1_gpio_set_value(
 	struct gpio_chip *chip, unsigned off, int value)
 {
 	struct libftdi1_gpio_chip *gpio =
@@ -57,6 +57,7 @@ static void libftdi1_gpio_set_value(
 
 	barebox_libftdi1_gpio_set_value(gpio->ftbb, off, value);
 	barebox_libftdi1_update(gpio->ftbb);
+	return 0;
 }
 
 static struct gpio_ops libftdi1_gpio_ops = {
diff --git a/drivers/gpio/gpio-malta-fpga-i2c.c b/drivers/gpio/gpio-malta-fpga-i2c.c
index d0e454015c47..81d62b49d98b 100644
--- a/drivers/gpio/gpio-malta-fpga-i2c.c
+++ b/drivers/gpio/gpio-malta-fpga-i2c.c
@@ -97,7 +97,7 @@ static int malta_i2c_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
 	return v;
 }
 
-static void malta_i2c_gpio_set_value(struct gpio_chip *chip,
+static int malta_i2c_gpio_set_value(struct gpio_chip *chip,
 					unsigned gpio, int v)
 {
 	struct malta_i2c_gpio *sc = chip_to_malta_i2c_gpio(chip);
@@ -106,6 +106,7 @@ static void malta_i2c_gpio_set_value(struct gpio_chip *chip,
 			__func__, chip, gpio, v);
 
 	malta_i2c_gpio_set_bit(sc, MALTA_I2COUT, gpio, v);
+	return 0;
 }
 
 static struct gpio_ops malta_i2c_gpio_ops = {
diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
index 00a9b72dfc86..3020a0a14ef2 100644
--- a/drivers/gpio/gpio-mxs.c
+++ b/drivers/gpio/gpio-mxs.c
@@ -39,7 +39,7 @@ static struct mxs_gpio_regs regs_mxs28 = {
 	.doe = 0x0b00,
 };
 
-static void mxs_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
+static int mxs_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
 {
 	struct mxs_gpio_chip *mxsgpio = container_of(chip, struct mxs_gpio_chip, chip);
 
@@ -47,6 +47,7 @@ static void mxs_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
 		writel(0x1 << gpio, mxsgpio->dout + STMP_OFFSET_REG_SET);
 	else
 		writel(0x1 << gpio, mxsgpio->dout + STMP_OFFSET_REG_CLR);
+	return 0;
 }
 
 static int mxs_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
index f5abd63a90f8..2ad21efa68a5 100644
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -42,8 +42,8 @@ static inline int omap_get_gpio_index(int gpio)
 	return gpio & 0x1f;
 }
 
-static void omap_gpio_set_value(struct gpio_chip *chip,
-					unsigned gpio, int value)
+static int omap_gpio_set_value(struct gpio_chip *chip,
+			       unsigned gpio, int value)
 {
 	struct omap_gpio_chip *omapgpio =
 			container_of(chip, struct omap_gpio_chip, chip);
@@ -58,6 +58,7 @@ static void omap_gpio_set_value(struct gpio_chip *chip,
 	l = 1 << omap_get_gpio_index(gpio);
 
 	writel(l, base);
+	return 0;
 }
 
 static int omap_gpio_direction_input(struct gpio_chip *chip,
diff --git a/drivers/gpio/gpio-orion.c b/drivers/gpio/gpio-orion.c
index 0760205c2610..ef7d1ff114b6 100644
--- a/drivers/gpio/gpio-orion.c
+++ b/drivers/gpio/gpio-orion.c
@@ -56,7 +56,7 @@ static int orion_gpio_get_value(struct gpio_chip *chip, unsigned off)
 	return (readl(&gpio->regs->data_i) & BIT(off)) ? 1 : 0;
 }
 
-static void orion_gpio_set_value(
+static int orion_gpio_set_value(
 	struct gpio_chip *chip, unsigned off, int value)
 {
 	struct orion_gpio_chip *gpio =
@@ -69,6 +69,7 @@ static void orion_gpio_set_value(
 	else
 		val &= ~BIT(off);
 	writel(val, &gpio->regs->data_o);
+	return 0;
 }
 
 static struct gpio_ops orion_gpio_ops = {
diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
index 4dd0c43afc32..8fe9b52b514e 100644
--- a/drivers/gpio/gpio-pca953x.c
+++ b/drivers/gpio/gpio-pca953x.c
@@ -308,7 +308,7 @@ static int pca953x_gpio_get_value(struct gpio_chip *gc, unsigned off)
 	return (reg_val & (1u << (off % BANK_SZ))) ? 1 : 0;
 }
 
-static void pca953x_gpio_set_value(struct gpio_chip *gc, unsigned off, int val)
+static int pca953x_gpio_set_value(struct gpio_chip *gc, unsigned off, int val)
 {
 	struct pca953x_chip *chip = to_pca(gc);
 	u8 reg_val;
@@ -331,11 +331,10 @@ static void pca953x_gpio_set_value(struct gpio_chip *gc, unsigned off, int val)
 	}
 	ret = pca953x_write_single(chip, offset, reg_val, off);
 	if (ret)
-		goto exit;
+		return ret;
 
 	chip->reg_output[off / BANK_SZ] = reg_val;
-exit:
-	return;
+	return 0;
 }
 
 static struct gpio_ops pca953x_gpio_ops = {
diff --git a/drivers/gpio/gpio-pcf857x.c b/drivers/gpio/gpio-pcf857x.c
index 1db2eea47afe..0e956154b7bd 100644
--- a/drivers/gpio/gpio-pcf857x.c
+++ b/drivers/gpio/gpio-pcf857x.c
@@ -131,9 +131,9 @@ static int pcf857x_output(struct gpio_chip *chip, unsigned offset, int value)
 	return ret;
 }
 
-static void pcf857x_set(struct gpio_chip *chip, unsigned offset, int value)
+static int pcf857x_set(struct gpio_chip *chip, unsigned offset, int value)
 {
-	pcf857x_output(chip, offset, value);
+	return pcf857x_output(chip, offset, value);
 }
 
 /*-------------------------------------------------------------------------*/
diff --git a/drivers/gpio/gpio-pl061.c b/drivers/gpio/gpio-pl061.c
index 8dd9ca3bd5cd..06031086faf2 100644
--- a/drivers/gpio/gpio-pl061.c
+++ b/drivers/gpio/gpio-pl061.c
@@ -77,11 +77,12 @@ static int pl061_get_value(struct gpio_chip *gc, unsigned offset)
 	return !!readb(chip->base + (1 << (offset + 2)));
 }
 
-static void pl061_set_value(struct gpio_chip *gc, unsigned offset, int value)
+static int pl061_set_value(struct gpio_chip *gc, unsigned offset, int value)
 {
 	struct pl061_gpio *chip = container_of(gc, struct pl061_gpio, gc);
 
 	writeb(!!value << offset, chip->base + (1 << (offset + 2)));
+	return 0;
 }
 
 static int pl061_get_direction(struct gpio_chip *gc, unsigned offset)
diff --git a/drivers/gpio/gpio-raspberrypi-exp.c b/drivers/gpio/gpio-raspberrypi-exp.c
index a0212534894d..8bb69801eeb6 100644
--- a/drivers/gpio/gpio-raspberrypi-exp.c
+++ b/drivers/gpio/gpio-raspberrypi-exp.c
@@ -205,7 +205,7 @@ static int rpi_exp_gpio_get(struct gpio_chip *gc, unsigned int off)
 	return !!get->body.req.state;
 }
 
-static void rpi_exp_gpio_set(struct gpio_chip *gc, unsigned int off, int val)
+static int rpi_exp_gpio_set(struct gpio_chip *gc, unsigned int off, int val)
 {
 	struct rpi_exp_gpio *gpio;
 	int ret;
@@ -219,10 +219,13 @@ static void rpi_exp_gpio_set(struct gpio_chip *gc, unsigned int off, int val)
 	set->body.req.state = val;	/* Output state */
 
 	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &set->hdr);
-	if (ret || set->body.req.gpio != 0)
+	if (!ret && set->body.req.gpio != 0)
+		ret = -EREMOTEIO;
+	if (ret)
 		dev_err(gc->dev,
 			"Failed to set GPIO %u state (%d %x)\n", off, ret,
 			set->body.req.gpio);
+	return ret;
 }
 
 static struct gpio_ops rpi_exp_gpio_ops = {
diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index db8a045e8b84..7820ced5e1bf 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -73,7 +73,7 @@ static int rockchip_gpiov2_get_direction(struct gpio_chip *gc, unsigned int gpio
 	return r & BIT(gpio % 16) ? GPIOF_DIR_OUT : GPIOF_DIR_IN;
 }
 
-static void rockchip_gpiov2_set_value(struct gpio_chip *gc, unsigned int gpio,
+static int rockchip_gpiov2_set_value(struct gpio_chip *gc, unsigned int gpio,
 				      int val)
 {
 	struct rockchip_gpiochip *rgc = gc_to_rockchip_pinctrl(gc);
@@ -87,6 +87,7 @@ static void rockchip_gpiov2_set_value(struct gpio_chip *gc, unsigned int gpio,
 		writel(mask | vval, rgc->reg_base + RK_GPIOV2_DR_L);
 	else
 		writel(mask | vval, rgc->reg_base + RK_GPIOV2_DR_H);
+	return 0;
 }
 
 static int rockchip_gpiov2_direction_output(struct gpio_chip *gc,
diff --git a/drivers/gpio/gpio-sama5d2-piobu.c b/drivers/gpio/gpio-sama5d2-piobu.c
index 1de235ee8dd2..adc0d6abe494 100644
--- a/drivers/gpio/gpio-sama5d2-piobu.c
+++ b/drivers/gpio/gpio-sama5d2-piobu.c
@@ -163,7 +163,7 @@ static int sama5d2_piobu_get(struct gpio_chip *chip, unsigned int pin)
 /*
  * sama5d2_piobu_set() - gpiochip set
  */
-static void sama5d2_piobu_set(struct gpio_chip *chip, unsigned int pin,
+static int sama5d2_piobu_set(struct gpio_chip *chip, unsigned int pin,
 			      int value)
 {
 	if (!value)
@@ -171,7 +171,7 @@ static void sama5d2_piobu_set(struct gpio_chip *chip, unsigned int pin,
 	else
 		value = PIOBU_HIGH;
 
-	sama5d2_piobu_write_value(chip, pin, PIOBU_SOD, value);
+	return sama5d2_piobu_write_value(chip, pin, PIOBU_SOD, value);
 }
 
 static struct gpio_ops sama5d2_piobu_ops = {
diff --git a/drivers/gpio/gpio-starfive-vic.c b/drivers/gpio/gpio-starfive-vic.c
index 399219a3a099..abf6ca526670 100644
--- a/drivers/gpio/gpio-starfive-vic.c
+++ b/drivers/gpio/gpio-starfive-vic.c
@@ -93,14 +93,15 @@ static int starfive_get_value(struct gpio_chip *gc, unsigned offset)
 	}
 }
 
-static void starfive_set_value(struct gpio_chip *gc, unsigned offset, int value)
+static int starfive_set_value(struct gpio_chip *gc, unsigned offset, int value)
 {
 	struct starfive_gpio *chip = to_starfive_gpio(gc);
 
 	if (offset >= gc->ngpio)
-		return;
+		return -EINVAL;
 
 	writel(value, chip->base + GPIO_DOUT_X_REG + offset * 8);
+	return 0;
 }
 
 static struct gpio_ops starfive_gpio_ops = {
diff --git a/drivers/gpio/gpio-stmpe.c b/drivers/gpio/gpio-stmpe.c
index b736f66c7ed2..8ccaedcf611b 100644
--- a/drivers/gpio/gpio-stmpe.c
+++ b/drivers/gpio/gpio-stmpe.c
@@ -27,7 +27,7 @@ struct stmpe_gpio_chip {
 	struct stmpe_client_info *ci;
 };
 
-static void stmpe_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
+static int stmpe_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
 {
 	struct stmpe_gpio_chip *stmpegpio = container_of(chip, struct stmpe_gpio_chip, chip);
 	struct stmpe_client_info *ci = (struct stmpe_client_info *)stmpegpio->ci;
@@ -45,6 +45,8 @@ static void stmpe_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int valu
 
 	if (ret)
 		dev_err(chip->dev, "write failed!\n");
+
+	return ret;
 }
 
 static int stmpe_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
@@ -75,8 +77,8 @@ static int stmpe_gpio_direction_output(struct gpio_chip *chip, unsigned gpio, in
 	val |= 1 << (gpio % 8);
 	ret = ci->write_reg(ci->stmpe, GPIO_SET_DIR + OFFSET(gpio), val);
 
-	stmpe_gpio_set_value(chip, gpio, value);
-
+	if (!ret)
+		ret = stmpe_gpio_set_value(chip, gpio, value);
 	if (ret)
 		dev_err(chip->dev, "couldn't change direction. Write failed!\n");
 
diff --git a/drivers/gpio/gpio-sx150x.c b/drivers/gpio/gpio-sx150x.c
index ff7e86d64402..71be9a093035 100644
--- a/drivers/gpio/gpio-sx150x.c
+++ b/drivers/gpio/gpio-sx150x.c
@@ -95,10 +95,10 @@ static int __sx150x_gpio_set(struct sx150x_gpio *sx150x, unsigned int offset,
 }
 
 
-static void sx150x_gpio_set(struct gpio_chip *gpio, unsigned int offset,
+static int sx150x_gpio_set(struct gpio_chip *gpio, unsigned int offset,
 			    int value)
 {
-	__sx150x_gpio_set(to_sx150x_gpio(gpio), offset, value);
+	return __sx150x_gpio_set(to_sx150x_gpio(gpio), offset, value);
 }
 
 static int sx150x_gpio_direction_input(struct gpio_chip *gpio,
diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index fb52041c361f..603bc5192bf7 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -79,9 +79,10 @@ static void tegra_gpio_free(struct gpio_chip *chip, unsigned offset)
 	tegra_gpio_disable(offset);
 }
 
-static void tegra_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
+static int tegra_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
 {
 	tegra_gpio_mask_write(GPIO_MSK_OUT(offset), offset, value);
+	return 0;
 }
 
 static int tegra_gpio_get(struct gpio_chip *chip, unsigned offset)
diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index 5ce508469eb2..c972fcacbb7e 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -72,7 +72,7 @@ static int vf610_gpio_get_value(struct gpio_chip *chip, unsigned int gpio)
 	return !!(readl(port->gpio_base + offset) & BIT(gpio));
 }
 
-static void vf610_gpio_set_value(struct gpio_chip *chip,
+static int vf610_gpio_set_value(struct gpio_chip *chip,
 				  unsigned int gpio, int val)
 {
 	struct vf610_gpio_port *port =
@@ -80,6 +80,7 @@ static void vf610_gpio_set_value(struct gpio_chip *chip,
 	unsigned long mask = BIT(gpio);
 
 	writel(mask, port->gpio_base + ((val) ? GPIO_PSOR : GPIO_PCOR));
+	return 0;
 }
 
 static int vf610_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
index 1358182547c5..7d119d49fd33 100644
--- a/drivers/gpio/gpio-zynq.c
+++ b/drivers/gpio/gpio-zynq.c
@@ -231,14 +231,14 @@ static int zynq_gpio_get_value(struct gpio_chip *chip, unsigned int pin)
  * upper 16 bits) based on the given pin number and sets the state of a
  * gpio pin to the specified value. The state is either 0 or non-zero.
  */
-static void zynq_gpio_set_value(struct gpio_chip *chip, unsigned int pin,
-				int state)
+static int zynq_gpio_set_value(struct gpio_chip *chip, unsigned int pin,
+			       int state)
 {
 	unsigned int reg_offset, bank_num, bank_pin_num;
 	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
 
 	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
-		return;
+		return -EINVAL;
 
 	if (bank_pin_num >= ZYNQ_GPIO_MID_PIN_NUM) {
 		bank_pin_num -= ZYNQ_GPIO_MID_PIN_NUM;
@@ -256,6 +256,7 @@ static void zynq_gpio_set_value(struct gpio_chip *chip, unsigned int pin,
 		((state << bank_pin_num) | ZYNQ_GPIO_UPPER_MASK);
 
 	writel_relaxed(state, gpio->base_addr + reg_offset);
+	return 0;
 }
 
 /**
diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index 169ddc2b18bf..091f8036abe0 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -207,12 +207,12 @@ static int da9063_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
 	return -EINVAL;
 }
 
-static void da9063_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
+static int da9063_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
 {
 	struct da9063 *priv = to_da9063(chip);
 
-	da906x_reg_update(priv, DA9062AA_GPIO_MODE0_4, BIT(offset),
-			  value << offset);
+	return da906x_reg_update(priv, DA9062AA_GPIO_MODE0_4, BIT(offset),
+				 value << offset);
 
 }
 
diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
index f6d40b392fb5..ffb2f42cd624 100644
--- a/drivers/pinctrl/pinctrl-at91-pio4.c
+++ b/drivers/pinctrl/pinctrl-at91-pio4.c
@@ -202,11 +202,13 @@ static int at91_gpio4_get_direction(struct gpio_chip *chip,
 	return cfgr & PIO4_DIR_MASK ? GPIOF_DIR_OUT : GPIOF_DIR_IN;
 }
 
-static void at91_gpio4_set(struct gpio_chip *chip, unsigned offset, int value)
+static int at91_gpio4_set(struct gpio_chip *chip, unsigned offset, int value)
 {
 	void __iomem *gpio = pin_to_gpio4(chip, &offset);
 
 	at91_mux_gpio4_set(gpio, BIT(offset), value);
+
+	return 0;
 }
 
 static int at91_gpio4_get(struct gpio_chip *chip, unsigned offset)
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index eb0ce648095d..3448f0d3f099 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -519,13 +519,15 @@ static int at91_gpio_get(struct gpio_chip *chip, unsigned offset)
 	return at91_mux_gpio_get(pio, mask);
 }
 
-static void at91_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
+static int at91_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
 {
 	struct at91_gpio_chip *at91_gpio = to_at91_gpio_chip(chip);
 	void __iomem *pio = at91_gpio->regbase;
 	unsigned mask = 1 << offset;
 
 	at91_mux_gpio_set(pio, mask, value);
+
+	return 0;
 }
 
 static int at91_gpio_direction_output(struct gpio_chip *chip, unsigned offset,
diff --git a/drivers/pinctrl/pinctrl-bcm2835.c b/drivers/pinctrl/pinctrl-bcm2835.c
index 57c1aee3af56..387222169a1d 100644
--- a/drivers/pinctrl/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/pinctrl-bcm2835.c
@@ -63,7 +63,7 @@ static int bcm2835_set_function(struct gpio_chip *chip, unsigned gpio, int funct
 	return 0;
 }
 
-static void bcm2835_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
+static int bcm2835_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
 {
 	struct bcm2835_gpio_chip *bcmgpio = container_of(chip, struct bcm2835_gpio_chip, chip);
 	void __iomem *base = bcmgpio->base;
@@ -74,6 +74,7 @@ static void bcm2835_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int va
 		writel(1 << gpio_field_offset, base + GPIOSET(gpio_bank));
 	else
 		writel(1 << gpio_field_offset, base + GPIOCLR(gpio_bank));
+	return 0;
 }
 
 static int bcm2835_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index d038c7d49104..f0cfcc11d80f 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -226,11 +226,12 @@ static int stm32_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
 	return ret;
 }
 
-static void stm32_gpio_set(struct gpio_chip *chip, unsigned gpio, int value)
+static int stm32_gpio_set(struct gpio_chip *chip, unsigned gpio, int value)
 {
 	struct stm32_gpio_bank *bank = to_stm32_gpio_bank(chip);
 
 	__stm32_pmx_gpio_set(bank->base, stm32_gpio_pin(gpio, NULL), value);
+	return 0;
 }
 
 static int stm32_gpio_get(struct gpio_chip *chip, unsigned gpio)
diff --git a/drivers/pinctrl/sunxi/pinctrl-sunxi.c b/drivers/pinctrl/sunxi/pinctrl-sunxi.c
index dc33276c56a4..9fe3dc229ea9 100644
--- a/drivers/pinctrl/sunxi/pinctrl-sunxi.c
+++ b/drivers/pinctrl/sunxi/pinctrl-sunxi.c
@@ -230,7 +230,7 @@ static int sunxi_gpio_get(struct gpio_chip *chip, unsigned gpio)
 	return val & BIT(bit);
 }
 
-static void sunxi_gpio_set(struct gpio_chip *chip, unsigned gpio, int value)
+static int sunxi_gpio_set(struct gpio_chip *chip, unsigned gpio, int value)
 {
 	struct sunxi_pinctrl *pinctrl = chip->dev->priv;
 	u32 reg = sunxi_data_reg(gpio);
@@ -242,6 +242,7 @@ static void sunxi_gpio_set(struct gpio_chip *chip, unsigned gpio, int value)
 	else
 		val &= ~BIT(bit);
 	writel(val, pinctrl->base + reg);
+	return 0;
 }
 
 static int sunxi_gpio_direction_output(struct gpio_chip *chip,
diff --git a/include/gpio.h b/include/gpio.h
index 2264d0c495a4..85895acc34d6 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -196,7 +196,7 @@ struct gpio_ops {
 	int (*direction_output)(struct gpio_chip *chip, unsigned offset, int value);
 	int (*get_direction)(struct gpio_chip *chip, unsigned offset);
 	int (*get)(struct gpio_chip *chip, unsigned offset);
-	void (*set)(struct gpio_chip *chip, unsigned offset, int value);
+	int (*set)(struct gpio_chip *chip, unsigned offset, int value);
 	int (*set_config)(struct gpio_chip *chip, unsigned offset, unsigned long config);
 
 #if defined(CONFIG_OF_GPIO)
-- 
2.47.3




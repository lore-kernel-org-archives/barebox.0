Delivery-date: Thu, 04 May 2023 10:19:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBO-004LNB-U2
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:19:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBL-0001yl-MI
	for lore@pengutronix.de; Thu, 04 May 2023 10:19:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I6RSJXLsyAXb+BiUmE8Bb/mOOeUj/wAIPz2CatgFFB8=; b=Dvg3GsNMIVrgKMlgmdr2vRbCfr
	Gj0Og1Osuz/AQhfqCKhK1gcFoIMxJEIuGXWs7MM4q0pYYtAEqNCkW/mgNd9mZtc5K1ar5x0EjCX4N
	3946gAoFnTPnK7mKWJ92hgU3fgwP+2OFZS7jV5r3ohjXQbU/WV1WD3Ew1wwRQOpInMfRSE70rDGsa
	DMJe4iozD2cNX3n89rip28iUw6tYBH4Q59tmwOzwSUyqlUyZMh6NQPeb+g5tlUFMiOjsQV4ARUcNt
	DxiJNDO/UQiknalXbBV72A/1PeXZjtkBeYo0A/MR5SW8py3+Ykw2nJvBtca9CULC3+gvsE1YlF6at
	cRYZ9fhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUA7-0074aY-2Z;
	Thu, 04 May 2023 08:18:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puU9w-0074Si-1v
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:17:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9t-0001Fo-36; Thu, 04 May 2023 10:17:49 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9s-0011Ea-8h; Thu, 04 May 2023 10:17:48 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9q-001HbO-VX; Thu, 04 May 2023 10:17:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:17:35 +0200
Message-Id: <20230504081745.305841-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230504081745.305841-1-s.hauer@pengutronix.de>
References: <20230504081745.305841-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_011752_950635_919B31C7 
X-CRM114-Status: GOOD (  25.19  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/18] pinctrl/gpio: rockchip: separate gpio from pinctrl driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like done in Linux, for easier code sharing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                   |   1 +
 drivers/gpio/Kconfig               |   7 ++
 drivers/gpio/Makefile              |   1 +
 drivers/gpio/gpio-rockchip.c       | 196 +++++++++++++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.c | 178 --------------------------
 5 files changed, 205 insertions(+), 178 deletions(-)
 create mode 100644 drivers/gpio/gpio-rockchip.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 5aef8fcd3b..37fe591000 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -260,6 +260,7 @@ config ARCH_ROCKCHIP
 	select OFTREE
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DEBUG_LL
+	imply GPIO_ROCKCHIP
 
 config ARCH_STM32MP
 	bool "STMicroelectronics STM32MP"
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index dd2b56d256..e19f5a5aba 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -155,6 +155,13 @@ config GPIO_RASPBERRYPI_EXP
 	  Turn on GPIO support for the expander on Raspberry Pi 3 boards, using
 	  the firmware mailbox to communicate with VideoCore on BCM283x chips.
 
+config GPIO_ROCKCHIP
+	bool "Rockchip GPIO support"
+	depends on ARCH_ROCKCHIP
+	help
+	  Say yes here to include the driver for the GPIO controller found on
+	  Rockchip SoCs.
+
 config GPIO_STMPE
 	depends on MFD_STMPE
 	bool "STMPE GPIO Expander"
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 90ab0a8b28..628e975285 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -20,6 +20,7 @@ obj-$(CONFIG_GPIO_PCA953X)	+= gpio-pca953x.o
 obj-$(CONFIG_GPIO_PCF857X)	+= gpio-pcf857x.o
 obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
 obj-$(CONFIG_GPIO_STMPE)	+= gpio-stmpe.o
+obj-$(CONFIG_GPIO_ROCKCHIP)	+= gpio-rockchip.o
 obj-$(CONFIG_GPIO_TEGRA)	+= gpio-tegra.o
 obj-$(CONFIG_GPIO_DESIGNWARE)	+= gpio-dw.o
 obj-$(CONFIG_GPIO_SX150X)	+= gpio-sx150x.o
diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
new file mode 100644
index 0000000000..b01a30c18a
--- /dev/null
+++ b/drivers/gpio/gpio-rockchip.c
@@ -0,0 +1,196 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <errno.h>
+#include <io.h>
+#include <of.h>
+#include <gpio.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <linux/basic_mmio_gpio.h>
+#include <mach/rockchip/rockchip.h>
+
+struct rockchip_gpiochip {
+	struct device			*dev;
+	void __iomem			*reg_base;
+	struct clk			*clk;
+	struct bgpio_chip		bgpio_chip;
+};
+
+/* GPIO registers */
+enum {
+	RK_GPIO_SWPORT_DR	= 0x00,
+	RK_GPIO_SWPORT_DDR	= 0x04,
+	RK_GPIO_EXT_PORT	= 0x50,
+};
+
+/* GPIO registers */
+enum {
+	RK_GPIOV2_DR_L	= 0x00,
+	RK_GPIOV2_DR_H	= 0x04,
+	RK_GPIOV2_DDR_L	= 0x08,
+	RK_GPIOV2_DDR_H	= 0x0c,
+	RK_GPIOV2_EXT_PORT = 0x70,
+};
+
+static struct rockchip_gpiochip *gc_to_rockchip_pinctrl(struct gpio_chip *gc)
+{
+	struct bgpio_chip *bgc = to_bgpio_chip(gc);
+
+	return container_of(bgc, struct rockchip_gpiochip, bgpio_chip);
+}
+
+static int rockchip_gpiov2_direction_input(struct gpio_chip *gc, unsigned int gpio)
+{
+	struct rockchip_gpiochip *rgc = gc_to_rockchip_pinctrl(gc);
+	u32 mask;
+
+	mask = 1 << (16 + (gpio % 16));
+
+	if (gpio < 16)
+		writel(mask, rgc->reg_base + RK_GPIOV2_DDR_L);
+	else
+		writel(mask, rgc->reg_base + RK_GPIOV2_DDR_H);
+
+	return 0;
+}
+
+static int rockchip_gpiov2_get_direction(struct gpio_chip *gc, unsigned int gpio)
+{
+	struct rockchip_gpiochip *rgc = gc_to_rockchip_pinctrl(gc);
+	u32 r;
+
+	if (gpio < 16)
+		r = readl(rgc->reg_base + RK_GPIOV2_DDR_L);
+	else
+		r = readl(rgc->reg_base + RK_GPIOV2_DDR_H);
+
+	return r & BIT(gpio % 16) ? GPIOF_DIR_OUT : GPIOF_DIR_IN;
+}
+
+static void rockchip_gpiov2_set_value(struct gpio_chip *gc, unsigned int gpio,
+				      int val)
+{
+	struct rockchip_gpiochip *rgc = gc_to_rockchip_pinctrl(gc);
+	u32 mask, vval = 0;
+
+	mask = 1 << (16 + (gpio % 16));
+	if (val)
+		vval = 1 << (gpio % 16);
+
+	if (gpio < 16)
+		writel(mask | vval, rgc->reg_base + RK_GPIOV2_DR_L);
+	else
+		writel(mask | vval, rgc->reg_base + RK_GPIOV2_DR_H);
+}
+
+static int rockchip_gpiov2_direction_output(struct gpio_chip *gc,
+					    unsigned int gpio, int val)
+{
+	struct rockchip_gpiochip *rgc = gc_to_rockchip_pinctrl(gc);
+	u32 mask, out, vval = 0;
+
+	mask = 1 << (16 + (gpio % 16));
+	out = 1 << (gpio % 16);
+	if (val)
+		vval = 1 << (gpio % 16);
+
+	if (gpio < 16) {
+		writel(mask | vval, rgc->reg_base + RK_GPIOV2_DR_L);
+		writel(mask | out, rgc->reg_base + RK_GPIOV2_DDR_L);
+	} else {
+		writel(mask | vval, rgc->reg_base + RK_GPIOV2_DR_H);
+		writel(mask | out, rgc->reg_base + RK_GPIOV2_DDR_H);
+	}
+
+	return 0;
+}
+
+static int rockchip_gpiov2_get_value(struct gpio_chip *gc, unsigned int gpio)
+{
+	struct rockchip_gpiochip *rgc = gc_to_rockchip_pinctrl(gc);
+	u32 mask, r;
+
+	mask = 1 << (gpio % 32);
+	r = readl(rgc->reg_base + RK_GPIOV2_EXT_PORT);
+
+	return r & mask ? 1 : 0;
+}
+
+static struct gpio_ops rockchip_gpio_ops = {
+	.direction_input = rockchip_gpiov2_direction_input,
+	.direction_output = rockchip_gpiov2_direction_output,
+	.get = rockchip_gpiov2_get_value,
+	.set = rockchip_gpiov2_set_value,
+	.get_direction = rockchip_gpiov2_get_direction,
+};
+
+static int rockchip_gpio_probe(struct device *dev)
+{
+	struct rockchip_gpiochip *rgc;
+	struct gpio_chip *gpio;
+	struct resource *res;
+	void __iomem *reg_base;
+	int ret;
+
+	rgc = xzalloc(sizeof(*rgc));
+	gpio = &rgc->bgpio_chip.gc;
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	rgc->reg_base = IOMEM(res->start);
+
+	rgc->clk = clk_get(dev, NULL);
+
+	if (IS_ERR(rgc->clk))
+		return PTR_ERR(rgc->clk);
+
+	ret = clk_enable(rgc->clk);
+	if (ret)
+		return ret;
+
+	reg_base = rgc->reg_base;
+
+	if (rockchip_soc() == 3568) {
+		gpio->ngpio = 32;
+		gpio->dev = dev;
+		gpio->ops = &rockchip_gpio_ops;
+		gpio->base = of_alias_get_id(dev->of_node, "gpio");
+		if (gpio->base < 0)
+			return -EINVAL;
+		gpio->base *= 32;
+	} else {
+		ret = bgpio_init(&rgc->bgpio_chip, dev, 4,
+				 reg_base + RK_GPIO_EXT_PORT,
+				 reg_base + RK_GPIO_SWPORT_DR, NULL,
+				 reg_base + RK_GPIO_SWPORT_DDR, NULL, 0);
+		if (ret)
+			return ret;
+	}
+
+	ret = gpiochip_add(&rgc->bgpio_chip.gc);
+	if (ret) {
+		dev_err(dev, "failed to register gpio_chip:: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static struct of_device_id rockchip_gpio_dt_match[] = {
+	{
+		.compatible = "rockchip,gpio-bank",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver rockchip_gpio_driver = {
+	.name = "rockchip-gpio",
+	.probe = rockchip_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(rockchip_gpio_dt_match),
+};
+
+core_platform_driver(rockchip_gpio_driver);
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 4021f7ff23..6547423261 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -90,167 +90,6 @@ enum {
 	RK_BIAS_BUS_HOLD,
 };
 
-/* GPIO registers */
-enum {
-	RK_GPIO_SWPORT_DR	= 0x00,
-	RK_GPIO_SWPORT_DDR	= 0x04,
-	RK_GPIO_EXT_PORT	= 0x50,
-};
-
-/* GPIO registers */
-enum {
-	RK_GPIOV2_DR_L	= 0x00,
-	RK_GPIOV2_DR_H	= 0x04,
-	RK_GPIOV2_DDR_L	= 0x08,
-	RK_GPIOV2_DDR_H	= 0x0c,
-	RK_GPIOV2_EXT_PORT = 0x70,
-};
-
-static struct rockchip_pin_bank *gc_to_rockchip_pinctrl(struct gpio_chip *gc)
-{
-	struct bgpio_chip *bgc = to_bgpio_chip(gc);
-
-	return container_of(bgc, struct rockchip_pin_bank, bgpio_chip);
-}
-
-static int rockchip_gpiov2_direction_input(struct gpio_chip *gc, unsigned int gpio)
-{
-	struct rockchip_pin_bank *bank = gc_to_rockchip_pinctrl(gc);
-	u32 mask;
-
-	mask = 1 << (16 + (gpio % 16));
-
-	if (gpio < 16)
-		writel(mask, bank->reg_base + RK_GPIOV2_DDR_L);
-	else
-		writel(mask, bank->reg_base + RK_GPIOV2_DDR_H);
-
-	return 0;
-}
-
-static int rockchip_gpiov2_get_direction(struct gpio_chip *gc, unsigned int gpio)
-{
-	struct rockchip_pin_bank *bank = gc_to_rockchip_pinctrl(gc);
-	u32 r;
-
-	if (gpio < 16)
-		r = readl(bank->reg_base + RK_GPIOV2_DDR_L);
-	else
-		r = readl(bank->reg_base + RK_GPIOV2_DDR_H);
-
-	return r & BIT(gpio % 16) ? GPIOF_DIR_OUT : GPIOF_DIR_IN;
-}
-
-static void rockchip_gpiov2_set_value(struct gpio_chip *gc, unsigned int gpio,
-				      int val)
-{
-	struct rockchip_pin_bank *bank = gc_to_rockchip_pinctrl(gc);
-	u32 mask, vval = 0;
-
-	mask = 1 << (16 + (gpio % 16));
-	if (val)
-		vval = 1 << (gpio % 16);
-
-	if (gpio < 16)
-		writel(mask | vval, bank->reg_base + RK_GPIOV2_DR_L);
-	else
-		writel(mask | vval, bank->reg_base + RK_GPIOV2_DR_H);
-}
-
-static int rockchip_gpiov2_direction_output(struct gpio_chip *gc,
-					    unsigned int gpio, int val)
-{
-	struct rockchip_pin_bank *bank = gc_to_rockchip_pinctrl(gc);
-	u32 mask, out, vval = 0;
-
-	mask = 1 << (16 + (gpio % 16));
-	out = 1 << (gpio % 16);
-	if (val)
-		vval = 1 << (gpio % 16);
-
-	if (gpio < 16) {
-		writel(mask | vval, bank->reg_base + RK_GPIOV2_DR_L);
-		writel(mask | out, bank->reg_base + RK_GPIOV2_DDR_L);
-	} else {
-		writel(mask | vval, bank->reg_base + RK_GPIOV2_DR_H);
-		writel(mask | out, bank->reg_base + RK_GPIOV2_DDR_H);
-	}
-
-	return 0;
-}
-
-static int rockchip_gpiov2_get_value(struct gpio_chip *gc, unsigned int gpio)
-{
-	struct rockchip_pin_bank *bank = gc_to_rockchip_pinctrl(gc);
-	u32 mask, r;
-
-	mask = 1 << (gpio % 32);
-	r = readl(bank->reg_base + RK_GPIOV2_EXT_PORT);
-
-	return r & mask ? 1 : 0;
-}
-
-static struct gpio_ops rockchip_gpio_ops = {
-	.direction_input = rockchip_gpiov2_direction_input,
-	.direction_output = rockchip_gpiov2_direction_output,
-	.get = rockchip_gpiov2_get_value,
-	.set = rockchip_gpiov2_set_value,
-	.get_direction = rockchip_gpiov2_get_direction,
-};
-
-static int rockchip_gpio_probe(struct device *dev)
-{
-	struct rockchip_pinctrl *info = dev->parent->priv;
-	struct rockchip_pin_ctrl *ctrl = info->ctrl;
-	struct rockchip_pin_bank *bank;
-	struct gpio_chip *gpio;
-	void __iomem *reg_base;
-	int ret, bankno;
-
-	bankno = of_alias_get_id(dev->of_node, "gpio");
-	if (bankno >= ctrl->nr_banks)
-		bankno = -EINVAL;
-	if (bankno < 0)
-		return bankno;
-
-	bank = &ctrl->pin_banks[bankno];
-	gpio = &bank->bgpio_chip.gc;
-
-	if (!bank->valid)
-		dev_warn(dev, "bank %s is not valid\n", bank->name);
-
-	reg_base = bank->reg_base;
-
-	if (ctrl->type == RK3568) {
-		gpio->ngpio = 32;
-		gpio->dev = dev;
-		gpio->ops = &rockchip_gpio_ops;
-		gpio->base = bankno;
-		if (gpio->base < 0)
-			return -EINVAL;
-		gpio->base *= 32;
-	} else {
-		ret = bgpio_init(&bank->bgpio_chip, dev, 4,
-				 reg_base + RK_GPIO_EXT_PORT,
-				 reg_base + RK_GPIO_SWPORT_DR, NULL,
-				 reg_base + RK_GPIO_SWPORT_DDR, NULL, 0);
-		if (ret)
-			return ret;
-	}
-
-	bank->bgpio_chip.gc.dev = dev;
-
-	bank->bgpio_chip.gc.ngpio = bank->nr_pins;
-	ret = gpiochip_add(&bank->bgpio_chip.gc);
-	if (ret) {
-		dev_err(dev, "failed to register gpio_chip %s, error code: %d\n",
-			bank->name, ret);
-		return ret;
-	}
-
-	return 0;
-}
-
 static struct rockchip_pinctrl *to_rockchip_pinctrl(struct pinctrl_device *pdev)
 {
 	return container_of(pdev, struct rockchip_pinctrl, pctl_dev);
@@ -1145,20 +984,3 @@ static struct driver rockchip_pinctrl_driver = {
 };
 
 core_platform_driver(rockchip_pinctrl_driver);
-
-static struct of_device_id rockchip_gpio_dt_match[] = {
-	{
-		.compatible = "rockchip,gpio-bank",
-		.data = &rk2928_pin_ctrl,
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct driver rockchip_gpio_driver = {
-	.name = "rockchip-gpio",
-	.probe = rockchip_gpio_probe,
-	.of_compatible = DRV_OF_COMPAT(rockchip_gpio_dt_match),
-};
-
-core_platform_driver(rockchip_gpio_driver);
-- 
2.39.2




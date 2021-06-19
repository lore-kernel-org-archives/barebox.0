Delivery-date: Sat, 19 Jun 2021 06:56:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT1u-0004db-3y
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:56:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT1s-00025n-4Y
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:56:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3J1ZgZXwjmten+PfC/2otmYy/w4D1zDJ1aI6aLZcsvc=; b=N8wn/wbf76MnVq
	XPaBND74y5cAU0gQi4R3lEzJj1FQwInbbauEl5uLhTQ0v4SOrb26jcGU+reW7QkoQSs0U4+CRiCBR
	fe8lpTNiE+jsNtn1I+kvHbRMO9Oo2KO0nyzYjrSQUO0m0D1C0sqwG5kWDmTJj/3IlbAQNaJUwRF6c
	5mBEJyF33Hc6DD3dmXNrtxdaWUKUgKegS6RNhmD+7VXt9kfEjrGrhqkluTzc94fIDYYjJAAPWmg/A
	cLKLM/UKis8iFq0aVNoJTr5mkpdkrWXWw/hP2qEk04EZrbMJF5udszSolvhguAsfJqqL1eLlEbHtH
	nOAx7xYEp+R0EZfFyFWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luT0L-00GJuV-IV; Sat, 19 Jun 2021 04:54:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwy-00GHoX-RX
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008MO-EZ; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwb-0001Lk-1c; Sat, 19 Jun 2021 06:50:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:53 +0200
Message-Id: <20210619045055.779-28-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215121_118861_50BC05B9 
X-CRM114-Status: GOOD (  23.29  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 27/29] gpio: add support for StarFive GPIO controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This imports support for the StarFive GPIO controller from the vendor's
kernel tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/Kconfig             |   8 ++
 drivers/gpio/Makefile            |   1 +
 drivers/gpio/gpio-starfive-vic.c | 177 +++++++++++++++++++++++++++++++
 drivers/pinctrl/pinctrl-single.c |   4 +-
 include/pinctrl.h                |   6 ++
 5 files changed, 194 insertions(+), 2 deletions(-)
 create mode 100644 drivers/gpio/gpio-starfive-vic.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index a8ee9e58b84e..98a44fbbb578 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -171,6 +171,14 @@ config GPIO_SIFIVE
 	help
 	  Say yes here to support the GPIO device on SiFive SoCs.
 
+config GPIO_STARFIVE
+	bool "StarFive GPIO support"
+	depends on SOC_STARFIVE || CROSS_COMPILE
+	depends on OF_GPIO
+	select GPIO_GENERIC
+	help
+	  Say yes here to support the GPIO device on StarFive SoCs.
+
 config GPIO_LIBFTDI1
 	bool "libftdi1 driver"
 	depends on SANDBOX
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 25e12105d83d..638cbb19a328 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -24,3 +24,4 @@ obj-$(CONFIG_GPIO_SX150X)	+= gpio-sx150x.o
 obj-$(CONFIG_GPIO_VF610)	+= gpio-vf610.o
 obj-$(CONFIG_GPIO_RASPBERRYPI_EXP) += gpio-raspberrypi-exp.o
 obj-$(CONFIG_GPIO_SIFIVE)	+= gpio-sifive.o
+obj-$(CONFIG_GPIO_STARFIVE)	+= gpio-starfive-vic.o
diff --git a/drivers/gpio/gpio-starfive-vic.c b/drivers/gpio/gpio-starfive-vic.c
new file mode 100644
index 000000000000..baa4f584d5e8
--- /dev/null
+++ b/drivers/gpio/gpio-starfive-vic.c
@@ -0,0 +1,177 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * COPYRIGHT 2020 Shanghai StarFive Technology Co., Ltd.
+ */
+
+#include <linux/basic_mmio_gpio.h>
+#include <linux/reset.h>
+#include <linux/clk.h>
+#include <printk.h>
+#include <driver.h>
+#include <errno.h>
+#include <pinctrl.h>
+
+#define GPIO_EN		0x0
+#define GPIO_IS_LOW	0x10
+#define GPIO_IS_HIGH	0x14
+#define GPIO_IBE_LOW	0x18
+#define GPIO_IBE_HIGH	0x1c
+#define GPIO_IEV_LOW	0x20
+#define GPIO_IEV_HIGH	0x24
+#define GPIO_IE_LOW	0x28
+#define GPIO_IE_HIGH	0x2c
+#define GPIO_IC_LOW	0x30
+#define GPIO_IC_HIGH	0x34
+//read only
+#define GPIO_RIS_LOW	0x38
+#define GPIO_RIS_HIGH	0x3c
+#define GPIO_MIS_LOW	0x40
+#define GPIO_MIS_HIGH	0x44
+#define GPIO_DIN_LOW	0x48
+#define GPIO_DIN_HIGH	0x4c
+
+#define GPIO_DOUT_X_REG	0x50
+#define GPIO_DOEN_X_REG	0x54
+
+#define MAX_GPIO	 64
+
+struct starfive_gpio {
+	void __iomem		*base;
+	struct gpio_chip	gc;
+};
+
+#define to_starfive_gpio(gc) container_of(gc, struct starfive_gpio, gc)
+
+static int starfive_direction_input(struct gpio_chip *gc, unsigned offset)
+{
+	struct starfive_gpio *chip = to_starfive_gpio(gc);
+
+	if (offset >= gc->ngpio)
+		return -EINVAL;
+
+	writel(0x1, chip->base + GPIO_DOEN_X_REG + offset * 8);
+
+	return 0;
+}
+
+static int starfive_direction_output(struct gpio_chip *gc, unsigned offset, int value)
+{
+	struct starfive_gpio *chip = to_starfive_gpio(gc);
+
+	if (offset >= gc->ngpio)
+		return -EINVAL;
+	writel(0x0, chip->base + GPIO_DOEN_X_REG + offset * 8);
+	writel(value, chip->base + GPIO_DOUT_X_REG + offset * 8);
+
+	return 0;
+}
+
+static int starfive_get_direction(struct gpio_chip *gc, unsigned offset)
+{
+	struct starfive_gpio *chip = to_starfive_gpio(gc);
+
+	if (offset >= gc->ngpio)
+		return -EINVAL;
+
+	return readl(chip->base + GPIO_DOEN_X_REG + offset * 8) & 0x1;
+}
+
+static int starfive_get_value(struct gpio_chip *gc, unsigned offset)
+{
+	struct starfive_gpio *chip = to_starfive_gpio(gc);
+	int value;
+
+	if (offset >= gc->ngpio)
+		return -EINVAL;
+
+	if(offset < 32){
+		value = readl(chip->base + GPIO_DIN_LOW);
+		return (value >> offset) & 0x1;
+	} else {
+		value = readl(chip->base + GPIO_DIN_HIGH);
+		return (value >> (offset - 32)) & 0x1;
+	}
+}
+
+static void starfive_set_value(struct gpio_chip *gc, unsigned offset, int value)
+{
+	struct starfive_gpio *chip = to_starfive_gpio(gc);
+
+	if (offset >= gc->ngpio)
+		return;
+
+	writel(value, chip->base + GPIO_DOUT_X_REG + offset * 8);
+}
+
+static struct gpio_ops starfive_gpio_ops = {
+	.direction_input = starfive_direction_input,
+	.direction_output = starfive_direction_output,
+	.get_direction = starfive_get_direction,
+	.get = starfive_get_value,
+	.set = starfive_set_value,
+};
+
+static int starfive_gpio_probe(struct device_d *dev)
+{
+	struct starfive_gpio *chip;
+	struct resource *res;
+	struct clk *clk;
+	int ret;
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	clk_enable(clk);
+
+	ret = device_reset(dev);
+	if (ret)
+		return ret;
+
+	ret = pinctrl_single_probe(dev);
+	if (ret)
+		return ret;
+
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	chip = xzalloc(sizeof(*chip));
+	chip->base = IOMEM(res->start);
+
+	chip->gc.base = -1;
+	chip->gc.ngpio = MAX_GPIO;
+	chip->gc.dev = dev;
+	chip->gc.ops = &starfive_gpio_ops;
+
+	/* Disable all GPIO interrupts */
+	iowrite32(0, chip->base + GPIO_IE_HIGH);
+	iowrite32(0, chip->base + GPIO_IE_LOW);
+
+	ret = gpiochip_add(&chip->gc);
+	if (ret) {
+		dev_err(dev, "could not add gpiochip\n");
+		gpiochip_remove(&chip->gc);
+		return ret;
+	}
+
+	writel(1, chip->base + GPIO_EN);
+
+	return 0;
+}
+
+static const struct of_device_id starfive_gpio_match[] = {
+	{ .compatible = "starfive,gpio0", },
+	{ },
+};
+
+static struct driver_d starfive_gpio_driver = {
+	.probe	= starfive_gpio_probe,
+	.name		= "starfive_gpio",
+	.of_compatible	= starfive_gpio_match,
+};
+postcore_platform_driver(starfive_gpio_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Huan Feng <huan.feng@starfivetech.com>");
+MODULE_DESCRIPTION("Starfive VIC GPIO generator driver");
diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index c77466023216..cf2f724d187d 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -128,7 +128,7 @@ static struct pinctrl_ops pcs_ops = {
 	.set_state = pcs_set_state,
 };
 
-static int pcs_probe(struct device_d *dev)
+int pinctrl_single_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct pinctrl_single *pcs;
@@ -215,7 +215,7 @@ static __maybe_unused struct of_device_id pcs_dt_ids[] = {
 
 static struct driver_d pcs_driver = {
 	.name		= "pinctrl-single",
-	.probe		= pcs_probe,
+	.probe		= pinctrl_single_probe,
 	.of_compatible	= DRV_OF_COMPAT(pcs_dt_ids),
 };
 
diff --git a/include/pinctrl.h b/include/pinctrl.h
index 0fd7f491189c..a628c3aac95b 100644
--- a/include/pinctrl.h
+++ b/include/pinctrl.h
@@ -29,6 +29,7 @@ int of_pinctrl_select_state_default(struct device_node *np);
 int pinctrl_gpio_direction_input(unsigned pin);
 int pinctrl_gpio_direction_output(unsigned int pin);
 int pinctrl_gpio_get_direction(unsigned pin);
+int pinctrl_single_probe(struct device_d *dev);
 #else
 static inline int pinctrl_select_state(struct device_d *dev, const char *state)
 {
@@ -64,6 +65,11 @@ static inline int pinctrl_gpio_get_direction(unsigned pin)
 {
 	return -ENOTSUPP;
 }
+
+static inline int pinctrl_single_probe(struct device_d *dev)
+{
+	return -ENOSYS;
+}
 #endif
 
 #endif /* PINCTRL_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


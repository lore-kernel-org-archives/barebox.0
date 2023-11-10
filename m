Delivery-date: Fri, 10 Nov 2023 13:59:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6k-005rSw-0f
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6i-0003AR-ID
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=khjfQh53+xP6Xw9XNl08P/NFxvtu8H7KkVOyB5qW83U=; b=ovo5WQgZEarnXdDv7hIcy9nmav
	04HIWntpAVSstBHHNANP6pZXm49afLnuc+2rEU7Bl6N0FIEM3YXB1rk53+Zie05KPlDIGW5veppPk
	/YtX5Lk7mUlnIuLHPIKqnLzJPv6r8S7p9M6MjqxntjL0Waxy6r8kZvQRWFMHGfUr6zVtLPoMwi9no
	uy3uRDJxpe7d3i58x5gfrkI/i0lPhNfL/JYAPLg72OqyZzc6s+EENDd2HUGWTFfI9+K8IJO5XhLlE
	Z5rUjRnaguLhQstG0tH5VGjVunqvb4EZfmM7I5SAPrMB+06zOkKX9WLhTzSPiKMtZsEhFeO5VlaS1
	wk/HOeaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5b-008k17-1K;
	Fri, 10 Nov 2023 12:58:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5Q-008jtC-35
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-00026V-JG; Fri, 10 Nov 2023 13:58:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-0081XE-Qw; Fri, 10 Nov 2023 13:58:02 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-008rzp-2U;
	Fri, 10 Nov 2023 13:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:43 +0100
Message-Id: <20231110125800.1901232-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_045812_993514_882081C6 
X-CRM114-Status: GOOD (  18.51  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/25] gpio-vf610: Add i.MX93 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/Kconfig      |  3 +-
 drivers/gpio/gpio-vf610.c | 78 ++++++++++++++++++++++++++++++++++++---
 2 files changed, 75 insertions(+), 6 deletions(-)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index e19f5a5aba..6f9ba2aad2 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -63,7 +63,8 @@ config GPIO_IMX
 
 config GPIO_VF610
 	bool "VF610 GPIO controller" if COMPILE_TEST
-	default y if ARCH_VF610
+	depends on ARCH_IMX || ARCH_VF610 || COMPILE_TEST
+	default y if ARCH_VF610 || ARCH_IMX93
 
 config GPIO_MXS
 	bool "MXS GPIO controller" if COMPILE_TEST
diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index 43b2a18496..486463a2d2 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -21,6 +21,8 @@ struct vf610_gpio_port {
 	struct gpio_chip chip;
 	void __iomem *gpio_base;
 	unsigned int pinctrl_base;
+	bool have_paddr;
+	bool need_pinctrl;
 };
 
 #define GPIO_PDOR		0x00
@@ -28,9 +30,25 @@ struct vf610_gpio_port {
 #define GPIO_PCOR		0x08
 #define GPIO_PTOR		0x0c
 #define GPIO_PDIR		0x10
+#define GPIO_PDDR		0x14
+
+struct fsl_gpio_soc_data {
+	/* SoCs has a Port Data Direction Register (PDDR) */
+	bool have_paddr;
+	bool need_pinctrl;
+};
+
+static const struct fsl_gpio_soc_data vf610_data = {
+	.need_pinctrl = true,
+};
+
+static const struct fsl_gpio_soc_data imx_data = {
+	.have_paddr = true,
+};
 
 static const struct of_device_id vf610_gpio_dt_ids[] = {
-	{ .compatible = "fsl,vf610-gpio" },
+	{ .compatible = "fsl,vf610-gpio", .data = &vf610_data, },
+	{ .compatible = "fsl,imx7ulp-gpio", .data = &imx_data, },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, vf610_gpio_dt_ids);
@@ -40,8 +58,16 @@ static int vf610_gpio_get_value(struct gpio_chip *chip, unsigned int gpio)
 {
 	struct vf610_gpio_port *port =
 		container_of(chip, struct vf610_gpio_port, chip);
+	unsigned long mask = BIT(gpio);
+	unsigned long offset = GPIO_PDIR;
+
+	if (port->have_paddr) {
+		mask &= readl(port->gpio_base + GPIO_PDDR);
+		if (mask)
+			offset = GPIO_PDOR;
+	}
 
-	return !!(readl(port->gpio_base + GPIO_PDIR) & BIT(gpio));
+	return !!(readl(port->gpio_base + offset) & BIT(gpio));
 }
 
 static void vf610_gpio_set_value(struct gpio_chip *chip,
@@ -58,8 +84,19 @@ static int vf610_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
 {
 	struct vf610_gpio_port *port =
 		container_of(chip, struct vf610_gpio_port, chip);
+	unsigned long mask = BIT(gpio);
+	u32 val;
 
-	return pinctrl_gpio_direction_input(port->pinctrl_base + gpio);
+	if (port->have_paddr) {
+		val = readl(port->gpio_base + GPIO_PDDR);
+		val &= ~mask;
+		writel(val, port->gpio_base + GPIO_PDDR);
+	}
+
+	if (port->need_pinctrl)
+		return pinctrl_gpio_direction_input(port->pinctrl_base + gpio);
+
+	return 0;
 }
 
 static int vf610_gpio_direction_output(struct gpio_chip *chip, unsigned gpio,
@@ -67,18 +104,41 @@ static int vf610_gpio_direction_output(struct gpio_chip *chip, unsigned gpio,
 {
 	struct vf610_gpio_port *port =
 		container_of(chip, struct vf610_gpio_port, chip);
+	unsigned long mask = BIT(gpio);
+	u32 val;
 
 	vf610_gpio_set_value(chip, gpio, value);
 
-	return pinctrl_gpio_direction_output(port->pinctrl_base + gpio);
+	if (port->have_paddr) {
+		val = readl(port->gpio_base + GPIO_PDDR);
+		val |= mask;
+		writel(val, port->gpio_base + GPIO_PDDR);
+	}
+
+	if (port->need_pinctrl)
+		return pinctrl_gpio_direction_output(port->pinctrl_base + gpio);
+
+	return 0;
 }
 
 static int vf610_gpio_get_direction(struct gpio_chip *chip, unsigned gpio)
 {
 	struct vf610_gpio_port *port =
 		container_of(chip, struct vf610_gpio_port, chip);
+	u32 val;
+
+	if (port->have_paddr) {
+		val = readl(port->gpio_base + GPIO_PDDR);
+		if (val & BIT(gpio))
+			return GPIOF_DIR_OUT;
+		else
+			return GPIOF_DIR_IN;
+	}
+
+	if (port->need_pinctrl)
+		return pinctrl_gpio_get_direction(port->pinctrl_base + gpio);
 
-	return pinctrl_gpio_get_direction(port->pinctrl_base + gpio);
+	return 0;
 }
 
 static struct gpio_ops vf610_gpio_ops = {
@@ -95,6 +155,11 @@ static int vf610_gpio_probe(struct device *dev)
 	struct resource *iores;
 	struct vf610_gpio_port *port;
 	const __be32 *gpio_ranges;
+	struct fsl_gpio_soc_data *devtype;
+
+	ret = dev_get_drvdata(dev, (const void **)&devtype);
+	if (ret)
+		return ret;
 
 	port = xzalloc(sizeof(*port));
 
@@ -106,6 +171,9 @@ static int vf610_gpio_probe(struct device *dev)
 		goto free_port;
 	}
 
+	port->have_paddr = devtype->have_paddr;
+	port->need_pinctrl = devtype->need_pinctrl;
+
 	port->pinctrl_base = be32_to_cpu(gpio_ranges[PINCTRL_BASE]);
 	port->chip.ngpio   = be32_to_cpu(gpio_ranges[COUNT]);
 
-- 
2.39.2




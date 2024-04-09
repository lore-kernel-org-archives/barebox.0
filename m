Delivery-date: Tue, 09 Apr 2024 09:15:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ru5he-0044Hq-2h
	for lore@lore.pengutronix.de;
	Tue, 09 Apr 2024 09:15:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ru5hd-0007x0-Ii
	for lore@pengutronix.de; Tue, 09 Apr 2024 09:15:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NQn9CAGFnxiNCuRdhewVapyxqowJgl45PhK5/dJe4tQ=; b=j08R3EKtiWHxIdYjAKBG1Pqb1L
	pdqI/VAfZ/EbQEqow1YIpgHYjsFd82ldL4P9TjtgZp2U99LTsNzVnfQ3oboQ92BQb2dKumPulcuOy
	dTBk2M60C50aPtMthx+a7k4aWUIirS/YgOTxbcEpdDdDP82HbB/xElfFnxX6QYGA/i8GzQFF/X5r4
	EIU44gR89r7wJC7hs3EzHBa+64aDJ02kjENNOAB4orbuO8at1PEPQKz/aJIHYRdsxy8PxcTtDjqCU
	Ye1GcbF6Ypa6nWma6PDPlQLnWC8maWPuQzz7t4OLrh9GO5HN+6Rekp/tep54Wj/q6mzo6EWJlRImF
	XAbLBXsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru5gw-00000000iAv-3hpR;
	Tue, 09 Apr 2024 07:14:50 +0000
Received: from smtp.cesky-hosting.cz ([2a00:1ed0:2:0:1:5bef:c8ee:1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru5gr-00000000i8Q-35sv
	for barebox@lists.infradead.org;
	Tue, 09 Apr 2024 07:14:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=elrest.cz;
	s=rampa2-202308; t=1712646870;
	bh=xWRR3ywoRm16dTN/G6GYQTWfQ+NnQ1vPd5OzEFpFAw8=;
	h=From:To:Subject:Date:From;
	b=fH2MS4K6SLq/sV7e73m3LuNOjPYSnhXm1LiuqVHbt3F1Pt+cz31NfYlIwxGcP+lTT
	 lr5DZCS7iT7gIr7UCgEksa14XZTwC8Zxtuo/WtqmBUbONYKtTv6HeXYSR1p3LhH/JR
	 ENXv4Y1kEzie+/F6bYcsU8N25+xWrG4Q5utDOB9uJAzX6d30TBJFARlCjs0RQntYoz
	 wqcdru+lnBeFjDCzqFIljqwFpzwLEHkNRX+BI6HV7nce9b6dqodsgg4A/p7BQzrwCg
	 y/7fz3xn3lK0x4bUueuJqxQ6O228tzB1cuUB4K42DuE5UWkbydm9DQ7bA1y8rwWc/i
	 H0Yr1vVQvhrew==
X-Virus-Scanned: Debian amavis at smtp.cesky-hosting.cz
Received: from localhost.localdomain (unknown [185.63.98.16])
	(Authenticated sender: tomas.marek@elrest.cz)
	by smtp.cesky-hosting.cz (Postfix) with ESMTPSA id 8E4BD266F
	for <barebox@lists.infradead.org>; Tue,  9 Apr 2024 09:14:27 +0200 (CEST)
From: Tomas Marek <tomas.marek@elrest.cz>
To: barebox@lists.infradead.org
Date: Tue,  9 Apr 2024 09:14:22 +0200
Message-Id: <20240409071422.5934-1-tomas.marek@elrest.cz>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_001446_439813_85873BC6 
X-CRM114-Status: GOOD (  17.41  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] gpio: Add Intel gpio controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Tomas Marek <tomas.marek@elrest.cz>
---
 drivers/gpio/Kconfig               |   5 +
 drivers/gpio/Makefile              |   1 +
 drivers/gpio/gpio-intel.c          | 198 +++++++++++++++++++++++++++++
 include/platform_data/gpio-intel.h |  10 ++
 4 files changed, 214 insertions(+)
 create mode 100644 drivers/gpio/gpio-intel.c
 create mode 100644 include/platform_data/gpio-intel.h

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 9f27addaa2..094c9b7fd4 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -219,6 +219,11 @@ config GPIO_LATCH
 	  Say yes here to enable a driver for GPIO multiplexers based on latches
 	  connected to other GPIOs.
 
+config GPIO_INTEL
+	tristate "Intel GPIO driver"
+	help
+	  Say Y or M here to build support for the Intel GPIO driver.
+
 endmenu
 
 endif
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 628e975285..b0575ccf8c 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -30,3 +30,4 @@ obj-$(CONFIG_GPIO_SIFIVE)	+= gpio-sifive.o
 obj-$(CONFIG_GPIO_STARFIVE)	+= gpio-starfive-vic.o
 obj-$(CONFIG_GPIO_ZYNQ)		+= gpio-zynq.o
 obj-$(CONFIG_GPIO_LATCH)	+= gpio-latch.o
+obj-$(CONFIG_GPIO_INTEL)	+= gpio-intel.o
diff --git a/drivers/gpio/gpio-intel.c b/drivers/gpio/gpio-intel.c
new file mode 100644
index 0000000000..ff73169ec7
--- /dev/null
+++ b/drivers/gpio/gpio-intel.c
@@ -0,0 +1,198 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2004 Tomas Marek, Elrest Solutions Company s.r.o.
+
+/*
+ * Based on the Linux kernel v6.8 drivers/pinctrl/intel/pinctrl-intel.c.
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <io.h>
+#include <gpio.h>
+
+#include <platform_data/gpio-intel.h>
+
+#define PADBAR				0x00c
+
+/* Offset from pad_regs */
+#define PADCFG0				0x000
+#define PADCFG0_RXEVCFG_MASK		GENMASK(26, 25)
+#define PADCFG0_RXEVCFG_LEVEL		(0 << 25)
+#define PADCFG0_RXEVCFG_EDGE		(1 << 25)
+#define PADCFG0_RXEVCFG_DISABLED	(2 << 25)
+#define PADCFG0_RXEVCFG_EDGE_BOTH	(3 << 25)
+#define PADCFG0_PREGFRXSEL		BIT(24)
+#define PADCFG0_RXINV			BIT(23)
+#define PADCFG0_GPIROUTIOXAPIC		BIT(20)
+#define PADCFG0_GPIROUTSCI		BIT(19)
+#define PADCFG0_GPIROUTSMI		BIT(18)
+#define PADCFG0_GPIROUTNMI		BIT(17)
+#define PADCFG0_PMODE_SHIFT		10
+#define PADCFG0_PMODE_MASK		GENMASK(13, 10)
+#define PADCFG0_PMODE_GPIO		0
+#define PADCFG0_GPIORXDIS		BIT(9)
+#define PADCFG0_GPIOTXDIS		BIT(8)
+#define PADCFG0_GPIORXSTATE		BIT(1)
+#define PADCFG0_GPIOTXSTATE		BIT(0)
+
+struct intel_gpio_chip {
+	struct gpio_chip chip;
+	void __iomem *community_pad_base;
+};
+
+static inline struct intel_gpio_chip *to_intel_gpio(struct gpio_chip *gc)
+{
+	return container_of(gc, struct intel_gpio_chip, chip);
+}
+
+static void __iomem *intel_gpio_padcfg0_reg(const struct intel_gpio_chip *chip,
+					    const unsigned int gpio)
+{
+	const u32 pad_cfg_offset = 16;
+
+	return chip->community_pad_base + pad_cfg_offset * gpio;
+}
+
+static u32 intel_gpio_padcfg0_value(const struct intel_gpio_chip *chip,
+				    const unsigned int gpio)
+{
+	return readl(intel_gpio_padcfg0_reg(chip, gpio));
+}
+
+static void intel_gpio_padcfg0_write(const struct intel_gpio_chip *chip,
+				     const unsigned int gpio, u32 value)
+{
+	writel(value, intel_gpio_padcfg0_reg(chip, gpio));
+}
+
+static void intel_gpio_set_value(struct gpio_chip *gc, unsigned int gpio,
+				 int value)
+{
+	struct intel_gpio_chip *chip = to_intel_gpio(gc);
+	u32 padcfg0;
+
+	padcfg0 = intel_gpio_padcfg0_value(chip, gpio);
+	if (value)
+		padcfg0 |= PADCFG0_GPIOTXSTATE;
+	else
+		padcfg0 &= ~PADCFG0_GPIOTXSTATE;
+	intel_gpio_padcfg0_write(chip, gpio, padcfg0);
+}
+
+static int intel_gpio_get_value(struct gpio_chip *gc, unsigned int gpio)
+{
+	struct intel_gpio_chip *chip = to_intel_gpio(gc);
+	u32 padcfg0;
+
+	padcfg0 = intel_gpio_padcfg0_value(chip, gpio);
+	if (!(padcfg0 & PADCFG0_GPIOTXDIS))
+		return !!(padcfg0 & PADCFG0_GPIOTXSTATE);
+
+	return !!(padcfg0 & PADCFG0_GPIORXSTATE);
+}
+
+static int intel_gpio_get_direction(struct gpio_chip *gc, unsigned int gpio)
+{
+	struct intel_gpio_chip *chip = to_intel_gpio(gc);
+	u32 padcfg0;
+
+	padcfg0 = intel_gpio_padcfg0_value(chip, gpio);
+
+	if (padcfg0 & PADCFG0_PMODE_MASK)
+		return -EINVAL;
+
+	if (padcfg0 & PADCFG0_GPIOTXDIS)
+		return GPIOF_DIR_IN;
+
+	return GPIOF_DIR_IN;
+}
+
+static int intel_gpio_direction_input(struct gpio_chip *gc, unsigned int gpio)
+{
+	struct intel_gpio_chip *chip = to_intel_gpio(gc);
+	u32 padcfg0;
+
+	padcfg0 = intel_gpio_padcfg0_value(chip, gpio);
+	padcfg0 &= ~PADCFG0_GPIORXDIS;
+	padcfg0 |= PADCFG0_GPIOTXDIS;
+	intel_gpio_padcfg0_write(chip, gpio, padcfg0);
+
+	return 0;
+}
+
+static int intel_gpio_direction_output(struct gpio_chip *gc, unsigned int gpio,
+				       int value)
+{
+	struct intel_gpio_chip *chip = to_intel_gpio(gc);
+	u32 padcfg0;
+
+	padcfg0 = intel_gpio_padcfg0_value(chip, gpio);
+	padcfg0 &= ~PADCFG0_GPIOTXDIS;
+	padcfg0 |= PADCFG0_GPIORXDIS;
+	if (value)
+		padcfg0 |= PADCFG0_GPIOTXSTATE;
+	else
+		padcfg0 &= ~PADCFG0_GPIOTXSTATE;
+	intel_gpio_padcfg0_write(chip, gpio, padcfg0);
+
+	return 0;
+}
+
+static struct gpio_ops intel_gpio_ops = {
+	.direction_input = intel_gpio_direction_input,
+	.direction_output = intel_gpio_direction_output,
+	.get_direction = intel_gpio_get_direction,
+	.get = intel_gpio_get_value,
+	.set = intel_gpio_set_value,
+};
+
+static int intel_gpio_probe(struct device *dev)
+{
+	const struct gpio_intel_platform_data *pdata;
+	struct intel_gpio_chip *intel_gpio;
+	void __iomem *community_pad_base;
+	void __iomem *community_base;
+	struct resource *iores;
+	int ret;
+
+	pdata = (struct gpio_intel_platform_data *)dev->platform_data;
+	if (!pdata) {
+		dev_err(dev, "Configuration missing!\n");
+		return -EINVAL;
+	}
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		dev_err(dev, "Memory resource request failed: %ld\n",
+			PTR_ERR(iores));
+		return PTR_ERR(iores);
+	}
+
+	intel_gpio = xzalloc(sizeof(*intel_gpio));
+
+	intel_gpio->chip.ops = &intel_gpio_ops;
+	intel_gpio->chip.ngpio = pdata->ngpios;
+	intel_gpio->chip.dev = dev;
+
+	community_base = IOMEM(iores->start);
+	community_pad_base = IOMEM(community_base + readl(community_base + PADBAR));
+
+	intel_gpio->community_pad_base = community_pad_base;
+
+	ret = gpiochip_add(&intel_gpio->chip);
+
+	if (ret) {
+		dev_err(dev, "Couldn't add gpiochip: %d\n", ret);
+		kfree(intel_gpio);
+		return ret;
+	}
+
+	return 0;
+}
+
+static struct driver_d intel_gpio_driver = {
+	.name = "intel-gpio",
+	.probe = intel_gpio_probe,
+};
+
+coredevice_platform_driver(intel_gpio_driver);
diff --git a/include/platform_data/gpio-intel.h b/include/platform_data/gpio-intel.h
new file mode 100644
index 0000000000..f04baadd4d
--- /dev/null
+++ b/include/platform_data/gpio-intel.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef __GPIO_INTEL_H
+#define __GPIO_INTEL_H
+
+struct gpio_intel_platform_data {
+	unsigned int	ngpios;
+};
+
+#endif /* __GPIO_INTEL_H */
-- 
2.39.2




Delivery-date: Wed, 22 Jan 2025 08:44:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taVPB-002xwT-31
	for lore@lore.pengutronix.de;
	Wed, 22 Jan 2025 08:44:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taVPB-0007hC-Jh
	for lore@pengutronix.de; Wed, 22 Jan 2025 08:44:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m42oNnuQnq5uY2sIRRvs11oce8WqbjWfWJqoBBNAsmw=; b=1ghKU9tXFZTU6QOHQ2Mq4LWhML
	6SE3wIZBd1YWaT2LKVhFjGlQU+Bdo+LpanGMbYC5iQfJOpkE/wInJVGlCX/ABbWL92JIof6FnPq3h
	nTSWJeAMTeTTm7Y+F9i+SwMV9oaWYS3FBrx6zrVdAFUQW3FWooimWdPXNZiASvZRpOw5CIIko0Myo
	8DAIUYN1+WHqp4ZO45oeaTtoN0u5GkO2eDa0kMwXegqyxuSavLcgHg/WT2mBU1NEYmV1+RlhAk5Na
	uQiFDnkiyA//UfNB4vetPZBYMAOhseykIj9PEG7f3LKaMOsbnDsaGQzmwkFyPIPBEg12cRzjt4upK
	00eRsJkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taVOi-00000009cht-2sdz;
	Wed, 22 Jan 2025 07:43:36 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taVMX-00000009cTC-2zF8
	for barebox@lists.infradead.org;
	Wed, 22 Jan 2025 07:41:22 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-54287a3ba3cso572443e87.0
        for <barebox@lists.infradead.org>; Tue, 21 Jan 2025 23:41:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737531679; x=1738136479; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m42oNnuQnq5uY2sIRRvs11oce8WqbjWfWJqoBBNAsmw=;
        b=bpgVGOhlHu5AdFdVZREJ1zhmddaUc65pegujVHIF8o4LGITJ7nzsaJKHCqz8azydtR
         Z798vZc1mP8fiekjOYx0K6/APIeDqOq+aZxmRXFz6TGL2/5eqG3b72rx2zWx8DZ1G1lo
         tlHx17g9825brZJyatKaVYu4YW2OUmw1udUpPgk5YBJdS/VBzQtc6F+f0XE3F2QBLm0O
         6hQdU1YsKRk81Ro7ArChshE1lY20UooSApQpp9+LyYIgYWz6zKjudUFEVWZi5lgHlCzx
         +E7flEsU9RGwUYXxnl1yNPbljCYqFFbhTtPTWcMOvLN3Uf/mImgV496apVMfZbMWbVFL
         o7Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737531679; x=1738136479;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m42oNnuQnq5uY2sIRRvs11oce8WqbjWfWJqoBBNAsmw=;
        b=Q8y/2wXkUJXdKA5LMhpmEOg5VZf9gTkZWIx6EgY/lKJgDalwK2GOZffDBn3PLxs92R
         qqJiwr8KiA5CimbreH/bFrxLeG3e+W8TWiKRgadBBBvetriYrujDlffRCz6mzevvYwMt
         4993mB5U0c3EP1GvxgRcsPWNAenuHX585vGRA9Z6w9FtHyD0mXzbrKnPU/0zjIcHXcZ9
         44tocoZMcYgkfASq6CCpJlGP9PowRuTYAgktPptzOstLN3iY1/1LVtGVqEOfycxCzwQf
         F+jvRRfCaI6ngC4QKkbl9KLFmFdXJHSvASPNJBx7/HMuTy4FBAfDP6TnWFFh4TTU9O9e
         5AZw==
X-Gm-Message-State: AOJu0Yz8sGHuNOU4AUHVUN+WQwX4jzZx6Cm1dJNEp5YAJMBo2L6X2lNV
	1wKQhdqzuR2JzlCQYxLwGaURI5NDLg2/kDgGmGQ3vDK81i5MQMunTIwZIg==
X-Gm-Gg: ASbGncs8FkiRgorJPW5I2cNK0mXJ6djiZJQOcmrBu/JsAc31LjL26t+Gb4tkTllf92r
	6UWIay/VAPS+aGk7m/oFfLX7zMNUg2YmtL0LHxcp3ICar79qraQgmZSifGfUryXKzU4biNc5OXd
	MGHTTCJdXUSEscPeO4d/A+crJBcsOpMdRJVgS3O7t5njIDSApfUW4nh07qIVcegL2g4OOJOl2xa
	gHxywPxNBM8YG90qFb++DJ3qEzZYohiHKdjG4T53gdCQJfKVwwqYpqiC2hST6/ezamoNl1SCZhL
	Tq3cARR22nHPqqM4
X-Google-Smtp-Source: AGHT+IG4rE7/tNgZsYuJa3lU3aJmDXLEl4MbMaQv2gpVltps79uesot02jKbVYeLL+F7sctD8Hkg1Q==
X-Received: by 2002:a05:6512:1044:b0:53e:2098:861d with SMTP id 2adb3069b0e04-542abf65314mr10055271e87.15.1737531677187;
        Tue, 21 Jan 2025 23:41:17 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af60a59sm2157653e87.150.2025.01.21.23.41.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 23:41:15 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 22 Jan 2025 10:41:04 +0300
Message-Id: <20250122074104.25675-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_234121_756025_89E4FDED 
X-CRM114-Status: GOOD (  25.80  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] gpio: add driver for SAMA5D2 PIOBU pins
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

PIOBU pins do not lose their voltage during Backup/Self-refresh.
This patch adds a simple GPIO controller for them and a
maintainer for the driver.
This driver adds support for using the pins as GPIO
offering the possibility to read/set the voltage.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/gpio/Kconfig              |  11 ++
 drivers/gpio/Makefile             |   1 +
 drivers/gpio/gpio-sama5d2-piobu.c | 238 ++++++++++++++++++++++++++++++
 3 files changed, 250 insertions(+)
 create mode 100644 drivers/gpio/gpio-sama5d2-piobu.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 76b11d93aa..dd95e8906b 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -177,6 +177,17 @@ config GPIO_ROCKCHIP
 	  Say yes here to include the driver for the GPIO controller found on
 	  Rockchip SoCs.
 
+config GPIO_SAMA5D2_PIOBU
+	bool "SAMA5D2 PIOBU GPIO support"
+	depends on MFD_SYSCON
+	depends on OF_GPIO
+	depends on ARCH_AT91 || COMPILE_TEST
+	help
+	  Say yes here to use the PIOBU pins as GPIOs.
+	  PIOBU pins on the SAMA5D2 can be used as GPIOs.
+	  The difference from regular GPIOs is that they
+	  maintain their value during backup/self-refresh.
+
 config GPIO_STMPE
 	depends on MFD_STMPE
 	bool "STMPE GPIO Expander"
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index b0575ccf8c..8560e1f059 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -19,6 +19,7 @@ obj-$(CONFIG_GPIO_OMAP)		+= gpio-omap.o
 obj-$(CONFIG_GPIO_PCA953X)	+= gpio-pca953x.o
 obj-$(CONFIG_GPIO_PCF857X)	+= gpio-pcf857x.o
 obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
+obj-$(CONFIG_GPIO_SAMA5D2_PIOBU) += gpio-sama5d2-piobu.o
 obj-$(CONFIG_GPIO_STMPE)	+= gpio-stmpe.o
 obj-$(CONFIG_GPIO_ROCKCHIP)	+= gpio-rockchip.o
 obj-$(CONFIG_GPIO_TEGRA)	+= gpio-tegra.o
diff --git a/drivers/gpio/gpio-sama5d2-piobu.c b/drivers/gpio/gpio-sama5d2-piobu.c
new file mode 100644
index 0000000000..1de235ee8d
--- /dev/null
+++ b/drivers/gpio/gpio-sama5d2-piobu.c
@@ -0,0 +1,238 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * SAMA5D2 PIOBU GPIO controller
+ *
+ * Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries
+ *
+ * Author: Andrei Stefanescu <andrei.stefanescu@microchip.com>
+ *
+ */
+#include <common.h>
+#include <gpio.h>
+#include <linux/regmap.h>
+#include <mfd/syscon.h>
+
+#define PIOBU_NUM 8
+#define PIOBU_REG_SIZE 4
+
+/*
+ * backup mode protection register for tamper detection
+ * normal mode protection register for tamper detection
+ * wakeup signal generation
+ */
+#define PIOBU_BMPR 0x7C
+#define PIOBU_NMPR 0x80
+#define PIOBU_WKPR 0x90
+
+#define PIOBU_BASE 0x18 /* PIOBU offset from SECUMOD base register address. */
+
+#define PIOBU_DET_OFFSET 16
+
+/* In the datasheet this bit is called OUTPUT */
+#define PIOBU_DIRECTION BIT(8)
+#define PIOBU_OUT BIT(8)
+#define PIOBU_IN 0
+
+#define PIOBU_SOD BIT(9)
+#define PIOBU_PDS BIT(10)
+
+#define PIOBU_HIGH BIT(9)
+#define PIOBU_LOW 0
+
+struct sama5d2_piobu {
+	struct gpio_chip chip;
+	struct regmap *regmap;
+};
+
+/*
+ * sama5d2_piobu_setup_pin() - prepares a pin for set_direction call
+ *
+ * Do not consider pin for tamper detection (normal and backup modes)
+ * Do not consider pin as tamper wakeup interrupt source
+ */
+static int sama5d2_piobu_setup_pin(struct gpio_chip *chip, unsigned int pin)
+{
+	int ret;
+	struct sama5d2_piobu *piobu = container_of(chip, struct sama5d2_piobu,
+						   chip);
+	unsigned int mask = BIT(PIOBU_DET_OFFSET + pin);
+
+	ret = regmap_update_bits(piobu->regmap, PIOBU_BMPR, mask, 0);
+	if (ret)
+		return ret;
+
+	ret = regmap_update_bits(piobu->regmap, PIOBU_NMPR, mask, 0);
+	if (ret)
+		return ret;
+
+	return regmap_update_bits(piobu->regmap, PIOBU_WKPR, mask, 0);
+}
+
+/*
+ * sama5d2_piobu_write_value() - writes value & mask at the pin's PIOBU register
+ */
+static int sama5d2_piobu_write_value(struct gpio_chip *chip, unsigned int pin,
+				     unsigned int mask, unsigned int value)
+{
+	int reg;
+	struct sama5d2_piobu *piobu = container_of(chip, struct sama5d2_piobu,
+						   chip);
+
+	reg = PIOBU_BASE + pin * PIOBU_REG_SIZE;
+
+	return regmap_update_bits(piobu->regmap, reg, mask, value);
+}
+
+/*
+ * sama5d2_piobu_read_value() - read the value with masking from the pin's PIOBU
+ *			      register
+ */
+static int sama5d2_piobu_read_value(struct gpio_chip *chip, unsigned int pin,
+				    unsigned int mask)
+{
+	struct sama5d2_piobu *piobu = container_of(chip, struct sama5d2_piobu,
+						   chip);
+	unsigned int val, reg;
+	int ret;
+
+	reg = PIOBU_BASE + pin * PIOBU_REG_SIZE;
+	ret = regmap_read(piobu->regmap, reg, &val);
+	if (ret < 0)
+		return ret;
+
+	return val & mask;
+}
+
+/*
+ * sama5d2_piobu_get_direction() - gpiochip get_direction
+ */
+static int sama5d2_piobu_get_direction(struct gpio_chip *chip,
+				       unsigned int pin)
+{
+	int ret = sama5d2_piobu_read_value(chip, pin, PIOBU_DIRECTION);
+
+	if (ret < 0)
+		return ret;
+
+	return (ret == PIOBU_IN) ? GPIOF_DIR_IN : GPIOF_DIR_OUT;
+}
+
+/*
+ * sama5d2_piobu_direction_input() - gpiochip direction_input
+ */
+static int sama5d2_piobu_direction_input(struct gpio_chip *chip,
+					 unsigned int pin)
+{
+	return sama5d2_piobu_write_value(chip, pin, PIOBU_DIRECTION, PIOBU_IN);
+}
+
+/*
+ * sama5d2_piobu_direction_output() - gpiochip direction_output
+ */
+static int sama5d2_piobu_direction_output(struct gpio_chip *chip,
+					  unsigned int pin, int value)
+{
+	unsigned int val = PIOBU_OUT;
+
+	if (value)
+		val |= PIOBU_HIGH;
+
+	return sama5d2_piobu_write_value(chip, pin, PIOBU_DIRECTION | PIOBU_SOD,
+					 val);
+}
+
+/*
+ * sama5d2_piobu_get() - gpiochip get
+ */
+static int sama5d2_piobu_get(struct gpio_chip *chip, unsigned int pin)
+{
+	/* if pin is input, read value from PDS else read from SOD */
+	int ret = sama5d2_piobu_get_direction(chip, pin);
+
+	if (ret == GPIOF_DIR_IN)
+		ret = sama5d2_piobu_read_value(chip, pin, PIOBU_PDS);
+	else if (ret == GPIOF_DIR_OUT)
+		ret = sama5d2_piobu_read_value(chip, pin, PIOBU_SOD);
+
+	if (ret < 0)
+		return ret;
+
+	return !!ret;
+}
+
+/*
+ * sama5d2_piobu_set() - gpiochip set
+ */
+static void sama5d2_piobu_set(struct gpio_chip *chip, unsigned int pin,
+			      int value)
+{
+	if (!value)
+		value = PIOBU_LOW;
+	else
+		value = PIOBU_HIGH;
+
+	sama5d2_piobu_write_value(chip, pin, PIOBU_SOD, value);
+}
+
+static struct gpio_ops sama5d2_piobu_ops = {
+	.direction_input = sama5d2_piobu_direction_input,
+	.direction_output = sama5d2_piobu_direction_output,
+	.get = sama5d2_piobu_get,
+	.set = sama5d2_piobu_set,
+	.get_direction = sama5d2_piobu_get_direction,
+};
+
+static int sama5d2_piobu_probe(struct device *dev)
+{
+	struct sama5d2_piobu *piobu;
+	int ret, i;
+
+	piobu = kzalloc(sizeof(*piobu), GFP_KERNEL);
+	if (!piobu)
+		return -ENOMEM;
+
+	piobu->chip.base = -1;
+	piobu->chip.ops = &sama5d2_piobu_ops;
+	piobu->chip.ngpio = PIOBU_NUM;
+	piobu->chip.dev = dev;
+
+	piobu->regmap = syscon_node_to_regmap(dev->of_node);
+	if (IS_ERR(piobu->regmap)) {
+		dev_err(dev, "Failed to get syscon regmap %ld\n",
+			PTR_ERR(piobu->regmap));
+		return PTR_ERR(piobu->regmap);
+	}
+
+	ret = gpiochip_add(&piobu->chip);
+	if (ret) {
+		dev_err(dev, "Failed to add gpiochip %d\n", ret);
+		return ret;
+	}
+
+	for (i = 0; i < PIOBU_NUM; ++i) {
+		ret = sama5d2_piobu_setup_pin(&piobu->chip, i);
+		if (ret) {
+			dev_err(dev, "Failed to setup pin: %d %d\n", i, ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static const struct of_device_id sama5d2_piobu_ids[] = {
+	{ .compatible = "atmel,sama5d2-secumod" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, sama5d2_piobu_ids);
+
+static struct driver sama5d2_piobu_driver = {
+	.name = "sama5d2-piobu",
+	.of_compatible = DRV_OF_COMPAT(sama5d2_piobu_ids),
+	.probe = sama5d2_piobu_probe,
+};
+coredevice_platform_driver(sama5d2_piobu_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("SAMA5D2 PIOBU controller driver");
+MODULE_AUTHOR("Andrei Stefanescu <andrei.stefanescu@microchip.com>");
-- 
2.39.1




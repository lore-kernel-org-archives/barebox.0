Delivery-date: Fri, 28 Mar 2025 07:32:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ty3Ga-005BO9-15
	for lore@lore.pengutronix.de;
	Fri, 28 Mar 2025 07:32:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ty3GZ-0003S2-5F
	for lore@pengutronix.de; Fri, 28 Mar 2025 07:32:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fav8dF0Sfs/lXJUYtE8S/bdASvDitKNLw+1lGF2g/lY=; b=OCSH20hCMEWk29OWVb8TYTTLs9
	7UQjJcWLMvQY65NCk3nkgX4bpTkkawGEZZFUNlyXEkZ3e5AItWVqQ1Y/ZPhDMVrpbCpXbXw70AOu/
	a/gIJck/8gmch3uYPBCPqZGWijhTejCCM5zZ9wPFIlQQlhMTZn8zc1NFmlTB91rGjQ+ALqUJc08In
	3bGYiKpuRIOVqLN3asvPDjNBP7wAOCuk3Hxr86n+iZQIBI+H5NX0LCQuZalZ0oFbxk7UhiVl5YN2z
	h+fkxGM3UcnYVrx4tOf9dU4HgrSn+CuMalWBLBBc7Ov3bwp5pwBu36n+pmaOMI71V5rKSZSTV79g7
	5d0+12Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty3Fn-0000000CjDx-36U2;
	Fri, 28 Mar 2025 06:31:43 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty3Fj-0000000CjCv-1ljC
	for barebox@lists.infradead.org;
	Fri, 28 Mar 2025 06:31:40 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-54996d30bfbso1572565e87.2
        for <barebox@lists.infradead.org>; Thu, 27 Mar 2025 23:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743143497; x=1743748297; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fav8dF0Sfs/lXJUYtE8S/bdASvDitKNLw+1lGF2g/lY=;
        b=A3GzqYj/UpxedAQRplVwXyFPGs1n2z/KlJS8/C05/ByMdmsFCdK3aFpoVjBbtQFZm+
         t/5Qp7f++wJE8UHLu/T5CmYTdBgVSJP3UTB+RAi68NaHgtTKezP5qN/i2Smc/ffAQD9k
         lVAtZ1XvflDUA9mpN2o89AVlNdkNiw5w7wbONB9T6iV5hXMZZgUZZOeoJ2uDilnFJXGD
         UblkeO0YHRPe8i91bD5w7tWklcfhsLVRFlA++dy091/LUEnHhnM94H9zYcetnnp6Hmz5
         eqS/BvPR+Ep6m67m64ab7j8xU4DcQ4i/DzZO/y1Kb3SUga8Su+m5JOfpXUMKpVCnK02s
         UCkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743143497; x=1743748297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fav8dF0Sfs/lXJUYtE8S/bdASvDitKNLw+1lGF2g/lY=;
        b=ig9+W1kVIGYWIrrG2378pUwpPae/Z3Vs6kp+3R8N0lFrgnFdEQbpLseP1IoTO7Khwq
         CKpQIMqw+tAjollNwGhlLJ1A4ii0PR0ophHzoj2Tfa5uJtltzEFjpE3H58SPRrDIWUuH
         uUTVKBisqR6+ty5Ou9sHj+42TD3IiXt57/K18ffVa8JfZA3ED77CvSLbSnLEtMy5/yRL
         6QXAFLIoZZQz3Gh8i7ThUrEmp9Eoj1GUErpLqEOMyURu042HgYaLsZpWsL3zSZT+qheW
         eGwvdzlREKmvWMuixI97iUeiLILFf4aISUzVn7wBANx6x/JVPqxHQfcaMZLMqcDWvTbZ
         7cxg==
X-Gm-Message-State: AOJu0YwMmsV5JxPaOeJs2jC4q9rdZV4XufnCRYzKubi+mJ8piFxovbyq
	TaMhWfjD+3Ks+0Vp/1IBKceeE/YRPSiG2gTwPjFlseL1Wstd7OxK2+fJKg==
X-Gm-Gg: ASbGncvTKrok2R8qP0p9WI8dkhRpaeEjvk7mMs664IHtaTYawxmSI+4L7UgfT4Bzdxs
	/6s+dTekmzrFinjCox9nStTyy500oEJSenixzC40JLDUV8qMHIwFfXj49Up+ywRmQcV2LmUYT4/
	uIwz7Fa6nineTFK0ENrWNkCH89rwy+oUgA2wj8MtgITsaeUeGFgBanR7dA51T7+xuLdST9W+Wl3
	XkBwjCQXExyn5rQMmvRARb045f7zY1V2OMv4RHzz9OyxeHQMMuvGFdq3JP3i8JSN+RCjOvVXoyR
	1NkkYXrjorcijq6GMXB4+WH9yHszM7Dyc8/VHjZXR1VoQVDOKbAhr2Ls12Z2+kFahXeKb2ixzl7
	Lpg==
X-Google-Smtp-Source: AGHT+IGjqbwLhegxPg0sml0MutQDyNWiguauxyDHDW6EXA0vtnMCsVfsYWMN/GedtMstYuLscgNQCw==
X-Received: by 2002:a05:6512:e83:b0:549:8c2a:3b4 with SMTP id 2adb3069b0e04-54b011d5bfamr2003519e87.13.1743143496615;
        Thu, 27 Mar 2025 23:31:36 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b09591554sm194355e87.196.2025.03.27.23.31.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 23:31:35 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 28 Mar 2025 09:31:22 +0300
Message-Id: <20250328063122.36276-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250328063122.36276-1-eagle.alexander923@gmail.com>
References: <20250328063122.36276-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_233139_463340_6CA34F4A 
X-CRM114-Status: GOOD (  24.99  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] gpio: clk-gpio: Updating the driver from the kernel repository
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch replaces the driver code from the Linux kernel repository,
adding new driver variants gpio-mux-clock and gated-fixed-clock.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/clk-gpio.c | 337 ++++++++++++++++++++++++++++++++---------
 1 file changed, 264 insertions(+), 73 deletions(-)

diff --git a/drivers/clk/clk-gpio.c b/drivers/clk/clk-gpio.c
index 940a20523e..325d523921 100644
--- a/drivers/clk/clk-gpio.c
+++ b/drivers/clk/clk-gpio.c
@@ -1,121 +1,312 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-License-Identifier: GPL-2.0
 /*
- * clk-gpio.c - clock that can be enabled and disabled via GPIO output
- * Based on Linux clk support
+ * Copyright (C) 2013 - 2014 Texas Instruments Incorporated - https://www.ti.com
  *
- * Copyright (c) 2018 Nikita Yushchenko <nikita.yoush@cogentembedded.com>
+ * Authors:
+ *    Jyri Sarha <jsarha@ti.com>
+ *    Sergej Sawazki <ce3a@gmx.de>
+ *
+ * Gpio controlled clock implementation
  */
+
 #include <common.h>
-#include <malloc.h>
+#include <regulator.h>
 #include <linux/clk.h>
+#include <linux/clk-provider.h>
 #include <linux/err.h>
-#include <gpio.h>
-#include <of_gpio.h>
-#include <init.h>
+#include <linux/gpio/consumer.h>
 
+/**
+ * struct clk_gpio - gpio gated clock
+ *
+ * @hw:		handle between common and hardware-specific interfaces
+ * @gpiod:	gpio descriptor
+ *
+ * Clock with a gpio control for enabling and disabling the parent clock
+ * or switching between two parents by asserting or deasserting the gpio.
+ *
+ * Implements .enable, .disable and .is_enabled or
+ * .get_parent, .set_parent and .determine_rate depending on which clk_ops
+ * is used.
+ */
 struct clk_gpio {
-	struct clk_hw hw;
-	const char *parent;
-	int gpio;
+	struct clk_hw	hw;
+	struct gpio_desc *gpiod;
 };
+
 #define to_clk_gpio(_hw) container_of(_hw, struct clk_gpio, hw)
 
-static int clk_gpio_enable(struct clk_hw *hw)
+static int clk_gpio_gate_enable(struct clk_hw *hw)
 {
-	struct clk_gpio *clk_gpio = to_clk_gpio(hw);
+	struct clk_gpio *clk = to_clk_gpio(hw);
+
+	gpiod_set_value(clk->gpiod, 1);
 
-	gpio_set_active(clk_gpio->gpio, true);
 	return 0;
 }
 
-static void clk_gpio_disable(struct clk_hw *hw)
+static void clk_gpio_gate_disable(struct clk_hw *hw)
+{
+	struct clk_gpio *clk = to_clk_gpio(hw);
+
+	gpiod_set_value(clk->gpiod, 0);
+}
+
+static int clk_gpio_gate_is_enabled(struct clk_hw *hw)
 {
-	struct clk_gpio *clk_gpio = to_clk_gpio(hw);
+	struct clk_gpio *clk = to_clk_gpio(hw);
 
-	gpio_set_active(clk_gpio->gpio, false);
+	return gpiod_get_value(clk->gpiod);
 }
 
-static int clk_gpio_is_enabled(struct clk_hw *hw)
+static const struct clk_ops clk_gpio_gate_ops = {
+	.enable = clk_gpio_gate_enable,
+	.disable = clk_gpio_gate_disable,
+	.is_enabled = clk_gpio_gate_is_enabled,
+};
+
+static int clk_gpio_mux_get_parent(struct clk_hw *hw)
+{
+	struct clk_gpio *clk = to_clk_gpio(hw);
+
+	return gpiod_get_value(clk->gpiod);
+}
+
+static int clk_gpio_mux_set_parent(struct clk_hw *hw, u8 index)
 {
-	struct clk_gpio *clk_gpio = to_clk_gpio(hw);
+	struct clk_gpio *clk = to_clk_gpio(hw);
 
-	return gpio_is_active(clk_gpio->gpio);
+	gpiod_set_value(clk->gpiod, index);
+
+	return 0;
 }
 
-static struct clk_ops clk_gpio_ops = {
+static const struct clk_ops clk_gpio_mux_ops = {
+	.get_parent = clk_gpio_mux_get_parent,
+	.set_parent = clk_gpio_mux_set_parent,
 	.set_rate = clk_parent_set_rate,
 	.round_rate = clk_parent_round_rate,
-	.enable = clk_gpio_enable,
-	.disable = clk_gpio_disable,
-	.is_enabled = clk_gpio_is_enabled,
 };
 
-static int of_gpio_clk_probe(struct device *dev)
+static struct clk_hw *clk_register_gpio(struct device *dev, u8 num_parents,
+					struct gpio_desc *gpiod,
+					const struct clk_ops *clk_gpio_ops)
 {
-	struct device_node *node = dev->device_node;
 	struct clk_gpio *clk_gpio;
-	enum of_gpio_flags of_flags;
-	unsigned long flags;
-	int ret;
+	struct clk_hw *hw;
+	struct clk_init_data init = {};
+	const char *parent_names[2];
+	int err;
 
 	clk_gpio = xzalloc(sizeof(*clk_gpio));
 	if (!clk_gpio)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
 
-	clk_gpio->parent = of_clk_get_parent_name(node, 0);
-	if (!clk_gpio->parent) {
-		ret = -EINVAL;
-		goto no_parent;
-	}
+	if (of_clk_parent_fill(dev->of_node, parent_names, num_parents) != num_parents)
+		return ERR_PTR(-EINVAL);
 
-	clk_gpio->hw.clk.ops = &clk_gpio_ops;
-	clk_gpio->hw.clk.parent_names = &clk_gpio->parent;
-	clk_gpio->hw.clk.num_parents = 1;
-
-	clk_gpio->hw.clk.name = node->name;
-	of_property_read_string(node, "clock-output-names",
-			&clk_gpio->hw.clk.name);
-
-	ret = of_get_named_gpio_flags(node, "enable-gpios", 0,
-			&of_flags);
-	if (ret >= 0 && !gpio_is_valid(ret))
-		ret = -EINVAL;
-	if (ret < 0)
-		goto no_gpio;
-	clk_gpio->gpio = ret;
-
-	flags = GPIOF_OUT_INIT_ACTIVE;
-	if (of_flags & OF_GPIO_ACTIVE_LOW)
-		flags |= GPIOF_ACTIVE_LOW;
-	ret = gpio_request_one(clk_gpio->gpio, flags, clk_gpio->hw.clk.name);
-	if (ret)
-		goto no_request;
+	init.name = dev->of_node->name;
+	of_property_read_string(dev->of_node, "clock-output-names", &init.name);
+	init.ops = clk_gpio_ops;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
+	init.flags = CLK_SET_RATE_PARENT;
 
-	ret = bclk_register(&clk_gpio->hw.clk);
-	if (ret)
-		goto no_register;
+	clk_gpio->gpiod = gpiod;
+	clk_gpio->hw.init = &init;
 
-	return of_clk_add_provider(node, of_clk_src_simple_get, &clk_gpio->hw.clk);
+	hw = &clk_gpio->hw;
+	err =  bclk_register(&clk_gpio->hw.clk);
+	if (err)
+		return ERR_PTR(err);
 
-no_register:
-	gpio_free(clk_gpio->gpio);
-no_request:
-no_gpio:
-no_parent:
-	free(clk_gpio);
-	return ret;
+	return hw;
+}
+
+static struct clk_hw *clk_hw_register_gpio_gate(struct device *dev,
+						int num_parents,
+						struct gpio_desc *gpiod)
+{
+	return clk_register_gpio(dev, num_parents, gpiod, &clk_gpio_gate_ops);
+}
+
+static struct clk_hw *clk_hw_register_gpio_mux(struct device *dev,
+					       struct gpio_desc *gpiod)
+{
+	return clk_register_gpio(dev, 2, gpiod, &clk_gpio_mux_ops);
 }
 
-static const struct of_device_id clk_gpio_device_id[] = {
-	{ .compatible = "gpio-gate-clock", },
-	{}
+static int gpio_clk_driver_probe(struct device *dev)
+{
+	struct device_node *node = dev->of_node;
+	const char *gpio_name;
+	unsigned int num_parents;
+	struct gpio_desc *gpiod;
+	struct clk_hw *hw;
+	bool is_mux;
+
+	is_mux = of_device_is_compatible(node, "gpio-mux-clock");
+
+	num_parents = of_clk_get_parent_count(node);
+	if (is_mux && num_parents != 2)
+		return dev_err_probe(dev, -EINVAL,
+				     "mux-clock must have 2 parents\n");
+
+	gpio_name = is_mux ? "select" : "enable";
+	gpiod = gpiod_get(dev, gpio_name, GPIOD_OUT_LOW);
+	if (IS_ERR(gpiod))
+		return dev_err_probe(dev, PTR_ERR(gpiod),
+				     "Can't get '%s' named GPIO property\n", gpio_name);
+
+	if (is_mux)
+		hw = clk_hw_register_gpio_mux(dev, gpiod);
+	else
+		hw = clk_hw_register_gpio_gate(dev, num_parents, gpiod);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+
+	return of_clk_add_provider(node, of_clk_src_simple_get, &hw->clk);
+}
+
+static __maybe_unused const struct of_device_id clk_gpio_device_id[] = {
+	{ .compatible = "gpio-mux-clock" },
+	{ .compatible = "gpio-gate-clock" },
+	{ }
 };
 MODULE_DEVICE_TABLE(of, clk_gpio_device_id);
 
 static struct driver gpio_gate_clock_driver = {
-	.probe = of_gpio_clk_probe,
+	.probe = gpio_clk_driver_probe,
 	.name = "gpio-gate-clock",
 	.of_compatible = DRV_OF_COMPAT(clk_gpio_device_id),
 };
-
 core_platform_driver(gpio_gate_clock_driver);
+
+/**
+ * DOC: gated fixed clock, controlled with a gpio output and a regulator
+ * Traits of this clock:
+ * prepare - clk_prepare and clk_unprepare are function & control regulator
+ *           optionally a gpio that can sleep
+ * enable - clk_enable and clk_disable are functional & control gpio
+ * rate - rate is fixed and set on clock registration
+ * parent - fixed clock is a root clock and has no parent
+ */
+
+/**
+ * struct clk_gated_fixed - Gateable fixed rate clock
+ * @clk_gpio:	instance of clk_gpio for gate-gpio
+ * @supply:	supply regulator
+ * @rate:	fixed rate
+ */
+struct clk_gated_fixed {
+	struct clk_gpio clk_gpio;
+	struct regulator *supply;
+	unsigned long rate;
+};
+
+#define to_clk_gated_fixed(_clk_gpio) container_of(_clk_gpio, struct clk_gated_fixed, clk_gpio)
+
+static unsigned long clk_gated_fixed_recalc_rate(struct clk_hw *hw,
+						 unsigned long parent_rate)
+{
+	return to_clk_gated_fixed(to_clk_gpio(hw))->rate;
+}
+
+static int clk_gated_fixed_enable(struct clk_hw *hw)
+{
+	struct clk_gated_fixed *clk = to_clk_gated_fixed(to_clk_gpio(hw));
+	int ret;
+
+	ret = regulator_enable(clk->supply);
+	if (!ret)
+		gpiod_set_value(clk->clk_gpio.gpiod, 1);
+
+	return ret;
+}
+
+static void clk_gated_fixed_disable(struct clk_hw *hw)
+{
+	struct clk_gated_fixed *clk = to_clk_gated_fixed(to_clk_gpio(hw));
+
+	gpiod_set_value(clk->clk_gpio.gpiod, 0);
+
+	regulator_disable(clk->supply);
+}
+
+static int clk_gated_fixed_is_enabled(struct clk_hw *hw)
+{
+	struct clk_gated_fixed *clk = to_clk_gated_fixed(to_clk_gpio(hw));
+
+	if (clk->supply && !regulator_is_enabled(clk->supply))
+		return 0;
+
+	return clk->clk_gpio.gpiod ? gpiod_get_value(clk->clk_gpio.gpiod) : 1;
+}
+
+static const struct clk_ops clk_gated_fixed_ops = {
+	.enable = clk_gated_fixed_enable,
+	.disable = clk_gated_fixed_disable,
+	.is_enabled = clk_gated_fixed_is_enabled,
+	.recalc_rate = clk_gated_fixed_recalc_rate,
+};
+
+static int clk_gated_fixed_probe(struct device *dev)
+{
+	struct clk_gated_fixed *clk;
+	const char *clk_name;
+	u32 rate;
+	int ret;
+
+	clk = xzalloc(sizeof(*clk));
+	if (!clk)
+		return -ENOMEM;
+
+	ret = of_property_read_u32(dev->of_node, "clock-frequency", &rate);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to get clock-frequency\n");
+	clk->rate = rate;
+
+	clk_name = dev->of_node->name;
+	of_property_read_string(dev->of_node, "clock-output-names", &clk_name);
+
+	clk->supply = regulator_get_optional(dev, "vdd");
+	if (IS_ERR(clk->supply)) {
+		if (PTR_ERR(clk->supply) != -ENODEV)
+			return dev_err_probe(dev, PTR_ERR(clk->supply),
+					     "Failed to get regulator\n");
+		clk->supply = NULL;
+	}
+
+	clk->clk_gpio.gpiod = gpiod_get_optional(dev, "enable", GPIOD_OUT_LOW);
+	if (IS_ERR(clk->clk_gpio.gpiod))
+		return dev_err_probe(dev, PTR_ERR(clk->clk_gpio.gpiod),
+				     "Failed to get gpio\n");
+
+
+	clk->clk_gpio.hw.init = CLK_HW_INIT_NO_PARENT(clk_name, &clk_gated_fixed_ops, 0);
+
+	ret = clk_hw_register(dev, &clk->clk_gpio.hw);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to register clock\n");
+
+	ret = of_clk_add_hw_provider(dev->of_node, of_clk_hw_simple_get,
+				     &clk->clk_gpio.hw);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "Failed to register clock provider\n");
+
+	return 0;
+}
+
+static __maybe_unused const struct of_device_id gated_fixed_clk_match_table[] = {
+	{ .compatible = "gated-fixed-clock" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, gated_fixed_clk_match_table);
+
+static struct driver gated_fixed_clk_driver = {
+	.probe = clk_gated_fixed_probe,
+	.name = "gated-fixed-clk",
+	.of_compatible = DRV_OF_COMPAT(gated_fixed_clk_match_table),
+};
+core_platform_driver(gated_fixed_clk_driver);
-- 
2.39.1




Delivery-date: Wed, 05 May 2021 12:10:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUK-0007a8-SY
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:10:40 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUJ-00056P-EY
	for lore@pengutronix.de; Wed, 05 May 2021 12:10:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sCDze0waVvGQ/toQuGlFRLkpGvrvY96/3ZkKvAMEWjc=; b=Pt6079un/iUbw24J/YNS6REYG
	Xi56gDv6AwEGjxEtl4T6otKF1Oa2X3oyLln+eKJqbuDb2KkX7Js56GwoUTVSToYDepFzlzfyIdtOO
	jYQmy976fi5ta298q6VKQFcPTPxh4o9cSemh5J9F1obpAJnoe8bi8xYWR6eH/oMXhJ1sOpwG28NFB
	TknWWszRX99AOnp4ylzXA+TEHDwMk/U2z2fUas2/ZTdwnZgxwBufi2OG27cwa5QrgnkaozPLaaJbm
	HH6SqidcvfRQQ6Qdhv79rN6s0GApQ6kd9bodRKknh6oFDjxurnT7N+JRBqiSTf1xRAm/Wk+Z292Um
	Jc1by+30A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leETP-000q5d-0S; Wed, 05 May 2021 10:09:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET7-000q1G-3F
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:09:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=WoZLWQC87lh7kJOmSFgqwDb6bRGTnaqqMXkTluJJJTw=; b=3m30mVr4hcBVjhp7SGOpBSqnfc
 hFwwQbl03HMMYM2TWyUPDRKjfeX2KfwUkbr4CYRtNZAkY0vC/xRoAf7AHw9aeSMuxYHZAHAVXFybG
 vxDn9GkBeSFs1wWCppoaAQ8i6fcUPhLDBljBaHQgdI5dSz7vU4FcbNWph9wIE9Yrz60Euc8xher5l
 4pXTV4nn2wUmykOH2u1FTgPf8Xu4MJWeA/438Ci7kyiIYuYNtasskBFILD3tLUatwPSE6mEd6zLwX
 6ZiFo6N+FN9vR3LywTUHubbv3dOHUAcNf4IA3DiSf4zavb+C2noAP79F+L/LWN0rl9ev+5+/S9s6k
 4EUpID3A==;
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET4-004eP0-7m
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:09:23 +0000
Received: by mail-lf1-x132.google.com with SMTP id x19so1791143lfa.2
 for <barebox@lists.infradead.org>; Wed, 05 May 2021 03:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WoZLWQC87lh7kJOmSFgqwDb6bRGTnaqqMXkTluJJJTw=;
 b=qNQGvRqLbWzH7tlEJvBcf1VhH4QIC7y3TsRDrcvNRYa7WieA96uLBgJEUl0Bz8dgv7
 RLF+truip5bjxSqFxwMNMiopoVfuRoSR7vCZFaOn285EX2ocn0sB0rp84uSN9F6Mwo8g
 0GSnYEyI79T5nozhkETocMuZkELJ+xk42bQth+O7jL7H5efFAud5UpryDuAimmPU5Tct
 n+duXuou0i41B4FCKnMLeK7nTosJDlzVtGi6r+4lKSoFQ9NxIE8ww8zn3u5hNeczHSWE
 THSohm/PSkh0ouck3qd0TDs1Ujz2TWnaRceUqvQixgNhU7pszUbeF7MruLMC0Ls6vzyZ
 4Xdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WoZLWQC87lh7kJOmSFgqwDb6bRGTnaqqMXkTluJJJTw=;
 b=kYKGJOGlKMtW5eiXNf0BsKdFtTMPeADIX6/F8K1Yi7PFgyEY79Bun1WGl5l3mpFtli
 kDAl/jnVabI7Kf/4zWQ+AJdObk7q0ZKKeWmKv1XeBl5zh8NCBhZVTXBNB6HsJFQKNLKN
 0aY+q+UJSfCNDssVlNyP9YOmfDFJLsNdyh2hwC08WtueumqrDVf+EawrlRGV5JKAM/ra
 J3ZdBrCtxi4P2jd3ICozdKdB0KeHFVQNlLlyevMc+nRLmIx5DsuDteWBRNNZgXIcm3N8
 Fpx2v/D9sCBV3YqFiqpWOG6ktLkjDPdGsbetKc3bLXhIainj8keLJ+LOwEMWOywnTAjY
 BgNQ==
X-Gm-Message-State: AOAM532INcAe9HBd01MzoIRuwMkaaKS0LdygnEx6TzxVasIVsF6abC7f
 DGzPlYwYIgyijEBLnP+QJyAMddulZ7hcEA==
X-Google-Smtp-Source: ABdhPJxsMzDNFUAYQOSEU3DsSXCCEbZUP1ILRyJ5VCbNfbhFU7etisDIZTpjD5OM9sQXz8L87AwkkQ==
X-Received: by 2002:ac2:4907:: with SMTP id n7mr5324452lfi.194.1620209359731; 
 Wed, 05 May 2021 03:09:19 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id u8sm497114lfu.284.2021.05.05.03.09.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 03:09:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  5 May 2021 13:08:55 +0300
Message-Id: <20210505100900.88141-5-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210505100900.88141-1-antonynpavlov@gmail.com>
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_030922_316868_40B6FA1E 
X-CRM114-Status: GOOD (  18.81  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Alexander Shiyan <shc_work@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/9] gpio: add driver for 74xx-ICs with MMIO access
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch adds driver to support GPIO functionality
for 74xx-compatible ICs with MMIO access.

Compatible models include:
     1 bit:   741G125 (Input), 741G74 (Output)
     2 bits:  742G125 (Input), 7474 (Output)
     4 bits:  74125 (Input), 74175 (Output)
     6 bits:  74365 (Input), 74174 (Output)
     8 bits:  74244 (Input), 74273 (Output)
     16 bits: 741624 (Input), 7416374 (Output)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/gpio/Kconfig          |  14 +++
 drivers/gpio/Makefile         |   1 +
 drivers/gpio/gpio-74xx-mmio.c | 170 ++++++++++++++++++++++++++++++++++
 3 files changed, 185 insertions(+)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 261b6e6662..59cb00ff22 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -21,6 +21,20 @@ config GPIO_74164
 	  shift registers. This driver can be used to provide access
 	  to more gpio outputs.
 
+config GPIO_74XX_MMIO
+	tristate "GPIO driver for 74xx-ICs with MMIO access"
+	depends on OFDEVICE
+	select GPIO_GENERIC
+	help
+	  Say yes here to support GPIO functionality for 74xx-compatible ICs
+	  with MMIO access. Compatible models include:
+	    1 bit:	741G125 (Input), 741G74 (Output)
+	    2 bits:	742G125 (Input), 7474 (Output)
+	    4 bits:	74125 (Input), 74175 (Output)
+	    6 bits:	74365 (Input), 74174 (Output)
+	    8 bits:	74244 (Input), 74273 (Output)
+	    16 bits:	741624 (Input), 7416374 (Output)
+
 config GPIO_CLPS711X
 	bool "GPIO support for CLPS711X"
 	depends on ARCH_CLPS711X || COMPILE_TEST
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 77dcf58f64..7ece8621d2 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_GPIOLIB)		+= gpiolib.o
 
 obj-$(CONFIG_GPIO_74164)	+= gpio-74164.o
+obj-$(CONFIG_GPIO_74XX_MMIO)	+= gpio-74xx-mmio.o
 obj-$(CONFIG_MACH_MIPS_ATH79)	+= gpio-ath79.o
 obj-$(CONFIG_GPIO_DAVINCI)	+= gpio-davinci.o
 obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
diff --git a/drivers/gpio/gpio-74xx-mmio.c b/drivers/gpio/gpio-74xx-mmio.c
new file mode 100644
index 0000000000..2c05d022f1
--- /dev/null
+++ b/drivers/gpio/gpio-74xx-mmio.c
@@ -0,0 +1,170 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * 74xx MMIO GPIO driver
+ *
+ *  Copyright (C) 2014 Alexander Shiyan <shc_work@mail.ru>
+ *
+ * Ported to barebox from linux-v5.4-rc6
+ *   Copyright (C) 2019-2021 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <gpio.h>
+#include <init.h>
+#include <io.h>
+#include <malloc.h>
+
+#include <linux/err.h>
+#include <linux/basic_mmio_gpio.h>
+
+#define MMIO_74XX_DIR_IN	(0 << 8)
+#define MMIO_74XX_DIR_OUT	(1 << 8)
+#define MMIO_74XX_BIT_CNT(x)	((x) & 0xff)
+
+struct mmio_74xx_gpio_priv {
+	struct bgpio_chip	bgc;
+	unsigned int		flags;
+};
+
+static const struct of_device_id mmio_74xx_gpio_ids[] = {
+	{
+		.compatible	= "ti,741g125",
+		.data		= (const void *)(MMIO_74XX_DIR_IN | 1),
+	},
+	{
+		.compatible	= "ti,742g125",
+		.data		= (const void *)(MMIO_74XX_DIR_IN | 2),
+	},
+	{
+		.compatible	= "ti,74125",
+		.data		= (const void *)(MMIO_74XX_DIR_IN | 4),
+	},
+	{
+		.compatible	= "ti,74365",
+		.data		= (const void *)(MMIO_74XX_DIR_IN | 6),
+	},
+	{
+		.compatible	= "ti,74244",
+		.data		= (const void *)(MMIO_74XX_DIR_IN | 8),
+	},
+	{
+		.compatible	= "ti,741624",
+		.data		= (const void *)(MMIO_74XX_DIR_IN | 16),
+	},
+	{
+		.compatible	= "ti,741g74",
+		.data		= (const void *)(MMIO_74XX_DIR_OUT | 1),
+	},
+	{
+		.compatible	= "ti,7474",
+		.data		= (const void *)(MMIO_74XX_DIR_OUT | 2),
+	},
+	{
+		.compatible	= "ti,74175",
+		.data		= (const void *)(MMIO_74XX_DIR_OUT | 4),
+	},
+	{
+		.compatible	= "ti,74174",
+		.data		= (const void *)(MMIO_74XX_DIR_OUT | 6),
+	},
+	{
+		.compatible	= "ti,74273",
+		.data		= (const void *)(MMIO_74XX_DIR_OUT | 8),
+	},
+	{
+		.compatible	= "ti,7416374",
+		.data		= (const void *)(MMIO_74XX_DIR_OUT | 16),
+	},
+	{ }
+};
+
+static inline
+struct mmio_74xx_gpio_priv *to_mmio_74xx_gpio_priv(struct gpio_chip *gc)
+{
+	struct bgpio_chip *bgc =
+		container_of(gc, struct bgpio_chip, gc);
+
+	return container_of(bgc, struct mmio_74xx_gpio_priv, bgc);
+}
+
+static int mmio_74xx_get_direction(struct gpio_chip *gc, unsigned int offset)
+{
+	struct mmio_74xx_gpio_priv *priv = to_mmio_74xx_gpio_priv(gc);
+
+	if (priv->flags & MMIO_74XX_DIR_OUT)
+		return GPIOF_DIR_OUT;
+
+	return GPIOF_DIR_IN;
+}
+
+static int mmio_74xx_dir_in(struct gpio_chip *gc, unsigned int gpio)
+{
+	struct mmio_74xx_gpio_priv *priv = to_mmio_74xx_gpio_priv(gc);
+
+	return (priv->flags & MMIO_74XX_DIR_OUT) ? -ENOTSUPP : 0;
+}
+
+static int mmio_74xx_dir_out(struct gpio_chip *gc, unsigned int gpio, int val)
+{
+	struct mmio_74xx_gpio_priv *priv = to_mmio_74xx_gpio_priv(gc);
+
+	if (priv->flags & MMIO_74XX_DIR_OUT) {
+		gc->ops->set(gc, gpio, val);
+		return 0;
+	}
+
+	return -ENOTSUPP;
+}
+
+static int mmio_74xx_gpio_probe(struct device_d *dev)
+{
+	struct mmio_74xx_gpio_priv *priv;
+	void __iomem *dat;
+	int err;
+	struct gpio_chip *gc;
+
+	priv = xzalloc(sizeof(*priv));
+
+	err = dev_get_drvdata(dev, (const void **)&priv->flags);
+	if (err)
+		return err;
+
+	dat = dev_request_mem_region(dev, 0);
+	if (IS_ERR(dat))
+		return PTR_ERR(dat);
+
+	err = bgpio_init(&priv->bgc, dev,
+			 DIV_ROUND_UP(MMIO_74XX_BIT_CNT(priv->flags), 8),
+			 dat, NULL, NULL, NULL, NULL, 0);
+	if (err)
+		return err;
+
+	gc = &priv->bgc.gc;
+	gc->ops->direction_input = mmio_74xx_dir_in;
+	gc->ops->direction_output = mmio_74xx_dir_out;
+	gc->ops->get_direction = mmio_74xx_get_direction;
+	gc->ngpio = MMIO_74XX_BIT_CNT(priv->flags);
+
+	dev->priv = priv;
+
+	return gpiochip_add(gc);
+}
+
+static struct driver_d mmio_74xx_gpio_driver = {
+	.name = "74xx-mmio-gpio",
+	.of_compatible	= DRV_OF_COMPAT(mmio_74xx_gpio_ids),
+	.probe = mmio_74xx_gpio_probe,
+};
+
+static int mmio_74xx_gpio_init(void)
+{
+	return platform_driver_register(&mmio_74xx_gpio_driver);
+}
+coredevice_initcall(mmio_74xx_gpio_init);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Alexander Shiyan <shc_work@mail.ru>");
+MODULE_DESCRIPTION("74xx MMIO GPIO driver");
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


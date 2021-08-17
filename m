Delivery-date: Tue, 17 Aug 2021 12:13:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw5y-0005up-UH
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:13:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw5u-0003bn-55
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:13:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOnW7WIBQ7YxpkktF3YMdpCE0byNjbHzd2GHyYTmJvc=; b=n+Y/NQ/FoiADNV
	XM8KEKxVUPHpb9cTtgJjDyn0OPhLJ1bCHDe+93OJ2aPvzTlIVVy0QWWbC8exSORIgn1qHNk49rzlE
	REH8lxhRf4EJuEOabDJlf9BOkW6EOTFYWsZlvCFSm8AGuoa0l+7DZg3CqrXN5C4Kbs+/SoZCUWKIp
	J7tj59AEZIDhVcQgIHBvF0nORbmmPhJuDmnR2YDKCd6C7/9uZBV3fNde4L4slF15qOVND4pnuqTPx
	70yfjg7aNHMD+tq01yTP7KDymtkl4Jc/oFPmh/RPUJiNAO769ZW1SK+wlrZBfIPRG3MN7BfZyfGfo
	buNoLJAYVdXhrZAdaJZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFw4I-0021ih-JK; Tue, 17 Aug 2021 10:11:39 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFw3z-0021bu-2Q
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:11:22 +0000
Received: by mail-lj1-x22e.google.com with SMTP id x7so32071979ljn.10
 for <barebox@lists.infradead.org>; Tue, 17 Aug 2021 03:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DCRCP9mKS/rTzV+0PAEEhtcx2MyvOg02IpqWcz/Dbmk=;
 b=QIYx0qWdnhEMpEqiEuKcCysPgjojlT+g7lnos1GyGKRY7YqtAfbh41jMxXgYHilW2a
 QqvKEauDsXXFfz57Dh4USa1IWljs1AYIzDbdufStBErqbizOyR9w6PwepJIg3ClcFrOT
 OlvUc+kQpo5Ie4CqSWx2HCLb9XGBmPjFwO4aBBy4TuGF8XEN0ZodTZmtGPQp2EbHmNrr
 xwkEZYT8DW7fUIVwB3K2/yKlft3B6nqPY74TqyZtj35vmGMFHE+9wZKoLW1UulYIYBua
 T2lMvACqzWdCNlIxH4hxQGhOc3doQ05b/3tbMNr8Ccf11L/k2sEshr+VWCkSi7S5T52E
 GS3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DCRCP9mKS/rTzV+0PAEEhtcx2MyvOg02IpqWcz/Dbmk=;
 b=NajbtrlITXID4JCDtnYgHIgozWzogMjXcgHirk2nTy9EBJrYxqZtZlgfLkekgjtBJb
 QZKfKfZMBum4+kXN5F+Grwmd4RN7ttlIlDN8UduMjYfMHRi5O1C5OK+h42sW5PpKXUMU
 exF3POf3NWFhc/SnywmtR6Zpxd7eNwyVKWDOxA1hydCw6j3jCJaVRN/PDdpz6n4oC0jO
 YwK0xh82D82wc9OHzHktpjPKOQ8+MG20HioRjzTzp3ZC4ZSFuzs8SgaFJV2VN+MYaKV6
 TZCUqd8CYeTy1cB7gpMRXU8sMTNrK8jdMzBJE0RvdSJYOotE+oOZ5egAEuaaLwv0IoAz
 4Dew==
X-Gm-Message-State: AOAM533RG17pDxAXSOZm6HCMvC3SrjDFekS2EwMAFSEHDSbEfnLZqqZY
 qG8n4jcXyl1ArCX2zmvIDrFsDiJmRVA=
X-Google-Smtp-Source: ABdhPJwl3yFCHFq7UDQZLgmr8KMgmToy6/JAvfB0XEsvpIo5VFYm4LyURLTpwgU5s4MEL2/TnGTHew==
X-Received: by 2002:a2e:a887:: with SMTP id m7mr2428052ljq.263.1629195077356; 
 Tue, 17 Aug 2021 03:11:17 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-80.dynamic.spd-mgts.ru.
 [109.252.203.80])
 by smtp.gmail.com with ESMTPSA id x16sm144412lfa.244.2021.08.17.03.11.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:11:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 17 Aug 2021 13:11:00 +0300
Message-Id: <20210817101104.114945-5-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817101104.114945-1-antonynpavlov@gmail.com>
References: <20210817101104.114945-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_031119_141384_84A03FAB 
X-CRM114-Status: GOOD (  18.63  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH RESEND v4 4/8] gpio: add driver for 74xx-ICs with MMIO access
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
 drivers/gpio/gpio-74xx-mmio.c | 165 ++++++++++++++++++++++++++++++++++
 3 files changed, 180 insertions(+)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 98a44fbbb5..f79c9ea67d 100644
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
index 638cbb19a3..023973cb63 100644
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
index 0000000000..5b688f4766
--- /dev/null
+++ b/drivers/gpio/gpio-74xx-mmio.c
@@ -0,0 +1,165 @@
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
+#include <of_device.h>
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
+	priv->flags = (uintptr_t)of_device_get_match_data(dev);
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
+coredevice_platform_driver(mmio_74xx_gpio_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Alexander Shiyan <shc_work@mail.ru>");
+MODULE_DESCRIPTION("74xx MMIO GPIO driver");
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


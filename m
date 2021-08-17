Delivery-date: Tue, 17 Aug 2021 12:07:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFvzz-0005hN-Dr
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:07:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFvzt-0001vu-LK
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:07:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOnW7WIBQ7YxpkktF3YMdpCE0byNjbHzd2GHyYTmJvc=; b=ebNpCUSUyM0TDI
	nKi0MfZAt8ucd4IVWAttexDBcCdwfVeHNv7KHlFxY6ZyhElPWZC1KNNPfK8fTd/Llwf4d7W+Prap3
	rzzAQNAnfL/DM+/KfjUpBCrIbParbXuKoJwKs+PGqZfHrxjBlsGLTv6+Segma7GmzP/fPpuqnSlXG
	tblW9ZccuBvhs8dxzXO4ghc1IurDbnX44mgVFVCNI1BlGZMVb+fXKRyDmqDx4b7C/sVToghuF4pZj
	k/rGme8a6PoCdIr46lSviP5EVKbclHy9goxcwd3eWxkOHJy3m20sFLPgrZMu/raXpFVD3apPvFi0w
	/Jn4Ss+YTXGek6s6Ru8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFvy1-001z5T-JC; Tue, 17 Aug 2021 10:05:09 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFvxl-001yyg-2o
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:04:55 +0000
Received: by mail-lj1-x22d.google.com with SMTP id i28so10745027ljm.7
 for <barebox@lists.infradead.org>; Tue, 17 Aug 2021 03:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DCRCP9mKS/rTzV+0PAEEhtcx2MyvOg02IpqWcz/Dbmk=;
 b=JAOW5cDxA3KEru3b1dlyqI3SW5h3G/oql9T6p4e0Nz3G/l5v7HbjuNwWlWuAi94II3
 tBaAI4TY9PI68IE8zdD210CdVSkncpNhp7ovf8LKGsrEfJ7UVx6mr830lnfIgghkw392
 o2M6D8AAvVSU1Gqnjb/MnpD1t1qxxz+dRqmccggE6MgT7sQFHC2BT7fAXGqTvh3CyhSJ
 74EadNc62fPGhcyJfrgmdVaYZZJExyOLPoa7XzWakGC/WZHDgHKXls/ON9A9XViKc5l9
 MDTUUkxnrBK69Hz8sIbjO2IE+IqTETXlSVhHTC6dsXKie4yNMpIAcV0jUOnLASv5Oqer
 2vCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DCRCP9mKS/rTzV+0PAEEhtcx2MyvOg02IpqWcz/Dbmk=;
 b=T1kE4qhqNv31aAnXXrTyHl3TmmtHx15vlNfpHrfmrBDNZzRhykrqrFvGSiwpCcpOft
 b21sMsOC6Dma8ettTiN+V+gnpoToMHsJKMXoeLZGZ9iBk9meIjka/uKNoIut2O0QEki4
 l9wfvPtOxd0K6pRBqwckbusy934updSG5ABGYdRDdwG/FxhqprkAV6L/XnqJ7ONZJYzg
 6WO8+no4h+wH84kpRnhYDcUdoPctKWC0UhShfGRDZ1mCzVW0nfFZb1vaqad9iD0fJGI0
 b/wiY13ZACajnP9b+P2yq9+bHWpTr8FrP5zbuV5a85qdnR6g/S1J/ITuiAo7AXzR2BZC
 +50A==
X-Gm-Message-State: AOAM531Tz9nyS6i6Efv3uBGKM93+yutvx6PtuCvaxPGM7odGIFpTRwaN
 fmuoTAs8+tENCSWsGaw9w85/OS/hOpQ=
X-Google-Smtp-Source: ABdhPJzGjEYbwv2quKpdkTFnSvKPXAaFEwi/M3Xf2LYdAoD3TvurounONX6BTXsPeUl/oc6Vlzm1Tg==
X-Received: by 2002:a2e:3004:: with SMTP id w4mr1409108ljw.465.1629194690932; 
 Tue, 17 Aug 2021 03:04:50 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-80.dynamic.spd-mgts.ru.
 [109.252.203.80])
 by smtp.gmail.com with ESMTPSA id e20sm179795ljn.13.2021.08.17.03.04.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:04:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 17 Aug 2021 13:04:31 +0300
Message-Id: <20210817100435.114756-5-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817100435.114756-1-antonynpavlov@gmail.com>
References: <20210817100435.114756-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_030453_204176_89DE44DA 
X-CRM114-Status: GOOD (  18.77  )
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
Subject: [PATCH 4/8] gpio: add driver for 74xx-ICs with MMIO access
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


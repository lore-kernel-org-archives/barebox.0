Delivery-date: Fri, 07 May 2021 00:10:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCV-000360-Gp
	for lore@lore.pengutronix.de; Fri, 07 May 2021 00:10:31 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCU-000530-Cy
	for lore@pengutronix.de; Fri, 07 May 2021 00:10:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sHznbxUxXYs8bj5Gbdh/wsxOZkbTHTmxMh7XaU1f5UQ=; b=Sgi5iRrc2mLraO/V5yJzdeTz5
	wWV2vKP77oMfAa9+UTRJoeqFNZSp6v+PdLKmGTWeMLiN/0ySZDzzZIkUbI3GWKGmapuWc59JbMbUC
	ZomGfJ1ponnqzqeqSSXKmU1ZClJSeCDOfEBSRQyISCyeU1gnXMhSkJHpsXty8sAau1PUlwGhtlm/B
	9qdrgSMVk2/n+JOONzu1DsgE1YwsOd08qxTkcO5evtFGFw0vmMzevC1LF7KuOf3xQEqxBe/aIBRWj
	RNiUmpLQr6LUfEUgcPnm2jgJHmAMHnOxsaVnq8G2GN6+e2s/gbqGBoBpndnLTG1nyT5w6lhp5tiRZ
	3+MnxmyQA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lemBV-005RSv-BE; Thu, 06 May 2021 22:09:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB6-005ROl-K7
 for barebox@desiato.infradead.org; Thu, 06 May 2021 22:09:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=euKKYMQKgyZlGse7zylyDLZLzREYZhu1li7wYLdXQ2M=; b=NPRxD3AzWdr3OOv98pj+r1GfRY
 baIaKfrhkL8wsPGTT6X2APvnAbWyGc3Sgrir6yWf3MnvF18DJoRiDXUdDhx7603vtGJGlR31s45Zw
 cQfkGOBmsylLUm7BmfF4YEvYEZgy3xc+hnTjf6ktX9ftj18wDj+V86NkMsGQydCUAzO2GL0vQ0XQR
 J5tj9a0vw01foZCMR6LQ7NvLMP5wqDb9FGVrBvZVqppHno71k89q9XNpwSEGVIuBqV+n2Nm1bWMd5
 ieVhdgOjtiuPlXVt7rM0kiF3y+LsIYly6Tg+Q0xdkgRuQ7lzpCKQUTGrxdkCFmfMnMxG+hH0Vz0AP
 hkB02MKA==;
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB3-006QOe-P8
 for barebox@lists.infradead.org; Thu, 06 May 2021 22:09:03 +0000
Received: by mail-lf1-x136.google.com with SMTP id c11so9963377lfi.9
 for <barebox@lists.infradead.org>; Thu, 06 May 2021 15:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=euKKYMQKgyZlGse7zylyDLZLzREYZhu1li7wYLdXQ2M=;
 b=HVyQc4Sjc7lJPl0bA36ypPgG+ICqbl4kM+2je1b7lfCyhDEg799YujZpiphRNVeerg
 whbWPo3yPVGyffGJ3hUoN/gvDB4rA1+jo6gnt1j0mE1BMrqRR0pQzeL1jFNVRQzmW7vt
 IUs8ATcUvrIYyF0xg6vTwe2IrVcEbVDndqneJ3qYVP8xw8LXOACGeCUD+8iIJ1hDRkBC
 ianOUOC8Cah6B7HNENuhrJo5wVc8wNJZXTxw956Nuvw2EWVlFoCARtfG86aVAsLgssgL
 pMEOFmO8b6CcwXzZx2bAn8Wf8Texr1UQwdwKNgPQiHHHoa/3OTd/VC6n4Z8CPYbx18Lf
 tMgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=euKKYMQKgyZlGse7zylyDLZLzREYZhu1li7wYLdXQ2M=;
 b=Z0uzRETM5LotlEgOFn8SbTSy+ky9+UcqiSv9WpZisRkcxXJi6psREpkzkFRVO4TP5x
 Uk+06BN4j4HF26nDLg2Rygv2f/C9rfEYq0E49yOeod6i0U0hs9MKwLYWOINdEnTdy/0O
 9OD11YUnhk/BL8CykcR0hJHmPr+7XJSYaUwUwyjGDWxgazzt2RxCHcaNvrWztwh4XTg0
 L0v7qWJ/oSlp+ohWffw5GgbCBOayODjzXN42+UT9F03xW/aPleg/iEA6St1Wq+ams8+5
 TX7yR8QTQqcOotBHOEj3vdyDq+5+kyXNvHXc2HMZ0gwGEJfxkeAyrlUjIkXV5pJ62jD7
 LZBw==
X-Gm-Message-State: AOAM532v/hq/VlhuCUoYRJulCq1ZAUixteDt1B/0dbCQa9NRz7PN3MyX
 Gx8oRzN3rjpbC0j1GzdWRvYnq5KMBIhfxA==
X-Google-Smtp-Source: ABdhPJyLEU/qDxmq0YN8G/RuR+lqJMIAJI/h4aZC8nmzrgWjffKVa1UnQPvHcj1rbN91aGQBLYuHCg==
X-Received: by 2002:a05:6512:3f87:: with SMTP id
 x7mr4309305lfa.617.1620338938621; 
 Thu, 06 May 2021 15:08:58 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id b24sm962584lff.207.2021.05.06.15.08.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 15:08:58 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 May 2021 01:08:29 +0300
Message-Id: <20210506220834.223350-7-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210506220834.223350-1-antonynpavlov@gmail.com>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_150901_854415_F9606A83 
X-CRM114-Status: GOOD (  18.54  )
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
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/11] gpio: add driver for 74xx-ICs with MMIO access
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
 drivers/gpio/gpio-74xx-mmio.c | 166 ++++++++++++++++++++++++++++++++++
 3 files changed, 181 insertions(+)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index a8ee9e58b8..579d5c04b3 100644
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
index 25e12105d8..41c65fa0ac 100644
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
index 0000000000..01ecc0191c
--- /dev/null
+++ b/drivers/gpio/gpio-74xx-mmio.c
@@ -0,0 +1,166 @@
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
+coredevice_platform_driver(mmio_74xx_gpio_driver);
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


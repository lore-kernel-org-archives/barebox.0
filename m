Delivery-date: Tue, 27 Apr 2021 22:24:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGO-0006Wp-Uo
	for lore@lore.pengutronix.de; Tue, 27 Apr 2021 22:24:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGN-00066B-La
	for lore@pengutronix.de; Tue, 27 Apr 2021 22:24:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9SHuLNVvIlFFPhSCc3gmkpyEExfcAP3zZK+WrAezMYU=; b=VQ9QgA1Chk1praGRF247NlGu6
	qBnAKafOgNzQg/tCjvnCG5mz7Ti/i6osLh08Ks8PpPXdbEjacrp9FwwRDYyvQsmFQe6KXk+cgkNNG
	el8sL1kuqbyf2wxKjDcJw1Uv1/djFgo/hEa8l5nRyq1Wri+pnDNNpQFd5/PiUFGqhSz/twXtG3szP
	UQtfRHnZNWrUqg+3XAYETVC58q8gR/HL/4kgn7Mv2tck6rhfixpiwRAutFd1WIj/r4fXitkoofDKh
	xCPcRxHXnsyb1aTqzONOYzT81akwvKRV2m8UzZO5yoDXugOwXU+EpYQ1o0ySxCWXue9KYD2Wd0J23
	yamL9055w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbUF8-002Brw-16; Tue, 27 Apr 2021 20:23:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUEx-002Bqe-2F
 for barebox@desiato.infradead.org; Tue, 27 Apr 2021 20:23:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=WLN/itShk3cWMbyNPkJ/Ywz7ml6lfBONayy4JlVxDlQ=; b=LrMH2+8b0Rnm8f+pSwXP4EqL9G
 YPvZ+oPeONDyPYpbYZxUaVAs0TQXCnt6Dgb0SZBejk+Z8AwYrEHn8fc2mkF6yuHx5okswKDH7QVs5
 WC/3qzPrJMhVK/jqqB3BjVZ1oZstrnXbUU93GsRgo5k5T+QlNlt9eKnmwynDjpTx3HR8vGQSIxNpy
 M9HQBy8Z2qa3BonhrMkyawgSIOGJYLQ/t6azg4xuj8v2PAUt70OpFo5TzlVelbONEw/iFWSqNctbu
 j9ZZK9tzQ6Zy0zJ3cPIZ+XDDJO3PKtF64T6wILUG0Gxz7RMN2cYrvnf2NDwKLmNQmrSh/6fKLTnp9
 3x/0ZsnA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUEt-00GyHl-9D
 for barebox@lists.infradead.org; Tue, 27 Apr 2021 20:23:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEo-0005Xd-Pj; Tue, 27 Apr 2021 22:23:18 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEm-00016o-3g; Tue, 27 Apr 2021 22:23:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Apr 2021 22:23:07 +0200
Message-Id: <20210427202309.32077-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210427202309.32077-1-a.fatoum@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_132323_362854_5943D391 
X-CRM114-Status: GOOD (  20.65  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 10/12] gpio: add SiFive GPIO controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The SiFive GPIO controller is a straight forward generic gpio-mmio
controller. Only difference is that the number of GPIOs is described by
the number of interrupts in the device tree. Import the Linux v5.12
driver to support it.

Tested with gpio-restart on qemu-system-riscv64 -M sifive_u.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/Kconfig       |  7 +++
 drivers/gpio/Makefile      |  1 +
 drivers/gpio/gpio-sifive.c | 87 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 95 insertions(+)
 create mode 100644 drivers/gpio/gpio-sifive.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 261b6e666257..a8ee9e58b84e 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -164,6 +164,13 @@ config GPIO_SX150X
 	  Say Y here to build support for the Semtec Sx150x I2C GPIO
 	  expander chip.
 
+config GPIO_SIFIVE
+	bool "SiFive GPIO support"
+	depends on OF_GPIO
+	select GPIO_GENERIC
+	help
+	  Say yes here to support the GPIO device on SiFive SoCs.
+
 config GPIO_LIBFTDI1
 	bool "libftdi1 driver"
 	depends on SANDBOX
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 77dcf58f640d..25e12105d83d 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -23,3 +23,4 @@ obj-$(CONFIG_GPIO_DESIGNWARE)	+= gpio-dw.o
 obj-$(CONFIG_GPIO_SX150X)	+= gpio-sx150x.o
 obj-$(CONFIG_GPIO_VF610)	+= gpio-vf610.o
 obj-$(CONFIG_GPIO_RASPBERRYPI_EXP) += gpio-raspberrypi-exp.o
+obj-$(CONFIG_GPIO_SIFIVE)	+= gpio-sifive.o
diff --git a/drivers/gpio/gpio-sifive.c b/drivers/gpio/gpio-sifive.c
new file mode 100644
index 000000000000..63f2c097e446
--- /dev/null
+++ b/drivers/gpio/gpio-sifive.c
@@ -0,0 +1,87 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 SiFive
+ */
+
+#include <linux/basic_mmio_gpio.h>
+#include <printk.h>
+#include <driver.h>
+#include <errno.h>
+
+#define SIFIVE_GPIO_INPUT_VAL	0x00
+#define SIFIVE_GPIO_INPUT_EN	0x04
+#define SIFIVE_GPIO_OUTPUT_EN	0x08
+#define SIFIVE_GPIO_OUTPUT_VAL	0x0C
+#define SIFIVE_GPIO_RISE_IE	0x18
+#define SIFIVE_GPIO_FALL_IE	0x20
+#define SIFIVE_GPIO_HIGH_IE	0x28
+#define SIFIVE_GPIO_LOW_IE	0x30
+
+#define SIFIVE_GPIO_MAX		32
+
+static int __of_irq_count(struct device_node *np)
+{
+	unsigned npins = 0;
+
+	of_get_property(np, "interrupts", &npins);
+
+	return npins / sizeof(__be32);
+}
+
+static int sifive_gpio_probe(struct device_d *dev)
+{
+	struct bgpio_chip *bgc;
+	struct resource *res;
+	void __iomem *base;
+	int ret, ngpio;
+
+	bgc = xzalloc(sizeof(*bgc));
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res)) {
+		dev_err(dev, "failed to request device memory\n");
+		return PTR_ERR(res);
+	}
+	base = IOMEM(res->start);
+
+	ngpio = __of_irq_count(dev->device_node);
+	if (ngpio > SIFIVE_GPIO_MAX) {
+		dev_err(dev, "Too many GPIO interrupts (max=%d)\n",
+			SIFIVE_GPIO_MAX);
+		return -ENXIO;
+	}
+
+	ret = bgpio_init(bgc, dev, 4,
+			 base + SIFIVE_GPIO_INPUT_VAL,
+			 base + SIFIVE_GPIO_OUTPUT_VAL,
+			 NULL,
+			 base + SIFIVE_GPIO_OUTPUT_EN,
+			 base + SIFIVE_GPIO_INPUT_EN,
+			 0);
+	if (ret) {
+		dev_err(dev, "unable to init generic GPIO\n");
+		return ret;
+	}
+
+	/* Disable all GPIO interrupts */
+	writel(0, base + SIFIVE_GPIO_RISE_IE);
+	writel(0, base + SIFIVE_GPIO_FALL_IE);
+	writel(0, base + SIFIVE_GPIO_HIGH_IE);
+	writel(0, base + SIFIVE_GPIO_LOW_IE);
+
+	bgc->gc.ngpio = ngpio;
+	return gpiochip_add(&bgc->gc);
+}
+
+static const struct of_device_id sifive_gpio_match[] = {
+	{ .compatible = "sifive,gpio0" },
+	{ .compatible = "sifive,fu540-c000-gpio" },
+	{ },
+};
+
+static struct driver_d sifive_gpio_driver = {
+	.name		= "sifive_gpio",
+	.of_compatible	= sifive_gpio_match,
+	.probe		= sifive_gpio_probe,
+};
+postcore_platform_driver(sifive_gpio_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


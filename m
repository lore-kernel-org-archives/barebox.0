Delivery-date: Sun, 16 Aug 2026 20:02:31 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfBm-003pii-1v
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:02:31 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DEC25201D09
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:02:30 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Wb2hcHp0;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uh/HnEQkIpmVrsAL3XSnFXR3tRi4qFPkoet4bSE26Sk=; b=Wb2hcHp0FOBzexDqPsh8hjttHd
	cFRugDAn4DJ7sjNHd2WfRt2763Zb7KthO87RncnY/pwIHqEN0qbdGI7BZh3i3UQxFQhd5AbmdmeoW
	lvqsy8+u34rSvgs552Ed+ChEfteHuxMRS6CM30nTdRkF4OgQFOlMe5g18WAJ+0PJLCbnLr6QmEt5h
	2dSNwHw/WqMsNFomQ5oW6Vwp3UU0+cS2RmO/ZRePjzRYaZJIEd0XFDMKuuIGcdrriXJEahH4xMU9a
	p8jeEvEfVmwIVR3uOgKD5wJ4rw/0TRpISG828ylgKk+wQF3QDuu6iBWguwKNgKZMEgFhnG3LQ5ECy
	MhJavNXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBQ-00000004xSv-1CCA;
	Sun, 16 Aug 2026 18:02:08 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBL-00000004xN1-2mMj
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 033A6201D0E;
	Sun, 16 Aug 2026 20:01:59 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBG-001orf-2z;
	Sun, 16 Aug 2026 20:01:58 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-16WA;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:35 +0200
Subject: [PATCH 15/27] gpio: pxa: add a driver and switch the architecture
 to GPIOLIB
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-15-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=10029;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=qlOId7tBq4Tp+NxqEk8zFAiMjZCf2T3lguMX5AUNJjw=;
 b=KEil1rQHnvibZv/ao2zaZuphesoRlQe+Nobp6oa0yJbnIaLSVTINrEYyNSMLtuLyvlF8IhZIz
 giqbAMzykQjD8Pamv64FW1nspJJFsByuFSoIIzdPmrothU5RN8/hKi5
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110204_020365_317C7FB8 
X-CRM114-Status: GOOD (  29.38  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  PXA had no GPIO driver at all. ARCH_PXA selected GENERIC_GPIO,
    which on PXA means arch/arm/mach-pxa/gpio.c: a handful of gpio_get_value()
    and friends operating directly on the registers, but no gpio c [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 3hexc99bqjqooxdcfxc6ou83r1h9yh86
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1]
X-Rspamd-Queue-Id: DEC25201D09

PXA had no GPIO driver at all. ARCH_PXA selected GENERIC_GPIO, which on
PXA means arch/arm/mach-pxa/gpio.c: a handful of gpio_get_value() and
friends operating directly on the registers, but no gpio chip. So none
of the GPIOs described in the device tree could be used and every
consumer of them silently did nothing, be it the leds, the gpio keys,
the poweroff or the reset of the ethernet chip.

Add a proper driver for the device tree described controller and switch
the architecture over to GPIOLIB. The register layout is simple: banks
of 32 GPIOs, the first three interleaved one 32bit register per bank and
every further group of three starting at the next 0x100 boundary.

The old implementation has to go in the same step, its gpio_set_value()
and friends collide with the ones from gpiolib. Its only users were the
pxa_init_gpio() calls in the PXA2xx MFP code, which set up the gpio
range for that implementation and have no equivalent here: the range
comes from the device tree now.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig           |   2 +-
 arch/arm/mach-pxa/Makefile |   1 -
 arch/arm/mach-pxa/gpio.c   | 101 -------------------------------
 drivers/gpio/Kconfig       |   6 ++
 drivers/gpio/Makefile      |   1 +
 drivers/gpio/gpio-pxa.c    | 146 +++++++++++++++++++++++++++++++++++++++++++++
 include/mach/pxa/gpio.h    |   1 -
 7 files changed, 154 insertions(+), 104 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index fe4fd3f471..2f2ab5d76d 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -121,7 +121,7 @@ config ARCH_MXS
 config ARCH_PXA
 	bool "Intel/Marvell PXA based"
 	depends on 32BIT
-	select GENERIC_GPIO
+	select GPIOLIB
 
 config ARCH_SOCFPGA
 	bool "Altera SOCFPGA"
diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index b4f3a51046..fa0793d8a9 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -3,7 +3,6 @@
 obj-y += clocksource.o
 obj-y += sleep.o
 obj-y += common.o
-obj-y += gpio.o
 obj-y += devices.o
 
 obj-$(CONFIG_ARCH_PXA3XX) += mfp-pxa3xx.o pxa3xx.o
diff --git a/arch/arm/mach-pxa/gpio.c b/arch/arm/mach-pxa/gpio.c
deleted file mode 100644
index 130faa404b..0000000000
--- a/arch/arm/mach-pxa/gpio.c
+++ /dev/null
@@ -1,101 +0,0 @@
-/*
- *  Generic PXA GPIO handling
- *
- *  Author:	Nicolas Pitre
- *  Created:	Jun 15, 2001
- *  Copyright:	MontaVista Software Inc.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  published by the Free Software Foundation.
- */
-
-#include <common.h>
-#include <errno.h>
-#include <gpio.h>
-
-#include <mach/pxa/gpio.h>
-#include <asm/io.h>
-
-int pxa_last_gpio;
-
-struct pxa_gpio_chip {
-	void __iomem	*regbase;
-};
-
-static struct pxa_gpio_chip *pxa_gpio_chips;
-
-#define for_each_gpio_chip(i, c) \
-	for (i = 0, c = &pxa_gpio_chips[0]; i <= pxa_last_gpio; i += 32, c++)
-
-static int __init pxa_init_gpio_chip(int gpio_end)
-{
-	int i, gpio, nbanks = gpio_to_bank(gpio_end) + 1;
-	struct pxa_gpio_chip *chips;
-
-	chips = kzalloc(nbanks * sizeof(struct pxa_gpio_chip), GFP_KERNEL);
-	if (chips == NULL) {
-		pr_err("%s: failed to allocate GPIO chips\n", __func__);
-		return -ENOMEM;
-	}
-
-	for (i = 0, gpio = 0; i < nbanks; i++, gpio += 32)
-		chips[i].regbase = (void __iomem *)GPIO_BANK(i);
-
-	pxa_gpio_chips = chips;
-	return 0;
-}
-
-int __init pxa_init_gpio(int start, int end)
-{
-	struct pxa_gpio_chip *c;
-	int err,  gpio;
-
-	pxa_last_gpio = end;
-
-	/* Initialize GPIO chips */
-	err = pxa_init_gpio_chip(end);
-	if (err)
-		return err;
-
-	for_each_gpio_chip(gpio, c) {
-		/* clear all GPIO edge detects */
-		__raw_writel(0, c->regbase + GFER_OFFSET);
-		__raw_writel(0, c->regbase + GRER_OFFSET);
-		__raw_writel(~0, c->regbase + GEDR_OFFSET);
-	}
-
-	return 0;
-}
-
-int gpio_get_value(unsigned gpio)
-{
-	return GPLR(gpio) & GPIO_bit(gpio);
-}
-
-void gpio_set_value(unsigned gpio, int value)
-{
-	if (value)
-		GPSR(gpio) = GPIO_bit(gpio);
-	else
-		GPCR(gpio) = GPIO_bit(gpio);
-}
-
-int gpio_direction_input(unsigned gpio)
-{
-	if (__gpio_is_inverted(gpio))
-		GPDR(gpio) |= GPIO_bit(gpio);
-	else
-		GPDR(gpio) &= ~GPIO_bit(gpio);
-	return 0;
-}
-
-int gpio_direction_output(unsigned gpio, int value)
-{
-	gpio_set_value(gpio, value);
-	if (__gpio_is_inverted(gpio))
-		GPDR(gpio) &= ~GPIO_bit(gpio);
-	else
-		GPDR(gpio) |= GPIO_bit(gpio);
-	return 0;
-}
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 988d08cf14..923d424e62 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -163,6 +163,12 @@ config GPIO_PL061
 	help
 	  Say yes here to support the PrimeCell PL061 GPIO device
 
+config GPIO_PXA
+	bool "GPIO support for Intel/Marvell PXA"
+	depends on ARCH_PXA || COMPILE_TEST
+	help
+	  Say yes here to enable the GPIO driver for the PXA SoCs
+
 config GPIO_RASPBERRYPI_EXP
 	bool "Raspberry Pi 3 GPIO Expander"
 	depends on ARCH_BCM283X
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 8560e1f059..38059a47f7 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -15,6 +15,7 @@ obj-$(CONFIG_GPIO_JZ4740)	+= gpio-jz4740.o
 obj-$(CONFIG_GPIO_MALTA_FPGA_I2C) += gpio-malta-fpga-i2c.o
 obj-$(CONFIG_GPIO_MPC8XXX)	+= gpio-mpc8xxx.o
 obj-$(CONFIG_GPIO_ORION)	+= gpio-orion.o
+obj-$(CONFIG_GPIO_PXA)		+= gpio-pxa.o
 obj-$(CONFIG_GPIO_OMAP)		+= gpio-omap.o
 obj-$(CONFIG_GPIO_PCA953X)	+= gpio-pca953x.o
 obj-$(CONFIG_GPIO_PCF857X)	+= gpio-pcf857x.o
diff --git a/drivers/gpio/gpio-pxa.c b/drivers/gpio/gpio-pxa.c
new file mode 100644
index 0000000000..04b547a141
--- /dev/null
+++ b/drivers/gpio/gpio-pxa.c
@@ -0,0 +1,146 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * GPIO driver for the Intel/Marvell PXA SoCs
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
+/*
+ * The registers are grouped in banks of 32 GPIOs. The first three banks
+ * are interleaved, one 32bit register per bank, and every further group
+ * of three banks starts at the next 0x100 boundary.
+ */
+#define GPLR	0x00	/* pin level, read only */
+#define GPDR	0x0c	/* direction, 1 = output */
+#define GPSR	0x18	/* set output, write 1 to set */
+#define GPCR	0x24	/* clear output, write 1 to clear */
+
+#define BANK_OFF(bank)	((((bank) / 3) << 8) + (((bank) % 3) << 2))
+
+struct pxa_gpio_chip {
+	struct gpio_chip chip;
+	void __iomem *base;
+};
+
+static inline struct pxa_gpio_chip *to_pxa_gpio(struct gpio_chip *chip)
+{
+	return container_of(chip, struct pxa_gpio_chip, chip);
+}
+
+static inline void __iomem *pxa_gpio_reg(struct gpio_chip *chip,
+					 unsigned off, unsigned reg)
+{
+	return to_pxa_gpio(chip)->base + BANK_OFF(off / 32) + reg;
+}
+
+static int pxa_gpio_get(struct gpio_chip *chip, unsigned off)
+{
+	return !!(readl(pxa_gpio_reg(chip, off, GPLR)) & BIT(off % 32));
+}
+
+static int pxa_gpio_set(struct gpio_chip *chip, unsigned off, int value)
+{
+	writel(BIT(off % 32), pxa_gpio_reg(chip, off, value ? GPSR : GPCR));
+
+	return 0;
+}
+
+static int pxa_gpio_direction_input(struct gpio_chip *chip, unsigned off)
+{
+	void __iomem *gpdr = pxa_gpio_reg(chip, off, GPDR);
+
+	writel(readl(gpdr) & ~BIT(off % 32), gpdr);
+
+	return 0;
+}
+
+static int pxa_gpio_direction_output(struct gpio_chip *chip, unsigned off,
+				     int value)
+{
+	void __iomem *gpdr = pxa_gpio_reg(chip, off, GPDR);
+
+	/* drive the requested level before switching the pin to output */
+	pxa_gpio_set(chip, off, value);
+	writel(readl(gpdr) | BIT(off % 32), gpdr);
+
+	return 0;
+}
+
+static int pxa_gpio_get_direction(struct gpio_chip *chip, unsigned off)
+{
+	if (readl(pxa_gpio_reg(chip, off, GPDR)) & BIT(off % 32))
+		return GPIOF_DIR_OUT;
+
+	return GPIOF_DIR_IN;
+}
+
+static struct gpio_ops pxa_gpio_ops = {
+	.direction_input = pxa_gpio_direction_input,
+	.direction_output = pxa_gpio_direction_output,
+	.get_direction = pxa_gpio_get_direction,
+	.get = pxa_gpio_get,
+	.set = pxa_gpio_set,
+};
+
+static int pxa_gpio_probe(struct device *dev)
+{
+	struct pxa_gpio_chip *pxa;
+	struct resource *iores;
+	int ret;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	pxa = xzalloc(sizeof(*pxa));
+	pxa->base = IOMEM(iores->start);
+
+	pxa->chip.dev = dev;
+	pxa->chip.ops = &pxa_gpio_ops;
+	pxa->chip.base = 0;
+	pxa->chip.ngpio = (uintptr_t)device_get_match_data(dev);
+
+	ret = gpiochip_add(&pxa->chip);
+	if (ret) {
+		dev_err(dev, "couldn't add gpiochip: %pe\n", ERR_PTR(ret));
+		free(pxa);
+		return ret;
+	}
+
+	dev_dbg(dev, "probed %u gpios\n", pxa->chip.ngpio);
+
+	return 0;
+}
+
+static struct of_device_id pxa_gpio_dt_ids[] = {
+	{
+		.compatible = "intel,pxa25x-gpio",
+		.data = (void *)85,
+	}, {
+		.compatible = "intel,pxa26x-gpio",
+		.data = (void *)90,
+	}, {
+		.compatible = "intel,pxa27x-gpio",
+		.data = (void *)121,
+	}, {
+		.compatible = "intel,pxa3xx-gpio",
+		.data = (void *)128,
+	}, {
+		/* sentinel */
+	}
+};
+MODULE_DEVICE_TABLE(of, pxa_gpio_dt_ids);
+
+static struct driver pxa_gpio_driver = {
+	.name = "pxa-gpio",
+	.probe = pxa_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(pxa_gpio_dt_ids),
+};
+core_platform_driver(pxa_gpio_driver);
diff --git a/include/mach/pxa/gpio.h b/include/mach/pxa/gpio.h
index 2d169608d8..84331f6b5c 100644
--- a/include/mach/pxa/gpio.h
+++ b/include/mach/pxa/gpio.h
@@ -133,6 +133,5 @@ static inline int __gpio_is_inverted(unsigned gpio) { return 0; }
  */
 extern int pxa_last_gpio;
 
-extern int pxa_init_gpio(int start, int end);
 
 #endif

-- 
2.47.3




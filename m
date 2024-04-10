Delivery-date: Wed, 10 Apr 2024 18:35:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruavK-006GVu-1o
	for lore@lore.pengutronix.de;
	Wed, 10 Apr 2024 18:35:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruavJ-0003m8-Gl
	for lore@pengutronix.de; Wed, 10 Apr 2024 18:35:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C7U1RpFGSGOFBCdjw0YNHdMWP0gIhjzbbBnIx64U+FQ=; b=v8rVstcelDTLFeQv5ZdpkDgxYN
	nIrG5JGLqC4fIN/s4aPo4y2dtVU2+7NrXxpYxAtFgCkM4gXLNxZW4c3MAQnUKv23zHoORJrZ4xkxx
	djM/nwgxc42lu7xhTACzAAtq6MOhG3Oen3xrw3hsmW7MMEs/huNAw888mBB/6HYFBKjauDOiLbNIc
	pxRZRqe5CJwTHClQigHJCgayMr7G1vaJOwO5CxkiitNVptHw6TTS/yLAOR6Baa7X0ryRR68qKjHUV
	4xQ9/Gz8CFEE5la3jR3PCvIrP7TvkcXjJ7frkOZHZdBmrFbjJjnBn1C4o0vB6EvDQGWxm1Fs5xVxI
	Kn9y0WFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruauf-000000082dS-2Rwe;
	Wed, 10 Apr 2024 16:35:05 +0000
Received: from smtp.cesky-hosting.cz ([2a00:1ed0:2:0:1:5bef:c8ee:1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruaua-000000082bG-1gXv
	for barebox@lists.infradead.org;
	Wed, 10 Apr 2024 16:35:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=elrest.cz;
	s=rampa2-202308; t=1712766896;
	bh=Xbu2rpYUBI/yNLD81vmftk4y0mwJ5v3TkIsp7IsLNzo=;
	h=From:To:Subject:Date:From;
	b=ESwHXpg0Dtjf4NCzeYn+MP4gtPBDeirb0/wpPgO0fPi4I+7bQVW5xQOb5qvLcQ6cJ
	 wm9CoqknTf3EAI83w34exWDRtZlvTWmVUi0W1MzXk09zmoXh5P2jLL6zWb1ixKaXJh
	 ytUWQSry4/xmDBJ8TNkLQJBIWhtJJfhdm23mL+1mPzfEsC+olkpjVjllW3eXuf07LR
	 PWRFSi/p2kC/rLflvcop9FYeWbEOvEpu87lWKNkTGZGrn8xZSTWgVSnaWFyWbpG08q
	 dfdN4ShsVgtAjsVcmGbOQKk5fcF79pg4AnFs1rTfMPNdbjyDu82my2TpfpvaN8PxFE
	 8KOsFRZs39qRQ==
X-Virus-Scanned: Debian amavis at smtp.cesky-hosting.cz
Received: from localhost.localdomain (unknown [185.63.98.16])
	(Authenticated sender: tomas.marek@elrest.cz)
	by smtp.cesky-hosting.cz (Postfix) with ESMTPSA id D1A894E7
	for <barebox@lists.infradead.org>; Wed, 10 Apr 2024 18:34:54 +0200 (CEST)
From: Tomas Marek <tomas.marek@elrest.cz>
To: barebox@lists.infradead.org
Date: Wed, 10 Apr 2024 18:34:46 +0200
Message-Id: <20240410163446.14401-1-tomas.marek@elrest.cz>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_093501_114059_00D83C87 
X-CRM114-Status: GOOD (  19.05  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] gpio: Add Intel gpio controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Tomas Marek <tomas.marek@elrest.cz>
---
Changes in v2:
- Addressed comments from Ahmad - mainly fixing the return value of
  intel_gpio_get_direction, and implementing the add_intel_gpio_device
  helper.
- Link to v1: https://lore.barebox.org/barebox/20240409071422.5934-1-tomas.marek@elrest.cz/
---
 drivers/gpio/Kconfig               |   6 +
 drivers/gpio/Makefile              |   1 +
 drivers/gpio/gpio-intel.c          | 198 +++++++++++++++++++++++++++++
 include/platform_data/gpio-intel.h |  23 ++++
 4 files changed, 228 insertions(+)
 create mode 100644 drivers/gpio/gpio-intel.c
 create mode 100644 include/platform_data/gpio-intel.h

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 9f27addaa2..d9bb68e06b 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -219,6 +219,12 @@ config GPIO_LATCH
 	  Say yes here to enable a driver for GPIO multiplexers based on latches
 	  connected to other GPIOs.
 
+config GPIO_INTEL
+	bool "Intel GPIO driver"
+	depends on X86 || COMPILE_TEST
+	help
+	  Say Y here to build support for the Intel GPIO driver.
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
index 0000000000..ebec220f46
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
+	return GPIOF_DIR_OUT;
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
+		dev_err(dev, "Couldn't add gpiochip: %pe\n", ERR_PTR(ret));
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
index 0000000000..4da4764998
--- /dev/null
+++ b/include/platform_data/gpio-intel.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef __GPIO_INTEL_H
+#define __GPIO_INTEL_H
+
+#include <linux/types.h>
+
+struct gpio_intel_platform_data {
+	resource_size_t community_base;
+	resource_size_t community_size;
+	unsigned int	ngpios;
+};
+
+static inline struct device *add_intel_gpio_device(
+	struct gpio_intel_platform_data *pdata
+)
+{
+	return add_generic_device("intel-gpio", DEVICE_ID_DYNAMIC, NULL,
+		pdata->community_base, pdata->community_size,
+		IORESOURCE_MEM, pdata);
+}
+
+#endif /* __GPIO_INTEL_H */
-- 
2.39.2




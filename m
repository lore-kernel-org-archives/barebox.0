Delivery-date: Wed, 13 Mar 2024 11:57:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIj-004HUd-05
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 11:57:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIh-0001Lv-Nl
	for lore@pengutronix.de; Wed, 13 Mar 2024 11:57:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WtqAT1bEXeWc7xivf90RlhBrkpIGu7XgAlu+tlsw49c=; b=KxuR8syWEpqE/GrN9JwRMufzK+
	QFYW2MXjA+lJD4mRvzsZiIaJ5X7pLAdZUGGBtiqLcSEiuTlrpbqdoLUTduB9L7IQz4AD56B8H0VQ2
	ykP4pkfJMJF1FBYUm1H3BqlmkvAzuqzIiocHfMxP6yBVzH+wQokc+TO/KSy/iGXaQ+ykzS3hkhs3b
	vUgclakNqi+sM5DCyMCU3UsW+dESLh6qLGU8JcbLyGnYm6ah8dRNlf0Ay7UaUHfE2DOi6AbFNe9Xu
	4sjkUa+bNZ4FosNuTMTIlskN/qqZmEr+m0T73B5Nfy1jeoDbCPA0EY1KXHdeGXfW3M8mAcLOIi3H2
	ZjmMCfCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMIA-00000009kZl-3HDa;
	Wed, 13 Mar 2024 10:57:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMHi-00000009kKq-1meU
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 10:56:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHh-0008Pk-6B; Wed, 13 Mar 2024 11:56:33 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-00661O-OX; Wed, 13 Mar 2024 11:56:32 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-004FrF-0W;
	Wed, 13 Mar 2024 11:56:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 11:56:27 +0100
Message-Id: <20240313105631.686778-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313105631.686778-1-a.fatoum@pengutronix.de>
References: <20240313105631.686778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_035634_753332_E0E8A68B 
X-CRM114-Status: GOOD (  24.95  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/12] hw_random: add BCM2835 RNG driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To enable proper hardening with stack protector, add support for the
BCM2835 RNG. This has been tested on a Raspberry Pi 3B.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hw_random/Kconfig       |   7 ++
 drivers/hw_random/Makefile      |   1 +
 drivers/hw_random/bcm2835-rng.c | 199 ++++++++++++++++++++++++++++++++
 include/linux/hw_random.h       |   5 +
 4 files changed, 212 insertions(+)
 create mode 100644 drivers/hw_random/bcm2835-rng.c

diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index 873e2bf1e4f4..e38bf42a67cd 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -66,4 +66,11 @@ config HW_RANDOM_ATMEL
 	  This driver provides barebox support for the Random Number
 	  Generator hardware found on Atmel AT91 devices.
 
+config HW_RANDOM_BCM2835
+	tristate "Broadcom BCM2835/BCM63xx Random Number Generator support"
+	depends on ARCH_BCM283X || COMPILE_TEST
+	help
+	  This driver provides barebox support for the Random Number
+	  Generator hardware found on the Broadcom BCM2835 SoCs.
+
 endif
diff --git a/drivers/hw_random/Makefile b/drivers/hw_random/Makefile
index b0710e4ce977..ed0a4efeedf4 100644
--- a/drivers/hw_random/Makefile
+++ b/drivers/hw_random/Makefile
@@ -8,3 +8,4 @@ obj-$(CONFIG_HW_RANDOM_STARFIVE) += starfive-vic-rng.o
 obj-$(CONFIG_HW_RANDOM_EFI) += efi-rng.o
 obj-$(CONFIG_HW_RANDOM_OPTEE) += optee-rng.o
 obj-$(CONFIG_HW_RANDOM_ATMEL) += atmel-rng.o
+obj-$(CONFIG_HW_RANDOM_BCM2835) += bcm2835-rng.o
diff --git a/drivers/hw_random/bcm2835-rng.c b/drivers/hw_random/bcm2835-rng.c
new file mode 100644
index 000000000000..d82331c950d2
--- /dev/null
+++ b/drivers/hw_random/bcm2835-rng.c
@@ -0,0 +1,199 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2010-2012 Broadcom. All rights reserved.
+ * Copyright (c) 2013 Lubomir Rintel
+ */
+
+#include <linux/hw_random.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/reset.h>
+#include <of.h>
+#include <linux/device.h>
+#include <linux/printk.h>
+#include <linux/clk.h>
+#include <linux/reset.h>
+
+#define RNG_CTRL	0x0
+#define RNG_STATUS	0x4
+#define RNG_DATA	0x8
+#define RNG_INT_MASK	0x10
+
+/* enable rng */
+#define RNG_RBGEN	0x1
+
+/* the initial numbers generated are "less random" so will be discarded */
+#define RNG_WARMUP_COUNT 0x40000
+
+#define RNG_INT_OFF	0x1
+
+struct bcm2835_rng_priv {
+	struct hwrng rng;
+	void __iomem *base;
+	bool mask_interrupts;
+	struct clk *clk;
+	struct reset_control *reset;
+};
+
+static inline struct bcm2835_rng_priv *to_rng_priv(struct hwrng *rng)
+{
+	return container_of(rng, struct bcm2835_rng_priv, rng);
+}
+
+static inline u32 rng_readl(struct bcm2835_rng_priv *priv, u32 offset)
+{
+	/* MIPS chips strapped for BE will automagically configure the
+	 * peripheral registers for CPU-native byte order.
+	 */
+	if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
+		return __raw_readl(priv->base + offset);
+	else
+		return readl(priv->base + offset);
+}
+
+static inline void rng_writel(struct bcm2835_rng_priv *priv, u32 val,
+			      u32 offset)
+{
+	if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
+		__raw_writel(val, priv->base + offset);
+	else
+		writel(val, priv->base + offset);
+}
+
+static int bcm2835_rng_read(struct hwrng *rng, void *buf, size_t max,
+			       bool wait)
+{
+	struct bcm2835_rng_priv *priv = to_rng_priv(rng);
+	u32 max_words = max / sizeof(u32);
+	u32 num_words, count;
+
+	while ((rng_readl(priv, RNG_STATUS) >> 24) == 0) {
+		if (!wait)
+			return 0;
+		hwrng_yield(rng);
+	}
+
+	num_words = rng_readl(priv, RNG_STATUS) >> 24;
+	if (num_words > max_words)
+		num_words = max_words;
+
+	for (count = 0; count < num_words; count++)
+		((u32 *)buf)[count] = rng_readl(priv, RNG_DATA);
+
+	return num_words * sizeof(u32);
+}
+
+static int bcm2835_rng_init(struct hwrng *rng)
+{
+	struct bcm2835_rng_priv *priv = to_rng_priv(rng);
+	int ret = 0;
+	u32 val;
+
+	ret = clk_prepare_enable(priv->clk);
+	if (ret)
+		return ret;
+
+	ret = reset_control_reset(priv->reset);
+	if (ret)
+		return ret;
+
+	if (priv->mask_interrupts) {
+		/* mask the interrupt */
+		val = rng_readl(priv, RNG_INT_MASK);
+		val |= RNG_INT_OFF;
+		rng_writel(priv, val, RNG_INT_MASK);
+	}
+
+	/* set warm-up count & enable */
+	rng_writel(priv, RNG_WARMUP_COUNT, RNG_STATUS);
+	rng_writel(priv, RNG_RBGEN, RNG_CTRL);
+
+	return ret;
+}
+
+static void bcm2835_rng_cleanup(struct bcm2835_rng_priv *priv)
+{
+	/* disable rng hardware */
+	rng_writel(priv, 0, RNG_CTRL);
+
+	clk_disable_unprepare(priv->clk);
+}
+
+struct bcm2835_rng_of_data {
+	bool mask_interrupts;
+};
+
+static const struct bcm2835_rng_of_data nsp_rng_of_data = {
+	.mask_interrupts = true,
+};
+
+static const struct of_device_id bcm2835_rng_of_match[] = {
+	{ .compatible = "brcm,bcm2835-rng"},
+	{ .compatible = "brcm,bcm-nsp-rng", .data = &nsp_rng_of_data },
+	{ .compatible = "brcm,bcm5301x-rng", .data = &nsp_rng_of_data },
+	{ .compatible = "brcm,bcm6368-rng"},
+	{},
+};
+
+static int bcm2835_rng_probe(struct device *dev)
+{
+	const struct bcm2835_rng_of_data *of_data;
+	struct bcm2835_rng_priv *priv;
+	int err;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	/* map peripheral */
+	priv->base = dev_platform_ioremap_resource(dev, 0);
+	if (IS_ERR(priv->base))
+		return PTR_ERR(priv->base);
+
+	/* Clock is optional on most platforms */
+	priv->clk = clk_get_optional(dev, NULL);
+	if (IS_ERR(priv->clk))
+		return PTR_ERR(priv->clk);
+
+	priv->reset = reset_control_get_optional(dev, NULL);
+	if (IS_ERR(priv->reset))
+		return PTR_ERR(priv->reset);
+
+	priv->rng.name = dev_name(dev);
+	priv->rng.init = bcm2835_rng_init;
+	priv->rng.read = bcm2835_rng_read;
+
+	of_data = device_get_match_data(dev);
+	if (of_data)
+		priv->mask_interrupts = of_data->mask_interrupts;
+
+	/* register driver */
+	err = hwrng_register(dev, &priv->rng);
+	if (err)
+		dev_err(dev, "hwrng registration failed\n");
+	else
+		dev_info(dev, "hwrng registered\n");
+
+	dev->priv = priv;
+
+	return err;
+}
+
+static void bcm2835_rng_remove(struct device *dev)
+{
+	bcm2835_rng_cleanup(dev->priv);
+}
+
+MODULE_DEVICE_TABLE(of, bcm2835_rng_of_match);
+
+static struct driver bcm2835_rng_driver = {
+	.name		= "bcm2835-rng",
+	.of_match_table = bcm2835_rng_of_match,
+	.probe		= bcm2835_rng_probe,
+	.remove		= bcm2835_rng_remove,
+};
+device_platform_driver(bcm2835_rng_driver);
+
+MODULE_AUTHOR("Lubomir Rintel <lkundrak@v3.sk>");
+MODULE_DESCRIPTION("BCM2835 Random Number Generator (RNG) driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/hw_random.h b/include/linux/hw_random.h
index 4479428bc743..ff6d3bb58285 100644
--- a/include/linux/hw_random.h
+++ b/include/linux/hw_random.h
@@ -52,4 +52,9 @@ static inline int hwrng_get_data(struct hwrng *rng, void *buffer, size_t size, i
 
 void hwrng_unregister(struct hwrng *rng);
 
+static inline long hwrng_yield(struct hwrng *rng)
+{
+	return 0;
+}
+
 #endif /* LINUX_HWRANDOM_H_ */
-- 
2.39.2




Delivery-date: Wed, 13 Mar 2024 11:57:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIj-004HUv-1A
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 11:57:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIi-0001MM-FX
	for lore@pengutronix.de; Wed, 13 Mar 2024 11:57:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jksnTkKe3iMUIzL7OM8QOqId/wwLobSoBn3Z+B9dIuA=; b=g4uXNWPKi06qso9djDj7QI2QG9
	1bPVzm1IjaaDo4paiEWAT7ZafIeDviipcxsA7oxZl/7Z/OySZdvh4gKebJMIpTA+Oq4tLkwSwsSz8
	PDLgIs4O4T08bXVYLH9lwhFlZDPTkrFnsdG955edcL+dB8iiJo2xJxPUXwuiYDMFHIJavfQDh1ZB8
	yg105pgPROOPw+lgIsoO0fUyar/lUU3lviSOsnEIgmbCHlcYjNbzdDjDUWTcQ1lDjuX+NTgKeW0ip
	2hqVBTqpxBnQRlNITEnFa4ujUgd0RiWtj+59JzZBL+qt6LQAJ08FRhm29Fq04Q5Oe0Z8DOFYvuTME
	i88h0T7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMIE-00000009kb5-1QXf;
	Wed, 13 Mar 2024 10:57:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMHi-00000009kKp-1PDQ
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 10:56:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHh-0008Pb-4K; Wed, 13 Mar 2024 11:56:33 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-00661L-N1; Wed, 13 Mar 2024 11:56:32 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-004FrF-0N;
	Wed, 13 Mar 2024 11:56:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 11:56:26 +0100
Message-Id: <20240313105631.686778-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313105631.686778-1-a.fatoum@pengutronix.de>
References: <20240313105631.686778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_035634_593936_486A78D0 
X-CRM114-Status: GOOD (  22.47  )
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
Subject: [PATCH 07/12] hw_random: add Atmel RNG driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To enable proper hardening with stack protector, add support for the
Atmel RNG. This has been tested on a SAMA5D2.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hw_random/Kconfig     |   7 ++
 drivers/hw_random/Makefile    |   1 +
 drivers/hw_random/atmel-rng.c | 165 ++++++++++++++++++++++++++++++++++
 3 files changed, 173 insertions(+)
 create mode 100644 drivers/hw_random/atmel-rng.c

diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index bd9ba9e19ec2..873e2bf1e4f4 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -59,4 +59,11 @@ config HW_RANDOM_OPTEE
 	  Generator on ARM SoCs where hardware entropy sources are not
 	  accessible to normal world (barebox and e.g. Linux after it).
 
+config HW_RANDOM_ATMEL
+	tristate "Atmel Random Number Generator support"
+	depends on ARCH_AT91 || COMPILE_TEST
+	help
+	  This driver provides barebox support for the Random Number
+	  Generator hardware found on Atmel AT91 devices.
+
 endif
diff --git a/drivers/hw_random/Makefile b/drivers/hw_random/Makefile
index 2c7d196f2f72..b0710e4ce977 100644
--- a/drivers/hw_random/Makefile
+++ b/drivers/hw_random/Makefile
@@ -7,3 +7,4 @@ obj-$(CONFIG_HW_RANDOM_VIRTIO) += virtio-rng.o
 obj-$(CONFIG_HW_RANDOM_STARFIVE) += starfive-vic-rng.o
 obj-$(CONFIG_HW_RANDOM_EFI) += efi-rng.o
 obj-$(CONFIG_HW_RANDOM_OPTEE) += optee-rng.o
+obj-$(CONFIG_HW_RANDOM_ATMEL) += atmel-rng.o
diff --git a/drivers/hw_random/atmel-rng.c b/drivers/hw_random/atmel-rng.c
new file mode 100644
index 000000000000..bdd2139b08a5
--- /dev/null
+++ b/drivers/hw_random/atmel-rng.c
@@ -0,0 +1,165 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2011 Peter Korsgaard <jacmet@sunsite.dk>
+
+#include <linux/kernel.h>
+#include <linux/mod_devicetable.h>
+#include <linux/slab.h>
+#include <linux/err.h>
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/hw_random.h>
+#include <of.h>
+#include <linux/device.h>
+
+#define TRNG_CR		0x00
+#define TRNG_MR		0x04
+#define TRNG_ISR	0x1c
+#define TRNG_ISR_DATRDY	BIT(0)
+#define TRNG_ODATA	0x50
+
+#define TRNG_KEY	0x524e4700 /* RNG */
+
+#define TRNG_HALFR	BIT(0) /* generate RN every 168 cycles */
+
+struct atmel_trng_data {
+	bool has_half_rate;
+};
+
+struct atmel_trng {
+	struct clk *clk;
+	void __iomem *base;
+	struct hwrng rng;
+	bool has_half_rate;
+};
+
+static bool atmel_trng_wait_ready(struct atmel_trng *trng, bool wait)
+{
+	int ready;
+
+	ready = readl(trng->base + TRNG_ISR) & TRNG_ISR_DATRDY;
+	if (!ready && wait)
+		readl_poll_timeout(trng->base + TRNG_ISR, ready,
+				   ready & TRNG_ISR_DATRDY, 20000);
+
+	return !!ready;
+}
+
+static int atmel_trng_read(struct hwrng *rng, void *buf, size_t max,
+			   bool wait)
+{
+	struct atmel_trng *trng = container_of(rng, struct atmel_trng, rng);
+	u32 *data = buf;
+	int ret;
+
+	ret = atmel_trng_wait_ready(trng, wait);
+	if (!ret)
+		return 0;
+
+	*data = readl(trng->base + TRNG_ODATA);
+	/*
+	 * ensure data ready is only set again AFTER the next data word is ready
+	 * in case it got set between checking ISR and reading ODATA, so we
+	 * don't risk re-reading the same word
+	 */
+	readl(trng->base + TRNG_ISR);
+	ret = 4;
+
+	return ret;
+}
+
+static int atmel_trng_init(struct hwrng *rng)
+{
+	struct atmel_trng *trng = container_of(rng, struct atmel_trng, rng);
+	unsigned long rate;
+	int ret;
+
+	ret = clk_prepare_enable(trng->clk);
+	if (ret)
+		return ret;
+
+	if (trng->has_half_rate) {
+		rate = clk_get_rate(trng->clk);
+
+		/* if peripheral clk is above 100MHz, set HALFR */
+		if (rate > 100000000)
+			writel(TRNG_HALFR, trng->base + TRNG_MR);
+	}
+
+	writel(TRNG_KEY | 1, trng->base + TRNG_CR);
+
+	return 0;
+}
+
+static void atmel_trng_cleanup(struct atmel_trng *trng)
+{
+	writel(TRNG_KEY, trng->base + TRNG_CR);
+	clk_disable_unprepare(trng->clk);
+}
+
+static int atmel_trng_probe(struct device *dev)
+{
+	struct atmel_trng *trng;
+	const struct atmel_trng_data *data;
+
+	trng = devm_kzalloc(dev, sizeof(*trng), GFP_KERNEL);
+	if (!trng)
+		return -ENOMEM;
+
+	trng->base = dev_platform_ioremap_resource(dev, 0);
+	if (IS_ERR(trng->base))
+		return PTR_ERR(trng->base);
+
+	trng->clk = clk_get(dev, NULL);
+	if (IS_ERR(trng->clk))
+		return PTR_ERR(trng->clk);
+	data = device_get_match_data(dev);
+	if (!data)
+		return -ENODEV;
+
+	trng->has_half_rate = data->has_half_rate;
+	trng->rng.name = dev_name(dev);
+	trng->rng.read = atmel_trng_read;
+	trng->rng.init = atmel_trng_init;
+	dev->priv = trng;
+
+	return hwrng_register(dev, &trng->rng);
+}
+
+static void atmel_trng_remove(struct device *dev)
+{
+	atmel_trng_cleanup(dev->priv);
+}
+
+static const struct atmel_trng_data at91sam9g45_config = {
+	.has_half_rate = false,
+};
+
+static const struct atmel_trng_data sam9x60_config = {
+	.has_half_rate = true,
+};
+
+static const struct of_device_id atmel_trng_dt_ids[] = {
+	{
+		.compatible = "atmel,at91sam9g45-trng",
+		.data = &at91sam9g45_config,
+	}, {
+		.compatible = "microchip,sam9x60-trng",
+		.data = &sam9x60_config,
+	}, {
+		/* sentinel */
+	}
+};
+MODULE_DEVICE_TABLE(of, atmel_trng_dt_ids);
+
+static struct driver atmel_trng_driver = {
+	.name		= "atmel-trng",
+	.probe		= atmel_trng_probe,
+	.remove		= atmel_trng_remove,
+	.of_match_table = atmel_trng_dt_ids,
+};
+device_platform_driver(atmel_trng_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Peter Korsgaard <jacmet@sunsite.dk>");
+MODULE_DESCRIPTION("Atmel true random number generator driver");
-- 
2.39.2




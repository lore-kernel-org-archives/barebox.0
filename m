Delivery-date: Wed, 13 Mar 2024 12:05:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMQh-004I1z-1L
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 12:05:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMQg-0000pe-Hn
	for lore@pengutronix.de; Wed, 13 Mar 2024 12:05:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VZQQCn8lvK3i7hCEbIgqLh8LzTVMTnt1SkOG6dxQMss=; b=FTAACU/Pyhxcg5e/Kt1H6MhpY4
	Bhy+tS9MWcrNC7LDExyvcvUwZpBDCDGpF8443uMNIpf/s0iEYHi8+l029e9szxZjAqiuRxuxFfjda
	N3xV7/9crvHBd9Nng/lpLOYypukouLG9jQNJJ1yHZ5Dpq9c/oVinAn3GzRHzkM3WpuAkZ+XB+Zrdx
	3PMcammDLVBIcawUPs5dnprWsyHh1fEhI2Hn1xGO8YEpzkBcrjurG62DhAZB2qJ//5LmVc89bTP2q
	N6hNoSOQAsL/JADMdOkNM1fwnKxkcgKJI/YYmHM5oX/Hab+G1BBsB1XU1KOiqHbJgQLY456SQNzlE
	CRRmLcZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMPy-00000009oJN-0qJk;
	Wed, 13 Mar 2024 11:05:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMOX-00000009nDA-2U3Z
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 11:03:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMOW-0007Av-5b; Wed, 13 Mar 2024 12:03:36 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMOV-00662P-PC; Wed, 13 Mar 2024 12:03:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-004FrF-0y;
	Wed, 13 Mar 2024 11:56:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 11:56:30 +0100
Message-Id: <20240313105631.686778-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313105631.686778-1-a.fatoum@pengutronix.de>
References: <20240313105631.686778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_040337_751349_4CAC45CB 
X-CRM114-Status: GOOD (  27.25  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/12] hw_random: add timeriomem_rng driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To enable proper hardening with stack protector, add support for the
RNGs with the interface of a single memory mapped 32-bit register.

This can possibly come in handy for the web demo.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hw_random/Kconfig          |   7 ++
 drivers/hw_random/Makefile         |   1 +
 drivers/hw_random/timeriomem-rng.c | 145 +++++++++++++++++++++++++++++
 3 files changed, 153 insertions(+)
 create mode 100644 drivers/hw_random/timeriomem-rng.c

diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index 58df6a75443c..bd1ac89ad37d 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -8,6 +8,13 @@ menuconfig HWRNG
 
 if HWRNG
 
+config HW_RANDOM_TIMERIOMEM
+	tristate "Timer IOMEM HW Random Number Generator support"
+	help
+	  This driver provides barebox support for a generic Random
+	  Number Generator used by reading a 'dumb' iomem address that
+	  is to be read no faster than, for example, once a second.
+
 config HWRNG_MXC_RNGC
 	tristate "Freescale i.MX RNGC Random Number Generator"
 	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX53 || COMPILE_TEST
diff --git a/drivers/hw_random/Makefile b/drivers/hw_random/Makefile
index 8658d4e52521..32b02fa211ac 100644
--- a/drivers/hw_random/Makefile
+++ b/drivers/hw_random/Makefile
@@ -11,3 +11,4 @@ obj-$(CONFIG_HW_RANDOM_ATMEL) += atmel-rng.o
 obj-$(CONFIG_HW_RANDOM_BCM2835) += bcm2835-rng.o
 obj-$(CONFIG_HW_RANDOM_IPROC_RNG200) += iproc-rng200.o
 obj-$(CONFIG_HW_RANDOM_ROCKCHIP) += rockchip-rng.o
+obj-$(CONFIG_HW_RANDOM_TIMERIOMEM) += timeriomem-rng.o
diff --git a/drivers/hw_random/timeriomem-rng.c b/drivers/hw_random/timeriomem-rng.c
new file mode 100644
index 000000000000..8d4705830653
--- /dev/null
+++ b/drivers/hw_random/timeriomem-rng.c
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * drivers/char/hw_random/timeriomem-rng.c
+ *
+ * Copyright (C) 2009 Alexander Clouter <alex@digriz.org.uk>
+ *
+ * Derived from drivers/char/hw_random/omap-rng.c
+ *   Copyright 2005 (c) MontaVista Software, Inc.
+ *   Author: Deepak Saxena <dsaxena@plexity.net>
+ *
+ * Overview:
+ *   This driver is useful for platforms that have an IO range that provides
+ *   periodic random data from a single IO memory address.  All the platform
+ *   has to do is provide the address and 'wait time' that new data becomes
+ *   available.
+ *
+ * TODO: add support for reading sizes other than 32bits and masking
+ */
+
+#include <linux/hw_random.h>
+#include <linux/io.h>
+#include <linux/ktime.h>
+#include <of.h>
+#include <linux/device.h>
+#include <linux/time.h>
+
+struct timeriomem_rng_private {
+	void __iomem		*io_base;
+
+	ktime_t			period;
+	ktime_t			next_read;
+
+	struct hwrng		rng_ops;
+};
+
+static int timeriomem_rng_read(struct hwrng *hwrng, void *data,
+				size_t max, bool wait)
+{
+	struct timeriomem_rng_private *priv =
+		container_of(hwrng, struct timeriomem_rng_private, rng_ops);
+	int retval = 0;
+	int period_us = ktime_to_us(priv->period);
+	ktime_t now = ktime_get();
+
+	/*
+	 * There may not have been enough time for new data to be generated
+	 * since the last request.  If the caller doesn't want to wait, let them
+	 * bail out.  Otherwise, wait for the completion.  If the new data has
+	 * already been generated, the completion should already be available.
+	 */
+	if (ktime_before(now, priv->next_read)) {
+		if (!wait)
+			return 0;
+
+		udelay(ktime_to_us(ktime_sub(priv->next_read, now)));
+	}
+
+	do {
+		/*
+		 * After the first read, all additional reads will need to wait
+		 * for the RNG to generate new data.  Since the period can have
+		 * a wide range of values (1us to 1s have been observed), allow
+		 * for 1% tolerance in the sleep time rather than a fixed value.
+		 */
+		if (retval > 0)
+			udelay(period_us);
+
+		*(u32 *)data = readl(priv->io_base);
+		retval += sizeof(u32);
+		data += sizeof(u32);
+		max -= sizeof(u32);
+	} while (wait && max > sizeof(u32));
+
+	/*
+	 * Block any new callers until the RNG has had time to generate new
+	 * data.
+	 */
+	priv->next_read = ktime_add(ktime_get(), priv->period);
+
+	return retval;
+}
+
+static int timeriomem_rng_probe(struct device *dev)
+{
+	struct timeriomem_rng_private *priv;
+	struct resource *res;
+	int err = 0;
+	int period;
+
+	/* Allocate memory for the device structure (and zero it) */
+	priv = devm_kzalloc(dev,
+			sizeof(struct timeriomem_rng_private), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->io_base = dev_platform_get_and_ioremap_resource(dev, 0, &res);
+	if (IS_ERR(priv->io_base))
+		return PTR_ERR(priv->io_base);
+
+	if (res->start % 4 != 0 || resource_size(res) < 4) {
+		dev_err(dev,
+			"address must be at least four bytes wide and 32-bit aligned\n");
+		return -EINVAL;
+	}
+
+	if (of_property_read_u32(dev->of_node, "period", &period))
+		return dev_err_probe(dev, -EINVAL, "missing period\n");
+
+	priv->period = ns_to_ktime(period * NSEC_PER_USEC);
+
+	priv->rng_ops.name = dev_name(dev);
+	priv->rng_ops.read = timeriomem_rng_read;
+
+	/* Assume random data is already available. */
+	priv->next_read = ktime_get();
+
+	err = hwrng_register(dev, &priv->rng_ops);
+	if (err) {
+		dev_err(dev, "problem registering\n");
+		return err;
+	}
+
+	dev_info(dev, "32bits from 0x%p @ %dus\n",
+			priv->io_base, period);
+
+	return 0;
+}
+
+static const struct of_device_id timeriomem_rng_match[] = {
+	{ .compatible = "timeriomem_rng" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, timeriomem_rng_match);
+
+static struct driver timeriomem_rng_driver = {
+	.name		= "timeriomem_rng",
+	.of_match_table	= timeriomem_rng_match,
+	.probe		= timeriomem_rng_probe,
+};
+
+device_platform_driver(timeriomem_rng_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Alexander Clouter <alex@digriz.org.uk>");
+MODULE_DESCRIPTION("Timer IOMEM H/W RNG driver");
-- 
2.39.2




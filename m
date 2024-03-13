Delivery-date: Wed, 13 Mar 2024 11:57:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIr-004HVv-0g
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 11:57:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIp-0001Wf-Qw
	for lore@pengutronix.de; Wed, 13 Mar 2024 11:57:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5IlTe3zPesicJnnCOPIcyGgW2JoRaB8D6gf5MbzRWFc=; b=iovyUCpTAYwUyPEc+P8blFbkFu
	f6XvjCXwThBfnZMmGSy+FL0+OtMREa4W/m1b4Xa37UV+eylWFQGqEfjJZ9SwUy/dar9bWzN8YRMlm
	2EQg40gieIRoRIWdmw7B/zr+alWesVpEmoS+D4Ka+pC6XnOYQK4ORZzve3kbqx79fu1VcNTgO4nnk
	EWFe2dE4bgUsf8YT2rh3E+mh7Y2QhDE6r/nS5P/l7h5JDA7WvyjdBN//TScUBiLoo04wA+bqesGmu
	pN+Lnm1NsNj/R53JCZAaR/MGF0c1zUuwhB7c3cvyKXZuOOt+zFBWlNcj73+JrymWzZnpg3U0bxpu+
	da32uHUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMII-00000009kdD-1hpN;
	Wed, 13 Mar 2024 10:57:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMHi-00000009kKr-2Dgt
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 10:56:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHh-0008Px-7g; Wed, 13 Mar 2024 11:56:33 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-00661R-Q9; Wed, 13 Mar 2024 11:56:32 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-004FrF-0f;
	Wed, 13 Mar 2024 11:56:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 11:56:28 +0100
Message-Id: <20240313105631.686778-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313105631.686778-1-a.fatoum@pengutronix.de>
References: <20240313105631.686778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_035634_921732_45C8C308 
X-CRM114-Status: GOOD (  23.40  )
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
Subject: [PATCH 09/12] hw_random: add IPROC RNG200 driver for BCM2711
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To enable proper hardening with stack protector, add support for the
IPROC RNG200. This has been tested on a Raspberry Pi 4.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hw_random/Kconfig        |   7 +
 drivers/hw_random/Makefile       |   1 +
 drivers/hw_random/iproc-rng200.c | 220 +++++++++++++++++++++++++++++++
 3 files changed, 228 insertions(+)
 create mode 100644 drivers/hw_random/iproc-rng200.c

diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index e38bf42a67cd..8aef00d61d81 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -73,4 +73,11 @@ config HW_RANDOM_BCM2835
 	  This driver provides barebox support for the Random Number
 	  Generator hardware found on the Broadcom BCM2835 SoCs.
 
+config HW_RANDOM_IPROC_RNG200
+	tristate "Broadcom iProc/STB RNG200 support"
+	depends on ARCH_BCM283X || COMPILE_TEST
+	help
+	  This driver provides barebox support for the RNG200
+	  hardware found on the BCM2711.
+
 endif
diff --git a/drivers/hw_random/Makefile b/drivers/hw_random/Makefile
index ed0a4efeedf4..120f4c465635 100644
--- a/drivers/hw_random/Makefile
+++ b/drivers/hw_random/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_HW_RANDOM_EFI) += efi-rng.o
 obj-$(CONFIG_HW_RANDOM_OPTEE) += optee-rng.o
 obj-$(CONFIG_HW_RANDOM_ATMEL) += atmel-rng.o
 obj-$(CONFIG_HW_RANDOM_BCM2835) += bcm2835-rng.o
+obj-$(CONFIG_HW_RANDOM_IPROC_RNG200) += iproc-rng200.o
diff --git a/drivers/hw_random/iproc-rng200.c b/drivers/hw_random/iproc-rng200.c
new file mode 100644
index 000000000000..4cb3573a7d20
--- /dev/null
+++ b/drivers/hw_random/iproc-rng200.c
@@ -0,0 +1,220 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+* Copyright (C) 2015 Broadcom Corporation
+*
+*/
+/*
+ * DESCRIPTION: The Broadcom iProc RNG200 Driver
+ */
+
+#include <linux/hw_random.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/mod_devicetable.h>
+#include <linux/device.h>
+#include <clock.h>
+
+/* Registers */
+#define RNG_CTRL_OFFSET					0x00
+#define RNG_CTRL_RNG_RBGEN_MASK				0x00001FFF
+#define RNG_CTRL_RNG_RBGEN_ENABLE			0x00000001
+
+#define RNG_SOFT_RESET_OFFSET				0x04
+#define RNG_SOFT_RESET					0x00000001
+
+#define RBG_SOFT_RESET_OFFSET				0x08
+#define RBG_SOFT_RESET					0x00000001
+
+#define RNG_INT_STATUS_OFFSET				0x18
+#define RNG_INT_STATUS_MASTER_FAIL_LOCKOUT_IRQ_MASK	0x80000000
+#define RNG_INT_STATUS_STARTUP_TRANSITIONS_MET_IRQ_MASK	0x00020000
+#define RNG_INT_STATUS_NIST_FAIL_IRQ_MASK		0x00000020
+#define RNG_INT_STATUS_TOTAL_BITS_COUNT_IRQ_MASK	0x00000001
+
+#define RNG_FIFO_DATA_OFFSET				0x20
+
+#define RNG_FIFO_COUNT_OFFSET				0x24
+#define RNG_FIFO_COUNT_RNG_FIFO_COUNT_MASK		0x000000FF
+
+struct iproc_rng200_dev {
+	struct hwrng rng;
+	void __iomem *base;
+};
+
+#define to_rng_priv(rng)	container_of(rng, struct iproc_rng200_dev, rng)
+
+static void iproc_rng200_enable_set(void __iomem *rng_base, bool enable)
+{
+	u32 val;
+
+	val = ioread32(rng_base + RNG_CTRL_OFFSET);
+	val &= ~RNG_CTRL_RNG_RBGEN_MASK;
+
+	if (enable)
+		val |= RNG_CTRL_RNG_RBGEN_ENABLE;
+
+	iowrite32(val, rng_base + RNG_CTRL_OFFSET);
+}
+
+static void iproc_rng200_restart(void __iomem *rng_base)
+{
+	uint32_t val;
+
+	iproc_rng200_enable_set(rng_base, false);
+
+	/* Clear all interrupt status */
+	iowrite32(0xFFFFFFFFUL, rng_base + RNG_INT_STATUS_OFFSET);
+
+	/* Reset RNG and RBG */
+	val = ioread32(rng_base + RBG_SOFT_RESET_OFFSET);
+	val |= RBG_SOFT_RESET;
+	iowrite32(val, rng_base + RBG_SOFT_RESET_OFFSET);
+
+	val = ioread32(rng_base + RNG_SOFT_RESET_OFFSET);
+	val |= RNG_SOFT_RESET;
+	iowrite32(val, rng_base + RNG_SOFT_RESET_OFFSET);
+
+	val = ioread32(rng_base + RNG_SOFT_RESET_OFFSET);
+	val &= ~RNG_SOFT_RESET;
+	iowrite32(val, rng_base + RNG_SOFT_RESET_OFFSET);
+
+	val = ioread32(rng_base + RBG_SOFT_RESET_OFFSET);
+	val &= ~RBG_SOFT_RESET;
+	iowrite32(val, rng_base + RBG_SOFT_RESET_OFFSET);
+
+	iproc_rng200_enable_set(rng_base, true);
+}
+
+static int iproc_rng200_read(struct hwrng *rng, void *buf, size_t max,
+			     bool wait)
+{
+	struct iproc_rng200_dev *priv = to_rng_priv(rng);
+	uint32_t num_remaining = max;
+	uint32_t status;
+	u64 start;
+
+	#define MAX_RESETS_PER_READ	1
+	uint32_t num_resets = 0;
+
+	#define MAX_IDLE_TIME_NS	(NSEC_PER_SEC)
+
+	start = get_time_ns();
+
+	while ((num_remaining > 0) && !is_timeout(start, MAX_IDLE_TIME_NS)) {
+
+		/* Is RNG sane? If not, reset it. */
+		status = ioread32(priv->base + RNG_INT_STATUS_OFFSET);
+		if ((status & (RNG_INT_STATUS_MASTER_FAIL_LOCKOUT_IRQ_MASK |
+			RNG_INT_STATUS_NIST_FAIL_IRQ_MASK)) != 0) {
+
+			if (num_resets >= MAX_RESETS_PER_READ)
+				return max - num_remaining;
+
+			iproc_rng200_restart(priv->base);
+			num_resets++;
+		}
+
+		/* Are there any random numbers available? */
+		if ((ioread32(priv->base + RNG_FIFO_COUNT_OFFSET) &
+				RNG_FIFO_COUNT_RNG_FIFO_COUNT_MASK) > 0) {
+
+			if (num_remaining >= sizeof(uint32_t)) {
+				/* Buffer has room to store entire word */
+				*(uint32_t *)buf = ioread32(priv->base +
+							RNG_FIFO_DATA_OFFSET);
+				buf += sizeof(uint32_t);
+				num_remaining -= sizeof(uint32_t);
+			} else {
+				/* Buffer can only store partial word */
+				uint32_t rnd_number = ioread32(priv->base +
+							RNG_FIFO_DATA_OFFSET);
+				memcpy(buf, &rnd_number, num_remaining);
+				buf += num_remaining;
+				num_remaining = 0;
+			}
+
+			/* Reset the IDLE timeout */
+			start = get_time_ns();
+		} else {
+			if (!wait)
+				/* Cannot wait, return immediately */
+				return max - num_remaining;
+		}
+	}
+
+	return max - num_remaining;
+}
+
+static int iproc_rng200_init(struct hwrng *rng)
+{
+	struct iproc_rng200_dev *priv = to_rng_priv(rng);
+
+	iproc_rng200_enable_set(priv->base, true);
+
+	return 0;
+}
+
+static void iproc_rng200_cleanup(struct iproc_rng200_dev *priv)
+{
+	iproc_rng200_enable_set(priv->base, false);
+}
+
+static int iproc_rng200_probe(struct device *dev)
+{
+	struct iproc_rng200_dev *priv;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	/* Map peripheral */
+	priv->base = dev_platform_ioremap_resource(dev, 0);
+	if (IS_ERR(priv->base)) {
+		dev_err(dev, "failed to remap rng regs\n");
+		return PTR_ERR(priv->base);
+	}
+
+	dev->priv = priv;
+
+	priv->rng.name = "iproc-rng200";
+	priv->rng.read = iproc_rng200_read;
+	priv->rng.init = iproc_rng200_init;
+
+	/* Register driver */
+	ret = hwrng_register(dev, &priv->rng);
+	if (ret) {
+		dev_err(dev, "hwrng registration failed\n");
+		return ret;
+	}
+
+	dev_info(dev, "hwrng registered\n");
+
+	return 0;
+}
+
+static void iproc_rng200_remove(struct device *dev)
+{
+	iproc_rng200_cleanup(dev->priv);
+}
+
+static const struct of_device_id iproc_rng200_of_match[] = {
+	{ .compatible = "brcm,bcm2711-rng200", },
+	{ .compatible = "brcm,bcm7211-rng200", },
+	{ .compatible = "brcm,bcm7278-rng200", },
+	{ .compatible = "brcm,iproc-rng200", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, iproc_rng200_of_match);
+
+static struct driver iproc_rng200_driver = {
+	.name		= "iproc-rng200",
+	.of_match_table = iproc_rng200_of_match,
+	.probe		= iproc_rng200_probe,
+	.remove		= iproc_rng200_remove,
+};
+device_platform_driver(iproc_rng200_driver);
+
+MODULE_AUTHOR("Broadcom");
+MODULE_DESCRIPTION("iProc RNG200 Random Number Generator driver");
+MODULE_LICENSE("GPL v2");
-- 
2.39.2




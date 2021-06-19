Delivery-date: Sat, 19 Jun 2021 06:57:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT3E-0004gj-Rc
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:57:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT3C-0002Ua-KX
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:57:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmfit8nXfVHvYc0mBf+ImUAufPgSeOORhXhfcZJzXog=; b=ElxNDT89s8and/
	Geo/FVeVL7EEIEW9i6Wfrg2ZwmS8TSvTqxyPcRmKzWhFBD5yXydYqBQ5UuaIWM4MBy0A5hPEYyJZm
	LmWW9rQJkk6ElQEUWDuTbXCOW6mUSW0YHokmDYP3yEVl5TY/CllAMLCFdhESyQdvTUbOuyoR4zbw2
	6oqHo5wZ8TiqtjxzJM2ThPLSm9pAnCpyzJWqPQfYyxyh6Cu4Xxu+LohYlmk9/3wLZ1lXO448h2XrQ
	yeyLBuJk0Ln6kOht85c2RAlxfHwpci1KGU5S+2Nna1rjkCJOq4tamnvdxGqa6WlZCjdHfC6MCa40c
	8Z48bExoMGSCLf2rQ9XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luT1l-00GKoW-1q; Sat, 19 Jun 2021 04:56:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSx6-00GHu9-Rq
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008MM-EV; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwb-0001Le-0l; Sat, 19 Jun 2021 06:50:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:51 +0200
Message-Id: <20210619045055.779-26-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215129_196334_947C340D 
X-CRM114-Status: GOOD (  20.78  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 25/29] hw_random: add driver for RNG on StarFive SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Straight port from the vendor kernel with the difference that we
take the device out of reset. This allows to load older kernels that
don't yet do reset and clock handling.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hw_random/Kconfig            |   7 +
 drivers/hw_random/Makefile           |   1 +
 drivers/hw_random/starfive-vic-rng.c | 208 +++++++++++++++++++++++++++
 3 files changed, 216 insertions(+)
 create mode 100644 drivers/hw_random/starfive-vic-rng.c

diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index a84c03efef90..764911f4d35e 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -36,4 +36,11 @@ config HW_RANDOM_VIRTIO
 	  This driver provides guest-side support for the virtual Random Number
 	  Generator hardware.
 
+config HW_RANDOM_STARFIVE
+	tristate "StarFive Random Number Generator"
+	depends on SOC_STARFIVE || COMPILE_TEST
+	help
+	  This driver provides barebox support for the Random Number
+	  Generator hardware found on the StarFive family of SoCs.
+
 endif
diff --git a/drivers/hw_random/Makefile b/drivers/hw_random/Makefile
index 4bab3967fc4d..4cf33d2d93e6 100644
--- a/drivers/hw_random/Makefile
+++ b/drivers/hw_random/Makefile
@@ -3,3 +3,4 @@ obj-$(CONFIG_HWRNG_MXC_RNGC) += mxc-rngc.o
 obj-$(CONFIG_HWRNG_STM32) += stm32-rng.o
 obj-$(CONFIG_HWRNG_DEV_RANDOM) += dev-random.o
 obj-$(CONFIG_HW_RANDOM_VIRTIO) += virtio-rng.o
+obj-$(CONFIG_HW_RANDOM_STARFIVE) += starfive-vic-rng.o
diff --git a/drivers/hw_random/starfive-vic-rng.c b/drivers/hw_random/starfive-vic-rng.c
new file mode 100644
index 000000000000..f7b7585884ac
--- /dev/null
+++ b/drivers/hw_random/starfive-vic-rng.c
@@ -0,0 +1,208 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * COPYRIGHT 2020 Shanghai StarFive Technology Co., Ltd.
+ */
+#include <common.h>
+#include <linux/err.h>
+#include <io.h>
+#include <of.h>
+#include <driver.h>
+#include <linux/hw_random.h>
+#include <linux/reset.h>
+#include <linux/clk.h>
+
+#define VIC_RAND_LEN 4
+
+#define VIC_CTRL		0x00
+#define VIC_MODE		0x04
+#define VIC_SMODE		0x08
+#define VIC_STAT		0x0C
+#define VIC_IE			0x10
+#define VIC_ISTAT		0x14
+#define VIC_ALARM		0x18
+#define VIC_BUILD_ID		0x1C
+#define VIC_FEATURES		0x20
+#define VIC_RAND0		0x24
+#define VIC_NPA_DATA0		0x34
+#define VIC_SEED0		0x74
+#define VIC_IA_RDATA		0xA4
+#define VIC_IA_WDATA		0xA8
+#define VIC_IA_ADDR		0xAC
+#define VIC_IA_CMD		0xB0
+
+/* CTRL */
+#define VIC_CTRL_CMD_NOP		0
+#define VIC_CTRL_CMD_GEN_NOISE		1
+#define VIC_CTRL_CMD_GEN_NONCE		2
+#define VIC_CTRL_CMD_CREATE_STATE	3
+#define VIC_CTRL_CMD_RENEW_STATE	4
+#define VIC_CTRL_CMD_REFRESH_ADDIN	5
+#define VIC_CTRL_CMD_GEN_RANDOM		6
+#define VIC_CTRL_CMD_ADVANCE_STATE	7
+#define VIC_CTRL_CMD_KAT		8
+#define VIC_CTRL_CMD_ZEROIZE		15
+
+/* SMODE */
+#define _VIC_SMODE_SECURE_EN	1
+
+#define VIC_SMODE_SECURE_EN(x)		((x) << _VIC_SMODE_SECURE_EN)
+
+/* STAT */
+#define _VIC_STAT_BUSY		31
+
+#define VIC_STAT_BUSY		(1UL << _VIC_STAT_BUSY)
+
+/* IE */
+#define _VIC_IE_GLBL		31
+#define _VIC_IE_DONE		4
+#define _VIC_IE_ALARMS		3
+#define _VIC_IE_NOISE_RDY	2
+#define _VIC_IE_KAT_COMPLETE	1
+#define _VIC_IE_ZEROIZE		0
+
+#define VIC_IE_GLBL		(1UL << _VIC_IE_GLBL)
+#define VIC_IE_DONE		(1UL << _VIC_IE_DONE)
+#define VIC_IE_ALARMS		(1UL << _VIC_IE_ALARMS)
+#define VIC_IE_NOISE_RDY	(1UL << _VIC_IE_NOISE_RDY)
+#define VIC_IE_KAT_COMPLETE	(1UL << _VIC_IE_KAT_COMPLETE)
+#define VIC_IE_ZEROIZE		(1UL << _VIC_IE_ZEROIZE)
+#define VIC_IE_ALL		(VIC_IE_GLBL | VIC_IE_DONE | VIC_IE_ALARMS | \
+				 VIC_IE_NOISE_RDY | VIC_IE_KAT_COMPLETE | VIC_IE_ZEROIZE)
+
+#define to_vic_rng(p)	container_of(p, struct vic_rng, rng)
+
+struct vic_rng {
+	struct device_d	*dev;
+	void __iomem	*base;
+	struct hwrng	rng;
+};
+
+static inline void vic_wait_till_idle(struct vic_rng *hrng)
+{
+	while(readl(hrng->base + VIC_STAT) & VIC_STAT_BUSY)
+		;
+}
+
+static inline void vic_rng_irq_mask_clear(struct vic_rng *hrng)
+{
+	u32 data = readl(hrng->base + VIC_ISTAT);
+	writel(data, hrng->base + VIC_ISTAT);
+	writel(0, hrng->base + VIC_ALARM);
+}
+
+static int vic_trng_cmd(struct vic_rng *hrng, u32 cmd)
+{
+	vic_wait_till_idle(hrng);
+
+	switch (cmd) {
+	case VIC_CTRL_CMD_NOP:
+	case VIC_CTRL_CMD_GEN_NOISE:
+	case VIC_CTRL_CMD_GEN_NONCE:
+	case VIC_CTRL_CMD_CREATE_STATE:
+	case VIC_CTRL_CMD_RENEW_STATE:
+	case VIC_CTRL_CMD_REFRESH_ADDIN:
+	case VIC_CTRL_CMD_GEN_RANDOM:
+	case VIC_CTRL_CMD_ADVANCE_STATE:
+	case VIC_CTRL_CMD_KAT:
+	case VIC_CTRL_CMD_ZEROIZE:
+		writel(cmd, hrng->base + VIC_CTRL);
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int vic_rng_init(struct hwrng *rng)
+{
+	struct vic_rng *hrng = to_vic_rng(rng);
+	struct clk *clk;
+	int ret;
+
+	clk = clk_get(rng->dev, NULL);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	clk_enable(clk);
+
+	ret = device_reset(rng->dev);
+	if (ret)
+		return ret;
+
+	// clear register: ISTAT
+	vic_rng_irq_mask_clear(hrng);
+
+	// set mission mode
+	writel(VIC_SMODE_SECURE_EN(1), hrng->base + VIC_SMODE);
+
+	vic_trng_cmd(hrng, VIC_CTRL_CMD_GEN_NOISE);
+	vic_wait_till_idle(hrng);
+
+	// set interrupt
+	writel(VIC_IE_ALL, hrng->base + VIC_IE);
+
+	// zeroize
+	vic_trng_cmd(hrng, VIC_CTRL_CMD_ZEROIZE);
+
+	vic_wait_till_idle(hrng);
+
+	return 0;
+}
+
+static int vic_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
+{
+	struct vic_rng *hrng = to_vic_rng(rng);
+
+	vic_trng_cmd(hrng, VIC_CTRL_CMD_ZEROIZE);
+	vic_trng_cmd(hrng, VIC_CTRL_CMD_GEN_NOISE);
+	vic_trng_cmd(hrng, VIC_CTRL_CMD_CREATE_STATE);
+
+	vic_wait_till_idle(hrng);
+	max = min_t(size_t, max, VIC_RAND_LEN * 4);
+
+	writel(0x0, hrng->base + VIC_MODE);
+	vic_trng_cmd(hrng, VIC_CTRL_CMD_GEN_RANDOM);
+
+	vic_wait_till_idle(hrng);
+	memcpy_fromio(buf, hrng->base + VIC_RAND0, max);
+	vic_trng_cmd(hrng, VIC_CTRL_CMD_ZEROIZE);
+
+	vic_wait_till_idle(hrng);
+	return max;
+}
+
+static int vic_rng_probe(struct device_d *dev)
+{
+	struct vic_rng *hrng;
+	struct resource *res;
+
+	hrng = xzalloc(sizeof(*hrng));
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	hrng->base = IOMEM(res->start);
+	hrng->dev = dev;
+
+	hrng->rng.name = dev_name(dev);
+	hrng->rng.init = vic_rng_init;
+	hrng->rng.read = vic_rng_read;
+
+	return hwrng_register(dev, &hrng->rng);
+}
+
+static const struct of_device_id vic_rng_dt_ids[] = {
+	{ .compatible = "starfive,vic-rng" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d vic_rng_driver = {
+	.name		= "vic-rng",
+	.probe		= vic_rng_probe,
+	.of_compatible	= vic_rng_dt_ids,
+};
+device_platform_driver(vic_rng_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Huan Feng <huan.feng@starfivetech.com>");
+MODULE_DESCRIPTION("Starfive VIC random number generator driver");
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


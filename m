Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKsG-0003Zm-2u
 for barebox@lists.infradead.org; Wed, 05 Feb 2020 13:37:49 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  5 Feb 2020 14:37:29 +0100
Message-Id: <20200205133729.32713-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] hw_random: add support for STM32 RNG
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Port over the U-Boot v2020.01.0 state of the driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hw_random/Kconfig     |   7 ++
 drivers/hw_random/Makefile    |   1 +
 drivers/hw_random/stm32-rng.c | 167 ++++++++++++++++++++++++++++++++++
 3 files changed, 175 insertions(+)
 create mode 100644 drivers/hw_random/stm32-rng.c

diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index 242a7ef27828..492105456821 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -14,6 +14,13 @@ config HWRNG_MXC_RNGC
 	  This driver provides kernel-side support for the Random Number
 	  Generator hardware found on some Freescale i.MX processors.
 
+config HWRNG_STM32
+	tristate "STM32 Random Number Generator"
+	depends on ARCH_STM32MP
+	help
+	  This driver provides barebox support for the Random Number
+	  Generator hardware found on the STM32 family of MPUs and MCUs.
+
 config HWRNG_DEV_RANDOM
 	tristate "Linux /dev/urandom RNG"
 	depends on SANDBOX
diff --git a/drivers/hw_random/Makefile b/drivers/hw_random/Makefile
index 8be62f38b740..2e318be738c5 100644
--- a/drivers/hw_random/Makefile
+++ b/drivers/hw_random/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_HWRNG)		+= core.o
 obj-$(CONFIG_HWRNG_MXC_RNGC) += mxc-rngc.o
+obj-$(CONFIG_HWRNG_STM32) += stm32-rng.o
 obj-$(CONFIG_HWRNG_DEV_RANDOM) += dev-random.o
diff --git a/drivers/hw_random/stm32-rng.c b/drivers/hw_random/stm32-rng.c
new file mode 100644
index 000000000000..13d60f1b0bd0
--- /dev/null
+++ b/drivers/hw_random/stm32-rng.c
@@ -0,0 +1,167 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2019, Linaro Limited
+ * Copyright (c) 2020 Ahmad Fatoum, Pengutronix
+ */
+
+#define pr_fmt(fmt) "stm32-rng: " fmt
+
+#include <common.h>
+#include <clock.h>
+#include <driver.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/hw_random.h>
+#include <linux/iopoll.h>
+#include <linux/reset.h>
+
+#define RNG_CR 0x00
+#define RNG_CR_RNGEN BIT(2)
+#define RNG_CR_CED BIT(5)
+
+#define RNG_SR 0x04
+#define RNG_SR_SEIS BIT(6)
+#define RNG_SR_CEIS BIT(5)
+#define RNG_SR_SECS BIT(2)
+#define RNG_SR_DRDY BIT(0)
+
+#define RNG_DR 0x08
+
+struct stm32_rng {
+	struct clk	*clk;
+	void __iomem	*base;
+	struct hwrng	hwrng;
+};
+
+static inline struct stm32_rng *to_stm32_rng(struct hwrng *hwrng)
+{
+	return container_of(hwrng, struct stm32_rng, hwrng);
+}
+
+static int stm32_rng_read(struct hwrng *hwrng, void *data, size_t len, bool wait)
+{
+	int ret = 0;
+	u32 sr, count, reg;
+	size_t increment;
+	struct stm32_rng *rng = to_stm32_rng(hwrng);
+	size_t remaining = len;
+
+	while (remaining) {
+		ret = readl_poll_timeout(rng->base + RNG_SR, sr,
+					 sr & RNG_SR_DRDY, 10 * USEC_PER_MSEC);
+		if (ret)
+			goto out;
+
+		if (sr & (RNG_SR_SEIS | RNG_SR_SECS)) {
+			int i;
+			/* As per SoC TRM */
+			clrbits_le32(rng->base + RNG_SR, RNG_SR_SEIS);
+			for (i = 0; i < 12; i++)
+				readl(rng->base + RNG_DR);
+			if (readl(rng->base + RNG_SR) & RNG_SR_SEIS) {
+				pr_warn("RNG Noise");
+				ret = -EIO;
+				goto out;
+			}
+
+			/* start again */
+			continue;
+		}
+
+		/*
+		 * Once the DRDY bit is set, the RNG_DR register can
+		 * be read four consecutive times.
+		 */
+		count = 4;
+		while (remaining && count) {
+			reg = readl(rng->base + RNG_DR);
+			memcpy(data, &reg, min(remaining, sizeof(u32)));
+			increment = min(remaining, sizeof(u32));
+			data += increment;
+			remaining -= increment;
+			count--;
+		}
+	}
+
+out:
+	return len ?: ret;
+}
+
+static int stm32_rng_init(struct hwrng *hwrng)
+{
+	int err;
+	struct stm32_rng *rng = to_stm32_rng(hwrng);
+
+	err = clk_enable(rng->clk);
+	if (err)
+		return err;
+
+	/* Disable CED */
+	writel(RNG_CR_RNGEN | RNG_CR_CED, rng->base + RNG_CR);
+
+	/* clear error indicators */
+	writel(0, rng->base + RNG_SR);
+
+	return 0;
+}
+
+static int stm32_rng_probe(struct device_d *dev)
+{
+	struct stm32_rng *rng;
+	struct resource *res;
+	int ret;
+
+	rng = xzalloc(sizeof(*rng));
+	dev->priv = rng;
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	rng->base = IOMEM(res->start);
+
+	rng->clk = clk_get(dev, NULL);
+	if (IS_ERR(rng->clk)) {
+		dev_err(dev, "Can not get clock\n");
+		return PTR_ERR(rng->clk);
+	}
+
+	ret = device_reset_us(dev, 20);
+	if (ret)
+		return ret;
+
+	rng->hwrng.name = dev->name;
+	rng->hwrng.read = stm32_rng_read;
+	rng->hwrng.init = stm32_rng_init;
+
+	ret = hwrng_register(dev, &rng->hwrng);
+	if (ret) {
+		dev_err(dev, "failed to register: %s\n", strerror(-ret));
+		clk_disable(rng->clk);
+	}
+
+	return ret;
+}
+
+static void stm32_rng_remove(struct device_d *dev)
+{
+	struct stm32_rng *rng = dev->priv;
+
+	writel(0, rng->base + RNG_CR);
+	clk_disable(rng->clk);
+}
+
+
+static const struct of_device_id stm32_rng_dt_ids[] = {
+	{ .compatible = "st,stm32-rng" },
+	{ /* sentinel */},
+};
+
+static struct driver_d stm32_rng_driver = {
+	.name = "stm32-rng",
+	.probe = stm32_rng_probe,
+	.remove = stm32_rng_remove,
+	.of_compatible = stm32_rng_dt_ids,
+};
+device_platform_driver(stm32_rng_driver);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

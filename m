Delivery-date: Thu, 11 Jun 2026 13:22:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXdUY-004gUb-0C
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 13:22:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXdUW-0007C5-Sb
	for lore@pengutronix.de; Thu, 11 Jun 2026 13:22:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=btd+T3E5sQ5vn3Rbwg7gecwNYPQB4NXcbBXT3jY+tGQ=; b=FbDmnewKnIKtI93ws0Y/clEO0v
	9ba8VbPpkqEzQRFv4gCklHp52yzNc5NKqi3YzMTkWE0PrMrU1iu1uAtnCcegb+95dCmgTdBId1CmY
	uc19sIbmRS2Gdc9PikCGqWMX6V7dATKDhOMneoPuDNRTk8YaFkyigHyBpOEjmrKjzve8FY6rEio7x
	QVpUusRFdqo7LgMdMBhzBg8zQmOSdu9wQEaBa7TWltM72x4ZIeiqWvxy0Kp8JWauXvQGMvleaAoEz
	d3biBqLL8LMaIFUvrUjk/CHZdAvlNOsbvaF8EUhdkQUDA8gSx5zzgMV1lDRJO6Hn7l6OI940c0b0X
	fuTWiRrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdTP-00000009IdR-3bFS;
	Thu, 11 Jun 2026 11:21:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdTK-00000009IZv-3IV3
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 11:21:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wXdTI-0006m3-92
	for barebox@lists.infradead.org; Thu, 11 Jun 2026 13:21:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wXdTI-002Cuo-0Z
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 13:21:16 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jun 2026 13:21:14 +0200
Message-ID: <20260611112115.670073-5-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260611112115.670073-1-l.stach@pengutronix.de>
References: <20260611112115.670073-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_042118_973751_B4683D52 
X-CRM114-Status: GOOD (  21.68  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] watchdog: RN568: rename to rn5t618
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Align driver name with the Linux driver.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/watchdog/Kconfig       |   4 +-
 drivers/watchdog/Makefile      |   2 +-
 drivers/watchdog/rn5t568_wdt.c | 147 ---------------------------------
 drivers/watchdog/rn5t618_wdt.c | 140 +++++++++++++++++++++++++++++++
 include/mfd/rn5t618.h          |   6 ++
 5 files changed, 149 insertions(+), 150 deletions(-)
 delete mode 100644 drivers/watchdog/rn5t568_wdt.c
 create mode 100644 drivers/watchdog/rn5t618_wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 97a305c164dc..14fdb7cf68f3 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -126,8 +126,8 @@ config STPMIC1_WATCHDOG
 	help
 	  Enable to support configuration of the stpmic1's built-in watchdog.
 
-config RN568_WATCHDOG
-	bool "Ricoh RN5t568 PMIC based Watchdog"
+config RN5T618_WATCHDOG
+	bool "Ricoh RN5T618/567 PMIC based Watchdog"
 	depends on MFD_RN5T618
 	help
 	  Enable to support system control via the PMIC based watchdog.
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 187ab247ddcf..c49d090f8d7c 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -17,7 +17,7 @@ obj-$(CONFIG_ARCH_BCM283X) += bcm2835_wdt.o
 obj-$(CONFIG_RAVE_SP_WATCHDOG) += rave-sp-wdt.o
 obj-$(CONFIG_STM32_IWDG_WATCHDOG) += stm32_iwdg.o
 obj-$(CONFIG_STPMIC1_WATCHDOG) += stpmic1_wdt.o
-obj-$(CONFIG_RN568_WATCHDOG) += rn5t568_wdt.o
+obj-$(CONFIG_RN5T618_WATCHDOG) += rn5t618_wdt.o
 obj-$(CONFIG_F71808E_WDT) += f71808e_wdt.o
 obj-$(CONFIG_GPIO_WATCHDOG) += gpio_wdt.o
 obj-$(CONFIG_ITCO_WDT) += itco_wdt.o
diff --git a/drivers/watchdog/rn5t568_wdt.c b/drivers/watchdog/rn5t568_wdt.c
deleted file mode 100644
index 8c3e4175f9c0..000000000000
--- a/drivers/watchdog/rn5t568_wdt.c
+++ /dev/null
@@ -1,147 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Watchdog driver for Ricoh RN5T618 PMIC
- *
- * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
- */
-
-#include <common.h>
-#include <init.h>
-#include <watchdog.h>
-#include <linux/regmap.h>
-#include <of.h>
-
-#define RN5T568_WATCHDOG 0x0b
-# define RN5T568_WATCHDOG_WDPWROFFEN BIT(2)
-# define RN5T568_WATCHDOG_WDOGTIM_M (BIT(0) | BIT(1))
-#define RN5T568_PWRIREN 0x12
-# define RN5T568_PWRIREN_EN_WDOG BIT(6)
-#define RN5T568_PWRIRQ 0x13
-# define RN5T568_PWRIRQ_IR_WDOG BIT(6)
-
-struct rn5t568_wdt {
-	struct watchdog wdd;
-	struct regmap *regmap;
-	unsigned int timeout;
-};
-
-struct rn5t568_wdt_tim {
-	u8 reg_val;
-	u8 time;
-};
-
-static const struct rn5t568_wdt_tim rn5t568_wdt_timeout[] = {
-	{ .reg_val = 0, .time = 1, },
-	{ .reg_val = 1, .time = 8, },
-	{ .reg_val = 2, .time = 32, },
-	{ .reg_val = 3, .time = 128, },
-};
-
-#define PMIC_WDT_MAX_TIMEOUT 128
-
-static int rn5t568_wdt_start(struct regmap *regmap, int idx)
-{
-	int ret;
-
-	ret = regmap_update_bits(regmap, RN5T568_WATCHDOG, RN5T568_WATCHDOG_WDOGTIM_M,
-				 rn5t568_wdt_timeout[idx].reg_val);
-	if (ret)
-		return ret;
-
-	regmap_clear_bits(regmap, RN5T568_PWRIRQ, RN5T568_PWRIRQ_IR_WDOG);
-	regmap_set_bits(regmap, RN5T568_PWRIREN, RN5T568_PWRIREN_EN_WDOG);
-
-	pr_debug("RN5t: Starting the watchdog with %u seconds\n", rn5t568_wdt_timeout[idx].time);
-
-	return regmap_set_bits(regmap, RN5T568_WATCHDOG, RN5T568_WATCHDOG_WDPWROFFEN);
-}
-
-static int rn5t568_wdt_stop(struct regmap *regmap)
-{
-	int ret;
-
-	ret  = regmap_clear_bits(regmap, RN5T568_PWRIREN, RN5T568_PWRIREN_EN_WDOG);
-	if (ret)
-		return ret;
-
-	return regmap_clear_bits(regmap, RN5T568_WATCHDOG, RN5T568_WATCHDOG_WDPWROFFEN);
-}
-
-static int rn5t568_wdt_ping(struct regmap *regmap)
-{
-	unsigned int val;
-	int ret;
-
-	ret = regmap_read(regmap, RN5T568_WATCHDOG, &val);
-	if (ret)
-		return ret;
-
-	return regmap_write(regmap, RN5T568_WATCHDOG, val);
-}
-
-static int rn5t568_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
-{
-	struct rn5t568_wdt *wdt = container_of(wdd, struct rn5t568_wdt, wdd);
-	int ret, i;
-
-	if (!timeout)
-		return rn5t568_wdt_stop(wdt->regmap);
-
-	for (i = 0; i < ARRAY_SIZE(rn5t568_wdt_timeout); i++) {
-		if (timeout < rn5t568_wdt_timeout[i].time)
-			break;
-	}
-
-	if (i == ARRAY_SIZE(rn5t568_wdt_timeout))
-		return -EINVAL;
-
-	if (wdt->timeout == timeout)
-		return rn5t568_wdt_ping(wdt->regmap);
-
-	ret = rn5t568_wdt_start(wdt->regmap, i);
-	if (ret)
-		return ret;
-
-	wdt->timeout = rn5t568_wdt_timeout[i].time;
-
-	return ret;
-}
-
-static int rn5t568_wdt_probe(struct device *dev)
-{
-	struct rn5t568_wdt *wdt;
-	struct watchdog *wdd;
-	unsigned int val;
-	int ret;
-
-	wdt = xzalloc(sizeof(*wdt));
-
-	wdt->regmap = dev_get_regmap(dev->parent, NULL);
-	if (!wdt->regmap)
-		return -ENOENT;
-
-	wdd = &wdt->wdd;
-	wdd->hwdev = dev;
-	wdd->set_timeout = rn5t568_wdt_set_timeout;
-	wdd->timeout_max = PMIC_WDT_MAX_TIMEOUT;
-
-	ret = regmap_read(wdt->regmap, RN5T568_WATCHDOG, &val);
-	if (ret == 0)
-		wdd->running = val & RN5T568_WATCHDOG_WDPWROFFEN ?
-			       WDOG_HW_RUNNING : WDOG_HW_NOT_RUNNING;
-
-	return watchdog_register(wdd);
-}
-
-static __maybe_unused const struct of_device_id rn5t568_wdt_of_match[] = {
-	{ .compatible = "ricoh,rn5t568-wdt" },
-	{ /* sentinel */ }
-};
-MODULE_DEVICE_TABLE(of, rn5t568_wdt_of_match);
-
-static struct driver rn5t568_wdt_driver = {
-	.name  = "rn5t568-wdt",
-	.probe = rn5t568_wdt_probe,
-	.of_compatible = DRV_OF_COMPAT(rn5t568_wdt_of_match),
-};
-device_platform_driver(rn5t568_wdt_driver);
diff --git a/drivers/watchdog/rn5t618_wdt.c b/drivers/watchdog/rn5t618_wdt.c
new file mode 100644
index 000000000000..95089ac7c885
--- /dev/null
+++ b/drivers/watchdog/rn5t618_wdt.c
@@ -0,0 +1,140 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Watchdog driver for Ricoh RN5T618 PMIC
+ *
+ * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <watchdog.h>
+#include <linux/regmap.h>
+#include <of.h>
+#include <mfd/rn5t618.h>
+
+struct rn5t618_wdt {
+	struct watchdog wdd;
+	struct regmap *regmap;
+	unsigned int timeout;
+};
+
+struct rn5t618_wdt_tim {
+	u8 reg_val;
+	u8 time;
+};
+
+static const struct rn5t618_wdt_tim rn5t618_wdt_timeout[] = {
+	{ .reg_val = 0, .time = 1, },
+	{ .reg_val = 1, .time = 8, },
+	{ .reg_val = 2, .time = 32, },
+	{ .reg_val = 3, .time = 128, },
+};
+
+#define PMIC_WDT_MAX_TIMEOUT 128
+
+static int rn5t618_wdt_start(struct regmap *regmap, int idx)
+{
+	int ret;
+
+	ret = regmap_update_bits(regmap, RN5T618_WATCHDOG, RN5T618_WATCHDOG_WDOGTIM_M,
+				 rn5t618_wdt_timeout[idx].reg_val);
+	if (ret)
+		return ret;
+
+	regmap_clear_bits(regmap, RN5T618_PWRIRQ, RN5T618_PWRIRQ_IR_WDOG);
+	regmap_set_bits(regmap, RN5T618_PWRIREN, RN5T618_PWRIREN_EN_WDOG);
+
+	pr_debug("RN5t: Starting the watchdog with %u seconds\n", rn5t618_wdt_timeout[idx].time);
+
+	return regmap_set_bits(regmap, RN5T618_WATCHDOG, RN5T618_WATCHDOG_WDPWROFFEN);
+}
+
+static int rn5t618_wdt_stop(struct regmap *regmap)
+{
+	int ret;
+
+	ret  = regmap_clear_bits(regmap, RN5T618_PWRIREN, RN5T618_PWRIREN_EN_WDOG);
+	if (ret)
+		return ret;
+
+	return regmap_clear_bits(regmap, RN5T618_WATCHDOG, RN5T618_WATCHDOG_WDPWROFFEN);
+}
+
+static int rn5t618_wdt_ping(struct regmap *regmap)
+{
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(regmap, RN5T618_WATCHDOG, &val);
+	if (ret)
+		return ret;
+
+	return regmap_write(regmap, RN5T618_WATCHDOG, val);
+}
+
+static int rn5t618_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
+{
+	struct rn5t618_wdt *wdt = container_of(wdd, struct rn5t618_wdt, wdd);
+	int ret, i;
+
+	if (!timeout)
+		return rn5t618_wdt_stop(wdt->regmap);
+
+	for (i = 0; i < ARRAY_SIZE(rn5t618_wdt_timeout); i++) {
+		if (timeout < rn5t618_wdt_timeout[i].time)
+			break;
+	}
+
+	if (i == ARRAY_SIZE(rn5t618_wdt_timeout))
+		return -EINVAL;
+
+	if (wdt->timeout == timeout)
+		return rn5t618_wdt_ping(wdt->regmap);
+
+	ret = rn5t618_wdt_start(wdt->regmap, i);
+	if (ret)
+		return ret;
+
+	wdt->timeout = rn5t618_wdt_timeout[i].time;
+
+	return ret;
+}
+
+static int rn5t618_wdt_probe(struct device *dev)
+{
+	struct rn5t618_wdt *wdt;
+	struct watchdog *wdd;
+	unsigned int val;
+	int ret;
+
+	wdt = xzalloc(sizeof(*wdt));
+
+	wdt->regmap = dev_get_regmap(dev->parent, NULL);
+	if (!wdt->regmap)
+		return -ENOENT;
+
+	wdd = &wdt->wdd;
+	wdd->hwdev = dev;
+	wdd->set_timeout = rn5t618_wdt_set_timeout;
+	wdd->timeout_max = PMIC_WDT_MAX_TIMEOUT;
+
+	ret = regmap_read(wdt->regmap, RN5T618_WATCHDOG, &val);
+	if (ret == 0)
+		wdd->running = val & RN5T618_WATCHDOG_WDPWROFFEN ?
+			       WDOG_HW_RUNNING : WDOG_HW_NOT_RUNNING;
+
+	return watchdog_register(wdd);
+}
+
+static __maybe_unused const struct of_device_id rn5t618_wdt_of_match[] = {
+	{ .compatible = "ricoh,rn5t568-wdt" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, rn5t618_wdt_of_match);
+
+static struct driver rn5t618_wdt_driver = {
+	.name  = "rn5t618-wdt",
+	.probe = rn5t618_wdt_probe,
+	.of_compatible = DRV_OF_COMPAT(rn5t618_wdt_of_match),
+};
+device_platform_driver(rn5t618_wdt_driver);
diff --git a/include/mfd/rn5t618.h b/include/mfd/rn5t618.h
index 196ae00fb5b1..0bf1417d98d3 100644
--- a/include/mfd/rn5t618.h
+++ b/include/mfd/rn5t618.h
@@ -131,4 +131,10 @@ enum {
 #define RN5T618_REPCNT_OFF_REPWRTIM_1000MS	0x06
 #define RN5T618_REPCNT_OFF_REPWRON		BIT(0)
 
+#define RN5T618_WATCHDOG_WDPWROFFEN		BIT(2)
+#define RN5T618_WATCHDOG_WDOGTIM_M		(BIT(0) | BIT(1))
+
+#define RN5T618_PWRIREN_EN_WDOG			BIT(6)
+#define RN5T618_PWRIRQ_IR_WDOG			BIT(6)
+
 #endif
-- 
2.47.3




Delivery-date: Tue, 18 Jan 2022 09:22:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9jlR-005Of9-4Y
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 09:22:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9jlP-0008In-QS
	for lore@pengutronix.de; Tue, 18 Jan 2022 09:22:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mI30oW2nFuFw6MuOX7uYNVZRCG6XewVuYF0+olxsxWQ=; b=a58HPtf/EiRjkw
	JibjGqZPI8GJB/FZin/kTkCliUWekiIQlNNyaLF4Zp+VZzDUbkZfdEAhqWrg2BnsIGAW8AcRpWwK9
	oGSO4Cmrn5cILNHW3veeDh7xcjOL3LrcH9XyAKCTQJ8SnBZcXT+BE5dTnJCOMrT5X3WkwYAkOaznq
	E9knrzCdEB6vCzbgbRLjFxhS9pbmIpfMVKygSKPx0lGInmmgadrybpwalLOuSu8+uJJ5I0ukNyWrP
	c4Khb3bfXWl8wVzIknkGAzXem0F0IAqRf3uqXKilwNXK7zelCHxtPYIscrJszJSrNX4F/cgP1rxMn
	NWPTD0wImX/XlkePK78g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9jkA-000jJO-5B; Tue, 18 Jan 2022 08:21:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9jk5-000jIT-1y
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 08:21:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <jbe@pengutronix.de>) id 1n9jk3-0008D8-So
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 09:21:23 +0100
Received: from [2a0a:edc0:0:900:1d::45] (helo=ginster)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <jbe@pengutronix.de>) id 1n9jk3-00AyBl-Sy
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 09:21:23 +0100
Received: from jbe by ginster with local (Exim 4.94.2)
 (envelope-from <jbe@pengutronix.de>) id 1n9jk2-000J3X-Bh
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 09:21:22 +0100
From: Juergen Borleis <jbe@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 18 Jan 2022 09:21:22 +0100
Message-Id: <20220118082122.73204-2-jbe@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220118082122.73204-1-jbe@pengutronix.de>
References: <20220118082122.73204-1-jbe@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_002125_122354_E2A9F5ED 
X-CRM114-Status: GOOD (  19.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] Add Ricoh RN5T568 PMIC based watchdog
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 drivers/watchdog/Kconfig       |   6 ++
 drivers/watchdog/Makefile      |   1 +
 drivers/watchdog/rn5t568_wdt.c | 146 +++++++++++++++++++++++++++++++++
 3 files changed, 153 insertions(+)
 create mode 100644 drivers/watchdog/rn5t568_wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index d605e62..61a096b 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -109,6 +109,12 @@ config STPMIC1_WATCHDOG
 	help
 	  Enable to support configuration of the stpmic1's built-in watchdog.
 
+config RN568_WATCHDOG
+	bool "Ricoh RN5t568 PMIC based Watchdog"
+	depends on MFD_RN568PMIC
+	help
+	  Enable to support system control via the PMIC based watchdog.
+
 config F71808E_WDT
 	bool "Fintek F718xx, F818xx Super I/O Watchdog"
 	depends on X86
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index dbb76a5..84fd2bf 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_ARCH_BCM283X) += bcm2835_wdt.o
 obj-$(CONFIG_RAVE_SP_WATCHDOG) += rave-sp-wdt.o
 obj-$(CONFIG_STM32_IWDG_WATCHDOG) += stm32_iwdg.o
 obj-$(CONFIG_STPMIC1_WATCHDOG) += stpmic1_wdt.o
+obj-$(CONFIG_RN568_WATCHDOG) += rn5t568_wdt.o
 obj-$(CONFIG_F71808E_WDT) += f71808e_wdt.o
 obj-$(CONFIG_GPIO_WATCHDOG) += gpio_wdt.o
 obj-$(CONFIG_ITCO_WDT) += itco_wdt.o
diff --git a/drivers/watchdog/rn5t568_wdt.c b/drivers/watchdog/rn5t568_wdt.c
new file mode 100644
index 0000000..6308e1e
--- /dev/null
+++ b/drivers/watchdog/rn5t568_wdt.c
@@ -0,0 +1,146 @@
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
+#include <regmap.h>
+#include <of.h>
+
+#define RN5T568_WATCHDOG 0x0b
+# define RN5T568_WATCHDOG_WDPWROFFEN BIT(2)
+# define RN5T568_WATCHDOG_WDOGTIM_M (BIT(0) | BIT(1))
+#define RN5T568_PWRIREN 0x12
+# define RN5T568_PWRIREN_EN_WDOG BIT(6)
+#define RN5T568_PWRIRQ 0x13
+# define RN5T568_PWRIRQ_IR_WDOG BIT(6)
+
+struct rn5t568_wdt {
+	struct watchdog wdd;
+	struct regmap *regmap;
+	unsigned int timeout;
+};
+
+struct rn5t568_wdt_tim {
+	u8 reg_val;
+	u8 time;
+};
+
+static const struct rn5t568_wdt_tim rn5t568_wdt_timeout[] = {
+	{ .reg_val = 0, .time = 1, },
+	{ .reg_val = 1, .time = 8, },
+	{ .reg_val = 2, .time = 32, },
+	{ .reg_val = 3, .time = 128, },
+};
+
+#define PMIC_WDT_MAX_TIMEOUT 128
+
+static int rn5t568_wdt_start(struct regmap *regmap, int idx)
+{
+	int ret;
+
+	ret = regmap_update_bits(regmap, RN5T568_WATCHDOG, RN5T568_WATCHDOG_WDOGTIM_M,
+				 rn5t568_wdt_timeout[idx].reg_val);
+	if (ret)
+		return ret;
+
+	regmap_update_bits(regmap, RN5T568_PWRIRQ, RN5T568_PWRIRQ_IR_WDOG, 0x00);
+	regmap_update_bits(regmap, RN5T568_PWRIREN, RN5T568_PWRIREN_EN_WDOG, RN5T568_PWRIREN_EN_WDOG);
+
+	pr_debug("RN5t: Starting the watchdog with %u seconds\n", rn5t568_wdt_timeout[idx].time);
+
+	return regmap_update_bits(regmap, RN5T568_WATCHDOG, RN5T568_WATCHDOG_WDPWROFFEN,
+				 RN5T568_WATCHDOG_WDPWROFFEN);
+}
+
+static int rn5t568_wdt_stop(struct regmap *regmap)
+{
+	int ret;
+
+	ret  = regmap_update_bits(regmap, RN5T568_PWRIREN, RN5T568_PWRIREN_EN_WDOG, 0);
+	if (ret)
+		return ret;
+	return regmap_update_bits(regmap, RN5T568_WATCHDOG, RN5T568_WATCHDOG_WDPWROFFEN, 0);
+}
+
+static int rn5t568_wdt_ping(struct regmap *regmap)
+{
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(regmap, RN5T568_WATCHDOG, &val);
+	if (ret)
+		return ret;
+
+	return regmap_write(regmap, RN5T568_WATCHDOG, val);
+}
+
+static int rn5t568_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
+{
+	struct rn5t568_wdt *wdt = container_of(wdd, struct rn5t568_wdt, wdd);
+	int ret, i;
+
+	if (!timeout)
+		return rn5t568_wdt_stop(wdt->regmap);
+
+	for (i = 0; i < ARRAY_SIZE(rn5t568_wdt_timeout); i++) {
+		if (timeout < rn5t568_wdt_timeout[i].time)
+			break;
+	}
+
+	if (i == ARRAY_SIZE(rn5t568_wdt_timeout))
+		return -EINVAL;
+
+	if (wdt->timeout == timeout)
+		return rn5t568_wdt_ping(wdt->regmap);
+
+	ret = rn5t568_wdt_start(wdt->regmap, i);
+	if (ret)
+		return ret;
+
+	wdt->timeout = rn5t568_wdt_timeout[i].time;
+
+	return ret;
+}
+
+static int rn5t568_wdt_probe(struct device_d *dev)
+{
+	struct rn5t568_wdt *wdt;
+	struct watchdog *wdd;
+	unsigned int val;
+	int ret;
+
+	wdt = xzalloc(sizeof(*wdt));
+
+	wdt->regmap = dev_get_regmap(dev->parent, NULL);
+	if (IS_ERR(wdt->regmap))
+		return PTR_ERR(wdt->regmap);
+
+	wdd = &wdt->wdd;
+	wdd->hwdev = dev;
+	wdd->set_timeout = rn5t568_wdt_set_timeout;
+	wdd->timeout_max = PMIC_WDT_MAX_TIMEOUT;
+
+	ret = regmap_read(wdt->regmap, RN5T568_WATCHDOG, &val);
+	if (ret == 0)
+		wdd->running = val & RN5T568_WATCHDOG_WDPWROFFEN ?
+			       WDOG_HW_RUNNING : WDOG_HW_NOT_RUNNING;
+
+	return watchdog_register(wdd);
+}
+
+static __maybe_unused const struct of_device_id rn5t568_wdt_of_match[] = {
+	{ .compatible = "ricoh,rn5t568-wdt" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d rn5t568_wdt_driver = {
+	.name  = "rn5t568-wdt",
+	.probe = rn5t568_wdt_probe,
+	.of_compatible = DRV_OF_COMPAT(rn5t568_wdt_of_match),
+};
+device_platform_driver(rn5t568_wdt_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Sat, 19 Jun 2021 06:54:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT03-0004a9-1r
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:54:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT01-0001Ix-7F
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:54:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnzSb/1oAXzaJYF/64TPASGdZ42GpSqDNndlZVyBO0Q=; b=PXspUwE/pyWTec
	swbRg7ijAV4UilEmC5MBCoI72p/Agsom1hcnx3IHRmDwJExGoRjXFIcgR1sp1roLKDZH59MySaUYx
	FbwYxUCjCM3wISa5X9+Q+mEmt5ILM0pEfkQD2AstN0l8Bg3y9QdHvl1jcB8ms/5i1NngVw6j4jd3y
	p8ybaf14hMzGzFAlo+IOnolVL7J1mvkOiN23k/X+xqvYLVeM9oZS0xCk/kGxL7WFb8fyx2+7g8kee
	AU73BOMcZ4m6wb+Hk8VJzFOjtYV2co20uKjvyF96AKchv9JoofLfuGKgtyYeNEq/FDLDp3oQKZP9+
	nB4iOJrVr6z+InG5Gn2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSyS-00GIip-3k; Sat, 19 Jun 2021 04:52:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwq-00GHk0-SC
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:15 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008ML-Cz; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwb-0001Lb-0I; Sat, 19 Jun 2021 06:50:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:50 +0200
Message-Id: <20210619045055.779-25-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215113_037766_FA700E77 
X-CRM114-Status: GOOD (  18.96  )
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
Subject: [PATCH v2 24/29] watchdog: add StarFive watchdog driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/Kconfig        |   7 +++
 drivers/watchdog/Makefile       |   1 +
 drivers/watchdog/starfive_wdt.c | 106 ++++++++++++++++++++++++++++++++
 3 files changed, 114 insertions(+)
 create mode 100644 drivers/watchdog/starfive_wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index b785181c59db..080bc91ff7f5 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -141,4 +141,11 @@ config ITCO_WDT
 	  NO_REBOOT flag which prevents the watchdog from rebooting the
 	  machine.
 
+config STARFIVE_WDT
+	tristate "StarFive Watchdog Timer"
+	depends on SOC_STARFIVE && OFDEVICE
+	help
+	  If you say yes here you get support for the watchdog device
+	  on StarFive SoCs.
+
 endif
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 0b598af40218..4e784b5aaa30 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -18,3 +18,4 @@ obj-$(CONFIG_STPMIC1_WATCHDOG) += stpmic1_wdt.o
 obj-$(CONFIG_F71808E_WDT) += f71808e_wdt.o
 obj-$(CONFIG_GPIO_WATCHDOG) += gpio_wdt.o
 obj-$(CONFIG_ITCO_WDT) += itco_wdt.o
+obj-$(CONFIG_STARFIVE_WDT) += starfive_wdt.o
diff --git a/drivers/watchdog/starfive_wdt.c b/drivers/watchdog/starfive_wdt.c
new file mode 100644
index 000000000000..6779566fd6c1
--- /dev/null
+++ b/drivers/watchdog/starfive_wdt.c
@@ -0,0 +1,106 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2018 Kalray Inc.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <watchdog.h>
+#include <linux/reset.h>
+
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#define WDT_REG_RESET_EN	0x104
+#define WDT_REG_TIMEOUT		0x108
+#define WDT_REG_CONTROL		0x110
+#define WDT_REG_UNLOCK		0x13c
+
+#define WDT_UNLOCK_KEY		0x378f0765
+
+#define WDT_TICKS_PER_SEC	50000000
+
+struct starfive_wdt {
+	u32 clk_rate;
+	struct watchdog wdd;
+	void __iomem *base;
+	bool setup;
+};
+
+static int starfive_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
+{
+	struct starfive_wdt *wd = container_of(wdd, struct starfive_wdt, wdd);
+
+	writel(0, wd->base + WDT_REG_CONTROL);
+
+	if (timeout > 0) {
+		timeout *= wd->clk_rate;
+		writel(timeout, wd->base + WDT_REG_TIMEOUT);
+		writel(1, wd->base + WDT_REG_CONTROL);
+	}
+
+	return 0;
+}
+
+static int starfive_wdt_drv_probe(struct device_d *dev)
+{
+	struct starfive_wdt *wd;
+	struct resource *iores;
+	struct watchdog *wdd;
+	struct clk_bulk_data clks[] = {
+		{ .id = "bus" },
+		{ .id = "core" },
+	};
+	int ret;
+
+	ret = clk_bulk_get(dev, ARRAY_SIZE(clks), clks);
+	if (ret)
+		return ret;
+
+	ret = clk_bulk_enable(ARRAY_SIZE(clks), clks);
+	if (ret < 0)
+		return ret;
+
+	ret = device_reset_all(dev);
+	if (ret)
+		return ret;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	wd = xzalloc(sizeof(*wd));
+	wd->base = IOMEM(iores->start);
+
+	wd->clk_rate = WDT_TICKS_PER_SEC;
+
+	writel(WDT_UNLOCK_KEY, wd->base + WDT_REG_UNLOCK);
+	wd->base = IOMEM(iores->start);
+	/* reset, not interrupt, on timer expiry */
+	writel(1, wd->base + WDT_REG_RESET_EN);
+
+	wdd = &wd->wdd;
+	wdd->name = "starfive_wdt";
+	wdd->hwdev = dev;
+	wdd->set_timeout = starfive_wdt_set_timeout;
+	wdd->timeout_max = U32_MAX / wd->clk_rate;
+
+	wdd->running = readl(wd->base + WDT_REG_CONTROL) & 1 ?
+		WDOG_HW_RUNNING : WDOG_HW_NOT_RUNNING;
+
+	return watchdog_register(wdd);
+}
+
+static struct of_device_id starfive_wdt_of_match[] = {
+	{ .compatible = "starfive,wdt", },
+	{ /* sentinel */ }
+};
+
+static struct driver_d starfive_wdt_driver = {
+	.name		= "starfive-wdt",
+	.probe		= starfive_wdt_drv_probe,
+	.of_compatible	= starfive_wdt_of_match,
+};
+device_platform_driver(starfive_wdt_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


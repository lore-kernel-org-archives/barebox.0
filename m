Delivery-date: Sat, 10 Apr 2021 12:36:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVAyy-0000yc-Ji
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 12:36:52 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVAyx-0007Sf-NK
	for lore@pengutronix.de; Sat, 10 Apr 2021 12:36:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5l5x0mAS3e5cXjkuYswRwMz7NbkWrowRaUraemZlzUc=; b=qJEtefFjiR5ju03te53Q4sHSF
	3tILyta+QjdIdztnRG/vVJjB2fRo954tMuu2Gg/n1Q5GByqPM8K27qDNVkU8xVLwyfnFKMPQSo2qg
	hqmOIGdkzDMP1hCA23eMhNQ2pFqmrRwDPy1/UeUWLfGyRuLftRoSlwD93JWdZnuxP79X6Y6MOfFr5
	5b19iTV67s2Z+QITapFIpaUOhj4+i8DchQQ4OL57otx42KTYLo4FUoEzmlfuTid4RLeNVkTHJ/jJ2
	YD1ZuhG269f13zJlK3pg46upZWExvf+PlPWm0VtGU1wnc2jFbBYO8ETLK25inxiFhBCKLe3WyqXbj
	p+Q35QwJA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVAxi-002fKk-Dj; Sat, 10 Apr 2021 10:35:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVAxZ-002fK0-4y
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 10:35:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=8YvKmnSrqwfnwAvBLEpnB4GIGubDdGygqb0ufE+cuH4=; b=hMnECN+pGaNb3SLQrhGjJcN3SX
 rTKcdKDTB9eEm1M5dP9dw2i0A48tXtijTR6k/MOq0daic5RMR83GIHlND1yZARq0xhPBewov9HpaH
 8cKSShy5piyRITMLQIMhxoOjGe0i047FqnUkzLl5IkBetyXrWql4X15BolCRfcYnjmVsG30HuFxoz
 hv9WuMb3SsCNCCENAtDP9KVr+1sSf6AfPIcHw5CQHSTWDxPRxI+YTnXqRNiLEhNNDfEEvc+lLPv3N
 HoUzqSSepjJQPMdl829KCz7cajCSqOMCsc+KOV+SI/egGe7HQGdMMlMpfSBpf9jqKaJsJhfVoAurK
 VJ5ba1/Q==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVAxW-0052M8-2U
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 10:35:23 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id D75F040008;
 Sat, 10 Apr 2021 10:35:17 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 10 Apr 2021 12:35:11 +0200
Message-Id: <20210410103511.2073504-5-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210410103511.2073504-1-ahmad@a3f.at>
References: <20210410103511.2073504-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_033522_405752_7E9C2E61 
X-CRM114-Status: GOOD (  18.20  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] watchdog: add GPIO watchdog driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a straight port from Linux v5.11.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/watchdog/Kconfig    |   7 ++
 drivers/watchdog/Makefile   |   1 +
 drivers/watchdog/gpio_wdt.c | 142 ++++++++++++++++++++++++++++++++++++
 3 files changed, 150 insertions(+)
 create mode 100644 drivers/watchdog/gpio_wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 8750a97d8c50..fb4ea7ffac3c 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -117,6 +117,13 @@ config F71808E_WDT
 	  F71862FG, F71868, F71869, F71882FG, F71889FG, F81865 and F81866
 	  Super I/O controllers.
 
+config GPIO_WATCHDOG
+	tristate "Watchdog device controlled through GPIO-line"
+	depends on OF_GPIO
+	help
+	  If you say yes here you get support for watchdog device
+	  controlled through GPIO-line.
+
 config ITCO_WDT
 	bool "Intel TCO Timer/Watchdog"
 	depends on X86
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index b55c58cf3cb3..9edb73512903 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -17,3 +17,4 @@ obj-$(CONFIG_STM32_IWDG_WATCHDOG) += stm32_iwdg.o
 obj-$(CONFIG_STPMIC1_WATCHDOG) += stpmic1_wdt.o
 obj-$(CONFIG_F71808E_WDT) += f71808e_wdt.o
 obj-$(CONFIG_ITCO_WDT) += itco_wdt.o
+obj-$(CONFIG_GPIO_WATCHDOG)	+= gpio_wdt.o
diff --git a/drivers/watchdog/gpio_wdt.c b/drivers/watchdog/gpio_wdt.c
new file mode 100644
index 000000000000..4de49dcee38a
--- /dev/null
+++ b/drivers/watchdog/gpio_wdt.c
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Driver for watchdog device controlled through GPIO-line
+ *
+ * Author: 2013, Alexander Shiyan <shc_work@mail.ru>
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <watchdog.h>
+#include <superio.h>
+#include <gpiod.h>
+
+enum {
+	HW_ALGO_TOGGLE,
+	HW_ALGO_LEVEL,
+};
+
+struct gpio_wdt_priv {
+	int		gpio;
+	bool		state;
+	bool		started;
+	unsigned int	hw_algo;
+	struct watchdog	wdd;
+};
+
+static inline struct gpio_wdt_priv *to_gpio_wdt_priv(struct watchdog *wdd)
+{
+	return container_of(wdd, struct gpio_wdt_priv, wdd);
+}
+
+static void gpio_wdt_disable(struct gpio_wdt_priv *priv)
+{
+	/* Eternal ping */
+	gpio_set_active(priv->gpio, 1);
+
+	/* Put GPIO back to tristate */
+	if (priv->hw_algo == HW_ALGO_TOGGLE)
+		gpio_direction_input(priv->gpio);
+
+	priv->started = false;
+}
+
+static void gpio_wdt_ping(struct gpio_wdt_priv *priv)
+{
+	switch (priv->hw_algo) {
+	case HW_ALGO_TOGGLE:
+		/* Toggle output pin */
+		priv->state = !priv->state;
+		gpio_set_active(priv->gpio, priv->state);
+		break;
+	case HW_ALGO_LEVEL:
+		/* Pulse */
+		gpio_set_active(priv->gpio, true);
+		udelay(1);
+		gpio_set_active(priv->gpio, false);
+		break;
+	}
+}
+
+static void gpio_wdt_start(struct gpio_wdt_priv *priv)
+{
+	priv->state = false;
+	gpio_direction_active(priv->gpio, priv->state);
+	priv->started = true;
+}
+
+static int gpio_wdt_set_timeout(struct watchdog *wdd, unsigned int new_timeout)
+{
+	struct gpio_wdt_priv *priv = to_gpio_wdt_priv(wdd);
+
+	if (!new_timeout) {
+		gpio_wdt_disable(priv);
+		return 0;
+	}
+
+	if (!priv->started)
+		gpio_wdt_start(priv);
+
+	gpio_wdt_ping(priv);
+	return 0;
+}
+
+static int gpio_wdt_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct gpio_wdt_priv *priv;
+	enum gpiod_flags gflags;
+	unsigned int hw_margin;
+	const char *algo;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	ret = of_property_read_u32(np, "hw_margin_ms", &hw_margin);
+	if (ret)
+		return ret;
+
+	/* Autoping is fixed at one ping every 500 ms. Round it up to a second */
+	if (hw_margin < 1000)
+		return -EINVAL;
+
+	ret = of_property_read_string(np, "hw_algo", &algo);
+	if (ret)
+		return ret;
+	if (!strcmp(algo, "toggle")) {
+		priv->hw_algo = HW_ALGO_TOGGLE;
+		gflags = GPIOD_IN;
+	} else if (!strcmp(algo, "level")) {
+		priv->hw_algo = HW_ALGO_LEVEL;
+		gflags = GPIOD_OUT_LOW;
+	} else {
+		return -EINVAL;
+	}
+
+	priv->gpio = gpiod_get(dev, NULL, gflags);
+	if (priv->gpio < 0)
+		return priv->gpio;
+
+	priv->wdd.hwdev		= dev;
+	priv->wdd.timeout_max	= hw_margin / 1000;
+	priv->wdd.priority	= 129;
+	priv->wdd.set_timeout	= gpio_wdt_set_timeout;
+
+	return watchdog_register(&priv->wdd);
+}
+
+static const struct of_device_id gpio_wdt_dt_ids[] = {
+	{ .compatible = "linux,wdt-gpio", },
+	{ }
+};
+
+static struct driver_d gpio_wdt_driver = {
+	.name		= "gpio-wdt",
+	.of_compatible	= gpio_wdt_dt_ids,
+	.probe	= gpio_wdt_probe,
+};
+device_platform_driver(gpio_wdt_driver);
+
+MODULE_AUTHOR("Alexander Shiyan <shc_work@mail.ru>");
+MODULE_DESCRIPTION("GPIO Watchdog");
+MODULE_LICENSE("GPL");
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Sat, 10 Apr 2021 12:36:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVAz1-0000zK-Ta
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 12:36:55 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVAz0-0007Te-Ll
	for lore@pengutronix.de; Sat, 10 Apr 2021 12:36:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zps29ukPhwuDqhLD4G8MGlPhNyhkSqHmorkKbMzs0po=; b=ZUuRt0jqWVbEtQ9i5+nshgv4X
	/HnuanjMA73p1LzcaKEGvc6YyHsI/S1jJZgU1uIr1AoQPDc2hFXwcAHvU73B5p0dGz40cLr/EM2at
	ZtDeEWuQkDnXtdGOoUO+YE+whBzUsp5obu7ozEQpo/EyvrHIUDOCFCnwsWLN5VosfLiAnrVQ1eQgA
	34GAz2as3VA+itUkG/fWxOxLyz1hu6sfMq0dalMZCGZg2TtidwtvYf5Gdq6GJx67hIifiVfqbdenn
	HL9WrFtNXxJfW4RP2TVuRNTxCP/Q+mCR7UEU+piFcx9SKgguxYd3rrIUjSyvi+vRcO3wlS9sYmUbd
	SP+EvCbtw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVAxs-002fLT-6k; Sat, 10 Apr 2021 10:35:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVAxa-002fK7-8A
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 10:35:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=9KvUYxlZmlWdUdh2s82Z5V77z5EBwQTELkoN8rfyofw=; b=r/qQoGJJNaN6DoMffVniI4N3ZE
 zrbr4/2Y4eSkiC7Li2Ch62ANXEcFMESeZR9debwGgfThcMxj1hHh0jJoUVTHK704NLbQb9aXH4nKS
 4lpdTotF3Fq5fxfg+d0dGsZtyBUE3E9sDU76wYm8YHL1KR4Ya58/p0nUnZq4jpkRP4sh0Ohs3fA0k
 yJD0ALBQtNE7LAoBNc0UvQu3k+UJdfPqpb3bbut1w72aqmTaFfLXdytoI8sHjRG2oyfeFfOA6cf8m
 +89cCjT9mC4ypjXeYjaGLm6gjyn+BOlpWnqsT82Tj/d0cusnlBthbTQ7EYSC9BNQqU9Kr7vouKHVG
 e1i712mA==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVAxW-0052M7-5p
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 10:35:25 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 403C74000E;
 Sat, 10 Apr 2021 10:35:17 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 10 Apr 2021 12:35:10 +0200
Message-Id: <20210410103511.2073504-4-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210410103511.2073504-1-ahmad@a3f.at>
References: <20210410103511.2073504-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_033522_531235_7A44AE62 
X-CRM114-Status: GOOD (  16.89  )
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
Subject: [PATCH 4/5] power: reset: add GPIO restart driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a straight port from Linux v5.11.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/power/reset/Kconfig        |  8 +++
 drivers/power/reset/Makefile       |  1 +
 drivers/power/reset/gpio-restart.c | 99 ++++++++++++++++++++++++++++++
 3 files changed, 108 insertions(+)
 create mode 100644 drivers/power/reset/gpio-restart.c

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index cadcc0b13f2f..dec1482ccd0c 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -36,3 +36,11 @@ config POWER_RESET_GPIO
 	  This driver supports turning off your board via a GPIO line.
 	  If your board needs a GPIO high/low to power down, say Y and
 	  create a binding in your devicetree.
+
+config POWER_RESET_GPIO_RESTART
+	bool "GPIO restart driver"
+	depends on OF_GPIO
+	help
+	  This driver supports restarting your board via a GPIO line.
+	  If your board needs a GPIO high/low to restart, say Y and
+	  create a binding in your devicetree.
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
index 438c85970028..33d29d2d9546 100644
--- a/drivers/power/reset/Makefile
+++ b/drivers/power/reset/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_SYSCON_REBOOT_MODE) += syscon-reboot-mode.o
 obj-$(CONFIG_POWER_RESET_SYSCON) += syscon-reboot.o
 obj-$(CONFIG_POWER_RESET_SYSCON_POWEROFF) += syscon-poweroff.o
 obj-$(CONFIG_POWER_RESET_GPIO) += gpio-poweroff.o
+obj-$(CONFIG_POWER_RESET_GPIO_RESTART) += gpio-restart.o
diff --git a/drivers/power/reset/gpio-restart.c b/drivers/power/reset/gpio-restart.c
new file mode 100644
index 000000000000..72c690a3cf4c
--- /dev/null
+++ b/drivers/power/reset/gpio-restart.c
@@ -0,0 +1,99 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Toggles a GPIO pin to restart a device
+ *
+ * Copyright (C) 2014 Google, Inc.
+ *
+ * Based on the gpio-poweroff driver.
+ */
+#include <common.h>
+#include <driver.h>
+#include <restart.h>
+#include <gpiod.h>
+
+struct gpio_restart {
+	int reset_gpio;
+	struct restart_handler restart_handler;
+	u32 active_delay_ms;
+	u32 inactive_delay_ms;
+	u32 wait_delay_ms;
+};
+
+static void __noreturn gpio_restart_handle(struct restart_handler *this)
+{
+	struct gpio_restart *gpio_restart =
+		container_of(this, struct gpio_restart, restart_handler);
+
+	/* drive it active, also inactive->active edge */
+	gpio_direction_active(gpio_restart->reset_gpio, true);
+	mdelay(gpio_restart->active_delay_ms);
+
+	/* drive inactive, also active->inactive edge */
+	gpio_set_active(gpio_restart->reset_gpio, false);
+	mdelay(gpio_restart->inactive_delay_ms);
+
+	/* drive it active, also inactive->active edge */
+	gpio_set_active(gpio_restart->reset_gpio, true);
+
+	/* give it some time */
+	mdelay(gpio_restart->wait_delay_ms);
+
+	mdelay(1000);
+
+	panic("Unable to restart system\n");
+}
+
+static int gpio_restart_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct gpio_restart *gpio_restart;
+	bool open_source = false;
+	u32 property;
+	int ret;
+
+	gpio_restart = xzalloc(sizeof(*gpio_restart));
+
+	open_source = of_property_read_bool(np, "open-source");
+
+	gpio_restart->reset_gpio = gpiod_get(dev, NULL,
+			open_source ? GPIOD_IN : GPIOD_OUT_LOW);
+	ret = gpio_restart->reset_gpio;
+	if (ret < 0) {
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Could not get reset GPIO\n");
+		return ret;
+	}
+
+	gpio_restart->restart_handler.restart = gpio_restart_handle;
+	gpio_restart->restart_handler.name = "gpio-restart";
+	gpio_restart->restart_handler.priority = 129;
+	gpio_restart->active_delay_ms = 100;
+	gpio_restart->inactive_delay_ms = 100;
+	gpio_restart->wait_delay_ms = 3000;
+
+	ret = of_property_read_u32(dev->device_node, "priority", &property);
+	if (!ret)
+		gpio_restart->restart_handler.priority = property;
+
+	of_property_read_u32(np, "active-delay", &gpio_restart->active_delay_ms);
+	of_property_read_u32(np, "inactive-delay", &gpio_restart->inactive_delay_ms);
+	of_property_read_u32(np, "wait-delay", &gpio_restart->wait_delay_ms);
+
+	return restart_handler_register(&gpio_restart->restart_handler);
+}
+
+static const struct of_device_id of_gpio_restart_match[] = {
+	{ .compatible = "gpio-restart", },
+	{},
+};
+
+static struct driver_d gpio_restart_driver = {
+	.name = "restart-gpio",
+	.of_compatible = of_gpio_restart_match,
+	.probe = gpio_restart_probe,
+};
+device_platform_driver(gpio_restart_driver);
+
+MODULE_AUTHOR("David Riley <davidriley@chromium.org>");
+MODULE_DESCRIPTION("GPIO restart driver");
+MODULE_LICENSE("GPL");
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Sat, 10 Apr 2021 12:36:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVAyy-0000yv-Tz
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 12:36:52 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVAyx-0007T1-UF
	for lore@pengutronix.de; Sat, 10 Apr 2021 12:36:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2vuI6xMiwybcd2oEJ77j4e8VS2WCmN0bP5IUPXLRpTg=; b=BmlbiY0lbkjw1r7lXnOqB6haT
	tqrV1jFfR6Xnx6+dnKIqt5/mmVgKsUUViigwpQGqAJbKiokfPOcsHsOqgGAL9a+edPxW6LouRoiuz
	tGjR+NDDFDTrKCZ7VE0Kf0u9d5/2V/QF9xhgqCK0eIPC8EbvGNMGIq1BP3UvKZsVqZpXZKB0J4CqN
	8T/IMWrhK6hHtgZ58ymGlMvGEiNVWqpC1OAJlf8TGUQIbho/e51+1PifjqZWnUhUclqQOBFITyfGc
	a5I+8WbbFaAEPTeo3I3spN/TIUdh3pwzSGlgBJExSDTDyhOq5Meqag1libL7JN4+giMdpXb1DFmwI
	Z6aq1uCIw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVAxw-002fNN-So; Sat, 10 Apr 2021 10:35:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVAxb-002fKB-Im
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 10:35:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=a72QNr/mMvR4NvYj2DQRsM5TatcQt7htHxGHodubIl0=; b=T3xK/6Ypkbfb543df6SZfrGP8X
 5nk1FyK/VuRt548V5KECNO2lhNHiHinQKVxiw0rYgvVBVi76OSsT+YQ6U6IynxASIoHxB6aPvxmF3
 TlcHR4Fg+qjTNDHniv+qICNiTV62u92DNJQkk2JaWnifIMiZhiWviHneyvDB7j4wAiZtW47bCI95s
 1UzStZ0mhOf16WzqGIhKf7dZm7YMX5fuzZ37yG9RpdJsriRCrEQWf0pVNbLmi3ba05TXEEs8DaAxg
 KKJH+VOd66GzYLI983bbKP/T2r/RPbXT/+w4sAOoxP0Dyxjx4Q7eNAYdTvulM3FcLPvN3Ucb08WCl
 kgW1ja8w==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVAxW-0052M6-J2
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 10:35:26 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 9225E40007;
 Sat, 10 Apr 2021 10:35:16 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 10 Apr 2021 12:35:09 +0200
Message-Id: <20210410103511.2073504-3-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210410103511.2073504-1-ahmad@a3f.at>
References: <20210410103511.2073504-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_033522_915957_1A2D08B4 
X-CRM114-Status: GOOD (  16.68  )
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
Subject: [PATCH 3/5] power: reset: add GPIO poweroff driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a straight port from Linux v5.11.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/power/reset/Kconfig         |  8 +++
 drivers/power/reset/Makefile        |  1 +
 drivers/power/reset/gpio-poweroff.c | 93 +++++++++++++++++++++++++++++
 3 files changed, 102 insertions(+)
 create mode 100644 drivers/power/reset/gpio-poweroff.c

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index e60037a6e637..cadcc0b13f2f 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -28,3 +28,11 @@ config POWER_RESET_SYSCON_POWEROFF
 	select MFD_SYSCON
 	help
 	  Poweroff support for generic SYSCON mapped register poweroff.
+
+config POWER_RESET_GPIO
+	bool "GPIO power-off driver"
+	depends on OF_GPIO
+	help
+	  This driver supports turning off your board via a GPIO line.
+	  If your board needs a GPIO high/low to power down, say Y and
+	  create a binding in your devicetree.
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
index a490dce87333..438c85970028 100644
--- a/drivers/power/reset/Makefile
+++ b/drivers/power/reset/Makefile
@@ -3,3 +3,4 @@ obj-$(CONFIG_REBOOT_MODE) += reboot-mode.o
 obj-$(CONFIG_SYSCON_REBOOT_MODE) += syscon-reboot-mode.o
 obj-$(CONFIG_POWER_RESET_SYSCON) += syscon-reboot.o
 obj-$(CONFIG_POWER_RESET_SYSCON_POWEROFF) += syscon-poweroff.o
+obj-$(CONFIG_POWER_RESET_GPIO) += gpio-poweroff.o
diff --git a/drivers/power/reset/gpio-poweroff.c b/drivers/power/reset/gpio-poweroff.c
new file mode 100644
index 000000000000..45b0d274e729
--- /dev/null
+++ b/drivers/power/reset/gpio-poweroff.c
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Toggles a GPIO pin to power down a device
+ *
+ * Jamie Lentin <jm@lentin.co.uk>
+ * Andrew Lunn <andrew@lunn.ch>
+ *
+ * Copyright (C) 2012 Jamie Lentin
+ */
+#include <common.h>
+#include <driver.h>
+#include <poweroff.h>
+#include <gpiod.h>
+
+#define DEFAULT_TIMEOUT_MS 3000
+/*
+ * Hold configuration here, cannot be more than one instance of the driver
+ * since pm_power_off itself is global.
+ */
+static int reset_gpio;
+static u32 timeout = DEFAULT_TIMEOUT_MS;
+static u32 active_delay = 100;
+static u32 inactive_delay = 100;
+
+static void gpio_poweroff_do_poweroff(struct poweroff_handler *handler)
+{
+	/* drive it active, also inactive->active edge */
+	gpio_direction_active(reset_gpio, true);
+	mdelay(active_delay);
+
+	/* drive inactive, also active->inactive edge */
+	gpio_set_active(reset_gpio, false);
+	mdelay(inactive_delay);
+
+	/* drive it active, also inactive->active edge */
+	gpio_set_active(reset_gpio, true);
+
+	/* give it some time */
+	mdelay(timeout);
+
+	WARN_ON(1);
+}
+
+static struct poweroff_handler handler;
+
+static int gpio_poweroff_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	bool input = false;
+	enum gpiod_flags flags;
+
+	if (handler.poweroff != NULL) {
+		dev_err(dev, "%s: pm_power_off function already registered\n", __func__);
+		return -EBUSY;
+	}
+
+	input = of_property_read_bool(np, "input");
+	if (input)
+		flags = GPIOD_IN;
+	else
+		flags = GPIOD_OUT_LOW;
+
+	of_property_read_u32(np, "active-delay-ms", &active_delay);
+	of_property_read_u32(np, "inactive-delay-ms", &inactive_delay);
+	of_property_read_u32(np, "timeout-ms", &timeout);
+
+	reset_gpio = gpiod_get(dev, NULL, flags);
+	if (reset_gpio < 0)
+		return reset_gpio;
+
+	handler.name = "gpio-poweroff";
+	handler.poweroff = gpio_poweroff_do_poweroff;
+	handler.priority = 129;
+
+	return poweroff_handler_register(&handler);
+}
+
+static const struct of_device_id of_gpio_poweroff_match[] = {
+	{ .compatible = "gpio-poweroff", },
+	{},
+};
+
+static struct driver_d gpio_poweroff_driver = {
+	.name = "poweroff-gpio",
+	.of_compatible = of_gpio_poweroff_match,
+	.probe = gpio_poweroff_probe,
+};
+device_platform_driver(gpio_poweroff_driver);
+
+MODULE_AUTHOR("Jamie Lentin <jm@lentin.co.uk>");
+MODULE_DESCRIPTION("GPIO poweroff driver");
+MODULE_LICENSE("GPL v2");
+MODULE_ALIAS("platform:poweroff-gpio");
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


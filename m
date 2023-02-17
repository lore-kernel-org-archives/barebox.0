Delivery-date: Fri, 17 Feb 2023 21:28:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT7L2-00AOEL-HO
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 21:28:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT7L1-0007i5-9l
	for lore@pengutronix.de; Fri, 17 Feb 2023 21:28:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sjUGPGm8L/F022m9t8vzhNzlzyP0SZmG87PSYaYYO4A=; b=qJ3hjKC+mMS5/u/ws9CBZ2cl4W
	21bbs0baCncibdqEZyAc+f3jQGq2C+8JZL4quUR3OTAMA+hRcCoeBuCLMJImBNO30W5ajbutRy4xA
	9H2s6waYrsNXdemnln2ym6YgggfpYVCbEpgmESn4O63H8iG5P7qzT5GlvVd05JZiMpxJpFvSRq7zZ
	bJZ00J1fiylj6jlcmgj10SKiDnnsPbq2YBFZDQB5C9uSf5eWXkJ0Tfj7NQ9njUSWvRtJpnLmwAvjj
	5OUnDxe0K4tLn7su8iW4pd2v9x0Hg8N7Mo3dujRaICd0yiENFej9p2g5Q9XC19ErPNyULai46QJh3
	86Rl5XrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT7JR-00Fckg-Qz; Fri, 17 Feb 2023 20:26:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT7JM-00Fcje-G4
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 20:26:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7JG-0007dP-O5; Fri, 17 Feb 2023 21:26:22 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7JE-005f9w-Nq; Fri, 17 Feb 2023 21:26:21 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7JF-00C5vW-AX; Fri, 17 Feb 2023 21:26:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 21:26:20 +0100
Message-Id: <20230217202620.2882141-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_122628_576877_7E98E5DE 
X-CRM114-Status: GOOD (  23.24  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: misc: add support for new OF onboard hub binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The new binding allows describing hubs that lacks a control bus (e.g.
I2C) in the DT and thus replaces the ugly hack of specifying USB hub
resets as gpio-hogs. It's already in use for boards we support, like the
STM32MP13/5 Discovery kits and will be useful for the i.MX8MP Debix
board, so port over the driver from Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/core/usb.c             |  2 +
 drivers/usb/misc/Kconfig           | 10 ++++
 drivers/usb/misc/Makefile          |  1 +
 drivers/usb/misc/onboard_usb_hub.c | 86 ++++++++++++++++++++++++++++++
 drivers/usb/misc/onboard_usb_hub.h | 36 +++++++++++++
 include/usb/usb.h                  |  8 +++
 6 files changed, 143 insertions(+)
 create mode 100644 drivers/usb/misc/onboard_usb_hub.c
 create mode 100644 drivers/usb/misc/onboard_usb_hub.h

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 7c589ec06f24..a974614c062e 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -576,6 +576,8 @@ int usb_host_detect(struct usb_host *host)
 {
 	int ret;
 
+	of_usb_host_probe_hubs(host);
+
 	if (!host->root_dev) {
 		if (host->init) {
 			ret = host->init(host);
diff --git a/drivers/usb/misc/Kconfig b/drivers/usb/misc/Kconfig
index 9799af47256e..fde57fd74309 100644
--- a/drivers/usb/misc/Kconfig
+++ b/drivers/usb/misc/Kconfig
@@ -14,3 +14,13 @@ config USB_HUB_USB251XB
 	  Microchip USB251x/xBi USB 2.0 Hub Controller series. Configuration
 	  parameters may be set in devicetree or platform data.
 	  Say Y or M here if you need to configure such a device via SMBus.
+
+config USB_ONBOARD_HUB
+	bool "Onboard USB hub support"
+	depends on OFDEVICE || COMPILE_TEST
+	help
+	  Say Y here if you want to support discrete onboard USB hubs that
+	  don't require an additional control bus for initialization, but
+	  need some non-trivial form of initialization, such as enabling a
+	  power regulator. An example for such a hub is the Realtek
+	  RTS5411.
diff --git a/drivers/usb/misc/Makefile b/drivers/usb/misc/Makefile
index be5c044f5a57..e00f66a5ed1c 100644
--- a/drivers/usb/misc/Makefile
+++ b/drivers/usb/misc/Makefile
@@ -4,3 +4,4 @@
 # (the ones that don't fit into any other categories)
 #
 obj-$(CONFIG_USB_HUB_USB251XB)		+= usb251xb.o
+obj-$(CONFIG_USB_ONBOARD_HUB)		+= onboard_usb_hub.o
diff --git a/drivers/usb/misc/onboard_usb_hub.c b/drivers/usb/misc/onboard_usb_hub.c
new file mode 100644
index 000000000000..0b847f06ad45
--- /dev/null
+++ b/drivers/usb/misc/onboard_usb_hub.c
@@ -0,0 +1,86 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Driver for onboard USB hubs
+ *
+ * Copyright (c) 2022, Google LLC
+ */
+
+#include <driver.h>
+#include <gpiod.h>
+#include <init.h>
+#include <of.h>
+#include <linux/printk.h>
+#include <of_device.h>
+#include <regulator.h>
+#include <usb/usb.h>
+
+#include "onboard_usb_hub.h"
+
+void of_usb_host_probe_hubs(struct usb_host *host)
+{
+	struct device_node *np;
+
+	np = dev_of_node(host->hw_dev);
+	if (!np)
+		return;
+
+	of_platform_populate(np, onboard_hub_match, host->hw_dev);
+}
+
+struct onboard_hub {
+	struct regulator *vdd;
+	struct device *dev;
+	const struct onboard_hub_pdata *pdata;
+	int reset_gpio;
+};
+
+static int onboard_hub_power_on(struct onboard_hub *hub)
+{
+	int err;
+
+	err = regulator_enable(hub->vdd);
+	if (err) {
+		dev_err(hub->dev, "failed to enable regulator: %pe\n",
+			ERR_PTR(err));
+		return err;
+	}
+
+	udelay(hub->pdata->reset_us);
+	gpiod_set_value(hub->reset_gpio, 0);
+
+	return 0;
+}
+
+static int onboard_hub_probe(struct device *dev)
+{
+	struct onboard_hub *hub;
+
+	hub = xzalloc(sizeof(*hub));
+
+	hub->pdata = device_get_match_data(dev);
+	if (!hub->pdata)
+		return -EINVAL;
+
+	hub->vdd = regulator_get(dev, "vdd");
+	if (IS_ERR(hub->vdd))
+		return PTR_ERR(hub->vdd);
+
+	hub->reset_gpio = gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
+	if (hub->reset_gpio < 0 && hub->reset_gpio != -ENOENT)
+		return dev_err_probe(dev, hub->reset_gpio, "failed to get reset GPIO\n");
+
+	hub->dev = dev;
+
+	return onboard_hub_power_on(hub);
+}
+
+static struct driver onboard_hub_driver = {
+	.name = "onboard-usb-hub",
+	.probe = onboard_hub_probe,
+	.of_compatible = onboard_hub_match,
+};
+device_platform_driver(onboard_hub_driver);
+
+MODULE_AUTHOR("Matthias Kaehlcke <mka@chromium.org>");
+MODULE_DESCRIPTION("Driver for discrete onboard USB hubs");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/usb/misc/onboard_usb_hub.h b/drivers/usb/misc/onboard_usb_hub.h
new file mode 100644
index 000000000000..e90be47b6735
--- /dev/null
+++ b/drivers/usb/misc/onboard_usb_hub.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (c) 2022, Google LLC
+ */
+
+#ifndef _USB_MISC_ONBOARD_USB_HUB_H
+#define _USB_MISC_ONBOARD_USB_HUB_H
+
+struct onboard_hub_pdata {
+	unsigned long reset_us;		/* reset pulse width in us */
+};
+
+static const struct onboard_hub_pdata microchip_usb424_data = {
+	.reset_us = 1,
+};
+
+static const struct onboard_hub_pdata realtek_rts5411_data = {
+	.reset_us = 0,
+};
+
+static const struct onboard_hub_pdata ti_tusb8041_data = {
+	.reset_us = 3000,
+};
+
+const struct of_device_id onboard_hub_match[] = {
+	{ .compatible = "usb424,2514", .data = &microchip_usb424_data, },
+	{ .compatible = "usb451,8140", .data = &ti_tusb8041_data, },
+	{ .compatible = "usb451,8142", .data = &ti_tusb8041_data, },
+	{ .compatible = "usbbda,411", .data = &realtek_rts5411_data, },
+	{ .compatible = "usbbda,5411", .data = &realtek_rts5411_data, },
+	{ .compatible = "usbbda,414", .data = &realtek_rts5411_data, },
+	{ .compatible = "usbbda,5414", .data = &realtek_rts5411_data, },
+	{}
+};
+
+#endif /* _USB_MISC_ONBOARD_USB_HUB_H */
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 9b36122436d5..717bcf935a42 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -484,4 +484,12 @@ extern struct list_head usb_device_list;
 
 bool usb_hub_is_root_hub(struct usb_device *hdev);
 
+#ifdef CONFIG_USB_ONBOARD_HUB
+void of_usb_host_probe_hubs(struct usb_host *host);
+#else
+static inline void of_usb_host_probe_hubs(struct usb_host *host)
+{
+}
+#endif
+
 #endif /*_USB_H_ */
-- 
2.30.2




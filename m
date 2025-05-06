Delivery-date: Tue, 06 May 2025 14:27:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCHOG-002n9c-2L
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 14:27:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCHOF-0008Uf-Jg
	for lore@pengutronix.de; Tue, 06 May 2025 14:27:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r4LhyK+saNZCy0tPm65RF56uN/qOaNZ5LiMDj4RJyUE=; b=K1BK7jKFDwyMJ0WSsquezMgSev
	pmEwPuxEW2T9Rbc15JgbahTB44juke96cWLDWzRYyRWVYac7ULwNripm7IF622CDabIddpQQgCruw
	VDco6H5/71YLwWm34qbTxYDhSdMXhqVvsGC6SMVgUo8a+7JInewWG6JPDBO2a4/14Siww09SpdgzZ
	BqV092fLGkL8pvnInRiu3vSr15m8jjE1KcQ/9qNtG/7KVPKvtzedVGOF8VXAOSHQfzxeNJpILSCns
	HTiopn0U5My3o2KfYY2vng2fJMBbk9/X3+OXRbmRTAWc2zJ2YWMZVcmyN9d+rrUv6GSVk9qXkrKrJ
	kmA1VKQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCHNV-0000000Bu0E-2LRu;
	Tue, 06 May 2025 12:26:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCFQt-0000000BYGy-2FtV
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 10:21:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCFQq-0004Ow-KC; Tue, 06 May 2025 12:21:48 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCFQq-001NV4-1P;
	Tue, 06 May 2025 12:21:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCFQq-00Esq4-2b;
	Tue, 06 May 2025 12:21:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 12:21:47 +0200
Message-Id: <20250506102147.3547357-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_032151_880191_AC378A1E 
X-CRM114-Status: GOOD (  25.99  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: misc: rename USB onboard hub support to onboard device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is nothing hub-specific about the driver and Linux has already
renamed it to reflect its use with USB devices in general, so follow
suit in barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/migration-guides/index.rst      |  1 +
 .../migration-guides/migration-2025.06.0.rst  |  8 +++
 arch/arm/configs/multi_v7_defconfig           |  2 +-
 arch/arm/configs/multi_v8_defconfig           |  2 +-
 arch/arm/configs/stm32mp_defconfig            |  2 +-
 drivers/usb/core/usb.c                        |  2 +-
 drivers/usb/misc/Kconfig                      | 14 ++---
 drivers/usb/misc/Makefile                     |  2 +-
 .../{onboard_usb_hub.c => onboard_usb_dev.c}  | 62 +++++++++----------
 .../{onboard_usb_hub.h => onboard_usb_dev.h}  | 24 +++----
 include/linux/usb/usb.h                       |  6 +-
 11 files changed, 67 insertions(+), 58 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-2025.06.0.rst
 rename drivers/usb/misc/{onboard_usb_hub.c => onboard_usb_dev.c} (41%)
 rename drivers/usb/misc/{onboard_usb_hub.h => onboard_usb_dev.h} (64%)

diff --git a/Documentation/migration-guides/index.rst b/Documentation/migration-guides/index.rst
index fbe7a0205980..182654847f17 100644
--- a/Documentation/migration-guides/index.rst
+++ b/Documentation/migration-guides/index.rst
@@ -11,3 +11,4 @@ cause build errors are generally out-of-scope for these documents.
 .. toctree::
 
    migration-2025.05.0
+   migration-2025.06.0
diff --git a/Documentation/migration-guides/migration-2025.06.0.rst b/Documentation/migration-guides/migration-2025.06.0.rst
new file mode 100644
index 000000000000..ce39b117c8cb
--- /dev/null
+++ b/Documentation/migration-guides/migration-2025.06.0.rst
@@ -0,0 +1,8 @@
+Release v2025.06.0
+==================
+
+Configuration options
+---------------------
+
+* ``CONFIG_USB_ONBOARD_HUB`` has been renamed to ``CONFIG_USB_ONBOARD_DEV``
+  for compatibility with Linux.
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 9880a45c70a6..3eea4e640572 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -255,7 +255,7 @@ CONFIG_USB_DWC2_GADGET=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
 CONFIG_USB_STORAGE=y
-CONFIG_USB_ONBOARD_HUB=y
+CONFIG_USB_ONBOARD_DEV=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index a4685a90f850..3256f8ea7957 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -197,7 +197,7 @@ CONFIG_USB_DWC3=y
 CONFIG_USB_DWC3_DUAL_ROLE=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
-CONFIG_USB_ONBOARD_HUB=y
+CONFIG_USB_ONBOARD_DEV=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_USB_GADGET_FASTBOOT=y
diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 4b169993e902..366c9430d551 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -120,7 +120,7 @@ CONFIG_USB_DWC2_HOST=y
 CONFIG_USB_DWC2_GADGET=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
-CONFIG_USB_ONBOARD_HUB=y
+CONFIG_USB_ONBOARD_DEV=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 01d193d072fe..f59b525f6276 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -623,7 +623,7 @@ int usb_host_detect(struct usb_host *host)
 {
 	int ret;
 
-	of_usb_host_probe_hubs(host);
+	of_usb_host_probe_devs(host);
 
 	if (!host->root_dev) {
 		if (host->init) {
diff --git a/drivers/usb/misc/Kconfig b/drivers/usb/misc/Kconfig
index fde57fd74309..6fe80a0f176b 100644
--- a/drivers/usb/misc/Kconfig
+++ b/drivers/usb/misc/Kconfig
@@ -15,12 +15,12 @@ config USB_HUB_USB251XB
 	  parameters may be set in devicetree or platform data.
 	  Say Y or M here if you need to configure such a device via SMBus.
 
-config USB_ONBOARD_HUB
-	bool "Onboard USB hub support"
+config USB_ONBOARD_DEV
+	bool "Onboard USB hubs and devices support"
 	depends on OFDEVICE || COMPILE_TEST
 	help
-	  Say Y here if you want to support discrete onboard USB hubs that
-	  don't require an additional control bus for initialization, but
-	  need some non-trivial form of initialization, such as enabling a
-	  power regulator. An example for such a hub is the Realtek
-	  RTS5411.
+	  Say Y here if you want to support discrete onboard USB hubs
+	  that don't require an additional control bus for initialization,
+	  but need some non-trivial form of initialization, such as
+	  enabling a power regulator. An example for such device is the
+	  Realtek RTS5411 hub.
diff --git a/drivers/usb/misc/Makefile b/drivers/usb/misc/Makefile
index e00f66a5ed1c..d8745a85de9b 100644
--- a/drivers/usb/misc/Makefile
+++ b/drivers/usb/misc/Makefile
@@ -4,4 +4,4 @@
 # (the ones that don't fit into any other categories)
 #
 obj-$(CONFIG_USB_HUB_USB251XB)		+= usb251xb.o
-obj-$(CONFIG_USB_ONBOARD_HUB)		+= onboard_usb_hub.o
+obj-$(CONFIG_USB_ONBOARD_DEV)		+= onboard_usb_dev.o
diff --git a/drivers/usb/misc/onboard_usb_hub.c b/drivers/usb/misc/onboard_usb_dev.c
similarity index 41%
rename from drivers/usb/misc/onboard_usb_hub.c
rename to drivers/usb/misc/onboard_usb_dev.c
index 603fd693a137..730f443dfefe 100644
--- a/drivers/usb/misc/onboard_usb_hub.c
+++ b/drivers/usb/misc/onboard_usb_dev.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Driver for onboard USB hubs
+ * Driver for onboard USB devices
  *
  * Copyright (c) 2022, Google LLC
  */
@@ -15,9 +15,9 @@
 #include <xfuncs.h>
 #include <linux/usb/usb.h>
 
-#include "onboard_usb_hub.h"
+#include "onboard_usb_dev.h"
 
-void of_usb_host_probe_hubs(struct usb_host *host)
+void of_usb_host_probe_devs(struct usb_host *host)
 {
 	struct device_node *np;
 
@@ -25,38 +25,38 @@ void of_usb_host_probe_hubs(struct usb_host *host)
 	if (!np)
 		return;
 
-	of_platform_populate(np, onboard_hub_match, host->hw_dev);
+	of_platform_populate(np, onboard_dev_match, host->hw_dev);
 }
 
-struct onboard_hub {
+struct onboard_dev {
 	struct regulator *vdd;
 	struct device *dev;
-	const struct onboard_hub_pdata *pdata;
+	const struct onboard_dev_pdata *pdata;
 	struct gpio_desc *reset_gpio;
 };
 
-static int onboard_hub_power_on(struct onboard_hub *hub)
+static int onboard_dev_power_on(struct onboard_dev *onboard_dev)
 {
 	int err;
 
-	err = regulator_enable(hub->vdd);
+	err = regulator_enable(onboard_dev->vdd);
 	if (err) {
-		dev_err(hub->dev, "failed to enable regulator: %pe\n",
+		dev_err(onboard_dev->dev, "failed to enable regulator: %pe\n",
 			ERR_PTR(err));
 		return err;
 	}
 
-	udelay(hub->pdata->reset_us);
-	gpiod_set_value(hub->reset_gpio, 0);
+	udelay(onboard_dev->pdata->reset_us);
+	gpiod_set_value(onboard_dev->reset_gpio, 0);
 
 	return 0;
 }
 
-static int onboard_hub_probe(struct device *dev)
+static int onboard_dev_probe(struct device *dev)
 {
 	struct device_node *peer_node;
 	struct device *peer_dev;
-	struct onboard_hub *hub;
+	struct onboard_dev *onboard_dev;
 
 	peer_node = of_parse_phandle(dev->of_node, "peer-hub", 0);
 	if (peer_node) {
@@ -65,34 +65,34 @@ static int onboard_hub_probe(struct device *dev)
 			return 0;
 	}
 
-	hub = xzalloc(sizeof(*hub));
+	onboard_dev = xzalloc(sizeof(*onboard_dev));
 
-	hub->pdata = device_get_match_data(dev);
-	if (!hub->pdata)
+	onboard_dev->pdata = device_get_match_data(dev);
+	if (!onboard_dev->pdata)
 		return -EINVAL;
 
-	hub->vdd = regulator_get(dev, "vdd");
-	if (IS_ERR(hub->vdd))
-		return PTR_ERR(hub->vdd);
+	onboard_dev->vdd = regulator_get(dev, "vdd");
+	if (IS_ERR(onboard_dev->vdd))
+		return PTR_ERR(onboard_dev->vdd);
 
-	hub->reset_gpio = gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
-	if (IS_ERR(hub->reset_gpio))
-		return dev_errp_probe(dev, hub->reset_gpio,
+	onboard_dev->reset_gpio = gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(onboard_dev->reset_gpio))
+		return dev_errp_probe(dev, onboard_dev->reset_gpio,
 				     "failed to get reset GPIO\n");
 
-	hub->dev = dev;
-	dev->priv = hub;
+	onboard_dev->dev = dev;
+	dev->priv = onboard_dev;
 
-	return onboard_hub_power_on(hub);
+	return onboard_dev_power_on(onboard_dev);
 }
 
-static struct driver onboard_hub_driver = {
-	.name = "onboard-usb-hub",
-	.probe = onboard_hub_probe,
-	.of_compatible = onboard_hub_match,
+static struct driver onboard_dev_driver = {
+	.name = "onboard-usb-dev",
+	.probe = onboard_dev_probe,
+	.of_compatible = onboard_dev_match,
 };
-device_platform_driver(onboard_hub_driver);
+device_platform_driver(onboard_dev_driver);
 
 MODULE_AUTHOR("Matthias Kaehlcke <mka@chromium.org>");
-MODULE_DESCRIPTION("Driver for discrete onboard USB hubs");
+MODULE_DESCRIPTION("Driver for discrete onboard USB devices");
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/usb/misc/onboard_usb_hub.h b/drivers/usb/misc/onboard_usb_dev.h
similarity index 64%
rename from drivers/usb/misc/onboard_usb_hub.h
rename to drivers/usb/misc/onboard_usb_dev.h
index e379ca811ad5..edb91485bd83 100644
--- a/drivers/usb/misc/onboard_usb_hub.h
+++ b/drivers/usb/misc/onboard_usb_dev.h
@@ -3,38 +3,38 @@
  * Copyright (c) 2022, Google LLC
  */
 
-#ifndef _USB_MISC_ONBOARD_USB_HUB_H
-#define _USB_MISC_ONBOARD_USB_HUB_H
+#ifndef _USB_MISC_ONBOARD_USB_DEV_H
+#define _USB_MISC_ONBOARD_USB_DEV_H
 
-struct onboard_hub_pdata {
+struct onboard_dev_pdata {
 	unsigned long reset_us;		/* reset pulse width in us */
 };
 
-static const struct onboard_hub_pdata microchip_usb424_data = {
+static const struct onboard_dev_pdata microchip_usb424_data = {
 	.reset_us = 1,
 };
 
-static const struct onboard_hub_pdata realtek_rts5411_data = {
+static const struct onboard_dev_pdata realtek_rts5411_data = {
 	.reset_us = 0,
 };
 
-static const struct onboard_hub_pdata ti_tusb8041_data = {
+static const struct onboard_dev_pdata ti_tusb8041_data = {
 	.reset_us = 3000,
 };
 
-static const struct onboard_hub_pdata genesys_gl850g_data = {
+static const struct onboard_dev_pdata genesys_gl850g_data = {
 	.reset_us = 3,
 };
 
-static const struct onboard_hub_pdata genesys_gl852g_data = {
+static const struct onboard_dev_pdata genesys_gl852g_data = {
 	.reset_us = 50,
 };
 
-static const struct onboard_hub_pdata vialab_vl817_data = {
+static const struct onboard_dev_pdata vialab_vl817_data = {
 	.reset_us = 10,
 };
 
-static const struct of_device_id onboard_hub_match[] = {
+static const struct of_device_id onboard_dev_match[] = {
 	{ .compatible = "usb424,2514", .data = &microchip_usb424_data, },
 	{ .compatible = "usb424,2517", .data = &microchip_usb424_data, },
 	{ .compatible = "usb451,8140", .data = &ti_tusb8041_data, },
@@ -50,6 +50,6 @@ static const struct of_device_id onboard_hub_match[] = {
 	{ .compatible = "usb2109,2817", .data = &vialab_vl817_data, },
 	{}
 };
-MODULE_DEVICE_TABLE(of, onboard_hub_match);
+MODULE_DEVICE_TABLE(of, onboard_dev_match);
 
-#endif /* _USB_MISC_ONBOARD_USB_HUB_H */
+#endif /* _USB_MISC_ONBOARD_USB_DEV_H */
diff --git a/include/linux/usb/usb.h b/include/linux/usb/usb.h
index ac980e8f0d4d..f2cc69751064 100644
--- a/include/linux/usb/usb.h
+++ b/include/linux/usb/usb.h
@@ -485,10 +485,10 @@ extern struct list_head usb_device_list;
 
 bool usb_hub_is_root_hub(struct usb_device *hdev);
 
-#ifdef CONFIG_USB_ONBOARD_HUB
-void of_usb_host_probe_hubs(struct usb_host *host);
+#ifdef CONFIG_USB_ONBOARD_DEV
+void of_usb_host_probe_devs(struct usb_host *host);
 #else
-static inline void of_usb_host_probe_hubs(struct usb_host *host)
+static inline void of_usb_host_probe_devs(struct usb_host *host)
 {
 }
 #endif
-- 
2.39.5




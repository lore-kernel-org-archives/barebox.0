Delivery-date: Thu, 11 Jan 2024 12:52:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtbq-00CwCv-17
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 12:52:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtbp-0003Zw-Hq
	for lore@pengutronix.de; Thu, 11 Jan 2024 12:52:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IgwP2RuCFaKJmKVsNgulgF3vkbzYMc2/vPE8DwVLIRI=; b=E/k2JgNT+ePh4SM9TMGAKYWt9d
	fWOoi+zFD8WQHsnNwxEu28PZ+3NuMGikgRyvS6Mt/f1vej+ta7l18wIwH9weucBZOaYgvxvQELuXG
	JuVynUklcJtwQURfgHpl7QsPTrEZ5YxM/rKVa2VaTNNbxPtmjFEUdjyxhxwfUK+g15n9CQbmXz+Ea
	Ck+4ZwoQZiAaMgToKgpmWn43S8GpVjXX77vij3VuwfDcmAyE2vaV219AkVa34Isbh1SRLAXYDWh6D
	E02xPW57EzFJwkW50Jn5Wq/VpXNrbXMj5WVRBy0LI2bptYoXYEE8Z7/x8QbEz87K2tDa41fEzAFBY
	/3EToNEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtas-00HVO5-0a;
	Thu, 11 Jan 2024 11:51:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtap-00HVMW-2F
	for barebox@bombadil.infradead.org;
	Thu, 11 Jan 2024 11:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=IgwP2RuCFaKJmKVsNgulgF3vkbzYMc2/vPE8DwVLIRI=; b=E/rUnCYBJiAzJmuyKjnvAUL3Cw
	ZKiO0a/0jPP0sOVa6qzBzTh5QGcPOIy8n+kAVqCUj1a6x2Hp7zHtJ3vql4yc3X/G3EFNx8dxl6oQR
	MCzOXK71BJS8PUpqsQCWlF89nbjSMUbqi4WRYP4vV2oyT2dY4Q+n/0PAqCK6/mdOvgHq/eCCilLzd
	/vRI3i3dz9BQ/VeWz5Nllgt6VRUhH3IxgONTZA8pA2FzFhyWGgcn1yFYXDI6Clw3AHe6rov9TzeVM
	EDfsLelzHaYFnV3Y1Z718WnAXoWG7w6pa4zZwmK/NZsNPTPxRR70dazMrv+HO39qI23nCEmGM93zQ
	ayHTEhsw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtak-00AIeu-19
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 11:51:26 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rNtaj-0003C1-RH
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 12:51:21 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jan 2024 12:51:19 +0100
Message-Id: <20240111115120.2678876-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_115124_088564_EBB3EB14 
X-CRM114-Status: GOOD (  21.20  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] Port SoC framework from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the initial support for the Linux soc framework which can be
used to register all SoC relevant informations. The framework can be
used by driver to check for errata for an specific soc(-revision) in the
future since this require porting the matching function.

For now it gathers all required SoC information and provide a standard
interface to query the data via device params.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/base/Kconfig    |   3 +
 drivers/base/Makefile   |   1 +
 drivers/base/soc.c      | 123 ++++++++++++++++++++++++++++++++++++++++
 include/linux/sys_soc.h |  39 +++++++++++++
 4 files changed, 166 insertions(+)
 create mode 100644 drivers/base/soc.c
 create mode 100644 include/linux/sys_soc.h

diff --git a/drivers/base/Kconfig b/drivers/base/Kconfig
index 612a84be33e7..21a4793cfa47 100644
--- a/drivers/base/Kconfig
+++ b/drivers/base/Kconfig
@@ -6,4 +6,7 @@ config PM_GENERIC_DOMAINS
 config FEATURE_CONTROLLER
 	bool "Feature controller support" if COMPILE_TEST || SANDBOX
 
+config SOC_BUS
+	bool
+
 source "drivers/base/regmap/Kconfig"
diff --git a/drivers/base/Makefile b/drivers/base/Makefile
index e8e354cdaabc..acc53763da35 100644
--- a/drivers/base/Makefile
+++ b/drivers/base/Makefile
@@ -7,3 +7,4 @@ obj-y	+= regmap/
 
 obj-$(CONFIG_PM_GENERIC_DOMAINS) += power.o
 obj-$(CONFIG_FEATURE_CONTROLLER) += featctrl.o
+obj-$(CONFIG_SOC_BUS) += soc.o
diff --git a/drivers/base/soc.c b/drivers/base/soc.c
new file mode 100644
index 000000000000..a481f8987b56
--- /dev/null
+++ b/drivers/base/soc.c
@@ -0,0 +1,123 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2024 Marco Felsch, Pengutronix
+/*
+ * Based on Linux drivers/base/soc.c:
+ * Copyright (C) ST-Ericsson SA 2011
+ */
+
+#include <common.h>
+#include <init.h>
+#include <of.h>
+
+#include <linux/slab.h>
+#include <linux/sys_soc.h>
+#include <linux/err.h>
+
+struct soc_device {
+	struct device dev;
+	struct soc_device_attribute *attr;
+};
+
+static struct bus_type soc_bus_type = {
+	.name  = "soc",
+};
+static bool soc_bus_registered;
+
+static void soc_device_add_params(struct soc_device *soc_dev)
+{
+	struct soc_device_attribute *attr = soc_dev->attr;
+	struct device *dev = &soc_dev->dev;
+
+	if (attr->machine)
+		dev_add_param_string_fixed(dev, "machine", attr->machine);
+	if (attr->family)
+		dev_add_param_string_fixed(dev, "family", attr->family);
+	if (attr->revision)
+		dev_add_param_string_fixed(dev, "revision", attr->revision);
+	if (attr->serial_number)
+		dev_add_param_string_fixed(dev, "serial_number", attr->serial_number);
+	if (attr->soc_id)
+		dev_add_param_string_fixed(dev, "soc_id", attr->soc_id);
+}
+
+static void soc_device_get_machine(struct soc_device_attribute *soc_dev_attr)
+{
+	struct device_node *np;
+
+	if (soc_dev_attr->machine)
+		return;
+
+	np = of_find_node_by_path("/");
+	of_property_read_string(np, "model", &soc_dev_attr->machine);
+	of_node_put(np);
+}
+
+static struct soc_device_attribute *early_soc_dev_attr;
+
+struct soc_device *soc_device_register(struct soc_device_attribute *soc_dev_attr)
+{
+	struct soc_device *soc_dev;
+	int ret;
+
+	soc_device_get_machine(soc_dev_attr);
+
+	if (!soc_bus_registered) {
+		if (early_soc_dev_attr)
+			return ERR_PTR(-EBUSY);
+		early_soc_dev_attr = soc_dev_attr;
+		return NULL;
+	}
+
+	soc_dev = kzalloc(sizeof(*soc_dev), GFP_KERNEL);
+	if (!soc_dev) {
+		ret = -ENOMEM;
+		goto out1;
+	}
+
+	soc_dev->attr = soc_dev_attr;
+	soc_dev->dev.bus = &soc_bus_type;
+	soc_dev->dev.id = DEVICE_ID_DYNAMIC;
+
+	dev_set_name(&soc_dev->dev, "soc");
+
+	ret = device_register(&soc_dev->dev);
+	if (ret) {
+		put_device(&soc_dev->dev);
+		goto out2;
+	}
+
+	soc_device_add_params(soc_dev);
+
+	return soc_dev;
+
+out2:
+	kfree(soc_dev);
+out1:
+	return ERR_PTR(ret);
+}
+EXPORT_SYMBOL_GPL(soc_device_register);
+
+/* Ensure soc_dev->attr is freed after calling soc_device_unregister. */
+void soc_device_unregister(struct soc_device *soc_dev)
+{
+	device_unregister(&soc_dev->dev);
+	kfree(soc_dev);
+	early_soc_dev_attr = NULL;
+}
+EXPORT_SYMBOL_GPL(soc_device_unregister);
+
+static int __init soc_bus_register(void)
+{
+	int ret;
+
+	ret = bus_register(&soc_bus_type);
+	if (ret)
+		return ret;
+	soc_bus_registered = true;
+
+	if (early_soc_dev_attr)
+		return PTR_ERR(soc_device_register(early_soc_dev_attr));
+
+	return 0;
+}
+core_initcall(soc_bus_register);
diff --git a/include/linux/sys_soc.h b/include/linux/sys_soc.h
new file mode 100644
index 000000000000..fd597ae54096
--- /dev/null
+++ b/include/linux/sys_soc.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) ST-Ericsson SA 2011
+ * Author: Lee Jones <lee.jones@linaro.org> for ST-Ericsson.
+ */
+#ifndef __SOC_BUS_H
+#define __SOC_BUS_H
+
+#include <linux/device.h>
+
+struct soc_device_attribute {
+	const char *machine;
+	const char *family;
+	const char *revision;
+	const char *serial_number;
+	const char *soc_id;
+	const void *data;
+};
+
+/**
+ * soc_device_register - register SoC as a device
+ * @soc_plat_dev_attr: Attributes passed from platform to be attributed to a SoC
+ */
+struct soc_device *soc_device_register(
+	struct soc_device_attribute *soc_plat_dev_attr);
+
+/**
+ * soc_device_unregister - unregister SoC device
+ * @dev: SoC device to be unregistered
+ */
+void soc_device_unregister(struct soc_device *soc_dev);
+
+/**
+ * soc_device_to_device - helper function to fetch struct device
+ * @soc: Previously registered SoC device container
+ */
+struct device *soc_device_to_device(struct soc_device *soc);
+
+#endif /* __SOC_BUS_H */
-- 
2.39.2




Delivery-date: Sun, 14 Mar 2021 13:30:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPt6-0007pu-Vg
	for lore@lore.pengutronix.de; Sun, 14 Mar 2021 13:30:29 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPt0-0007XM-2N
	for lore@pengutronix.de; Sun, 14 Mar 2021 13:30:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vpdGbYFWrOIu8CVurFO2BLDNA+OM2HLqKcxpyMxtb+4=; b=OwSkHjoNlyJJOWlTNpQhKKM6E
	tkqObPS+OJkfELw/yOQ8OgF+r507ALfwfbx78QoGTkE7UgKuDTwCK2egb8AKHMLYIUIcQ3Fqh54Yf
	E3JcDKEw9iaL8yyjwmPN+m8fpHpH3yrBQ/TXXG2VSV2bsuR6q3vkZ1un+hUJBuQR8gjmg+ReKVFF+
	zLflGRfRli5an+HspMSpAFyh10q9lzvvvW+HI3GE0UluWMgW5ZS/n343bK5fs5xplIgDQCPXwkTW9
	2fMR9A5i2e9lqUUYhXBbJY3xMgWstP+8CWyUXHGwLN/XSxDhN2cpx74Y0/gPyOiyou4A/iGATbZQx
	YGQ26frHQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLPri-00ECIy-Pd; Sun, 14 Mar 2021 12:29:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLPqx-00EBug-KN
 for barebox@lists.infradead.org; Sun, 14 Mar 2021 12:28:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqp-0006Lk-3S; Sun, 14 Mar 2021 13:28:07 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqn-00016m-Oj; Sun, 14 Mar 2021 13:28:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 14 Mar 2021 13:28:03 +0100
Message-Id: <20210314122804.4128-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210314122804.4128-1-a.fatoum@pengutronix.de>
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210314_122815_902464_5C6052E9 
X-CRM114-Status: GOOD (  19.95  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 19/20] power: reset: add drivers for generic syscon reset and
 poweroff
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Many SoC reset/poweroff mechanisms can be represented using this generic
binding. Of the boards we support, at least the virt machines can
be rebooted and powered off by it. Import the Linux v5.11 state
of the driver to support this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/power/reset/Kconfig           | 14 ++++
 drivers/power/reset/Makefile          |  2 +
 drivers/power/reset/syscon-poweroff.c | 76 ++++++++++++++++++++++
 drivers/power/reset/syscon-reboot.c   | 92 +++++++++++++++++++++++++++
 4 files changed, 184 insertions(+)
 create mode 100644 drivers/power/reset/syscon-poweroff.c
 create mode 100644 drivers/power/reset/syscon-reboot.c

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index f65e1f67fd59..e60037a6e637 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -14,3 +14,17 @@ config SYSCON_REBOOT_MODE
 	  get reboot mode arguments and store it in SYSCON mapped
 	  register, then the bootloader can read it to take different
 	  action according to the mode.
+
+config POWER_RESET_SYSCON
+	bool "Generic SYSCON regmap reset driver"
+	depends on OFDEVICE
+	select MFD_SYSCON
+	help
+	  Reboot support for generic SYSCON mapped register reset.
+
+config POWER_RESET_SYSCON_POWEROFF
+	bool "Generic SYSCON regmap poweroff driver"
+	depends on OFDEVICE
+	select MFD_SYSCON
+	help
+	  Poweroff support for generic SYSCON mapped register poweroff.
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
index 56feec78cf26..a490dce87333 100644
--- a/drivers/power/reset/Makefile
+++ b/drivers/power/reset/Makefile
@@ -1,3 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_REBOOT_MODE) += reboot-mode.o
 obj-$(CONFIG_SYSCON_REBOOT_MODE) += syscon-reboot-mode.o
+obj-$(CONFIG_POWER_RESET_SYSCON) += syscon-reboot.o
+obj-$(CONFIG_POWER_RESET_SYSCON_POWEROFF) += syscon-poweroff.o
diff --git a/drivers/power/reset/syscon-poweroff.c b/drivers/power/reset/syscon-poweroff.c
new file mode 100644
index 000000000000..3664c4d8bd08
--- /dev/null
+++ b/drivers/power/reset/syscon-poweroff.c
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Generic Syscon Poweroff Driver
+ *
+ * Copyright (c) 2015, National Instruments Corp.
+ * Author: Moritz Fischer <moritz.fischer@ettus.com>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <poweroff.h>
+#include <mfd/syscon.h>
+
+static struct regmap *map;
+static u32 offset;
+static u32 value;
+static u32 mask;
+
+static void syscon_poweroff(struct poweroff_handler *handler)
+{
+	/* Issue the poweroff */
+	regmap_update_bits(map, offset, mask, value);
+
+	mdelay(1000);
+
+	pr_emerg("Unable to poweroff system\n");
+}
+
+static int syscon_poweroff_probe(struct device_d *dev)
+{
+	int mask_err, value_err;
+
+	map = syscon_regmap_lookup_by_phandle(dev->device_node, "regmap");
+	if (IS_ERR(map)) {
+		dev_err(dev, "unable to get syscon");
+		return PTR_ERR(map);
+	}
+
+	if (of_property_read_u32(dev->device_node, "offset", &offset)) {
+		dev_err(dev, "unable to read 'offset'");
+		return -EINVAL;
+	}
+
+	value_err = of_property_read_u32(dev->device_node, "value", &value);
+	mask_err = of_property_read_u32(dev->device_node, "mask", &mask);
+	if (value_err && mask_err) {
+		dev_err(dev, "unable to read 'value' and 'mask'");
+		return -EINVAL;
+	}
+
+	if (value_err) {
+		/* support old binding */
+		value = mask;
+		mask = 0xFFFFFFFF;
+	} else if (mask_err) {
+		/* support value without mask*/
+		mask = 0xFFFFFFFF;
+	}
+
+	poweroff_handler_register_fn(syscon_poweroff);
+
+	return 0;
+}
+
+static const struct of_device_id syscon_poweroff_of_match[] = {
+	{ .compatible = "syscon-poweroff" },
+	{}
+};
+
+static struct driver_d syscon_poweroff_driver = {
+	.name = "syscon-poweroff",
+	.of_compatible = syscon_poweroff_of_match,
+	.probe = syscon_poweroff_probe,
+};
+
+coredevice_platform_driver(syscon_poweroff_driver);
diff --git a/drivers/power/reset/syscon-reboot.c b/drivers/power/reset/syscon-reboot.c
new file mode 100644
index 000000000000..2dbb6c1ddcb8
--- /dev/null
+++ b/drivers/power/reset/syscon-reboot.c
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Generic Syscon Reboot Driver
+ *
+ * Copyright (c) 2013, Applied Micro Circuits Corporation
+ * Author: Feng Kan <fkan@apm.com>
+ */
+#include <common.h>
+#include <init.h>
+#include <restart.h>
+#include <mfd/syscon.h>
+
+struct syscon_reboot_context {
+	struct regmap *map;
+	u32 offset;
+	u32 value;
+	u32 mask;
+	struct restart_handler restart_handler;
+};
+
+static void __noreturn syscon_restart_handle(struct restart_handler *this)
+{
+	struct syscon_reboot_context *ctx =
+			container_of(this, struct syscon_reboot_context,
+					restart_handler);
+
+	/* Issue the reboot */
+	regmap_update_bits(ctx->map, ctx->offset, ctx->mask, ctx->value);
+
+	mdelay(1000);
+
+	panic("Unable to restart system\n");
+}
+
+static int syscon_reboot_probe(struct device_d *dev)
+{
+	struct syscon_reboot_context *ctx;
+	int mask_err, value_err;
+	int err;
+
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->map = syscon_regmap_lookup_by_phandle(dev->device_node, "regmap");
+	if (IS_ERR(ctx->map)) {
+		ctx->map = syscon_node_to_regmap(dev->parent->device_node);
+		if (IS_ERR(ctx->map))
+			return PTR_ERR(ctx->map);
+	}
+
+	if (of_property_read_u32(dev->device_node, "offset", &ctx->offset))
+		return -EINVAL;
+
+	value_err = of_property_read_u32(dev->device_node, "value", &ctx->value);
+	mask_err = of_property_read_u32(dev->device_node, "mask", &ctx->mask);
+	if (value_err && mask_err) {
+		dev_err(dev, "unable to read 'value' and 'mask'");
+		return -EINVAL;
+	}
+
+	if (value_err) {
+		/* support old binding */
+		ctx->value = ctx->mask;
+		ctx->mask = 0xFFFFFFFF;
+	} else if (mask_err) {
+		/* support value without mask*/
+		ctx->mask = 0xFFFFFFFF;
+	}
+
+	ctx->restart_handler.name = "syscon-reboot";
+	ctx->restart_handler.restart = syscon_restart_handle;
+	ctx->restart_handler.priority = 192;
+
+	err = restart_handler_register(&ctx->restart_handler);
+	if (err)
+		dev_err(dev, "can't register restart notifier\n");
+
+	return err;
+}
+
+static const struct of_device_id syscon_reboot_of_match[] = {
+	{ .compatible = "syscon-reboot" },
+	{}
+};
+
+static struct driver_d syscon_reboot_driver = {
+	.probe = syscon_reboot_probe,
+	.name = "syscon-reboot",
+	.of_compatible = syscon_reboot_of_match,
+};
+coredevice_platform_driver(syscon_reboot_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


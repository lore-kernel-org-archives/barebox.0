Delivery-date: Sat, 19 Jun 2021 05:47:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwv-0003PV-3M
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 05:47:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwt-0002jy-L9
	for lore@pengutronix.de; Sat, 19 Jun 2021 05:47:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9p24O+Le4ROQIRLLrHuA+LbQ0ItxFjAI+zEFzFD4Mc=; b=KwX5LehiqJ5Eop
	q/OJ4tlUQnTIVywmdBFZ6TtrCvboN2sVzaJa2nzb+44ONYFsUuky7aN4bp7m/e1UeisxGzQTHhKTv
	OeaSkRtcKZRBX4ZIfs8mkzflS/TJNoQH405mDWdkNQhQKR5SKhinqa8itPi19zSPtrlY5T5dlsB9q
	/1cetX3zELo0jnjVxH41HNkrQYMxbJbYi1nTqkiT9E89a+UwiRTIcpbOHvOtrfkdClw2fbVHHxe31
	okj75dOGaukg7eSAJKYKPauIS5+xUKXR5exlZjyUlpMGYZ0YhnGtcJDfqwlyJCP+VtrIlMagUmDCx
	iJINMB06MYV3B42/DhRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luRvb-00GCD0-P9; Sat, 19 Jun 2021 03:45:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luRv7-00GBxp-8S
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 03:45:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv5-0001v6-QT; Sat, 19 Jun 2021 05:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv4-00029f-Ui; Sat, 19 Jun 2021 05:45:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Jun 2021 05:45:09 +0200
Message-Id: <20210619034516.6737-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619034516.6737-1-a.fatoum@pengutronix.de>
References: <20210619034516.6737-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_204521_517557_B7CA7CB2 
X-CRM114-Status: GOOD (  20.76  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/13] power: reset: port Linux generic NVMEM reboot mode
 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Not all systems can realize their reboot mode protocol via the syscon
driver:

 - There might be no registers available for use that survive a warm
   reset
 - There might be no warm resets and every reset resets is a cold one

For these systems, the reboot mode can instead be stored in NVMEM.
Port over the Linux nvmem-reboot-mode driver to make this possible.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/power/reset/Kconfig             | 10 +++
 drivers/power/reset/Makefile            |  1 +
 drivers/power/reset/nvmem-reboot-mode.c | 83 +++++++++++++++++++++++++
 3 files changed, 94 insertions(+)
 create mode 100644 drivers/power/reset/nvmem-reboot-mode.c

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index dec1482ccd0c..e4151d8bc608 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -13,6 +13,16 @@ config SYSCON_REBOOT_MODE
 	  Say y here will enable reboot mode driver. This will
 	  get reboot mode arguments and store it in SYSCON mapped
 	  register, then the bootloader can read it to take different
+
+config NVMEM_REBOOT_MODE
+	bool "Generic NVMEM reboot mode driver"
+	depends on OFDEVICE
+	depends on NVMEM
+	select REBOOT_MODE
+	help
+	  Say y here will enable reboot mode driver. This will
+	  get reboot mode arguments and store it in a NVMEM cell,
+	  then the bootloader can read it and take different
 	  action according to the mode.
 
 config POWER_RESET_SYSCON
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
index 33d29d2d9546..10d6f2a41e22 100644
--- a/drivers/power/reset/Makefile
+++ b/drivers/power/reset/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_REBOOT_MODE) += reboot-mode.o
 obj-$(CONFIG_SYSCON_REBOOT_MODE) += syscon-reboot-mode.o
+obj-$(CONFIG_NVMEM_REBOOT_MODE) += nvmem-reboot-mode.o
 obj-$(CONFIG_POWER_RESET_SYSCON) += syscon-reboot.o
 obj-$(CONFIG_POWER_RESET_SYSCON_POWEROFF) += syscon-poweroff.o
 obj-$(CONFIG_POWER_RESET_GPIO) += gpio-poweroff.o
diff --git a/drivers/power/reset/nvmem-reboot-mode.c b/drivers/power/reset/nvmem-reboot-mode.c
new file mode 100644
index 000000000000..b82b37d642e7
--- /dev/null
+++ b/drivers/power/reset/nvmem-reboot-mode.c
@@ -0,0 +1,83 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (c) Vaisala Oyj. All rights reserved.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <of.h>
+#include <linux/nvmem-consumer.h>
+#include <linux/reboot-mode.h>
+
+struct nvmem_reboot_mode {
+	struct reboot_mode_driver reboot;
+	struct nvmem_cell *cell;
+};
+
+static int nvmem_reboot_mode_write(struct reboot_mode_driver *reboot,
+				   const u32 *_magic)
+{
+	struct nvmem_reboot_mode *nvmem_rbm;
+	u32 magic = *_magic;
+	int ret;
+
+	nvmem_rbm = container_of(reboot, struct nvmem_reboot_mode, reboot);
+
+	ret = nvmem_cell_write(nvmem_rbm->cell, &magic, sizeof(magic));
+	if (ret < 0)
+		dev_err(reboot->dev, "update reboot mode bits failed: %pe\n", ERR_PTR(ret));
+	else if (ret != 4)
+		ret = -EIO;
+	else
+		ret = 0;
+
+	return ret;
+}
+
+static int nvmem_reboot_mode_probe(struct device_d *dev)
+{
+	struct nvmem_reboot_mode *nvmem_rbm;
+	struct nvmem_cell *cell;
+	void *magicbuf;
+	size_t len;
+	int ret;
+
+	cell = nvmem_cell_get(dev, "reboot-mode");
+	if (IS_ERR(cell)) {
+		ret = PTR_ERR(cell);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "failed to get the nvmem cell reboot-mode: %pe\n", cell);
+		return ret;
+	}
+
+	nvmem_rbm = xzalloc(sizeof(*nvmem_rbm));
+
+	nvmem_rbm->cell = cell;
+	nvmem_rbm->reboot.dev = dev;
+	nvmem_rbm->reboot.write = nvmem_reboot_mode_write;
+	nvmem_rbm->reboot.priority = 200;
+
+	magicbuf = nvmem_cell_read(nvmem_rbm->cell, &len);
+	if (IS_ERR(magicbuf) || len != 4) {
+		dev_err(dev, "error reading reboot mode: %pe\n", magicbuf);
+		return PTR_ERR(magicbuf);
+	}
+
+	ret = reboot_mode_register(&nvmem_rbm->reboot, magicbuf, 1);
+	if (ret)
+		dev_err(dev, "can't register reboot mode\n");
+
+	return ret;
+}
+
+static const struct of_device_id nvmem_reboot_mode_of_match[] = {
+	{ .compatible = "nvmem-reboot-mode" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d nvmem_reboot_mode_driver = {
+	.probe = nvmem_reboot_mode_probe,
+	.name = "nvmem-reboot-mode",
+	.of_compatible = nvmem_reboot_mode_of_match,
+};
+coredevice_platform_driver(nvmem_reboot_mode_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


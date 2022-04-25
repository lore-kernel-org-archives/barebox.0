Delivery-date: Mon, 25 Apr 2022 08:27:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nisBu-00ERQT-8K
	for lore@lore.pengutronix.de; Mon, 25 Apr 2022 08:27:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nisBr-0000FK-A5
	for lore@pengutronix.de; Mon, 25 Apr 2022 08:27:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EueEGLPzUHwjjxWFwkaL5cgmpiuCu37IWLWBvfQ6OZo=; b=e1nDtVUNBncphZ
	ljLBb+V2JYl/55szrolRLpwOd6YClSj4Ho43JB930X9U76ahEQ94SBaWecDD0nKgz0/6bIbqHoHFQ
	xjiwSm03442bceBoOEJFNAUruy6TU/1DU6X+NkWV/Qh8irPzRhBJUq0EaKDtGyOHZoSbfU2AEnK2D
	7Z6zFFdAroJVr3QthgQ+gWZPn9aenC/Orh9ih5zyzezQgCutCDhGjfJ6RUklCKlGDTXX2mg9SOWcY
	DjJGY+0mHHfZwQc+tGFy4eTt815kYVcnuv4b9Qeq8gbdWtK7ByvY3MrXPUQiT7pESktkd4wJg9dU8
	nnaPce28GGXpjZe9Kvpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nisAK-008Tc5-FJ; Mon, 25 Apr 2022 06:25:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nisAB-008TZS-Pt
 for barebox@lists.infradead.org; Mon, 25 Apr 2022 06:25:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nisA4-0008Kg-5c; Mon, 25 Apr 2022 08:25:28 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nisA4-0055z7-Sv; Mon, 25 Apr 2022 08:25:27 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nisA2-0004Ys-P0; Mon, 25 Apr 2022 08:25:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Apr 2022 08:25:22 +0200
Message-Id: <20220425062523.17478-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425062523.17478-1-a.fatoum@pengutronix.de>
References: <20220425062523.17478-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220424_232535_908551_E5EFC018 
X-CRM114-Status: GOOD (  17.64  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 2/3] clk: add BCM2835 auxiliary peripheral clock
 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Commit f6ce1103fdc4 ("ARM: rpi: move clk support to a separate driver")
replaced board code setting up clocks with clkdev_add_physbase() with a
proper cprman driver that registers fixed clocks and can be referenced
from device tree.

It was not fully equivalent though, because the mini UART's clock was no
longer registered as that is provided by a different clock controller.

Import the Linux v5.17 bcm2835-aux-clk driver to fix console usage on
Raspberry Pi 3b.

Fixes: f6ce1103fdc4 ("ARM: rpi: move clk support to a separate driver")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/Makefile              |  1 +
 drivers/clk/bcm/Makefile          |  2 +
 drivers/clk/bcm/clk-bcm2835-aux.c | 66 +++++++++++++++++++++++++++++++
 3 files changed, 69 insertions(+)
 create mode 100644 drivers/clk/bcm/Makefile
 create mode 100644 drivers/clk/bcm/clk-bcm2835-aux.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index ee503c1edb5f..baf452de9873 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -26,4 +26,5 @@ obj-$(CONFIG_CLK_SIFIVE)	+= sifive/
 obj-$(CONFIG_SOC_STARFIVE)	+= starfive/
 obj-$(CONFIG_COMMON_CLK_STM32F)		+= clk-stm32f4.o
 obj-$(CONFIG_MACH_RPI_COMMON)	+= clk-rpi.o
+obj-y				+= bcm/
 obj-$(CONFIG_COMMON_CLK_SCMI)	+= clk-scmi.o
diff --git a/drivers/clk/bcm/Makefile b/drivers/clk/bcm/Makefile
new file mode 100644
index 000000000000..1539e9f592a8
--- /dev/null
+++ b/drivers/clk/bcm/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_ARCH_BCM283X)	+= clk-bcm2835-aux.o
diff --git a/drivers/clk/bcm/clk-bcm2835-aux.c b/drivers/clk/bcm/clk-bcm2835-aux.c
new file mode 100644
index 000000000000..385cfd5d3f06
--- /dev/null
+++ b/drivers/clk/bcm/clk-bcm2835-aux.c
@@ -0,0 +1,66 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2015 Broadcom
+ */
+
+#include <linux/clk.h>
+#include <io.h>
+#include <of_address.h>
+#include <driver.h>
+#include <init.h>
+#include <dt-bindings/clock/bcm2835-aux.h>
+
+#define BCM2835_AUXIRQ		0x00
+#define BCM2835_AUXENB		0x04
+
+static int bcm2835_aux_clk_probe(struct device_d *dev)
+{
+	struct clk_hw_onecell_data *onecell;
+	const char *parent;
+	struct clk *parent_clk;
+	void __iomem *reg, *gate;
+
+	parent_clk = clk_get(dev, NULL);
+	if (IS_ERR(parent_clk))
+		return PTR_ERR(parent_clk);
+	parent = __clk_get_name(parent_clk);
+
+	reg = of_iomap(dev->device_node, 0);
+	if (!reg)
+		return -ENOMEM;
+
+	onecell = kmalloc(struct_size(onecell, hws, BCM2835_AUX_CLOCK_COUNT),
+			  GFP_KERNEL);
+	if (!onecell)
+		return -ENOMEM;
+	onecell->num = BCM2835_AUX_CLOCK_COUNT;
+
+	gate = reg + BCM2835_AUXENB;
+	onecell->hws[BCM2835_AUX_CLOCK_UART] =
+		clk_hw_register_gate(dev, "aux_uart", parent, 0, gate, 0, 0, NULL);
+
+	onecell->hws[BCM2835_AUX_CLOCK_SPI1] =
+		clk_hw_register_gate(dev, "aux_spi1", parent, 0, gate, 1, 0, NULL);
+
+	onecell->hws[BCM2835_AUX_CLOCK_SPI2] =
+		clk_hw_register_gate(dev, "aux_spi2", parent, 0, gate, 2, 0, NULL);
+
+	return of_clk_add_hw_provider(dev->device_node, of_clk_hw_onecell_get,
+				      onecell);
+}
+
+static const struct of_device_id bcm2835_aux_clk_of_match[] = {
+	{ .compatible = "brcm,bcm2835-aux", },
+	{},
+};
+
+static struct driver_d bcm2835_aux_clk_driver = {
+	.name = "bcm2835-aux-clk",
+	.of_compatible = bcm2835_aux_clk_of_match,
+	.probe          = bcm2835_aux_clk_probe,
+};
+core_platform_driver(bcm2835_aux_clk_driver);
+
+MODULE_AUTHOR("Eric Anholt <eric@anholt.net>");
+MODULE_DESCRIPTION("BCM2835 auxiliary peripheral clock driver");
+MODULE_LICENSE("GPL");
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


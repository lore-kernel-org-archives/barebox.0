Delivery-date: Sat, 19 Jun 2021 06:52:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyR-0004UH-NF
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:52:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyP-0000bv-U3
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:52:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fP93paK6ADPekeZeReIXqs+NQGeQCg5G8UwZw/AHnAk=; b=NWNzphfqZJqKsj
	afdxwLcazJ4SFGeQkg8ieRGmV0pJTVRWXTPUosPDZC97LRi4gTlaxZgfrRYdwT+MP+3RwvBwmhel7
	Td4C2qmtmXBYPg1Rt/w1jqEi6wehHEyzcO3lUrmfcbpxItBenQ2zWYzn6z6Yk1MjNqiUHlIBZwpZo
	r5WSRu9w14g4LrqVJs4tO2ISJEQgLvafMcqY2AOrXeayShKzzat0O151laB7zLY8d+hqhrf5qnnG+
	1lm0RBijG51eggKXdVfNYeniAB3f7Vh8F0NnEo9t52eOzmU4/C5BdMpdl7h0BsQu0FWWPMlpSWCBf
	Ia4AZl2KqvrThcDplmaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSwz-00GHnC-TE; Sat, 19 Jun 2021 04:51:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwi-00GHfm-OO
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008M9-BW; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001L1-Qa; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:38 +0200
Message-Id: <20210619045055.779-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215104_887382_5AD641B6 
X-CRM114-Status: GOOD (  22.62  )
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
Subject: [PATCH v2 12/29] drivers: soc: sifive: add basic L2 cache controller
 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SiFive SoCs are cache coherent with respect to other DMA masters,
so there is no need to explicitly flush cache lines.
Incoming StarFive SoC uses SiFive CPU and L2 cache controller,
but is cache-incoherent and thus needs the maintenance for DMA.

Add a basic driver that exports the cache flush function for
SoC-specific drivers to use.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig.socs              |   5 ++
 arch/riscv/include/asm/barrier.h     |  27 +++++++
 drivers/Makefile                     |   2 +-
 drivers/soc/Makefile                 |   4 +
 drivers/soc/sifive/Makefile          |   1 +
 drivers/soc/sifive/sifive_l2_cache.c | 116 +++++++++++++++++++++++++++
 include/soc/sifive/l2_cache.h        |  10 +++
 7 files changed, 164 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/barrier.h
 create mode 100644 drivers/soc/Makefile
 create mode 100644 drivers/soc/sifive/Makefile
 create mode 100644 drivers/soc/sifive/sifive_l2_cache.c
 create mode 100644 include/soc/sifive/l2_cache.h

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 6ec2315d4e70..b4fdfd9741cd 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -64,5 +64,10 @@ config SOC_STARFIVE_JH7100
 
 endif
 
+comment "CPU features"
+
+config SIFIVE_L2
+	bool "SiFive L2 cache controller"
+	depends on CPU_SIFIVE
 
 endmenu
diff --git a/arch/riscv/include/asm/barrier.h b/arch/riscv/include/asm/barrier.h
new file mode 100644
index 000000000000..eff529307a15
--- /dev/null
+++ b/arch/riscv/include/asm/barrier.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Based on arch/arm/include/asm/barrier.h
+ *
+ * Copyright (C) 2012 ARM Ltd.
+ * Copyright (C) 2013 Regents of the University of California
+ * Copyright (C) 2017 SiFive
+ */
+
+#ifndef _ASM_RISCV_BARRIER_H
+#define _ASM_RISCV_BARRIER_H
+
+#ifndef __ASSEMBLY__
+
+#define nop()		__asm__ __volatile__ ("nop")
+
+#define RISCV_FENCE(p, s) \
+	__asm__ __volatile__ ("fence " #p "," #s : : : "memory")
+
+/* These barriers need to enforce ordering on both devices or memory. */
+#define mb()		RISCV_FENCE(iorw,iorw)
+#define rmb()		RISCV_FENCE(ir,ir)
+#define wmb()		RISCV_FENCE(ow,ow)
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* _ASM_RISCV_BARRIER_H */
diff --git a/drivers/Makefile b/drivers/Makefile
index be5b0b3b04c9..aeb097e1f5ff 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -39,7 +39,7 @@ obj-$(CONFIG_HAB) += hab/
 obj-$(CONFIG_CRYPTO_HW) += crypto/
 obj-$(CONFIG_AIODEV) += aiodev/
 obj-y	+= memory/
-obj-y	+= soc/imx/
+obj-y	+= soc/
 obj-y	+= nvme/
 obj-y	+= ddr/
 obj-y	+= power/
diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
new file mode 100644
index 000000000000..b787379586ae
--- /dev/null
+++ b/drivers/soc/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-y	+= imx/
+obj-$(CONFIG_CPU_SIFIVE)	+= sifive/
diff --git a/drivers/soc/sifive/Makefile b/drivers/soc/sifive/Makefile
new file mode 100644
index 000000000000..e8113c66f576
--- /dev/null
+++ b/drivers/soc/sifive/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_SIFIVE_L2) += sifive_l2_cache.o
diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
new file mode 100644
index 000000000000..96d6d4ec4773
--- /dev/null
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -0,0 +1,116 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * SiFive L2 cache controller Driver
+ *
+ * Copyright (C) 2018-2019 SiFive, Inc.
+ *
+ */
+
+#define pr_fmt(fmt) "sifive-l2: " fmt
+
+#include <io.h>
+#include <printk.h>
+#include <stdio.h>
+#include <driver.h>
+#include <init.h>
+#include <soc/sifive/l2_cache.h>
+#include <asm/barrier.h>
+
+#define SIFIVE_L2_DIRECCFIX_LOW 0x100
+#define SIFIVE_L2_DIRECCFIX_HIGH 0x104
+#define SIFIVE_L2_DIRECCFIX_COUNT 0x108
+
+#define SIFIVE_L2_DIRECCFAIL_LOW 0x120
+#define SIFIVE_L2_DIRECCFAIL_HIGH 0x124
+#define SIFIVE_L2_DIRECCFAIL_COUNT 0x128
+
+#define SIFIVE_L2_DATECCFIX_LOW 0x140
+#define SIFIVE_L2_DATECCFIX_HIGH 0x144
+#define SIFIVE_L2_DATECCFIX_COUNT 0x148
+
+#define SIFIVE_L2_DATECCFAIL_LOW 0x160
+#define SIFIVE_L2_DATECCFAIL_HIGH 0x164
+#define SIFIVE_L2_DATECCFAIL_COUNT 0x168
+
+#define SIFIVE_L2_FLUSH64 0x200
+
+#define SIFIVE_L2_CONFIG 0x00
+#define SIFIVE_L2_WAYENABLE 0x08
+#define SIFIVE_L2_ECCINJECTERR 0x40
+
+#define SIFIVE_L2_MAX_ECCINTR 4
+
+#define SIFIVE_L2_FLUSH64_LINE_LEN 64
+
+static void __iomem *l2_base = NULL;
+
+static void sifive_l2_config_read(struct device_d *dev)
+{
+	u32 regval, val;
+
+	printf("Cache configuration:\n");
+
+	regval = readl(l2_base + SIFIVE_L2_CONFIG);
+	val = regval & 0xFF;
+	printf("  #Banks: %d\n", val);
+	val = (regval & 0xFF00) >> 8;
+	printf("  #Ways per bank: %d\n", val);
+	val = (regval & 0xFF0000) >> 16;
+	printf("  #Sets per bank: %llu\n", 1llu << val);
+	val = (regval & 0xFF000000) >> 24;
+	printf("  #Bytes per cache block: %llu\n", 1llu << val);
+
+	regval = readl(l2_base + SIFIVE_L2_WAYENABLE);
+	printf("  #Index of the largest way enabled: %d\n", regval);
+}
+
+void sifive_l2_flush64_range(dma_addr_t start, dma_addr_t end)
+{
+	unsigned long line;
+
+	start = ALIGN_DOWN(start, 64);
+	end = ALIGN(end, 64);
+
+	if (WARN_ON(!l2_base))
+		return;
+
+	if (start == end)
+		return;
+
+	mb();
+	for (line = start; line < end; line += SIFIVE_L2_FLUSH64_LINE_LEN) {
+		writeq(line, l2_base + SIFIVE_L2_FLUSH64);
+		mb();
+	}
+}
+
+static int sifive_l2_probe(struct device_d *dev)
+{
+	struct resource *iores;
+
+	if (l2_base)
+		return -EBUSY;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	l2_base = IOMEM(iores->start);
+
+	dev->info = sifive_l2_config_read;
+
+	return 0;
+}
+
+static const struct of_device_id sifive_l2_ids[] = {
+	{ .compatible = "sifive,fu540-c000-ccache" },
+	{ .compatible = "sifive,fu740-c000-ccache" },
+	{ /* end of table */ },
+};
+
+static struct driver_d sifive_l2_driver = {
+	.name = "sfive-l2cache",
+	.probe = sifive_l2_probe,
+	.of_compatible = sifive_l2_ids,
+};
+postcore_platform_driver(sifive_l2_driver);
diff --git a/include/soc/sifive/l2_cache.h b/include/soc/sifive/l2_cache.h
new file mode 100644
index 000000000000..0da655cd4e30
--- /dev/null
+++ b/include/soc/sifive/l2_cache.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __SOC_SIFIVE_L2_CACHE_H_
+#define __SOC_SIFIVE_L2_CACHE_H_
+
+#include <linux/types.h>
+
+void sifive_l2_flush64_range(dma_addr_t start, dma_addr_t end);
+
+#endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


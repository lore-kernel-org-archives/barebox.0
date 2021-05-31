Delivery-date: Mon, 31 May 2021 09:42:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncZa-0003H7-Bw
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:42:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncZZ-0001ef-3c
	for lore@pengutronix.de; Mon, 31 May 2021 09:42:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+98xs+7Eea3bbTiIeb5U7EmX8hLI5W8y/qzvRXhjH08=; b=WdyTraQ91cq25E
	2dt+m/CpsjRzXi85hGoCKw+YrQDj5qxE8Q7Seup7juzUZfVF84rLhll/PI6AvioACJak33ZNnZV0w
	5WuvpE1uQ3bm44VG1b9mQMPG42rNXQOLjlpeQO7eY+7w5GpxFttQWoG5b/84r45kq/8d1VdCqIAqs
	U7DDvv12OFoIBsBsUXUvgSabUtx8Vy3bLUlTdqOv/fEl31C1EohOudEsPUwSJnlb1Zt96oj7gLFwf
	ZSGqFcT6X3aRng7aGjrDGuxoOQ+33Oajl8/lW9cYYfz7xhhGrhbAcUM04oP1TC8r3Lh6EFy0l65/Q
	nI+KiEjUnsVUupOusTDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncYD-00BEc3-Tg; Mon, 31 May 2021 07:41:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncVd-00BCqE-Sd
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:38:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVE-00080J-EL; Mon, 31 May 2021 09:38:24 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVD-00045w-1c; Mon, 31 May 2021 09:38:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:38:09 +0200
Message-Id: <20210531073821.15257-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531073821.15257-1-a.fatoum@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_003850_144315_58CF533F 
X-CRM114-Status: GOOD (  23.83  )
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
Subject: [PATCH 08/20] soc: add support for StarFive JH7100 incoherent
 interconnect
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The preproduction JH7100 used in the BeagleV beta does not ensure cache
coherence between CPU and some DMA masters like the Ethernet MAC.

Fix this for streaming DMA mappings by implementing cache cleaning and
discarding.  The Flush64 primitive can be used for both as it will
invalidate after flushing and not write-back clean lines.

Coherent DMA mapping will be implemented using allocation from uncached
SRAM in a follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig.socs              |   5 +
 arch/riscv/include/asm/barrier.h     |  27 ++++++
 drivers/Makefile                     |   2 +-
 drivers/soc/Makefile                 |   4 +
 drivers/soc/sifive/Makefile          |   1 +
 drivers/soc/sifive/sifive_l2_cache.c | 137 +++++++++++++++++++++++++++
 6 files changed, 175 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/barrier.h
 create mode 100644 drivers/soc/Makefile
 create mode 100644 drivers/soc/sifive/Makefile
 create mode 100644 drivers/soc/sifive/sifive_l2_cache.c

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index d2970ba1d67f..3e4cd3cdad59 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -37,6 +37,11 @@ config SOC_SIFIVE
 
 if SOC_SIFIVE
 
+config SIFIVE_L2
+	bool
+	help
+	  Selected by SoCs with cache incoherent interconnects
+
 config BOARD_HIFIVE
 	bool "HiFive"
 	depends on ARCH_RV64I
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
index 000000000000..06b8c2a504af
--- /dev/null
+++ b/drivers/soc/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-y	+= imx/
+obj-$(CONFIG_SOC_SIFIVE)	+= sifive/
diff --git a/drivers/soc/sifive/Makefile b/drivers/soc/sifive/Makefile
new file mode 100644
index 000000000000..e8113c66f576
--- /dev/null
+++ b/drivers/soc/sifive/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_SIFIVE_L2) += sifive_l2_cache.o
diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
new file mode 100644
index 000000000000..1ac39c743681
--- /dev/null
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -0,0 +1,137 @@
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
+#include <of.h>
+#include <asm/cache.h>
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
+static void sifive_l2_flush64_range(dma_addr_t start, dma_addr_t end)
+{
+	unsigned long line;
+
+	start = ALIGN_DOWN(start, 64);
+	end = ALIGN(end, 64);
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
+struct cache_ops sifive_l2_ops = {
+	.dma_flush_range = sifive_l2_flush64_range,
+	.dma_inv_range = sifive_l2_flush64_range,
+};
+
+/* Normally, L2 should be kept coherent between SiFive CPUs and other
+ * DMA masters on the SoC. If that's not the case, add it to the table
+ * here, so barebox dma_map_single and co. flush and invalidate as
+ * necessary.
+ * Note: If barebox is allocating from cacheable memory, you will
+ * need a driver to set dma_coherent_ops as well.
+ */
+static const struct of_device_id incoherent_soc_dt_ids[] = {
+	{ "starfive,jh7100" },
+	{ /* sentinel */ },
+};
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
+	if (of_match_node(incoherent_soc_dt_ids, of_get_root_node())) {
+		riscv_cache_set_ops(&sifive_l2_ops);
+		pr_info("enabling L2 cache ops\n");
+	}
+
+	return 0;
+}
+
+static const struct of_device_id sifive_l2_ids[] = {
+	{ .compatible = "sifive,fu540-c000-ccache" },
+	{ .compatible = "sifive,fu740-c000-ccache" },
+	{ .compatible = "starfive,ccache0" },
+	{ /* end of table */ },
+};
+
+static struct driver_d sifive_l2_driver = {
+	.name = "sfive-l2cache",
+	.probe = sifive_l2_probe,
+	.of_compatible = sifive_l2_ids,
+};
+postcore_platform_driver(sifive_l2_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


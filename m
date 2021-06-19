Delivery-date: Sat, 19 Jun 2021 06:54:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSze-0004Yi-1l
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:54:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSzb-0001AS-3S
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:54:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qETNZUFHLGF/33/WwiGxajyJnt+L2PgcNZdRFFfKM7Q=; b=US/UOKkEKyFUjQ
	KRP2tKvIgXRnuPVr6gVOpVcj0ZVio2wDMkdSxkrX4AshPf8kHD2Qj0VSZCQVEWgQZD03KXSoWnH3q
	A4/IgMjTidTxGlSQvSS1/Dn07ff9g3k3NEOVvCxUWicYuZ/PLb6o+Gid2Uf3Ypq1vBA8LoqaxIumg
	ehMWzQ+a1EqNZBy5e6P9XdEUM12QDUlOVTGOZHxXMAdg+0vZo2B19PE3WLcDfPdG4Vj4yv6jkeZrM
	VQ2l2UTyD/mbRJAsqOkQhrjytli+x/lbNZ59/jadnEFe80SWXeAdcA6+n82OL+Xd0rd2uPxlGoThG
	Rv3wUSMm7gxQTIuZ6x+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSxz-00GIRi-SW; Sat, 19 Jun 2021 04:52:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwq-00GHjx-MX
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008MA-AK; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001L4-R3; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:39 +0200
Message-Id: <20210619045055.779-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215112_800471_F91FD2B4 
X-CRM114-Status: GOOD (  20.26  )
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
Subject: [PATCH v2 13/29] soc: starfive: add support for JH7100 incoherent
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
 arch/riscv/Kconfig.socs              |  5 +++
 drivers/soc/Makefile                 |  1 +
 drivers/soc/sifive/sifive_l2_cache.c |  1 +
 drivers/soc/starfive/Makefile        |  1 +
 drivers/soc/starfive/jh7100_dma.c    | 55 ++++++++++++++++++++++++++++
 5 files changed, 63 insertions(+)
 create mode 100644 drivers/soc/starfive/Makefile
 create mode 100644 drivers/soc/starfive/jh7100_dma.c

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index b4fdfd9741cd..c112fcc82e1a 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -61,6 +61,11 @@ config SOC_STARFIVE_JH71XX
 config SOC_STARFIVE_JH7100
 	bool
 	select SOC_STARFIVE_JH71XX
+	select SIFIVE_L2
+	help
+	  Unlike JH7110 and later, CPU on the JH7100 are not cache-coherent
+	  with respect to DMA masters like GMAC and DW MMC controller.
+	  Select this if barebox needs to do DMA on this SoC.
 
 endif
 
diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index b787379586ae..c3499c0c7f30 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -2,3 +2,4 @@
 
 obj-y	+= imx/
 obj-$(CONFIG_CPU_SIFIVE)	+= sifive/
+obj-$(CONFIG_SOC_STARFIVE)	+= starfive/
diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index 96d6d4ec4773..9e54474f7ae8 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -105,6 +105,7 @@ static int sifive_l2_probe(struct device_d *dev)
 static const struct of_device_id sifive_l2_ids[] = {
 	{ .compatible = "sifive,fu540-c000-ccache" },
 	{ .compatible = "sifive,fu740-c000-ccache" },
+	{ .compatible = "starfive,ccache0" },
 	{ /* end of table */ },
 };
 
diff --git a/drivers/soc/starfive/Makefile b/drivers/soc/starfive/Makefile
new file mode 100644
index 000000000000..72504b3bef26
--- /dev/null
+++ b/drivers/soc/starfive/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_SOC_STARFIVE_JH7100) += jh7100_dma.o
diff --git a/drivers/soc/starfive/jh7100_dma.c b/drivers/soc/starfive/jh7100_dma.c
new file mode 100644
index 000000000000..a1dc48e73f6e
--- /dev/null
+++ b/drivers/soc/starfive/jh7100_dma.c
@@ -0,0 +1,55 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <asm/dma.h>
+#include <soc/sifive/l2_cache.h>
+
+#define SDRAM_CACHED_BASE	0x80000000
+#define SDRAM_UNCACHED_BASE	0x1000000000
+
+static inline void *jh7100_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+{
+	dma_addr_t cpu_base;
+	void *ret;
+
+	ret = xmemalign(PAGE_SIZE, size);
+
+	memset(ret, 0, size);
+
+	cpu_base = (dma_addr_t)ret;
+
+	if (dma_handle)
+		*dma_handle = cpu_base;
+
+	sifive_l2_flush64_range(cpu_base, cpu_base + size);
+
+	return ret - SDRAM_CACHED_BASE + SDRAM_UNCACHED_BASE;
+
+}
+
+static inline void jh7100_free_coherent(void *vaddr, dma_addr_t dma_handle, size_t size)
+{
+	free((void *)dma_handle);
+}
+
+static const struct dma_ops jh7100_dma_ops = {
+	.alloc_coherent = jh7100_alloc_coherent,
+	.free_coherent = jh7100_free_coherent,
+	.flush_range = sifive_l2_flush64_range,
+	.inv_range = sifive_l2_flush64_range,
+};
+
+static int jh7100_dma_init(void)
+{
+	/* board drivers can claim the machine compatible, so no driver here */
+	if (!of_machine_is_compatible("starfive,jh7100"))
+		return 0;
+
+	dma_set_ops(&jh7100_dma_ops);
+
+	return 0;
+}
+mmu_initcall(jh7100_dma_init);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


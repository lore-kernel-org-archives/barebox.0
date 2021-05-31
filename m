Delivery-date: Mon, 31 May 2021 09:42:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncZQ-0003G0-8k
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:42:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncZO-0001bf-MG
	for lore@pengutronix.de; Mon, 31 May 2021 09:42:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUSQV5UnBwHdsPnz3zDHuf8rLhAZnZthke7OiDzV8yk=; b=3vbGDBDi5qruVa
	tpZvwq1jcjkzInV1JKWVFqA4/ZkxqH4ynEKdatuDw4dUzxjEfZgUiDAzQZzDdqftHWJnReEctCuq5
	a9mxyFQUyGBXHccvSB5Zan3gFuwuJZDFWfBt8DTKKc1dGqwHxCazG9k7BBoUnWBoaSZlR2ZRJ5rGm
	7i9uB4yzGxMrya8X3aegNqsbCAL7oBj5cw2PskXEbJF8gGHTCNK65ivki7FrnPDSejSc9EK53o2/8
	11BCrK5cFlBRYJiYwcWPvWWc3Z8BPMKJvMFzGbqyXkcZKSErF7dbBUGzQRmaGowRQpNQ6GlQxmFR5
	EJtpqFaC9VA3m80EbXZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncXr-00BEAa-JU; Mon, 31 May 2021 07:41:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncVV-00BClt-SG
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:38:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVE-00080M-Cr; Mon, 31 May 2021 09:38:24 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVD-000465-2w; Mon, 31 May 2021 09:38:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:38:12 +0200
Message-Id: <20210531073821.15257-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531073821.15257-1-a.fatoum@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_003842_002439_E3320372 
X-CRM114-Status: GOOD (  19.52  )
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
Subject: [PATCH 11/20] dma: support marking SRAM for coherent DMA use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The RISC-V architecture allows overriding the dma_alloc_coherent and
dma_free_coherent. Allow this to be controlled by device tree.

Cache-coherent SoCs won't need this, but incoherent ones that have
uncached regions can register them here.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig              |   4 ++
 common/Makefile             |   3 +-
 drivers/dma/Kconfig         |   6 ++
 drivers/dma/Makefile        |   1 +
 drivers/dma/coherent-pool.c | 120 ++++++++++++++++++++++++++++++++++++
 5 files changed, 133 insertions(+), 1 deletion(-)
 create mode 100644 drivers/dma/coherent-pool.c

diff --git a/common/Kconfig b/common/Kconfig
index ce349d4ebbf6..dbbcbb946fff 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -303,6 +303,9 @@ config EXPERIMENTAL
 	bool
 	prompt "Prompt for experimental code"
 
+config TLSF
+	bool
+
 choice
 	prompt "malloc implementation"
 
@@ -311,6 +314,7 @@ config MALLOC_DLMALLOC
 
 config MALLOC_TLSF
 	bool "tlsf"
+	select TLSF
 
 config MALLOC_DUMMY
 	bool "dummy malloc"
diff --git a/common/Makefile b/common/Makefile
index 382a4f661f67..0777d2030c99 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -40,7 +40,8 @@ obj-$(CONFIG_GLOBALVAR)		+= globalvar.o
 obj-$(CONFIG_GREGORIAN_CALENDER) += date.o
 obj-$(CONFIG_KALLSYMS)		+= kallsyms.o
 obj-$(CONFIG_MALLOC_DLMALLOC)	+= dlmalloc.o
-obj-$(CONFIG_MALLOC_TLSF)	+= tlsf_malloc.o tlsf.o calloc.o
+obj-$(CONFIG_TLSF)		+= tlsf.o
+obj-$(CONFIG_MALLOC_TLSF)	+= tlsf_malloc.o calloc.o
 KASAN_SANITIZE_tlsf.o := n
 obj-$(CONFIG_MALLOC_DUMMY)	+= dummy_malloc.o calloc.o
 obj-$(CONFIG_MEMINFO)		+= meminfo.o
diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
index c75fc8b9811f..6bc915585fbe 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -1,5 +1,11 @@
 menu "DMA support"
 
+config DMA_COHERENT_POOLS
+	bool
+	depends on RISCV
+	select TLSF
+	imply SRAM
+
 config MXS_APBH_DMA
 	tristate "MXS APBH DMA ENGINE"
 	depends on ARCH_IMX23 || ARCH_IMX28 || ARCH_IMX6
diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
index 49d6d6573f4f..5503a4af0049 100644
--- a/drivers/dma/Makefile
+++ b/drivers/dma/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_MXS_APBH_DMA)	+= apbh_dma.o
 obj-$(CONFIG_HAS_DMA)		+= map.o
+obj-$(CONFIG_DMA_COHERENT_POOLS)	+= coherent-pool.o
diff --git a/drivers/dma/coherent-pool.c b/drivers/dma/coherent-pool.c
new file mode 100644
index 000000000000..524283be711f
--- /dev/null
+++ b/drivers/dma/coherent-pool.c
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
+ */
+
+#define pr_fmt(fmt) "dma-coherent-pool: " fmt
+
+#include <common.h>
+#include <asm/dma.h>
+#include <linux/list.h>
+#include <errno.h>
+#include <tlsf.h>
+
+struct dma_coherent_pool {
+	tlsf_t handle;
+	const struct resource *resource;
+	struct list_head list;
+};
+
+static LIST_HEAD(pools);
+
+static void *pool_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+{
+	struct dma_coherent_pool *pool;
+	void *ret = NULL;
+
+	list_for_each_entry(pool, &pools, list) {
+		ret = tlsf_memalign(pool->handle, DMA_ALIGNMENT, size);
+		if (!ret)
+			continue;
+	}
+
+	BUG_ON(!ret);
+
+	memset(ret, 0, size);
+
+	if (dma_handle)
+		*dma_handle = (dma_addr_t)ret;
+
+	pr_debug("alloc(%zu) == %p\n", size, ret);
+
+	return ret;
+}
+
+static void pool_free_coherent(void *vaddr, dma_addr_t dma_handle, size_t size)
+{
+	resource_size_t addr = (resource_size_t)vaddr;
+	struct dma_coherent_pool *pool;
+
+	list_for_each_entry(pool, &pools, list) {
+		if (pool->resource->start <= addr && addr <= pool->resource->end) {
+			tlsf_free(pool->handle, vaddr);
+			return;
+		}
+	}
+
+	pr_warn("freeing invalid region: %p\n", vaddr);
+}
+
+static const struct dma_coherent_ops pool_ops = {
+	.alloc = pool_alloc_coherent,
+	.free = pool_free_coherent,
+};
+
+static int compare_pool_sizes(struct list_head *_a, struct list_head *_b)
+{
+	struct dma_coherent_pool *a = list_entry(_a, struct dma_coherent_pool, list);
+	struct dma_coherent_pool *b = list_entry(_b, struct dma_coherent_pool, list);
+
+	if (resource_size(a->resource) > resource_size(b->resource))
+		return 1;
+	if (resource_size(a->resource) < resource_size(b->resource))
+		return -1;
+	return 0;
+}
+
+static int dma_declare_coherent_pool(const struct resource *res)
+{
+	struct dma_coherent_pool *pool;
+	tlsf_t handle;
+
+	handle = tlsf_create_with_pool((void *)res->start, resource_size(res));
+	if (!handle)
+		return -EINVAL;
+
+	pool = xmalloc(sizeof(*pool));
+	pool->handle = handle;
+	pool->resource = res;
+
+	list_add_sort(&pool->list, &pools, compare_pool_sizes);
+
+	dma_set_coherent_ops(&pool_ops);
+
+	pr_debug("registered pool @(%llx-%llx)\n", (u64)res->start, (u64)res->end);
+
+	return 0;
+}
+
+static int coherent_dma_pool_probe(struct device_d *dev)
+{
+	struct resource *res;
+
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	return dma_declare_coherent_pool(res);
+}
+
+static struct of_device_id coherent_dma_pool_dt_ids[] = {
+	{ .compatible = "barebox,coherent-dma-pool", },
+	{ /* sentinel */ }
+};
+
+static struct driver_d coherent_dma_pool_driver = {
+	.name = "coherent-dma-pool",
+	.probe = coherent_dma_pool_probe,
+	.of_compatible = coherent_dma_pool_dt_ids,
+};
+coredevice_platform_driver(coherent_dma_pool_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


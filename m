Delivery-date: Mon, 31 May 2021 09:40:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncX8-0003BC-LJ
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:40:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncX5-0000X6-1Q
	for lore@pengutronix.de; Mon, 31 May 2021 09:40:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GU0kqjz4QUbaAoPy/hXZxV1USTG6tckZQ6TIp6Pn9m4=; b=bthtaPudHt1z8k
	p0vRkAoafnRsDvGrNawKZvJRPuTP7n2D7Az7D65gQU8DATzQyFvwVj/h7WAu2XcC07eNSjkBEranX
	fstqlnAhJ+pktte304YmPRRYRm/n6bScj73W5rtXHza+NcplVhV0tXUBKJeGyh24Tf3wqtCjTLIzU
	R3wHu72gdLuZR7BW9tqXGUYQ5R5RayPwF+qq5/xtOBXE1BrWJ5Hy0KjHIMn0eaA84wWLX5a5t8Jpy
	mVe2ncmqiQzsdG4uZeCIKevUY1cnSNSHNSkCCQnC8u67ophVn4JjsTXVmdLhmtiVUzSbSUxonuEUo
	td2Fzyg8dh7ODWTDKGoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncVm-00BCuh-GO; Mon, 31 May 2021 07:38:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncVF-00BCcn-QL
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:38:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVE-00080H-B7; Mon, 31 May 2021 09:38:24 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVC-00045q-Vn; Mon, 31 May 2021 09:38:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:38:07 +0200
Message-Id: <20210531073821.15257-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531073821.15257-1-a.fatoum@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_003825_920062_D23878C8 
X-CRM114-Status: GOOD (  18.95  )
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
Subject: [PATCH 06/20] RISC-V: dma: support multiple dma_alloc_coherent
 backends
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

StarFive JH7100 has uncached DDR region at 64G, but Designware MAC v3.70
has 32-bit DMA mask. There's internal RAM in first 4G that's uncached,
which we could use as backing store for dma_alloc_coherent.

Rework code, so SoC specific code can define own implementation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/cpu/Makefile        |  2 +
 arch/riscv/cpu/cache.c         | 22 +++++++++++
 arch/riscv/cpu/dma.c           | 69 ++++++++++++++++++++++++++++++++++
 arch/riscv/include/asm/cache.h | 17 +++++++++
 arch/riscv/include/asm/dma.h   | 42 +++++----------------
 5 files changed, 119 insertions(+), 33 deletions(-)
 create mode 100644 arch/riscv/cpu/cache.c
 create mode 100644 arch/riscv/cpu/dma.c
 create mode 100644 arch/riscv/include/asm/cache.h

diff --git a/arch/riscv/cpu/Makefile b/arch/riscv/cpu/Makefile
index f1312be699a1..e521ca4bfd47 100644
--- a/arch/riscv/cpu/Makefile
+++ b/arch/riscv/cpu/Makefile
@@ -1,3 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-y += core.o time.o
+obj-$(CONFIG_HAS_CACHE) += cache.o
+obj-$(CONFIG_HAS_DMA) += dma.o
diff --git a/arch/riscv/cpu/cache.c b/arch/riscv/cpu/cache.c
new file mode 100644
index 000000000000..d5aad7e4038b
--- /dev/null
+++ b/arch/riscv/cpu/cache.c
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#include <asm/cache.h>
+
+static struct cache_ops *cache_ops;
+
+void __dma_flush_range(dma_addr_t start, dma_addr_t end)
+{
+	if (cache_ops)
+		cache_ops->dma_flush_range(start, end);
+}
+
+void __dma_inv_range(dma_addr_t start, dma_addr_t end)
+{
+	if (cache_ops)
+		cache_ops->dma_inv_range(start, end);
+}
+
+void riscv_cache_set_ops(struct cache_ops *ops)
+{
+	cache_ops = ops;
+}
diff --git a/arch/riscv/cpu/dma.c b/arch/riscv/cpu/dma.c
new file mode 100644
index 000000000000..d7dc642f5830
--- /dev/null
+++ b/arch/riscv/cpu/dma.c
@@ -0,0 +1,69 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#include <common.h>
+#include <xfuncs.h>
+#include <asm/dma.h>
+#include <asm/cache.h>
+#include <malloc.h>
+
+static void *__dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+{
+	void *ret;
+
+	ret = xmemalign(PAGE_SIZE, size);
+
+	memset(ret, 0, size);
+
+	if (dma_handle)
+		*dma_handle = (dma_addr_t)ret;
+
+	return ret;
+}
+
+static void __dma_free_coherent(void *vaddr, dma_addr_t dma_handle, size_t size)
+{
+	free(vaddr);
+}
+
+static const struct dma_coherent_ops nommu_ops = {
+	.alloc = __dma_alloc_coherent,
+	.free = __dma_free_coherent,
+};
+
+static const struct dma_coherent_ops *dma_coherent_ops = &nommu_ops;
+
+void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+{
+	return dma_coherent_ops->alloc(size, dma_handle);
+}
+
+void dma_free_coherent(void *vaddr, dma_addr_t dma_handle, size_t size)
+{
+	dma_coherent_ops->free(vaddr, dma_handle, size);
+}
+
+void dma_set_coherent_ops(const struct dma_coherent_ops *ops)
+{
+	dma_coherent_ops = ops;
+}
+
+void dma_sync_single_for_cpu(dma_addr_t address, size_t size, enum dma_data_direction dir)
+{
+        /*
+         * FIXME: This function needs a device argument to support non 1:1 mappings
+         */
+        if (dir != DMA_TO_DEVICE)
+                __dma_inv_range(address, address + size);
+}
+
+void dma_sync_single_for_device(dma_addr_t address, size_t size, enum dma_data_direction dir)
+{
+        /*
+         * FIXME: This function needs a device argument to support non 1:1 mappings
+         */
+
+        if (dir == DMA_FROM_DEVICE)
+                __dma_inv_range(address, address + size);
+        else
+                __dma_flush_range(address, address + size);
+}
diff --git a/arch/riscv/include/asm/cache.h b/arch/riscv/include/asm/cache.h
new file mode 100644
index 000000000000..a1cdd6b13b62
--- /dev/null
+++ b/arch/riscv/include/asm/cache.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_CACHE_H
+#define __ASM_CACHE_H
+
+#include <linux/types.h>
+
+struct cache_ops {
+	void (*dma_flush_range)(dma_addr_t start, dma_addr_t end);
+	void (*dma_inv_range)(dma_addr_t start, dma_addr_t end);
+};
+
+void __dma_flush_range(dma_addr_t start, dma_addr_t end);
+void __dma_inv_range(dma_addr_t start, dma_addr_t end);
+
+void riscv_cache_set_ops(struct cache_ops *ops);
+
+#endif
diff --git a/arch/riscv/include/asm/dma.h b/arch/riscv/include/asm/dma.h
index 4204653984a3..b880e49732e0 100644
--- a/arch/riscv/include/asm/dma.h
+++ b/arch/riscv/include/asm/dma.h
@@ -2,43 +2,19 @@
 #ifndef _ASM_DMA_MAPPING_H
 #define _ASM_DMA_MAPPING_H
 
-#include <common.h>
+#include <linux/types.h>
+#include <linux/kernel.h>
 #include <xfuncs.h>
-#include <linux/build_bug.h>
-#include <malloc.h>
 
-#ifdef CONFIG_MMU
-#error DMA stubs need be replaced when using MMU and caches
-#endif
+struct dma_coherent_ops {
+	void *(*alloc)(size_t size, dma_addr_t *dma_handle);
 
-static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
-{
-	void *ret;
+	void (*free)(void *vaddr, dma_addr_t dma_handle, size_t size);
+};
 
-	ret = xmemalign(PAGE_SIZE, size);
+void dma_set_coherent_ops(const struct dma_coherent_ops *ops);
+#define DMA_ALIGNMENT 64
 
-	memset(ret, 0, size);
-
-	if (dma_handle)
-		*dma_handle = (dma_addr_t)ret;
-
-	return ret;
-}
-
-static inline void dma_free_coherent(void *vaddr, dma_addr_t dma_handle,
-				     size_t size)
-{
-	free(vaddr);
-}
-
-static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
-					   enum dma_data_direction dir)
-{
-}
-
-static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
-					      enum dma_data_direction dir)
-{
-}
+#include <dma.h>
 
 #endif /* _ASM_DMA_MAPPING_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


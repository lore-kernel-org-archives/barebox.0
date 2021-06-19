Delivery-date: Sat, 19 Jun 2021 06:52:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyX-0004V5-F6
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:52:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyV-0000eW-Dz
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:52:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GsZuuWBSgBQyRoO898r5/ZuidWpbZyp4chMVEyxi1g=; b=lrnYe26NQRwWOd
	NBSMXYByO3NMy/iONk0Ccb4ikMEOL+7+4yM9LbszSZobJn2w+zr5L6K5ZuTPuLU6gIV34WOz4pKRe
	XhBEm9hbt13ObHR1vMP7ylrqhYHMYb426aAdMbmWG6C1f7v3dNBG+dWEfQc7uOJu6J1zjV8fzix/i
	P4rcx3EalPnaDLCte6X1BM12CelFhfF6xH5tW95G2PL80+QibUcRWXj/jPPaDdIcrqhVAfOHy2MXY
	zmAcTOogd1nI+54iEk7LGriIJn/3yzOqF+hy2J7bjRDzXSswt5yw5A6M4U5MbQb0/3LzIFqJhgw/8
	wTSznM/SjWB21QXLyPXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSxA-00GHtk-2z; Sat, 19 Jun 2021 04:51:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwi-00GHfl-NB
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008M6-Ar; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001Ks-P9; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:35 +0200
Message-Id: <20210619045055.779-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215104_897303_756F3076 
X-CRM114-Status: GOOD (  17.43  )
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
Subject: [PATCH v2 09/29] RISC-V: dma: support multiple dma_alloc_coherent
 backends
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

StarFive JH7100 is incoherent between CPU and dma masters like GMAC.
It has an uncached alias though similar to what we have on MIPS.

StarFive JH7110 will fix this and be cache coherent like other SiFive
SoCs. Support both by allowing driver to define their own
dma_alloc_coherent implementations.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/cpu/Makefile      |  1 +
 arch/riscv/cpu/dma.c         | 74 ++++++++++++++++++++++++++++++++++++
 arch/riscv/include/asm/dma.h | 48 +++++++----------------
 3 files changed, 88 insertions(+), 35 deletions(-)
 create mode 100644 arch/riscv/cpu/dma.c

diff --git a/arch/riscv/cpu/Makefile b/arch/riscv/cpu/Makefile
index f1312be699a1..9ce77ad869cd 100644
--- a/arch/riscv/cpu/Makefile
+++ b/arch/riscv/cpu/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-y += core.o time.o
+obj-$(CONFIG_HAS_DMA) += dma.o
diff --git a/arch/riscv/cpu/dma.c b/arch/riscv/cpu/dma.c
new file mode 100644
index 000000000000..5a4d714e5e71
--- /dev/null
+++ b/arch/riscv/cpu/dma.c
@@ -0,0 +1,74 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#include <common.h>
+#include <xfuncs.h>
+#include <asm/dma.h>
+#include <malloc.h>
+
+static void __dma_flush_range(dma_addr_t start, dma_addr_t end)
+{
+}
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
+static const struct dma_ops coherent_dma_ops = {
+	.alloc_coherent = __dma_alloc_coherent,
+	.free_coherent = __dma_free_coherent,
+	.flush_range = __dma_flush_range,
+	.inv_range = __dma_flush_range,
+};
+
+static const struct dma_ops *dma_ops = &coherent_dma_ops;
+
+void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+{
+	return dma_ops->alloc_coherent(size, dma_handle);
+}
+
+void dma_free_coherent(void *vaddr, dma_addr_t dma_handle, size_t size)
+{
+	dma_ops->free_coherent(vaddr, dma_handle, size);
+}
+
+void dma_set_ops(const struct dma_ops *ops)
+{
+	dma_ops = ops;
+}
+
+void dma_sync_single_for_cpu(dma_addr_t address, size_t size, enum dma_data_direction dir)
+{
+        /*
+         * FIXME: This function needs a device argument to support non 1:1 mappings
+         */
+        if (dir != DMA_TO_DEVICE)
+                dma_ops->inv_range(address, address + size);
+}
+
+void dma_sync_single_for_device(dma_addr_t address, size_t size, enum dma_data_direction dir)
+{
+        /*
+         * FIXME: This function needs a device argument to support non 1:1 mappings
+         */
+
+        if (dir == DMA_FROM_DEVICE)
+                dma_ops->inv_range(address, address + size);
+        else
+                dma_ops->flush_range(address, address + size);
+}
diff --git a/arch/riscv/include/asm/dma.h b/arch/riscv/include/asm/dma.h
index 4204653984a3..56bcf06cc4af 100644
--- a/arch/riscv/include/asm/dma.h
+++ b/arch/riscv/include/asm/dma.h
@@ -1,44 +1,22 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _ASM_DMA_MAPPING_H
-#define _ASM_DMA_MAPPING_H
+#ifndef _RISCV_ASM_DMA_H
+#define _RISCV_ASM_DMA_H
 
-#include <common.h>
-#include <xfuncs.h>
-#include <linux/build_bug.h>
-#include <malloc.h>
+#include <linux/types.h>
 
-#ifdef CONFIG_MMU
-#error DMA stubs need be replaced when using MMU and caches
-#endif
+struct dma_ops {
+	void *(*alloc_coherent)(size_t size, dma_addr_t *dma_handle);
+	void (*free_coherent)(void *vaddr, dma_addr_t dma_handle, size_t size);
 
-static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
-{
-	void *ret;
+	void (*flush_range)(dma_addr_t start, dma_addr_t end);
+	void (*inv_range)(dma_addr_t start, dma_addr_t end);
+};
 
-	ret = xmemalign(PAGE_SIZE, size);
+/* Override for SoCs with cache-incoherent DMA masters */
+void dma_set_ops(const struct dma_ops *ops);
 
-	memset(ret, 0, size);
+#define DMA_ALIGNMENT 64
 
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


Delivery-date: Fri, 05 Mar 2021 19:43:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIFPn-00036f-6L
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 19:43:07 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIFPm-0002hD-4k
	for lore@pengutronix.de; Fri, 05 Mar 2021 19:43:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JSEpc4uc4hTmPKaeNbB0qi89EmNUWPr27xKdcjWSUKo=; b=VmkJnL1l9yBDP6sMb1OtFZQLCq
	9KBbpZwX3ozQyN0IFpUcbbZ1vTGuttFortmBtgmkF+exulswryD32sbsvPnf9tyKJ26V79Gva2bJP
	yHoiwbFA4q5bu4MnZ0zVm2JDz9WqVBfLBDT41H9bGr0szv7BmkOXlEEodfyZw34i+brMvX3hF+IYA
	qRdoK5hxvNw0KxxT06Rexy1bIuU4/m7x4b8yzN94mYJtkroyJeiV55/plpPGQzC4FF9gWC8rWaYvx
	ufvw6vJqf0DL8TYAFnsvA+wzMEsDh1vHuoBmZRfxezA6OvAPc6Xw6MfXRji+NqPfrepcaU4mrkji1
	9WxqSuRA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIFOc-00G0t6-L1; Fri, 05 Mar 2021 18:41:57 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIFOL-00G0pA-MI
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 18:41:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 725331A5729
 for <barebox@lists.infradead.org>; Fri,  5 Mar 2021 18:41:37 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLWN9DMJ;
 Fri, 05 Mar 2021 18:41:37 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 46D861A5726;
 Fri,  5 Mar 2021 18:41:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1FBF227E073C;
 Fri,  5 Mar 2021 19:41:37 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id yEXHe68A2uP6; Fri,  5 Mar 2021 19:41:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 8175B27E0732;
 Fri,  5 Mar 2021 19:41:36 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 8175B27E0732
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614969696;
 bh=VpPsKBJnTgn3sJOsQ6hOHKkxjbstNM2jy1rDGNfjJyo=;
 h=From:To:Date:Message-Id;
 b=V6rv0YPcy4wOiagkfYZ6CiGdkKri8Oap0hhe1MAdLsc9Q8Kh5I/UDUWBZF3tQy411
 V6jvdWLzuyaFGYy6IOzaTnWUtYM6nlsen/Fyf/2+eUq+2ZyAsKg4PemCdgj2XjbS2a
 SviK2l+Ynho2dKnxeRhRizBWmluUcJGd3IrYXHUE=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id cR7Tr6W9a0xP; Fri,  5 Mar 2021 19:41:36 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 6378827E0673;
 Fri,  5 Mar 2021 19:41:36 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Fri,  5 Mar 2021 19:33:25 +0100
Message-Id: <20210305183327.29753-3-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210305183327.29753-1-jmaselbas@kalray.eu>
References: <20210305183327.29753-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_184139_386290_15D617EE 
X-CRM114-Status: GOOD (  16.31  )
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
Cc: Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/5] kvx: Implement dma handling primitives
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Yann Sionneau <ysionneau@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
changes v1 -> v2:
 - add BUILD_BUG_ON_MSG in dma_alloc_coherent
 - renamed kvx_dcache_invalidate_mem_area to invalidate_dcache_range
 - add comment on dcache beeing write-through
---
 arch/kvx/Kconfig                |  1 +
 arch/kvx/include/asm/dma.h      | 32 +++++++++++
 arch/kvx/include/asm/sys_arch.h |  3 ++
 arch/kvx/lib/Makefile           |  2 +-
 arch/kvx/lib/dma-default.c      | 94 +++++++++++++++++++++++++++++++++
 5 files changed, 131 insertions(+), 1 deletion(-)
 create mode 100644 arch/kvx/include/asm/dma.h
 create mode 100644 arch/kvx/lib/dma-default.c

diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 4e02613ec..093444088 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -13,6 +13,7 @@ config KVX
 	select GENERIC_FIND_NEXT_BIT
 	select HAS_ARCH_SJLJ
 	select HAS_CACHE
+	select HAS_DMA
 	select LIBFDT
 	select MFD_SYSCON
 	select OF_BAREBOX_DRIVERS
diff --git a/arch/kvx/include/asm/dma.h b/arch/kvx/include/asm/dma.h
new file mode 100644
index 000000000..a7ecf279a
--- /dev/null
+++ b/arch/kvx/include/asm/dma.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: 2021 Yann Sionneau <ysionneau@kalray.eu>, Kalray Inc. */
+
+#ifndef __ASM_DMA_H
+#define __ASM_DMA_H
+
+#include <common.h>
+
+#define KVX_DDR_32BIT_RAM_WINDOW_BA	(0x80000000ULL)
+#define KVX_DDR_64BIT_RAM_WINDOW_BA	(0x100000000ULL)
+#define MAX_32BIT_ADDR			(0xffffffffULL)
+
+#define dma_alloc dma_alloc
+static inline void *dma_alloc(size_t size)
+{
+	return xmemalign(64, ALIGN(size, 64));
+}
+
+static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+{
+	BUILD_BUG_ON_MSG(1, "dma_alloc_coherent not supported: "
+			"MMU support is required to map uncached pages");
+	return NULL;
+}
+
+static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
+				     size_t size)
+{
+	free(mem);
+}
+
+#endif /* __ASM_DMA_H */
diff --git a/arch/kvx/include/asm/sys_arch.h b/arch/kvx/include/asm/sys_arch.h
index 9df32c4e7..ce07a5598 100644
--- a/arch/kvx/include/asm/sys_arch.h
+++ b/arch/kvx/include/asm/sys_arch.h
@@ -11,6 +11,9 @@
 #define EXCEPTION_STRIDE	0x40
 #define EXCEPTION_ALIGNMENT	0x100
 
+#define kvx_cluster_id() ((int) \
+	((kvx_sfr_get(PCR) & KVX_SFR_PCR_CID_MASK) \
+					>> KVX_SFR_PCR_CID_SHIFT))
 #define KVX_SFR_START(__sfr_reg) \
 	(KVX_SFR_## __sfr_reg ## _SHIFT)
 
diff --git a/arch/kvx/lib/Makefile b/arch/kvx/lib/Makefile
index d271ebccf..c730e1c23 100644
--- a/arch/kvx/lib/Makefile
+++ b/arch/kvx/lib/Makefile
@@ -3,4 +3,4 @@
 # Copyright (C) 2019 Kalray Inc.
 #
 
-obj-y	+= cpuinfo.o board.o dtb.o poweroff.o bootm.o setjmp.o cache.o
+obj-y	+= cpuinfo.o board.o dtb.o poweroff.o bootm.o setjmp.o cache.o dma-default.o
diff --git a/arch/kvx/lib/dma-default.c b/arch/kvx/lib/dma-default.c
new file mode 100644
index 000000000..2a4144696
--- /dev/null
+++ b/arch/kvx/lib/dma-default.c
@@ -0,0 +1,94 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2021 Yann Sionneau <ysionneau@kalray.eu>, Kalray Inc.
+
+#include <dma.h>
+#include <asm/barrier.h>
+#include <asm/io.h>
+#include <asm/cache.h>
+#include <asm/sfr.h>
+#include <asm/sys_arch.h>
+
+/*
+ * The implementation of arch should follow the following rules:
+ *		map		for_cpu		for_device	unmap
+ * TO_DEV	writeback	none		writeback	none
+ * FROM_DEV	invalidate	invalidate(*)	invalidate	invalidate(*)
+ * BIDIR	writeback	invalidate	writeback	invalidate
+ *
+ * (*) - only necessary if the CPU speculatively prefetches.
+ *
+ * (see https://lkml.org/lkml/2018/5/18/979)
+ */
+
+void dma_sync_single_for_device(dma_addr_t addr, size_t size,
+				enum dma_data_direction dir)
+{
+	/* dcache is Write-Through: no need to flush to force writeback */
+	switch (dir) {
+	case DMA_FROM_DEVICE:
+		invalidate_dcache_range(addr, addr + size);
+		break;
+	case DMA_TO_DEVICE:
+	case DMA_BIDIRECTIONAL:
+		/* allow device to read buffer written by CPU */
+		wmb();
+		break;
+	default:
+		BUG();
+	}
+}
+
+void dma_sync_single_for_cpu(dma_addr_t addr, size_t size,
+				enum dma_data_direction dir)
+{
+	/* CPU does not speculatively prefetches */
+	switch (dir) {
+	case DMA_FROM_DEVICE:
+		/* invalidate has been done during map/for_device */
+	case DMA_TO_DEVICE:
+		break;
+	case DMA_BIDIRECTIONAL:
+		invalidate_dcache_range(addr, addr + size);
+		break;
+	default:
+		BUG();
+	}
+}
+
+#define KVX_DDR_ALIAS_OFFSET \
+	(KVX_DDR_64BIT_RAM_WINDOW_BA - KVX_DDR_32BIT_RAM_WINDOW_BA)
+#define KVX_DDR_ALIAS_WINDOW \
+	(KVX_DDR_64BIT_RAM_WINDOW_BA + KVX_DDR_ALIAS_OFFSET)
+
+/* Local smem is aliased between 0 and 16MB */
+#define KVX_SMEM_LOCAL_ALIAS 0x1000000ULL
+
+dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
+			  enum dma_data_direction dir)
+{
+	uintptr_t addr = (uintptr_t) ptr;
+
+	dma_sync_single_for_device(addr, size, dir);
+
+	/* Local smem alias should never be used for dma */
+	if (addr < KVX_SMEM_LOCAL_ALIAS)
+		return addr + (1 + kvx_cluster_id()) * KVX_SMEM_LOCAL_ALIAS;
+
+	if (dev->dma_mask && addr <= dev->dma_mask)
+		return addr;
+
+	if (addr >= KVX_DDR_ALIAS_WINDOW)
+		return DMA_ERROR_CODE;
+
+	addr -= KVX_DDR_ALIAS_OFFSET;
+	if (dev->dma_mask && addr > dev->dma_mask)
+		return DMA_ERROR_CODE;
+
+	return addr;
+}
+
+void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
+		      enum dma_data_direction dir)
+{
+	dma_sync_single_for_cpu(addr, size, dir);
+}
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


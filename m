Delivery-date: Mon, 01 Mar 2021 17:00:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGkyH-0004z1-FM
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 17:00:33 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGkyG-0001QC-6k
	for lore@pengutronix.de; Mon, 01 Mar 2021 17:00:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WZ2P1ClU5VRXcuP7mEbOmV2zWd7aHvGeb2ZJo6YpVz4=; b=A+1C8Vrw/B+mNVFhKH1jsr78Io
	Jzwa2hJ73wD/z7KBK+ryCppw8CcnQdUjkcjeXLTQOnfg4vMs/KUvjRkULK6incv560gkpR8SS3DIV
	cdfLpVoCzjWylrrXk+BJAqHMng12khGgrltiq4+4agRGMjzp2YEKiwv06C1i+O3MlX94zngxz9Yau
	aYgJiosennfMwwJeK9eIkULFY+eM/Fwppe1Q3OAyuFb1orpqHX8cgnimSRnwoSWQmKXu9i7bN+pIP
	mpJDIB7MpBzbPSv8eZoOeeYJkcboosxkegpkE13qN3gUPAJm35Llz++ySRwIFeNK6e4cXSQcpIY8p
	ncWMa7vw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGkxB-00077f-Lo; Mon, 01 Mar 2021 15:59:25 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGkx2-00073S-AS
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 15:59:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 9AA761A5451
 for <barebox@lists.infradead.org>; Mon,  1 Mar 2021 15:59:13 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLQRP4JU;
 Mon, 01 Mar 2021 15:59:13 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 66ED31A5458;
 Mon,  1 Mar 2021 15:59:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 3D79127E069F;
 Mon,  1 Mar 2021 16:59:13 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id uJ7K-H4UoMdF; Mon,  1 Mar 2021 16:59:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 9763E27E0842;
 Mon,  1 Mar 2021 16:59:12 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 9763E27E0842
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614614352;
 bh=34RZfVU+MlsEpmRagqodu+LuIuo9NjVPX1XBUFvKRGA=;
 h=From:To:Date:Message-Id;
 b=ON9/iaFJD2EduwcREclWg0TY07tXBuhcnOBKbZW5fi/YqvWcloKGRLbOX4zw8PPfY
 SOdRtJNYc2L6+N4T6C4r4Y+fTgw9Y3nqwRZhezthytwjwDmy2Hcm5jDJlElDsfu9Gq
 1JQni1KjCiooLMVXt1baZa6uVd1uPSqtb6+6wzi8=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 1Hk5U6fX1X8A; Mon,  1 Mar 2021 16:59:12 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 7791427E0779;
 Mon,  1 Mar 2021 16:59:12 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 16:58:49 +0100
Message-Id: <20210301155851.12463-3-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210301155851.12463-1-jmaselbas@kalray.eu>
References: <20210301155851.12463-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_105916_747333_C3869715 
X-CRM114-Status: GOOD (  17.15  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] kvx: Implement dma handling primitives
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Yann Sionneau <ysionneau@kalray.eu>

Signed-off-by: Yann Sionneau <ysionneau@kalray.eu>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/Kconfig                |  1 +
 arch/kvx/include/asm/dma.h      | 35 +++++++++++++
 arch/kvx/include/asm/sys_arch.h |  3 ++
 arch/kvx/lib/Makefile           |  2 +-
 arch/kvx/lib/dma-default.c      | 91 +++++++++++++++++++++++++++++++++
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
index 000000000..79eed77af
--- /dev/null
+++ b/arch/kvx/include/asm/dma.h
@@ -0,0 +1,35 @@
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
+	void *ret = xmemalign(PAGE_SIZE, size);
+
+	if (dma_handle)
+		*dma_handle = (dma_addr_t)(uintptr_t)ret;
+
+	return ret;
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
index 000000000..755a8c66f
--- /dev/null
+++ b/arch/kvx/lib/dma-default.c
@@ -0,0 +1,91 @@
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
+	switch (dir) {
+	case DMA_FROM_DEVICE:
+		kvx_dcache_invalidate_mem_area(addr, size);
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
+	switch (dir) {
+	case DMA_FROM_DEVICE:
+	case DMA_TO_DEVICE:
+		break;
+	case DMA_BIDIRECTIONAL:
+		kvx_dcache_invalidate_mem_area(addr, size);
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


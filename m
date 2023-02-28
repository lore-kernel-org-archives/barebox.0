Delivery-date: Tue, 28 Feb 2023 11:36:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pWxL2-004bSK-QK
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 11:36:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pWxL1-0007SB-IW
	for lore@pengutronix.de; Tue, 28 Feb 2023 11:36:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28S+e434e3nXIOZXKf1QlzQe4cncMI4HwCqCn+g96yU=; b=fxiiftJFts0NXr
	HJ17WZovHwZn/08KxW6tMdN6mHKJG8rDj+O/uI/niukt0CqHByhgcYH0zSlodZIkzm3GRCohTPhnD
	IBzei73K25p5dgcdwa0zed+8mQHdMx3e9v7Bs8OJQHiFzXb6kRJSYz1+wSn3yJN0V2GBiPpdwYHh7
	y5TkGIEdM5/kzN8Q5JOYqBmsgbdmfRJzuhPdEKATeh9FKG48fQ580UTNwuDBwUxa5IQYdTE0nxDXr
	/BijKy59zE5wCSrMFrEO8zLfdjPWcDcvWOuQFIa01+Zagveqz4301i3mdSQrmachQQCDw0Rxd35R4
	oJwg0qGcrA5kGZ4B84IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWxJQ-00Cg6p-IW; Tue, 28 Feb 2023 10:34:25 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWxIQ-00CfjY-2C
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 10:33:25 +0000
Received: by mail-lf1-x136.google.com with SMTP id m7so12487523lfj.8
        for <barebox@lists.infradead.org>; Tue, 28 Feb 2023 02:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=28S+e434e3nXIOZXKf1QlzQe4cncMI4HwCqCn+g96yU=;
        b=VbtYzSQxag+X1wtW7sXLiFEFynzUuoEZcWOXnN6adxpE/5FnRKtqfczAolS7cwtQOI
         wr4VdHEKPNdxlZj3dgE2EcA5xpvnvwkLNsURmjDa9M1VRQnhHqD4Jw5dBAXDRKZRSPba
         YTf+EkOOzJccUFOZhJJs3Agrmb8CvcY6bg8TwpX7PV1HyGfoTBQvz+uWZC1RpIpgB5GQ
         MqT6PB0N9ayc+LU2YWve92rxKyuz08XhFdrpbWHkUYfDxRx2WWyAIqtrctcjg3NL2R/s
         n1G7iXKj8ngDNbFSfGtbXhlnqxqgOAukuTtVlIwN+8x7R4yNeDTZHGYOKDQaEQtaImTU
         5xtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=28S+e434e3nXIOZXKf1QlzQe4cncMI4HwCqCn+g96yU=;
        b=1p2p1yt3PqfxgaEDQ11CIF1fd9F9ucec2l8eVpfxYXmhlHYvN7TOZNwo5YaB/27Nyt
         jPYNweVbtRhfhjq5sUgdF/nxUCl7pFznL6/9XvwNe4Qdg/WJGa9RUiBcVFY6SABm3VQ1
         iNWObltufa5Oyixm0PwaMqXqac/TQqE7XWxhKBEJtPM7A3iGYze00qvWr59ceTu4GSQ9
         nGtqtaq/9IwuD2ym1pGZn3L/l+AAmTUQMnb7R2RHBvle1V4RTDSGl3LfZkaEMdxcntHK
         Gdoaf7fF6Gl/uX0FitT9bA20oEmy6JZ5X2YvpKpR9ZKqMUlykh/kskvToXCT/ZHrht9S
         wiNg==
X-Gm-Message-State: AO0yUKWjwpLPD1/BUB/23Gp50l9H+N6EP4P9mrpaY8QMsavvUv6kE2TL
	f7X+xw+9rZmlQO9xU9EEVs4+3VX7Oi4jAPMEKfw=
X-Google-Smtp-Source: AK7set9RoJwRMd0eiyLfrcBK5c+0fcRn7fVl0PGEUJLYvHgqZm8D+h+rlpXZLg/L3OkfwHNpdBsTrQ==
X-Received: by 2002:a05:6512:3b9a:b0:4dd:9931:c560 with SMTP id g26-20020a0565123b9a00b004dd9931c560mr3920575lfv.15.1677580399306;
        Tue, 28 Feb 2023 02:33:19 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id p18-20020a2ea4d2000000b002953cc656dasm1127003ljm.87.2023.02.28.02.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 02:33:18 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 28 Feb 2023 13:32:47 +0300
Message-Id: <20230228103248.2118342-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230228103248.2118342-1-denorl2009@gmail.com>
References: <20230228103248.2118342-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_023322_209906_3CD599A5 
X-CRM114-Status: GOOD (  24.49  )
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
Cc: Denis Orlov <denorl2009@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC 1/2] dma: rework dma_sync_single interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently, a lot of code is handling dma_addr_t values as if they
unconditionally hold CPU addresses. However, this is not true for every
architecture. For example, MIPS requires an explicit conversion from a
physical address space to a virtual address that corresponds to some
(currently used one in our case) address space segment for this pointer
to be valid and usable. Another issue is that DMA ranges, specified in
device trees, will not work this way. To get from a virtual address to
a dma handle and vice versa we need to add/subtract some offset, which
is calculated from "dma-ranges" property. As it seems, no driver
actually uses this at the moment, but as there exists code that does
this conversions, which is used in dma_map_single(), it seems reasonable
to utilize it for dma_sync_single_for_*() too.

I wonder if there are some actual use cases that would not be properly
covered by this change, for example if there are dma/cpu conversions
that we may have to do in architecture-specific code and which require
virtual addresses. For those, we cannot have dma_sync_single_for_*
functions that just call arch_sync_single_for_* only for the CPU cache
syncronization part, i.e. we would have to do all dma/cpu conversions in
arch-specific code, unlike how it is done in this patch. This would
lead to some code duplication though.

TODO: dma_alloc/free_coherent do need same kind of changes to utilise
cpu/dma conversions properly

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/arm/cpu/mmu-common.c            |   9 +--
 arch/arm/cpu/mmu.c                   |  17 +++--
 arch/arm/cpu/mmu_64.c                |  13 ++--
 arch/arm/include/asm/dma.h           |  12 ++--
 arch/kvx/lib/dma-default.c           |  16 +++--
 arch/mips/lib/dma-default.c          |  12 ++--
 arch/riscv/cpu/dma.c                 |  23 +++---
 arch/riscv/include/asm/dma.h         |   4 +-
 arch/sandbox/include/asm/dma.h       |  12 ++--
 arch/x86/include/asm/dma.h           |  12 ++--
 drivers/dma/Makefile                 |   1 -
 drivers/dma/map.c                    |  39 -----------
 drivers/soc/sifive/sifive_l2_cache.c |   2 +-
 drivers/soc/starfive/jh7100_dma.c    |   2 +-
 include/dma.h                        | 101 +++++++++++++++++++--------
 15 files changed, 138 insertions(+), 137 deletions(-)
 delete mode 100644 drivers/dma/map.c

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 488a189f1c..f523cd2660 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -13,14 +13,11 @@
 #include <memory.h>
 #include "mmu.h"
 
-void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
-			     enum dma_data_direction dir)
+void arch_sync_dma_for_cpu(void *vaddr, size_t size,
+			   enum dma_data_direction dir)
 {
-	/*
-	 * FIXME: This function needs a device argument to support non 1:1 mappings
-	 */
 	if (dir != DMA_TO_DEVICE)
-		dma_inv_range((void *)address, size);
+		dma_inv_range(vaddr, size);
 }
 
 void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags)
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 6388e1bf14..c1615682fc 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -494,20 +494,19 @@ void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
 }
 
-void dma_sync_single_for_device(dma_addr_t address, size_t size,
-				enum dma_data_direction dir)
+void arch_sync_dma_for_device(void *vaddr, size_t size,
+			      enum dma_data_direction dir)
 {
-	/*
-	 * FIXME: This function needs a device argument to support non 1:1 mappings
-	 */
+	unsigned long start = (unsigned long)vaddr;
+	unsigned long end = start + size;
 
 	if (dir == DMA_FROM_DEVICE) {
-		__dma_inv_range(address, address + size);
+		__dma_inv_range(start, end);
 		if (outer_cache.inv_range)
-			outer_cache.inv_range(address, address + size);
+			outer_cache.inv_range(start, end);
 	} else {
-		__dma_clean_range(address, address + size);
+		__dma_clean_range(start, end);
 		if (outer_cache.clean_range)
-			outer_cache.clean_range(address, address + size);
+			outer_cache.clean_range(start, end);
 	}
 }
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index f43ac9a121..e5b0d55e71 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -249,15 +249,14 @@ void dma_flush_range(void *ptr, size_t size)
 	v8_flush_dcache_range(start, end);
 }
 
-void dma_sync_single_for_device(dma_addr_t address, size_t size,
-                                enum dma_data_direction dir)
+void arch_sync_dma_for_device(void *vaddr, size_t size,
+			      enum dma_data_direction dir)
 {
-	/*
-	 * FIXME: This function needs a device argument to support non 1:1 mappings
-	 */
+	unsigned long start = (unsigned long)vaddr;
+	unsigned long end = start + size - 1;
 
 	if (dir == DMA_FROM_DEVICE)
-		v8_inv_dcache_range(address, address + size - 1);
+		v8_inv_dcache_range(start, end);
 	else
-		v8_flush_dcache_range(address, address + size - 1);
+		v8_flush_dcache_range(start, end);
 }
diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index 75a6c1ad86..53953a4863 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -35,15 +35,15 @@ static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
 	free(mem);
 }
 
-#define dma_sync_single_for_cpu dma_sync_single_for_cpu
-static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
-					   enum dma_data_direction dir)
+#define arch_sync_dma_for_cpu arch_sync_dma_for_cpu
+static inline void arch_sync_dma_for_cpu(void *vaddr, size_t size,
+					 enum dma_data_direction dir)
 {
 }
 
-#define dma_sync_single_for_device dma_sync_single_for_device
-static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
-					      enum dma_data_direction dir)
+#define arch_sync_dma_for_device arch_sync_dma_for_device
+static inline void arch_sync_dma_for_device(void *vaddr, size_t size,
+					    enum dma_data_direction dir)
 {
 }
 #endif
diff --git a/arch/kvx/lib/dma-default.c b/arch/kvx/lib/dma-default.c
index c84a32954e..8eaa1df5f0 100644
--- a/arch/kvx/lib/dma-default.c
+++ b/arch/kvx/lib/dma-default.c
@@ -20,13 +20,15 @@
  * (see https://lkml.org/lkml/2018/5/18/979)
  */
 
-void dma_sync_single_for_device(dma_addr_t addr, size_t size,
-				enum dma_data_direction dir)
+void arch_sync_dma_for_device(void *vaddr, size_t size,
+			      enum dma_data_direction dir)
 {
+	unsigned long address = (unsigned long)vaddr;
+
 	/* dcache is Write-Through: no need to flush to force writeback */
 	switch (dir) {
 	case DMA_FROM_DEVICE:
-		invalidate_dcache_range(addr, addr + size);
+		invalidate_dcache_range(address, address + size);
 		break;
 	case DMA_TO_DEVICE:
 	case DMA_BIDIRECTIONAL:
@@ -38,9 +40,11 @@ void dma_sync_single_for_device(dma_addr_t addr, size_t size,
 	}
 }
 
-void dma_sync_single_for_cpu(dma_addr_t addr, size_t size,
-				enum dma_data_direction dir)
+void arch_sync_dma_for_cpu(void *vaddr, size_t size,
+			   enum dma_data_direction dir)
 {
+	unsigned long address = (unsigned long)vaddr;
+
 	/* CPU does not speculatively prefetches */
 	switch (dir) {
 	case DMA_FROM_DEVICE:
@@ -48,7 +52,7 @@ void dma_sync_single_for_cpu(dma_addr_t addr, size_t size,
 	case DMA_TO_DEVICE:
 		break;
 	case DMA_BIDIRECTIONAL:
-		invalidate_dcache_range(addr, addr + size);
+		invalidate_dcache_range(address, address + size);
 		break;
 	default:
 		BUG();
diff --git a/arch/mips/lib/dma-default.c b/arch/mips/lib/dma-default.c
index 48176e5d28..9392d8ee29 100644
--- a/arch/mips/lib/dma-default.c
+++ b/arch/mips/lib/dma-default.c
@@ -27,14 +27,14 @@ static inline void __dma_sync_mips(unsigned long addr, size_t size,
 	}
 }
 
-void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
-			     enum dma_data_direction dir)
+void arch_sync_dma_for_cpu(void *vaddr, size_t size,
+			   enum dma_data_direction dir)
 {
-	__dma_sync_mips(address, size, dir);
+	__dma_sync_mips((unsigned long)vaddr, size, dir);
 }
 
-void dma_sync_single_for_device(dma_addr_t address, size_t size,
-				enum dma_data_direction dir)
+void arch_sync_dma_for_device(void *vaddr, size_t size,
+			      enum dma_data_direction dir)
 {
-	__dma_sync_mips(address, size, dir);
+	__dma_sync_mips((unsigned long)vaddr, size, dir);
 }
diff --git a/arch/riscv/cpu/dma.c b/arch/riscv/cpu/dma.c
index 5a4d714e5e..511170aaa4 100644
--- a/arch/riscv/cpu/dma.c
+++ b/arch/riscv/cpu/dma.c
@@ -52,23 +52,24 @@ void dma_set_ops(const struct dma_ops *ops)
 	dma_ops = ops;
 }
 
-void dma_sync_single_for_cpu(dma_addr_t address, size_t size, enum dma_data_direction dir)
+void arch_sync_dma_for_cpu(void *vaddr, size_t size,
+			   enum dma_data_direction dir)
 {
-        /*
-         * FIXME: This function needs a device argument to support non 1:1 mappings
-         */
+	unsigned long start = (unsigned long)vaddr;
+	unsigned long end = start + size;
+
         if (dir != DMA_TO_DEVICE)
-                dma_ops->inv_range(address, address + size);
+                dma_ops->inv_range(start, end);
 }
 
-void dma_sync_single_for_device(dma_addr_t address, size_t size, enum dma_data_direction dir)
+void arch_sync_dma_for_device(void *vaddr, size_t size,
+			      enum dma_data_direction dir)
 {
-        /*
-         * FIXME: This function needs a device argument to support non 1:1 mappings
-         */
+	unsigned long start = (unsigned long)vaddr;
+	unsigned long end = start + size;
 
         if (dir == DMA_FROM_DEVICE)
-                dma_ops->inv_range(address, address + size);
+                dma_ops->inv_range(start, end);
         else
-                dma_ops->flush_range(address, address + size);
+                dma_ops->flush_range(start, end);
 }
diff --git a/arch/riscv/include/asm/dma.h b/arch/riscv/include/asm/dma.h
index 56bcf06cc4..db0cd0c735 100644
--- a/arch/riscv/include/asm/dma.h
+++ b/arch/riscv/include/asm/dma.h
@@ -8,8 +8,8 @@ struct dma_ops {
 	void *(*alloc_coherent)(size_t size, dma_addr_t *dma_handle);
 	void (*free_coherent)(void *vaddr, dma_addr_t dma_handle, size_t size);
 
-	void (*flush_range)(dma_addr_t start, dma_addr_t end);
-	void (*inv_range)(dma_addr_t start, dma_addr_t end);
+	void (*flush_range)(unsigned long start, unsigned long end);
+	void (*inv_range)(unsigned long start, unsigned long end);
 };
 
 /* Override for SoCs with cache-incoherent DMA masters */
diff --git a/arch/sandbox/include/asm/dma.h b/arch/sandbox/include/asm/dma.h
index 958d10e2a1..ac8b408aae 100644
--- a/arch/sandbox/include/asm/dma.h
+++ b/arch/sandbox/include/asm/dma.h
@@ -43,15 +43,15 @@ static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
 	free(mem);
 }
 
-#define dma_sync_single_for_cpu dma_sync_single_for_cpu
-static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
-					   enum dma_data_direction dir)
+#define arch_sync_dma_for_cpu arch_sync_dma_for_cpu
+static inline void arch_sync_dma_for_cpu(void *vaddr, size_t size,
+					 enum dma_data_direction dir)
 {
 }
 
-#define dma_sync_single_for_device dma_sync_single_for_device
-static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
-					      enum dma_data_direction dir)
+#define arch_sync_dma_for_device arch_sync_dma_for_device
+static inline void arch_sync_dma_for_device(void *vaddr, size_t size,
+					    enum dma_data_direction dir)
 {
 }
 
diff --git a/arch/x86/include/asm/dma.h b/arch/x86/include/asm/dma.h
index 90791ecf3e..fe486c687f 100644
--- a/arch/x86/include/asm/dma.h
+++ b/arch/x86/include/asm/dma.h
@@ -32,15 +32,15 @@ static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
 	free(mem);
 }
 
-#define dma_sync_single_for_cpu dma_sync_single_for_cpu
-static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
-					   enum dma_data_direction dir)
+#define arch_sync_dma_for_cpu arch_sync_dma_for_cpu
+static inline void arch_sync_dma_for_cpu(void *vaddr, size_t size,
+					 enum dma_data_direction dir)
 {
 }
 
-#define dma_sync_single_for_device dma_sync_single_for_device
-static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
-					      enum dma_data_direction dir)
+#define arch_sync_dma_for_device arch_sync_dma_for_device
+static inline void arch_sync_dma_for_device(void *vaddr, size_t size,
+					    enum dma_data_direction dir)
 {
 }
 
diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
index 39829cab50..8e1aac9f6f 100644
--- a/drivers/dma/Makefile
+++ b/drivers/dma/Makefile
@@ -1,3 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_MXS_APBH_DMA)	+= apbh_dma.o
-obj-$(CONFIG_HAS_DMA)		+= map.o
diff --git a/drivers/dma/map.c b/drivers/dma/map.c
deleted file mode 100644
index 114c0f7db3..0000000000
--- a/drivers/dma/map.c
+++ /dev/null
@@ -1,39 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 2012 Marc Kleine-Budde <mkl@pengutronix.de> */
-
-#include <dma.h>
-#include <asm/io.h>
-
-static inline dma_addr_t cpu_to_dma(struct device *dev, void *cpu_addr)
-{
-	if (dev && dev->dma_offset)
-		return (unsigned long)cpu_addr - dev->dma_offset;
-
-	return virt_to_phys(cpu_addr);
-}
-
-static inline void *dma_to_cpu(struct device *dev, dma_addr_t addr)
-{
-	if (dev && dev->dma_offset)
-		return (void *)(addr + dev->dma_offset);
-
-	return phys_to_virt(addr);
-}
-
-dma_addr_t dma_map_single(struct device *dev, void *ptr, size_t size,
-			  enum dma_data_direction dir)
-{
-	unsigned long addr = (unsigned long)ptr;
-
-	dma_sync_single_for_device(addr, size, dir);
-
-	return cpu_to_dma(dev, ptr);
-}
-
-void dma_unmap_single(struct device *dev, dma_addr_t dma_addr, size_t size,
-		      enum dma_data_direction dir)
-{
-	unsigned long addr = (unsigned long)dma_to_cpu(dev, dma_addr);
-
-	dma_sync_single_for_cpu(addr, size, dir);
-}
diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index 03945e9bea..b9a8923631 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -68,7 +68,7 @@ static void sifive_l2_config_read(struct device *dev)
 	printf("  #Index of the largest way enabled: %d\n", regval);
 }
 
-void sifive_l2_flush64_range(dma_addr_t start, dma_addr_t end)
+void sifive_l2_flush64_range(unsigned long start, unsigned long end)
 {
 	unsigned long line;
 
diff --git a/drivers/soc/starfive/jh7100_dma.c b/drivers/soc/starfive/jh7100_dma.c
index e3cfc8cf65..f1cc83f25a 100644
--- a/drivers/soc/starfive/jh7100_dma.c
+++ b/drivers/soc/starfive/jh7100_dma.c
@@ -19,7 +19,7 @@ static inline void *jh7100_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 
 	memset(ret, 0, size);
 
-	cpu_base = (dma_addr_t)ret;
+	cpu_base = (unsigned long)ret;
 
 	if (dma_handle)
 		*dma_handle = cpu_base;
diff --git a/include/dma.h b/include/dma.h
index 26c71d812e..382e32acbf 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -34,61 +34,102 @@ static inline void dma_free(void *mem)
 }
 #endif
 
-dma_addr_t dma_map_single(struct device *dev, void *ptr, size_t size,
-			  enum dma_data_direction dir);
-void dma_unmap_single(struct device *dev, dma_addr_t addr, size_t size,
-		      enum dma_data_direction dir);
-
-#define DMA_BIT_MASK(n)	(((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
-
-#define DMA_MASK_NONE	0x0ULL
-
-static inline void dma_set_mask(struct device *dev, u64 dma_mask)
+static inline dma_addr_t cpu_to_dma(struct device *dev, void *cpu_addr)
 {
-	dev->dma_mask = dma_mask;
-}
+	if (dev && dev->dma_offset)
+		return (unsigned long)cpu_addr - dev->dma_offset;
 
-#define DMA_ERROR_CODE  (~(dma_addr_t)0)
+	return virt_to_phys(cpu_addr);
+}
 
-static inline int dma_mapping_error(struct device *dev, dma_addr_t dma_addr)
+static inline void *dma_to_cpu(struct device *dev, dma_addr_t addr)
 {
-	return dma_addr == DMA_ERROR_CODE ||
-		(dev->dma_mask && dma_addr > dev->dma_mask);
+	if (dev && dev->dma_offset)
+		return (void *)(addr + dev->dma_offset);
+
+	return phys_to_virt(addr);
 }
 
 #ifndef __PBL__
 /* streaming DMA - implement the below calls to support HAS_DMA */
-#ifndef dma_sync_single_for_cpu
-void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
-			     enum dma_data_direction dir);
+#ifndef arch_sync_dma_for_cpu
+void arch_sync_dma_for_cpu(void *vaddr, size_t size,
+			   enum dma_data_direction dir);
 #endif
 
-#ifndef dma_sync_single_for_device
-void dma_sync_single_for_device(dma_addr_t address, size_t size,
-				enum dma_data_direction dir);
+#ifndef arch_sync_dma_for_device
+void arch_sync_dma_for_device(void *vaddr, size_t size,
+			      enum dma_data_direction dir);
 #endif
 #else
-#ifndef dma_sync_single_for_cpu
+#ifndef arch_sync_dma_for_cpu
 /*
  * assumes buffers are in coherent/uncached memory, e.g. because
  * MMU is only enabled in barebox_arm_entry which hasn't run yet.
  */
-static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
-			     enum dma_data_direction dir)
+void arch_sync_dma_for_cpu(void *vaddr, size_t size,
+			   enum dma_data_direction dir)
 {
-	barrier_data((void *)address);
+	barrier_data(vaddr);
 }
 #endif
 
-#ifndef dma_sync_single_for_device
-static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
-				enum dma_data_direction dir)
+#ifndef arch_sync_dma_for_device
+void arch_sync_dma_for_device(void *vaddr, size_t size,
+			      enum dma_data_direction dir);
 {
-	barrier_data((void *)address);
+	barrier_data(address);
 }
 #endif
 #endif
 
+static inline void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
+					   size_t size, enum dma_data_direction dir)
+{
+	void *ptr = dma_to_cpu(dev, address);
+
+	arch_sync_dma_for_cpu(ptr, size, dir);
+}
+
+static inline void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
+					      size_t size, enum dma_data_direction dir)
+{
+	void *ptr = dma_to_cpu(dev, address);
+
+	arch_sync_dma_for_device(ptr, size, dir);
+}
+
+static inline dma_addr_t dma_map_single(struct device *dev, void *ptr,
+					size_t size, enum dma_data_direction dir)
+{
+	arch_sync_dma_for_device(ptr, size, dir);
+
+	return cpu_to_dma(dev, ptr);
+}
+
+static inline void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
+				    size_t size, enum dma_data_direction dir)
+{
+	dma_sync_single_for_cpu(dev, dma_addr, size, dir);
+}
+
+#define DMA_BIT_MASK(n)	(((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
+
+#define DMA_MASK_NONE	0x0ULL
+
+static inline void dma_set_mask(struct device *dev, u64 dma_mask)
+{
+	dev->dma_mask = dma_mask;
+}
+
+#define DMA_ERROR_CODE  (~(dma_addr_t)0)
+
+static inline int dma_mapping_error(struct device *dev, dma_addr_t dma_addr)
+{
+	return dma_addr == DMA_ERROR_CODE ||
+		(dev->dma_mask && dma_addr > dev->dma_mask);
+}
+
 #ifndef dma_alloc_coherent
 void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle);
 #endif
-- 
2.30.2




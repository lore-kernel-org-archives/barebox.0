Delivery-date: Sun, 04 Jun 2023 23:52:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q5vdv-00Awut-TL
	for lore@lore.pengutronix.de; Sun, 04 Jun 2023 23:52:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q5vdr-0004s5-CM
	for lore@pengutronix.de; Sun, 04 Jun 2023 23:52:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GaB+nRssHN64nZIm9oA1l9PtWTuPXMbIaqjNb7TNaqs=; b=g8xF/m8IG5sIA9
	RQbyWbeN5qgcnAR/MjkqdJQyV7NNeXrYJhy4+rVIuc8HCIYRz4BRYVvibOgS//tNnySZM4mZ+Y3GE
	BNUkL5ScGg+IdHJIC34ojNsK4bxB8zqtroDQfTfp8Le5HZgWoqvPaIMqJoSdwyW5SK6oE9isBEB/L
	YZ5c/bALfkBzypVoRs8my7GSWAlCHx9nZyh5nxdVTnYZmo2VyUZDDjNWw0JgpTL04PCR5TE4guiCm
	Ux9Oij8oTUI/3Fc3CgJJZkaMUHaSV4+FxheOw9RAxSqhOCSlgIZQpmOawFNJnxdW3xs8pa0gGeXT1
	ipF0/4OWFYQ4Ds66S/7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5vcW-00DEIX-1y;
	Sun, 04 Jun 2023 21:50:40 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5vcQ-00DEDh-03
	for barebox@lists.infradead.org;
	Sun, 04 Jun 2023 21:50:38 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b1b8593263so18664531fa.2
        for <barebox@lists.infradead.org>; Sun, 04 Jun 2023 14:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685915431; x=1688507431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GaB+nRssHN64nZIm9oA1l9PtWTuPXMbIaqjNb7TNaqs=;
        b=W6KbvXkrddgWq4o1A4csFPKSNP0liYtGt8rLFoetUF4S0g9WUXtO6KIeCT9GsneHAn
         pyyzsRgDyHnnj1YWfcvVynMnDlp7vtFbNWpnyXblIc+xoax3N+HUQ3XbCYN2ODE4AQ1F
         Q3neYEX+UFbh9mY4KIR40fh6Fzo1sUcOXxPuNvE7/74lOwiYL3npwOLPbn2aOoESwXYT
         O3NVo056eBBf2LdKboXCaEPLnIveQOBbBxvUwqLeFBXqnXlHwpcYX1hhjy9XZTEF/1qF
         al3BTY1N4NTAJaY4L23guuvlCc+hiTdWEPX5WAGfo648uPuY3sVMnW6ZWN/0WNHtCqxm
         1Qbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685915431; x=1688507431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GaB+nRssHN64nZIm9oA1l9PtWTuPXMbIaqjNb7TNaqs=;
        b=iawb+if4PGi04DOXmA0NqPE4ryOi09b9AOR2s0CmPyMjKy7F/Xs+e6WkDT5n6lY0Pk
         XSGeRPnA3hcySbwfSHlAGoWOWaJ2SyKeXsgczp+yTSvjsNJIJXNZ6sTQ0+0WSbERJDAj
         oqOvXvI4h/S7sZaVTKQ13k+kLdnmwsahDHjWgVtGvkOiChv5g5tZlyRvFW5BNMwjvb54
         /ptXUdkmqJ//dfVbhnGCV31qAN1mu90jnKCoRAtl8I9Kio0hPimcXTlLejzkg4beSEr0
         fQnZAU2boT2J1Q8fEc4l8Mpb4k4xI2C8kpp6ZFCiPiMfeAoo5Whoy2z8ZX69OoDqvDGs
         i2GA==
X-Gm-Message-State: AC+VfDyjCXXmG/+m2vG4SiYotcHMPS7bwlQrsxbc0NLVTTTeKCDz+P20
	TynYWQ2uSi+g05HOgzyP0euIRlNfcr5nUg==
X-Google-Smtp-Source: ACHHUZ7ggVIY1kwPixXnk38rpgl9UEn3Dfzq+U6Y5jvkBoXwQWbcU8zRGIcGI18C/WDuyJVxcbWPBg==
X-Received: by 2002:a2e:90cb:0:b0:2b1:bbf9:8bdd with SMTP id o11-20020a2e90cb000000b002b1bbf98bddmr2173617ljg.33.1685915430565;
        Sun, 04 Jun 2023 14:50:30 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.237])
        by smtp.gmail.com with ESMTPSA id 7-20020a05651c00c700b002adc6c2cb3bsm1173561ljr.5.2023.06.04.14.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jun 2023 14:50:29 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 00:45:01 +0300
Message-ID: <20230604215002.20240-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230604215002.20240-1-denorl2009@gmail.com>
References: <20230604215002.20240-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_145034_077283_7551DB95 
X-CRM114-Status: GOOD (  22.63  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] dma: rework dma_sync_single_for_*() interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently, a lot of code handles dma_addr_t values as if they actually
hold CPU addresses. However, this is not always true. For example, MIPS
architecture requires an explicit conversion from the physical address
space to some virtual address space segment to get a valid CPU-side
pointer. Another issue is that DMA ranges that may be specified in a
device tree will not work this way. To get from a virtual address to a
dma handle and vice versa we need to add/subtract some offset, which is
calculated from "dma-ranges" property. Only dma_map_single() was doing
this, but dma_sync_single_for_*() also should.

Improve the interface by adding 'struct device' as the first argument to
the dma_sync_single_for_*(). This allows to do cpu_to_dma/dma_to_cpu()
conversions in common code and call into arch-specific code with proper
cpu-side addresses. To make things more clear, make the virtual address
argument of those arch-side functions be properly represented with a
void* type.

Apply the required changes in device drivers that use the affected
functions, making them pass the appropriate device pointer.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/arm/cpu/dma_32.c               | 17 +++---
 arch/arm/cpu/dma_64.c               | 13 +++--
 arch/arm/cpu/mmu-common.c           |  9 ++--
 arch/arm/include/asm/dma.h          | 12 ++---
 arch/arm/mach-bcm283x/mbox.c        |  4 +-
 arch/kvx/lib/dma-default.c          | 16 +++---
 arch/mips/lib/dma-default.c         | 18 +++----
 arch/riscv/cpu/dma.c                | 23 +++++----
 arch/sandbox/include/asm/dma.h      | 12 ++---
 arch/x86/include/asm/dma.h          | 12 ++---
 drivers/crypto/caam/caam-blobgen.c  | 28 +++++-----
 drivers/crypto/caam/caamrng.c       |  6 +--
 drivers/crypto/caam/rng_self_test.c |  6 +--
 drivers/dma/Makefile                |  1 -
 drivers/dma/map.c                   | 39 --------------
 drivers/mci/dove-sdhci.c            |  8 +--
 drivers/mci/stm32_sdmmc2.c          |  8 +--
 drivers/mci/tegra-sdmmc.c           |  8 +--
 drivers/net/ag71xx.c                |  8 +--
 drivers/net/arc_emac.c              | 10 ++--
 drivers/net/at91_ether.c            | 11 ++--
 drivers/net/bcmgenet.c              |  4 +-
 drivers/net/cpsw.c                  |  8 +--
 drivers/net/davinci_emac.c          |  8 +--
 drivers/net/designware.c            | 10 ++--
 drivers/net/designware_eqos.c       |  6 ++-
 drivers/net/e1000/main.c            |  4 +-
 drivers/net/fec_imx.c               |  4 +-
 drivers/net/fsl-fman.c              |  7 +--
 drivers/net/macb.c                  | 20 ++++----
 drivers/net/mvneta.c                |  8 +--
 drivers/net/orion-gbe.c             |  8 +--
 drivers/net/r8169_main.c            | 10 ++--
 drivers/usb/gadget/udc/fsl_udc.c    |  8 +--
 drivers/usb/host/ohci-hcd.c         |  7 +--
 include/dma.h                       | 80 ++++++++++++++++++++++-------
 36 files changed, 236 insertions(+), 225 deletions(-)
 delete mode 100644 drivers/dma/map.c

diff --git a/arch/arm/cpu/dma_32.c b/arch/arm/cpu/dma_32.c
index a66aa26b9b..842ea7033a 100644
--- a/arch/arm/cpu/dma_32.c
+++ b/arch/arm/cpu/dma_32.c
@@ -1,20 +1,19 @@
 #include <dma.h>
 #include <asm/mmu.h>
 
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
diff --git a/arch/arm/cpu/dma_64.c b/arch/arm/cpu/dma_64.c
index b4ae736c9b..74d7167860 100644
--- a/arch/arm/cpu/dma_64.c
+++ b/arch/arm/cpu/dma_64.c
@@ -2,15 +2,14 @@
 #include <asm/mmu.h>
 #include <asm/cache.h>
 
-void dma_sync_single_for_device(dma_addr_t address, size_t size,
-                                enum dma_data_direction dir)
+void arch_sync_dma_for_device(void *vaddr, size_t size,
+                              enum dma_data_direction dir)
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
diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 5208db21ec..acd4a9d354 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -14,14 +14,11 @@
 #include <zero_page.h>
 #include "mmu-common.h"
 
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
diff --git a/arch/arm/mach-bcm283x/mbox.c b/arch/arm/mach-bcm283x/mbox.c
index 3abb81cc9b..32d646f4ad 100644
--- a/arch/arm/mach-bcm283x/mbox.c
+++ b/arch/arm/mach-bcm283x/mbox.c
@@ -66,7 +66,7 @@ static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 	/* Send the request */
 	val = BCM2835_MBOX_PACK(chan, send);
 	pr_debug("mbox: TX raw: 0x%08x\n", val);
-	dma_sync_single_for_device((unsigned long)send, buffer->buf_size,
+	dma_sync_single_for_device(NULL, (unsigned long)send, buffer->buf_size,
 				   DMA_BIDIRECTIONAL);
 	writel(val, mbox_base + MAIL1_WRT);
 
@@ -84,7 +84,7 @@ static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 	/* Read the response */
 	val = readl(mbox_base + MAIL0_RD);
 	pr_debug("mbox: RX raw: 0x%08x\n", val);
-	dma_sync_single_for_cpu((unsigned long)send, buffer->buf_size,
+	dma_sync_single_for_cpu(NULL, (unsigned long)send, buffer->buf_size,
 				DMA_BIDIRECTIONAL);
 
 	/* Validate the response */
diff --git a/arch/kvx/lib/dma-default.c b/arch/kvx/lib/dma-default.c
index c84a32954e..1d37fb27a6 100644
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
+	unsigned long start = (unsigned long)vaddr;
+
 	/* dcache is Write-Through: no need to flush to force writeback */
 	switch (dir) {
 	case DMA_FROM_DEVICE:
-		invalidate_dcache_range(addr, addr + size);
+		invalidate_dcache_range(start, start + size);
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
+	unsigned long start = (unsigned long)vaddr;
+
 	/* CPU does not speculatively prefetches */
 	switch (dir) {
 	case DMA_FROM_DEVICE:
@@ -48,7 +52,7 @@ void dma_sync_single_for_cpu(dma_addr_t addr, size_t size,
 	case DMA_TO_DEVICE:
 		break;
 	case DMA_BIDIRECTIONAL:
-		invalidate_dcache_range(addr, addr + size);
+		invalidate_dcache_range(start, start + size);
 		break;
 	default:
 		BUG();
diff --git a/arch/mips/lib/dma-default.c b/arch/mips/lib/dma-default.c
index 0347d7a7db..54e6665468 100644
--- a/arch/mips/lib/dma-default.c
+++ b/arch/mips/lib/dma-default.c
@@ -6,35 +6,35 @@
 #include <dma.h>
 #include <asm/io.h>
 
-void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
-			     enum dma_data_direction dir)
+void arch_sync_dma_for_cpu(void *vaddr, size_t size,
+			   enum dma_data_direction dir)
 {
-	unsigned long virt = (unsigned long)phys_to_virt(address);
+	unsigned long start = (unsigned long)vaddr;
 
 	switch (dir) {
 	case DMA_TO_DEVICE:
 		break;
 	case DMA_FROM_DEVICE:
 	case DMA_BIDIRECTIONAL:
-		dma_inv_range(virt, virt + size);
+		dma_inv_range(start, start + size);
 		break;
 	default:
 		BUG();
 	}
 }
 
-void dma_sync_single_for_device(dma_addr_t address, size_t size,
-				enum dma_data_direction dir)
+void arch_sync_dma_for_device(void *vaddr, size_t size,
+			      enum dma_data_direction dir)
 {
-	unsigned long virt = (unsigned long)phys_to_virt(address);
+	unsigned long start = (unsigned long)vaddr;
 
 	switch (dir) {
 	case DMA_FROM_DEVICE:
-		dma_inv_range(virt, virt + size);
+		dma_inv_range(start, start + size);
 		break;
 	case DMA_TO_DEVICE:
 	case DMA_BIDIRECTIONAL:
-		dma_flush_range(virt, virt + size);
+		dma_flush_range(start, start + size);
 		break;
 	default:
 		BUG();
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
 
diff --git a/drivers/crypto/caam/caam-blobgen.c b/drivers/crypto/caam/caam-blobgen.c
index 5ab7ad3a6e..1ce636a716 100644
--- a/drivers/crypto/caam/caam-blobgen.c
+++ b/drivers/crypto/caam/caam-blobgen.c
@@ -129,14 +129,14 @@ static int caam_blob_decrypt(struct blobgen *bg, const char *modifier,
 
 	jr_jobdesc_blob_decap(ctx, modifier_len, blobsize);
 
-	dma_sync_single_for_device((unsigned long)desc, desc_bytes(desc),
+	dma_sync_single_for_device(jrdev, (unsigned long)desc, desc_bytes(desc),
 				   DMA_TO_DEVICE);
 
-	dma_sync_single_for_device((unsigned long)modifier, modifier_len,
+	dma_sync_single_for_device(jrdev, (unsigned long)modifier, modifier_len,
 				   DMA_TO_DEVICE);
-	dma_sync_single_for_device((unsigned long)*plain, *plainsize,
+	dma_sync_single_for_device(jrdev, (unsigned long)*plain, *plainsize,
 				   DMA_FROM_DEVICE);
-	dma_sync_single_for_device((unsigned long)blob, blobsize,
+	dma_sync_single_for_device(jrdev, (unsigned long)blob, blobsize,
 				   DMA_TO_DEVICE);
 
 	testres.err = 0;
@@ -147,11 +147,11 @@ static int caam_blob_decrypt(struct blobgen *bg, const char *modifier,
 
 	ret = testres.err;
 
-	dma_sync_single_for_cpu((unsigned long)modifier, modifier_len,
+	dma_sync_single_for_cpu(jrdev, (unsigned long)modifier, modifier_len,
 				DMA_TO_DEVICE);
-	dma_sync_single_for_cpu((unsigned long)*plain, *plainsize,
+	dma_sync_single_for_cpu(jrdev, (unsigned long)*plain, *plainsize,
 				DMA_FROM_DEVICE);
-	dma_sync_single_for_cpu((unsigned long)blob, blobsize,
+	dma_sync_single_for_cpu(jrdev, (unsigned long)blob, blobsize,
 				DMA_TO_DEVICE);
 
 	return ret;
@@ -178,14 +178,14 @@ static int caam_blob_encrypt(struct blobgen *bg, const char *modifier,
 
 	jr_jobdesc_blob_encap(ctx, modifier_len, plainsize);
 
-	dma_sync_single_for_device((unsigned long)desc, desc_bytes(desc),
+	dma_sync_single_for_device(jrdev, (unsigned long)desc, desc_bytes(desc),
 				   DMA_TO_DEVICE);
 
-	dma_sync_single_for_device((unsigned long)modifier, modifier_len,
+	dma_sync_single_for_device(jrdev, (unsigned long)modifier, modifier_len,
 				   DMA_TO_DEVICE);
-	dma_sync_single_for_device((unsigned long)plain, plainsize,
+	dma_sync_single_for_device(jrdev, (unsigned long)plain, plainsize,
 				   DMA_TO_DEVICE);
-	dma_sync_single_for_device((unsigned long)blob, *blobsize,
+	dma_sync_single_for_device(jrdev, (unsigned long)blob, *blobsize,
 				   DMA_FROM_DEVICE);
 
 	testres.err = 0;
@@ -196,11 +196,11 @@ static int caam_blob_encrypt(struct blobgen *bg, const char *modifier,
 
 	ret = testres.err;
 
-	dma_sync_single_for_cpu((unsigned long)modifier, modifier_len,
+	dma_sync_single_for_cpu(jrdev, (unsigned long)modifier, modifier_len,
 				DMA_TO_DEVICE);
-	dma_sync_single_for_cpu((unsigned long)plain, plainsize,
+	dma_sync_single_for_cpu(jrdev, (unsigned long)plain, plainsize,
 				DMA_TO_DEVICE);
-	dma_sync_single_for_cpu((unsigned long)blob, *blobsize,
+	dma_sync_single_for_cpu(jrdev, (unsigned long)blob, *blobsize,
 				DMA_FROM_DEVICE);
 
 	return ret;
diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrng.c
index 240a440c76..ede35cea7f 100644
--- a/drivers/crypto/caam/caamrng.c
+++ b/drivers/crypto/caam/caamrng.c
@@ -90,7 +90,7 @@ static void rng_done(struct device *jrdev, u32 *desc, u32 err, void *context)
 	bd->empty = BUF_NOT_EMPTY;
 
 	/* Buffer refilled, invalidate cache */
-	dma_sync_single_for_cpu(bd->addr, RN_BUF_SIZE, DMA_FROM_DEVICE);
+	dma_sync_single_for_cpu(jrdev, bd->addr, RN_BUF_SIZE, DMA_FROM_DEVICE);
 
 	print_hex_dump_debug("rng refreshed buf@: ", DUMP_PREFIX_OFFSET,
 			     16, 4, bd->buf, RN_BUF_SIZE, 1);
@@ -105,7 +105,7 @@ static inline int submit_job(struct caam_rng_ctx *ctx, int to_current)
 
 	dev_dbg(jrdev, "submitting job %d\n", !(to_current ^ ctx->current_buf));
 
-	dma_sync_single_for_device((unsigned long)desc, desc_bytes(desc),
+	dma_sync_single_for_device(jrdev, (unsigned long)desc, desc_bytes(desc),
 				   DMA_TO_DEVICE);
 
 	err = caam_jr_enqueue(jrdev, desc, rng_done, ctx);
@@ -183,7 +183,7 @@ static inline int rng_create_sh_desc(struct caam_rng_ctx *ctx)
 
 	ctx->sh_desc_dma = (dma_addr_t)desc;
 
-	dma_sync_single_for_device((unsigned long)desc, desc_bytes(desc),
+	dma_sync_single_for_device(ctx->jrdev, (unsigned long)desc, desc_bytes(desc),
 				   DMA_TO_DEVICE);
 
 	print_hex_dump_debug("rng shdesc@: ", DUMP_PREFIX_OFFSET, 16, 4,
diff --git a/drivers/crypto/caam/rng_self_test.c b/drivers/crypto/caam/rng_self_test.c
index c02f4072df..3b20f8aad2 100644
--- a/drivers/crypto/caam/rng_self_test.c
+++ b/drivers/crypto/caam/rng_self_test.c
@@ -186,9 +186,9 @@ int caam_rng_self_test(struct device *dev, const u8 caam_era, const u8 rngvid,
 
 	construct_rng_self_test_jobdesc(desc, rng_st_dsc, result, desc_size);
 
-	dma_sync_single_for_device((unsigned long)desc,
+	dma_sync_single_for_device(dev, (unsigned long)desc,
 			desc_size * sizeof(*desc), DMA_TO_DEVICE);
-	dma_sync_single_for_device((unsigned long)result,
+	dma_sync_single_for_device(dev, (unsigned long)result,
 			result_size * sizeof(*result), DMA_FROM_DEVICE);
 
 	/* wait for job completion */
@@ -205,7 +205,7 @@ int caam_rng_self_test(struct device *dev, const u8 caam_era, const u8 rngvid,
 		goto err;
 	}
 
-	dma_sync_single_for_cpu((unsigned long)result, result_size * sizeof(*result),
+	dma_sync_single_for_cpu(dev, (unsigned long)result, result_size * sizeof(*result),
 			DMA_FROM_DEVICE);
 
 	if (memcmp(result, exp_result, sizeof(*result) * result_size) != 0) {
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
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index 0c73441d5a..11a9771de8 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -97,10 +97,10 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 
 		if (data->flags & MMC_DATA_WRITE)
-			dma_sync_single_for_device((unsigned long)data->src,
+			dma_sync_single_for_device(host->mci.hw_dev, (unsigned long)data->src,
 						    num_bytes, DMA_TO_DEVICE);
 		else
-			dma_sync_single_for_device((unsigned long)data->dest,
+			dma_sync_single_for_device(host->mci.hw_dev, (unsigned long)data->dest,
 						    num_bytes, DMA_FROM_DEVICE);
 	}
 
@@ -126,10 +126,10 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	if (data) {
 		if (data->flags & MMC_DATA_WRITE)
-			dma_sync_single_for_cpu((unsigned long)data->src,
+			dma_sync_single_for_cpu(host->mci.hw_dev, (unsigned long)data->src,
 						num_bytes, DMA_TO_DEVICE);
 		else
-			dma_sync_single_for_cpu((unsigned long)data->dest,
+			dma_sync_single_for_cpu(host->mci.hw_dev, (unsigned long)data->dest,
 					 num_bytes, DMA_FROM_DEVICE);
 
 		ret = dove_sdhci_wait_for_done(host, SDHCI_INT_XFER_COMPLETE);
diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index b7bf41ee50..90e969a867 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -282,10 +282,10 @@ static void stm32_sdmmc2_start_data(struct stm32_sdmmc2_priv *priv,
 	writel(data_ctrl, priv->base + SDMMC_DCTRL);
 
 	if (data->flags & MMC_DATA_WRITE)
-		dma_sync_single_for_device((unsigned long)idmabase0,
+		dma_sync_single_for_device(priv->dev, (unsigned long)idmabase0,
 					   num_bytes, DMA_TO_DEVICE);
 	else
-		dma_sync_single_for_device((unsigned long)idmabase0,
+		dma_sync_single_for_device(priv->dev, (unsigned long)idmabase0,
 					   num_bytes, DMA_FROM_DEVICE);
 
 	/* Enable internal DMA */
@@ -437,10 +437,10 @@ static int stm32_sdmmc2_end_data(struct stm32_sdmmc2_priv *priv,
 	}
 
 	if (data->flags & MMC_DATA_WRITE)
-		dma_sync_single_for_cpu((unsigned long)data->src,
+		dma_sync_single_for_cpu(priv->dev, (unsigned long)data->src,
 					num_bytes, DMA_TO_DEVICE);
 	else
-		dma_sync_single_for_cpu((unsigned long)data->dest,
+		dma_sync_single_for_cpu(priv->dev, (unsigned long)data->dest,
 					num_bytes, DMA_FROM_DEVICE);
 
 	if (status & SDMMC_STA_DCRCFAIL) {
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index d3eb39bb32..1359663a73 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -113,11 +113,11 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		num_bytes = data->blocks * data->blocksize;
 
 		if (data->flags & MMC_DATA_WRITE) {
-			dma_sync_single_for_device((unsigned long)data->src,
+			dma_sync_single_for_device(mci->hw_dev, (unsigned long)data->src,
 						   num_bytes, DMA_TO_DEVICE);
 			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, (u32)data->src);
 		} else {
-			dma_sync_single_for_device((unsigned long)data->dest,
+			dma_sync_single_for_device(mci->hw_dev, (unsigned long)data->dest,
 						   num_bytes, DMA_FROM_DEVICE);
 			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, (u32)data->dest);
 		}
@@ -220,10 +220,10 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, val);
 
 		if (data->flags & MMC_DATA_WRITE)
-			dma_sync_single_for_cpu((unsigned long)data->src,
+			dma_sync_single_for_cpu(mci->hw_dev, (unsigned long)data->src,
 						num_bytes, DMA_TO_DEVICE);
 		else
-			dma_sync_single_for_cpu((unsigned long)data->dest,
+			dma_sync_single_for_cpu(mci->hw_dev, (unsigned long)data->dest,
 						num_bytes, DMA_FROM_DEVICE);
 	}
 
diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index 13e104d225..5979d974da 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -403,7 +403,7 @@ static int ag71xx_ether_rx(struct eth_device *edev)
 		rx_pkt = priv->rx_pkt[priv->next_rx];
 
 		/* invalidate */
-		dma_sync_single_for_cpu((unsigned long)rx_pkt, pktlen,
+		dma_sync_single_for_cpu(priv->dev, (unsigned long)rx_pkt, pktlen,
 						DMA_FROM_DEVICE);
 
 		net_receive(edev, rx_pkt, pktlen - 4);
@@ -431,7 +431,7 @@ static int ag71xx_ether_send(struct eth_device *edev, void *packet, int length)
 	int ret = 0;
 
 	/* flush */
-	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_device(dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 
 	f->pkt_start_addr = virt_to_phys(packet);
 	f->res1 = 0;
@@ -441,7 +441,7 @@ static int ag71xx_ether_send(struct eth_device *edev, void *packet, int length)
 	ag71xx_wr(priv, AG71XX_REG_TX_CTRL, TX_CTRL_TXE);
 
 	/* flush again?! */
-	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 
 	start = get_time_ns();
 	while (!f->is_empty) {
@@ -491,7 +491,7 @@ static int ag71xx_ether_init(struct eth_device *edev)
 		fr->next_desc = virt_to_phys(&priv->fifo_rx[(i + 1) % NO_OF_RX_FIFOS]);
 
 		/* invalidate */
-		dma_sync_single_for_device((unsigned long)rxbuf, MAX_RBUFF_SZ,
+		dma_sync_single_for_device(priv->dev, (unsigned long)rxbuf, MAX_RBUFF_SZ,
 					DMA_FROM_DEVICE);
 
 		rxbuf += MAX_RBUFF_SZ;
diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 6a68405889..635a1086aa 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -189,7 +189,7 @@ static int arc_emac_open(struct eth_device *edev)
 		rxbd->data = cpu_to_le32(rxbuf);
 
 		/* Return ownership to EMAC */
-		dma_sync_single_for_device((unsigned long)rxbuf, PKTSIZE,
+		dma_sync_single_for_device(edev->parent, (unsigned long)rxbuf, PKTSIZE,
 					   DMA_FROM_DEVICE);
 		rxbd->info = cpu_to_le32(FOR_EMAC | PKTSIZE);
 
@@ -240,7 +240,7 @@ static int arc_emac_send(struct eth_device *edev, void *data, int length)
 		length = EMAC_ZLEN;
 	}
 
-	dma_sync_single_for_device((unsigned long)data, length, DMA_TO_DEVICE);
+	dma_sync_single_for_device(edev->parent, (unsigned long)data, length, DMA_TO_DEVICE);
 
 	bd->data = cpu_to_le32(data);
 	bd->info = cpu_to_le32(FOR_EMAC | FIRST_OR_LAST_MASK | length);
@@ -249,7 +249,7 @@ static int arc_emac_send(struct eth_device *edev, void *data, int length)
 	ret = wait_on_timeout(20 * MSECOND,
 			      (arc_reg_get(priv, R_STATUS) & TXINT_MASK) != 0);
 
-	dma_sync_single_for_cpu((unsigned long)data, length, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(edev->parent, (unsigned long)data, length, DMA_TO_DEVICE);
 
 	if (ret) {
 		dev_err(&edev->dev, "transmit timeout\n");
@@ -297,12 +297,12 @@ static int arc_emac_recv(struct eth_device *edev)
 
 		pktlen = info & LEN_MASK;
 
-		dma_sync_single_for_cpu((unsigned long)rxbd->data, pktlen,
+		dma_sync_single_for_cpu(edev->parent, (unsigned long)rxbd->data, pktlen,
 					DMA_FROM_DEVICE);
 
 		net_receive(edev, (unsigned char *)rxbd->data, pktlen);
 
-		dma_sync_single_for_device((unsigned long)rxbd->data, pktlen,
+		dma_sync_single_for_device(edev->parent, (unsigned long)rxbd->data, pktlen,
 					   DMA_FROM_DEVICE);
 
 		rxbd->info = cpu_to_le32(FOR_EMAC | PKTSIZE);
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 5cebb8b44c..29a8e3be95 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -186,7 +186,8 @@ static int at91_ether_send(struct eth_device *edev, void *packet, int length)
 {
 	while (!(at91_emac_read(AT91_EMAC_TSR) & AT91_EMAC_TSR_BNQ));
 
-	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_device(edev->parent, (unsigned long)packet,
+				   length, DMA_TO_DEVICE);
 
 	/* Set address of the data in the Transmit Address register */
 	at91_emac_write(AT91_EMAC_TAR, (unsigned long) packet);
@@ -198,7 +199,8 @@ static int at91_ether_send(struct eth_device *edev, void *packet, int length)
 	at91_emac_write(AT91_EMAC_TSR,
 		at91_emac_read(AT91_EMAC_TSR) | AT91_EMAC_TSR_COMP);
 
-	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(edev->parent, (unsigned long)packet,
+				length, DMA_TO_DEVICE);
 
 	return 0;
 }
@@ -214,10 +216,10 @@ static int at91_ether_rx(struct eth_device *edev)
 
 	size = rbfp->size & RBF_SIZE;
 
-	dma_sync_single_for_cpu((unsigned long)rbfp->addr, size,
+	dma_sync_single_for_cpu(edev->parent, (unsigned long)rbfp->addr, size,
 				DMA_FROM_DEVICE);
 	net_receive(edev, (unsigned char *)(rbfp->addr & RBF_ADDR), size);
-	dma_sync_single_for_device((unsigned long)rbfp->addr, size,
+	dma_sync_single_for_device(edev->parent, (unsigned long)rbfp->addr, size,
 				   DMA_FROM_DEVICE);
 
 	rbfp->addr &= ~RBF_OWNER;
@@ -307,6 +309,7 @@ static int at91_ether_probe(struct device *dev)
 	miibus = &ether_dev->miibus;
 	edev->priv = ether_dev;
 
+	edev->parent = dev;
 	edev->init = at91_ether_init;
 	edev->open = at91_ether_open;
 	edev->send = at91_ether_send;
diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
index 3ae341a658..9ec6aaf1e8 100644
--- a/drivers/net/bcmgenet.c
+++ b/drivers/net/bcmgenet.c
@@ -326,7 +326,7 @@ static int bcmgenet_gmac_eth_recv(struct eth_device *edev)
 	addr_hi = readl(desc_base + DMA_DESC_ADDRESS_HI);
 	addr = (u64)addr_hi << 32 | addr_lo;
 
-	dma_sync_single_for_cpu(addr, length, DMA_FROM_DEVICE);
+	dma_sync_single_for_cpu(priv->dev, addr, length, DMA_FROM_DEVICE);
 
 	/* To cater for the IP header alignment the hardware does.
 	 * This would actually not be needed if we don't program
@@ -334,7 +334,7 @@ static int bcmgenet_gmac_eth_recv(struct eth_device *edev)
 	 */
 	net_receive(edev, (void *)addr + RX_BUF_OFFSET, length - RX_BUF_OFFSET);
 
-	dma_sync_single_for_device(addr, length, DMA_FROM_DEVICE);
+	dma_sync_single_for_device(priv->dev, addr, length, DMA_FROM_DEVICE);
 
 	/* Tell the MAC we have consumed that last receive buffer. */
 	priv->c_index = (priv->c_index + 1) & 0xffff;
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index eacb382afe..0449240f98 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1021,10 +1021,10 @@ static int cpsw_send(struct eth_device *edev, void *packet, int length)
 
 	dev_dbg(&slave->dev, "%s: %i bytes @ 0x%p\n", __func__, length, packet);
 
-	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_device(priv->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 	ret = cpdma_submit(priv, &priv->tx_chan, packet,
 			   length, BIT(slave->slave_num));
-	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(priv->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 
 	return ret;
 }
@@ -1037,10 +1037,10 @@ static int cpsw_recv(struct eth_device *edev)
 	int len;
 
 	while (cpdma_process(slave, &priv->rx_chan, &buffer, &len) >= 0) {
-		dma_sync_single_for_cpu((unsigned long)buffer, len,
+		dma_sync_single_for_cpu(priv->dev, (unsigned long)buffer, len,
 				DMA_FROM_DEVICE);
 		net_receive(edev, buffer, len);
-		dma_sync_single_for_device((unsigned long)buffer, len,
+		dma_sync_single_for_device(priv->dev, (unsigned long)buffer, len,
 				DMA_FROM_DEVICE);
 		cpdma_submit(priv, &priv->rx_chan, buffer, PKTSIZE, 0);
 	}
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 7f2e1af3f7..fd1cb37af4 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -430,7 +430,7 @@ static int davinci_emac_send(struct eth_device *edev, void *packet, int length)
 				    EMAC_CPPI_OWNERSHIP_BIT |
 				    EMAC_CPPI_EOP_BIT),
 		priv->emac_tx_desc + EMAC_DESC_PKT_FLAG_LEN);
-	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_device(priv->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 	/* Send the packet */
 	writel(BD_TO_HW(priv->emac_tx_desc), priv->adap_emac + EMAC_TX0HDP);
 
@@ -448,7 +448,7 @@ static int davinci_emac_send(struct eth_device *edev, void *packet, int length)
 			break;
 		}
 	}
-	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(priv->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 
 	dev_dbg(priv->dev, "- emac_send (ret_status %i)\n", ret_status);
 	return ret_status;
@@ -480,9 +480,9 @@ static int davinci_emac_recv(struct eth_device *edev)
 		pkt = (unsigned char *)readl(rx_curr_desc + EMAC_DESC_BUFFER);
 		len = readl(rx_curr_desc + EMAC_DESC_BUFF_OFF_LEN) & 0xffff;
 		dev_dbg(priv->dev, "| emac_recv got packet (length %i)\n", len);
-		dma_sync_single_for_cpu((unsigned long)pkt, len, DMA_FROM_DEVICE);
+		dma_sync_single_for_cpu(priv->dev, (unsigned long)pkt, len, DMA_FROM_DEVICE);
 		net_receive(edev, pkt, len);
-		dma_sync_single_for_device((unsigned long)pkt, len, DMA_FROM_DEVICE);
+		dma_sync_single_for_device(priv->dev, (unsigned long)pkt, len, DMA_FROM_DEVICE);
 		ret = len;
 	}
 
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index e9bc46da00..6936c844cd 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -156,7 +156,7 @@ static void rx_descs_init(struct eth_device *dev)
 		else
 			desc_p->dmamac_cntl |= DESC_RXCTRL_RXCHAIN;
 
-		dma_sync_single_for_cpu(desc_p->dmamac_addr,
+		dma_sync_single_for_cpu(dev->parent, desc_p->dmamac_addr,
 					CONFIG_ETH_BUFSIZE, DMA_FROM_DEVICE);
 		desc_p->txrx_status = DESC_RXSTS_OWNBYDMA;
 	}
@@ -286,7 +286,7 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
 	}
 
 	memcpy(dmamac_addr(desc_p), packet, length);
-	dma_sync_single_for_device(desc_p->dmamac_addr, length,
+	dma_sync_single_for_device(dev->parent, desc_p->dmamac_addr, length,
 				   DMA_TO_DEVICE);
 
 	if (priv->enh_desc) {
@@ -314,7 +314,7 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
 
 	/* Start the transmission */
 	writel(POLL_DATA, &dma_p->txpolldemand);
-	dma_sync_single_for_cpu(desc_p->dmamac_addr, length,
+	dma_sync_single_for_cpu(dev->parent, desc_p->dmamac_addr, length,
 				DMA_TO_DEVICE);
 
 	return 0;
@@ -358,10 +358,10 @@ static int dwc_ether_rx(struct eth_device *dev)
 		length = (status & DESC_RXSTS_FRMLENMSK) >>
 			 DESC_RXSTS_FRMLENSHFT;
 
-		dma_sync_single_for_cpu(desc_p->dmamac_addr,
+		dma_sync_single_for_cpu(dev->parent, desc_p->dmamac_addr,
 					length, DMA_FROM_DEVICE);
 		net_receive(dev, dmamac_addr(desc_p), length);
-		dma_sync_single_for_device(desc_p->dmamac_addr,
+		dma_sync_single_for_device(dev->parent, desc_p->dmamac_addr,
 					   length, DMA_FROM_DEVICE);
 		ret = length;
 	}
diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 2e2a1cf8bf..3fa5bf58c2 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -738,9 +738,11 @@ static int eqos_recv(struct eth_device *edev)
 	frame = phys_to_virt(rx_desc->des0);
 	length = rx_desc->des3 & 0x7fff;
 
-	dma_sync_single_for_cpu((unsigned long)frame, length, DMA_FROM_DEVICE);
+	dma_sync_single_for_cpu(edev->parent, (unsigned long)frame,
+				length, DMA_FROM_DEVICE);
 	net_receive(edev, frame, length);
-	dma_sync_single_for_device((unsigned long)frame, length, DMA_FROM_DEVICE);
+	dma_sync_single_for_device(edev->parent, (unsigned long)frame,
+				   length, DMA_FROM_DEVICE);
 
 	rx_desc->des0 = (unsigned long)frame;
 	rx_desc->des1 = 0;
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index c259d72f27..76acea563e 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3438,12 +3438,12 @@ static int e1000_poll(struct eth_device *edev)
 	if (readb(&rd->status) & E1000_RXD_STAT_DD) {
 		const uint16_t len = readw(&rd->length);
 
-		dma_sync_single_for_cpu(hw->packet_dma, len,
+		dma_sync_single_for_cpu(hw->dev, hw->packet_dma, len,
 					DMA_FROM_DEVICE);
 
 		net_receive(edev, hw->packet, len);
 
-		dma_sync_single_for_device(hw->packet_dma, len,
+		dma_sync_single_for_device(hw->dev, hw->packet_dma, len,
 					   DMA_FROM_DEVICE);
 		e1000_fill_rx(hw);
 		return 1;
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index c817d6c767..afac0d40ed 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -589,7 +589,7 @@ static int fec_recv(struct eth_device *dev)
 			 * fixup and net_receive below would get
 			 * proper data
 			 */
-			dma_sync_single_for_cpu((unsigned long)frame,
+			dma_sync_single_for_cpu(fec->dev, (unsigned long)frame,
 						data_length,
 						DMA_FROM_DEVICE);
 			if (fec_is_imx28(fec))
@@ -601,7 +601,7 @@ static int fec_recv(struct eth_device *dev)
 			 */
 			len = data_length - 4;
 			net_receive(dev, frame, len);
-			dma_sync_single_for_device((unsigned long)frame,
+			dma_sync_single_for_device(fec->dev, (unsigned long)frame,
 						   data_length,
 						   DMA_FROM_DEVICE);
 		}
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 0b85283040..1191f7b612 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -641,7 +641,8 @@ static int fm_eth_rx_port_parameter_init(struct fm_eth *fm_eth)
 					i * MAX_RXBUF_LEN));
 		buf_lo = lower_32_bits(virt_to_phys(rx_buf_pool +
 					i * MAX_RXBUF_LEN));
-		dma_sync_single_for_device((unsigned long)rx_buf_pool + i * MAX_RXBUF_LEN,
+		dma_sync_single_for_device(fm_eth->dev,
+					   (unsigned long)rx_buf_pool + i * MAX_RXBUF_LEN,
 					   MAX_RXBUF_LEN, DMA_FROM_DEVICE);
 		muram_writew(&rxbd->buf_ptr_hi, (u16)buf_hi);
 		out_be32(&rxbd->buf_ptr_lo, buf_lo);
@@ -911,13 +912,13 @@ static int fm_eth_recv(struct eth_device *edev)
 			data = (u8 *)((unsigned long)(buf_hi << 16) << 16 | buf_lo);
 			len = muram_readw(&rxbd->len);
 
-			dma_sync_single_for_cpu((unsigned long)data,
+			dma_sync_single_for_cpu(fm_eth->dev, (unsigned long)data,
 						len,
 						DMA_FROM_DEVICE);
 
 			net_receive(edev, data, len);
 
-			dma_sync_single_for_device((unsigned long)data,
+			dma_sync_single_for_device(fm_eth->dev, (unsigned long)data,
 						len,
 						DMA_FROM_DEVICE);
 		} else {
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 9dd273a504..4b89c59580 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -119,7 +119,7 @@ static int macb_send(struct eth_device *edev, void *packet,
 	macb->tx_ring[tx_head].ctrl = ctrl;
 	macb->tx_ring[tx_head].addr = (ulong)packet;
 	barrier();
-	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_device(macb->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 	macb_writel(macb, NCR, MACB_BIT(TE) | MACB_BIT(RE) | MACB_BIT(TSTART));
 
 	start = get_time_ns();
@@ -132,7 +132,7 @@ static int macb_send(struct eth_device *edev, void *packet,
 			break;
 		}
 	} while (!is_timeout(start, 100 * MSECOND));
-	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(macb->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 
 	if (ctrl & MACB_BIT(TX_UNDERRUN))
 		dev_err(macb->dev, "TX underrun\n");
@@ -182,10 +182,10 @@ static int gem_recv(struct eth_device *edev)
 		status = macb->rx_ring[macb->rx_tail].ctrl;
 		length = MACB_BFEXT(RX_FRMLEN, status);
 		buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
-		dma_sync_single_for_cpu((unsigned long)buffer, length,
+		dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer, length,
 					DMA_FROM_DEVICE);
 		net_receive(edev, buffer, length);
-		dma_sync_single_for_device((unsigned long)buffer, length,
+		dma_sync_single_for_device(macb->dev, (unsigned long)buffer, length,
 					   DMA_FROM_DEVICE);
 		macb->rx_ring[macb->rx_tail].addr &= ~MACB_BIT(RX_USED);
 		barrier();
@@ -229,22 +229,22 @@ static int macb_recv(struct eth_device *edev)
 				headlen = macb->rx_buffer_size * (macb->rx_ring_size
 						 - macb->rx_tail);
 				taillen = length - headlen;
-				dma_sync_single_for_cpu((unsigned long)buffer,
+				dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer,
 							headlen, DMA_FROM_DEVICE);
 				memcpy(macb->rx_packet_buf, buffer, headlen);
-				dma_sync_single_for_cpu((unsigned long)macb->rx_buffer,
+				dma_sync_single_for_cpu(macb->dev, (unsigned long)macb->rx_buffer,
 							taillen, DMA_FROM_DEVICE);
 				memcpy(macb->rx_packet_buf + headlen, macb->rx_buffer, taillen);
-				dma_sync_single_for_device((unsigned long)buffer,
+				dma_sync_single_for_device(macb->dev, (unsigned long)buffer,
 							headlen, DMA_FROM_DEVICE);
-				dma_sync_single_for_device((unsigned long)macb->rx_buffer,
+				dma_sync_single_for_device(macb->dev, (unsigned long)macb->rx_buffer,
 							taillen, DMA_FROM_DEVICE);
 				net_receive(edev, macb->rx_packet_buf, length);
 			} else {
-				dma_sync_single_for_cpu((unsigned long)buffer, length,
+				dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer, length,
 							DMA_FROM_DEVICE);
 				net_receive(edev, buffer, length);
-				dma_sync_single_for_device((unsigned long)buffer, length,
+				dma_sync_single_for_device(macb->dev, (unsigned long)buffer, length,
 							DMA_FROM_DEVICE);
 			}
 			barrier();
diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index 779cc636a0..fc23c0c993 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -383,7 +383,7 @@ static int mvneta_send(struct eth_device *edev, void *data, int len)
 	int ret, error, last_desc;
 
 	/* Flush transmit data */
-	dma_sync_single_for_device((unsigned long)data, len, DMA_TO_DEVICE);
+	dma_sync_single_for_device(&priv->dev, (unsigned long)data, len, DMA_TO_DEVICE);
 
 	memset(txdesc, 0, sizeof(*txdesc));
 	/* Fill the Tx descriptor */
@@ -400,7 +400,7 @@ static int mvneta_send(struct eth_device *edev, void *data, int len)
 	 * the Tx port status register (PTXS).
 	 */
 	ret = wait_on_timeout(TRANSFER_TIMEOUT, !mvneta_pending_tx(priv));
-	dma_sync_single_for_cpu((unsigned long)data, len, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(&priv->dev, (unsigned long)data, len, DMA_TO_DEVICE);
 	if (ret) {
 		dev_err(&edev->dev, "transmit timeout\n");
 		return ret;
@@ -451,7 +451,7 @@ static int mvneta_recv(struct eth_device *edev)
 	}
 
 	/* invalidate current receive buffer */
-	dma_sync_single_for_cpu((unsigned long)rxdesc->buf_phys_addr,
+	dma_sync_single_for_cpu(&priv->dev, (unsigned long)rxdesc->buf_phys_addr,
 				ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
 
 	/* received packet is padded with two null bytes (Marvell header) */
@@ -459,7 +459,7 @@ static int mvneta_recv(struct eth_device *edev)
 			  rxdesc->data_size - MVNETA_MH_SIZE);
 	ret = 0;
 
-	dma_sync_single_for_device((unsigned long)rxdesc->buf_phys_addr,
+	dma_sync_single_for_device(&priv->dev, (unsigned long)rxdesc->buf_phys_addr,
 				   ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
 
 recv_err:
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index abd588e013..908e847a76 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -228,7 +228,7 @@ static int port_send(struct eth_device *edev, void *data, int len)
 	int ret;
 
 	/* flush transmit data */
-	dma_sync_single_for_device((unsigned long)data, len, DMA_TO_DEVICE);
+	dma_sync_single_for_device(&port->dev, (unsigned long)data, len, DMA_TO_DEVICE);
 
 	txdesc->cmd_sts = TXDESC_OWNED_BY_DMA;
 	txdesc->cmd_sts |= TXDESC_FIRST | TXDESC_LAST;
@@ -243,7 +243,7 @@ static int port_send(struct eth_device *edev, void *data, int len)
 	/* wait for packet transmit completion */
 	ret = wait_on_timeout(TRANSFER_TIMEOUT,
 		      (readl(&txdesc->cmd_sts) & TXDESC_OWNED_BY_DMA) == 0);
-	dma_sync_single_for_cpu((unsigned long)data, len, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(&port->dev, (unsigned long)data, len, DMA_TO_DEVICE);
 	if (ret) {
 		dev_err(&edev->dev, "transmit timeout\n");
 		return ret;
@@ -287,13 +287,13 @@ static int port_recv(struct eth_device *edev)
 	}
 
 	/* invalidate current receive buffer */
-	dma_sync_single_for_cpu((unsigned long)rxdesc->buf_ptr,
+	dma_sync_single_for_cpu(&port->dev, (unsigned long)rxdesc->buf_ptr,
 				ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
 
 	/* received packet is padded with two null bytes */
 	net_receive(edev, rxdesc->buf_ptr + 0x2, rxdesc->byte_cnt - 0x2);
 
-	dma_sync_single_for_device((unsigned long)rxdesc->buf_ptr,
+	dma_sync_single_for_device(&port->dev, (unsigned long)rxdesc->buf_ptr,
 				   ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
 
 	ret = 0;
diff --git a/drivers/net/r8169_main.c b/drivers/net/r8169_main.c
index 5b448fa029..9c28c92ded 100644
--- a/drivers/net/r8169_main.c
+++ b/drivers/net/r8169_main.c
@@ -2964,6 +2964,7 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 				int packet_length)
 {
 	struct rtl8169_private *tp = edev->priv;
+	struct device *dev = &tp->pci_dev->dev;
 	unsigned int entry;
 	u64 start;
 	int ret = 0;
@@ -2973,7 +2974,7 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 	if (packet_length < ETH_ZLEN)
 		memset(tp->tx_buf + entry * PKT_BUF_SIZE, 0, ETH_ZLEN);
 	memcpy(tp->tx_buf + entry * PKT_BUF_SIZE, packet, packet_length);
-	dma_sync_single_for_device(tp->tx_buf_phys + entry *
+	dma_sync_single_for_device(dev, tp->tx_buf_phys + entry *
 				   PKT_BUF_SIZE, PKT_BUF_SIZE, DMA_TO_DEVICE);
 
 	tp->TxDescArray[entry].addr = cpu_to_le64(tp->tx_buf_phys + entry * PKT_BUF_SIZE);
@@ -2999,7 +3000,7 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 		}
 	}
 
-	dma_sync_single_for_cpu(tp->tx_buf_phys + entry * PKT_BUF_SIZE,
+	dma_sync_single_for_cpu(dev, tp->tx_buf_phys + entry * PKT_BUF_SIZE,
 				PKT_BUF_SIZE, DMA_TO_DEVICE);
 
 	tp->cur_tx++;
@@ -3010,6 +3011,7 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 static int rtl8169_eth_rx(struct eth_device *edev)
 {
 	struct rtl8169_private *tp = edev->priv;
+	struct device *dev = &tp->pci_dev->dev;
 	unsigned int entry, pkt_size = 0;
 	u8 status;
 
@@ -3019,13 +3021,13 @@ static int rtl8169_eth_rx(struct eth_device *edev)
 		if (!(le32_to_cpu(tp->RxDescArray[entry].opts1) & RxRES)) {
 			pkt_size = (le32_to_cpu(tp->RxDescArray[entry].opts1) & 0x1fff) - 4;
 
-			dma_sync_single_for_cpu(tp->rx_buf_phys + entry * PKT_BUF_SIZE,
+			dma_sync_single_for_cpu(dev, tp->rx_buf_phys + entry * PKT_BUF_SIZE,
 						pkt_size, DMA_FROM_DEVICE);
 
 			net_receive(edev, tp->rx_buf + entry * PKT_BUF_SIZE,
 			            pkt_size);
 
-			dma_sync_single_for_device(tp->rx_buf_phys + entry * PKT_BUF_SIZE,
+			dma_sync_single_for_device(dev, tp->rx_buf_phys + entry * PKT_BUF_SIZE,
 						   pkt_size, DMA_FROM_DEVICE);
 
 			if (entry == NUM_RX_DESC - 1)
diff --git a/drivers/usb/gadget/udc/fsl_udc.c b/drivers/usb/gadget/udc/fsl_udc.c
index 6a1d4304df..e9b30857d0 100644
--- a/drivers/usb/gadget/udc/fsl_udc.c
+++ b/drivers/usb/gadget/udc/fsl_udc.c
@@ -197,8 +197,8 @@ static void done(struct fsl_ep *ep, struct fsl_req *req, int status)
 		dma_free_coherent(curr_td, 0, sizeof(struct ep_td_struct));
 	}
 
-	dma_sync_single_for_cpu((unsigned long)req->req.buf, req->req.length,
-				DMA_BIDIRECTIONAL);
+	dma_sync_single_for_cpu(udc->gadget.dev.parent, (unsigned long)req->req.buf,
+				req->req.length, DMA_BIDIRECTIONAL);
 
 	if (status && (status != -ESHUTDOWN))
 		VDBG("complete %s req %p stat %d len %u/%u",
@@ -885,8 +885,8 @@ fsl_ep_queue(struct usb_ep *_ep, struct usb_request *_req)
 
 	req->ep = ep;
 
-	dma_sync_single_for_device((unsigned long)req->req.buf, req->req.length,
-				   DMA_BIDIRECTIONAL);
+	dma_sync_single_for_device(udc->gadget.dev.parent, (unsigned long)req->req.buf,
+				   req->req.length, DMA_BIDIRECTIONAL);
 
 	req->req.status = -EINPROGRESS;
 	req->req.actual = 0;
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index e4b69dcf62..ae4c34e818 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -842,7 +842,8 @@ static void td_fill(struct ohci *ohci, unsigned int info,
 
 	td->hwNextTD = virt_to_phys((void *)m32_swap((unsigned long)td_pt));
 
-	dma_sync_single_for_device((unsigned long)data, len, DMA_BIDIRECTIONAL);
+	dma_sync_single_for_device(ohci->host.hw_dev, (unsigned long)data,
+				   len, DMA_BIDIRECTIONAL);
 
 	/* append to queue */
 	td->ed->hwTailP = td->hwNextTD;
@@ -1078,7 +1079,7 @@ static int dl_done_list(struct ohci *ohci)
 	unsigned long ptdphys = virt_to_phys(ptd);
 	struct td *td_list;
 
-	dma_sync_single_for_device((unsigned long)ptdphys,
+	dma_sync_single_for_device(ohci->host.hw_dev, (unsigned long)ptdphys,
 				sizeof(struct td) * NUM_TD, DMA_BIDIRECTIONAL);
 
 	td_list = dl_reverse_done_list(ohci);
@@ -1515,7 +1516,7 @@ static int submit_common_msg(struct usb_device *dev, unsigned long pipe, void *b
 	dev->status = stat;
 	dev->act_len = urb->actual_length;
 
-	dma_sync_single_for_cpu((unsigned long)buffer, transfer_len,
+	dma_sync_single_for_cpu(host->hw_dev, (unsigned long)buffer, transfer_len,
 				DMA_BIDIRECTIONAL);
 
 	pkt_print(urb, dev, pipe, buffer, transfer_len,
diff --git a/include/dma.h b/include/dma.h
index 26c71d812e..2a09b747d1 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -12,6 +12,7 @@
 
 #include <dma-dir.h>
 #include <asm/dma.h>
+#include <asm/io.h>
 #include <driver.h>
 
 #define DMA_ADDRESS_BROKEN	NULL
@@ -34,11 +35,6 @@ static inline void dma_free(void *mem)
 }
 #endif
 
-dma_addr_t dma_map_single(struct device *dev, void *ptr, size_t size,
-			  enum dma_data_direction dir);
-void dma_unmap_single(struct device *dev, dma_addr_t addr, size_t size,
-		      enum dma_data_direction dir);
-
 #define DMA_BIT_MASK(n)	(((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
 
 #define DMA_MASK_NONE	0x0ULL
@@ -56,39 +52,85 @@ static inline int dma_mapping_error(struct device *dev, dma_addr_t dma_addr)
 		(dev->dma_mask && dma_addr > dev->dma_mask);
 }
 
+static inline dma_addr_t cpu_to_dma(struct device *dev, void *cpu_addr)
+{
+	if (dev && dev->dma_offset)
+		return (unsigned long)cpu_addr - dev->dma_offset;
+
+	return virt_to_phys(cpu_addr);
+}
+
+static inline void *dma_to_cpu(struct device *dev, dma_addr_t addr)
+{
+	if (dev && dev->dma_offset)
+		return (void *)(addr + dev->dma_offset);
+
+	return phys_to_virt(addr);
+}
+
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
+static inline void arch_sync_dma_for_cpu(void *vaddr, size_t size,
+					 enum dma_data_direction dir)
 {
-	barrier_data((void *)address);
+	barrier_data(vaddr);
 }
 #endif
 
-#ifndef dma_sync_single_for_device
-static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
-				enum dma_data_direction dir)
+#ifndef arch_sync_dma_for_device
+static inline void arch_sync_dma_for_device(void *vaddr, size_t size,
+					    enum dma_data_direction dir)
 {
-	barrier_data((void *)address);
+	barrier_data(vaddr);
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
 #ifndef dma_alloc_coherent
 void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle);
 #endif
-- 
2.41.0




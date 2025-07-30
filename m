Delivery-date: Wed, 30 Jul 2025 14:42:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh68k-005GOa-2f
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 14:42:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh68k-0006CX-63
	for lore@pengutronix.de; Wed, 30 Jul 2025 14:42:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/h+SSZzBaEt40ZZUK60wIjph0Ld4VxF4dnliKaILtQo=; b=Cb9g4ECWYEeHRkDN77hyvNsDW0
	FJReXKIqVtVhUKuvYiSYLFFfkwtPZH3FW3euwjOKrHumeeaBa94sC7s53pFyqME6Thf5QvX3oqGQh
	hFdfZW6l5ISXOf0R5W/4LFZcIrYVUSqa4g56mBtH5LKZC5/7Bt3s6X4sOmxLPSoTaIyZmsc/yOPCq
	n8ZpDi4KhpX1hB/C5ybaWukZ6tC2yvJUVtgvtcyBYSva8n93BV0duvengCMTOc4XiBooi6SEumRie
	PSEbFykKROnTGu5GH9A3Lluaixo8018EPuljTFwTq6rSducniVcllPwGlml3AGrl0zMLnSdARXnuY
	HQj00FWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh68F-00000001UZT-2ENB;
	Wed, 30 Jul 2025 12:42:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5y4-00000001TKi-3c8e
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 12:31:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uh5xv-0004gR-HK; Wed, 30 Jul 2025 14:31:27 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uh5xv-00B2fD-0e;
	Wed, 30 Jul 2025 14:31:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uh5xv-004SW5-0I;
	Wed, 30 Jul 2025 14:31:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Jul 2025 14:31:25 +0200
Message-Id: <20250730123126.1062875-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_053136_899409_440FAD54 
X-CRM114-Status: GOOD (  13.48  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] mmu: define MAP_WRITECOMBINE for all architectures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Write Combine (WC) memory is an optimization over uncached memory,
especially suitable for framebuffers. We allocate WC memory using
dma_alloc_writecombine(), but it can be useful to remap existing memory
not allocated within barebox as WC.

To allow this, let's define MAP_WRITECOMBINE globally with a fallback to
MAP_UNCACHED if not available.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/Kconfig              |  3 +++
 arch/arm/Kconfig          |  1 +
 arch/arm/cpu/mmu-common.h |  1 -
 arch/arm/cpu/mmu_32.c     |  6 +++---
 arch/arm/cpu/mmu_64.c     |  4 ++--
 include/mmu.h             | 14 ++++++++++----
 6 files changed, 19 insertions(+), 10 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 919c8cfebab5..55618bf896c2 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -59,6 +59,9 @@ config ARCH_HAS_CTRLC
 config ARCH_DMA_DEFAULT_COHERENT
 	bool
 
+config ARCH_HAS_DMA_WRITE_COMBINE
+	bool
+
 config ARCH_HAS_ASAN_FIBER_API
 	bool
 
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 7a3952700aa8..9694cb5b7463 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -16,6 +16,7 @@ config ARM
 	select HAVE_ARCH_BOARD_GENERIC_DT if OFDEVICE
 	select HAVE_ARCH_BOOTM_OFTREE
 	select HW_HAS_PCI
+	select ARCH_HAS_DMA_WRITE_COMBINE
 	default y
 
 config ARCH_LINUX_NAME
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index ac11a87be416..3bca5cc3b821 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -10,7 +10,6 @@
 #include <linux/kernel.h>
 #include <linux/sizes.h>
 
-#define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
 #define ARCH_MAP_CACHED_RWX	((unsigned)-2)
 #define ARCH_MAP_CACHED_RO	((unsigned)-3)
 
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 67f1fe59886a..89a18d342b80 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -238,7 +238,7 @@ static uint32_t get_pte_flags(int map_type)
 			return PTE_FLAGS_UNCACHED_V7;
 		case MAP_CODE:
 			return PTE_FLAGS_CODE_V7;
-		case ARCH_MAP_WRITECOMBINE:
+		case MAP_WRITECOMBINE:
 			return PTE_FLAGS_WC_V7;
 		case MAP_FAULT:
 		default:
@@ -253,7 +253,7 @@ static uint32_t get_pte_flags(int map_type)
 		case MAP_CACHED:
 			return PTE_FLAGS_CACHED_V4;
 		case MAP_UNCACHED:
-		case ARCH_MAP_WRITECOMBINE:
+		case MAP_WRITECOMBINE:
 			return PTE_FLAGS_UNCACHED_V4;
 		case MAP_FAULT:
 		default:
@@ -651,7 +651,7 @@ void mmu_disable(void)
 
 void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_handle)
 {
-	return dma_alloc_map(dev, size, dma_handle, ARCH_MAP_WRITECOMBINE);
+	return dma_alloc_map(dev, size, dma_handle, MAP_WRITECOMBINE);
 }
 
 void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_start)
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index abcc970f4bff..a229e4cb5526 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -295,7 +295,7 @@ static unsigned long get_pte_attrs(unsigned flags)
 		return attrs_xn() | UNCACHED_MEM;
 	case MAP_FAULT:
 		return 0x0;
-	case ARCH_MAP_WRITECOMBINE:
+	case MAP_WRITECOMBINE:
 		return attrs_xn() | MEM_ALLOC_WRITECOMBINE;
 	case MAP_CODE:
 		return CACHED_MEM | PTE_BLOCK_RO;
@@ -448,7 +448,7 @@ void dma_flush_range(void *ptr, size_t size)
 
 void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_handle)
 {
-	return dma_alloc_map(dev, size, dma_handle, ARCH_MAP_WRITECOMBINE);
+	return dma_alloc_map(dev, size, dma_handle, MAP_WRITECOMBINE);
 }
 
 static void init_range(size_t total_level0_tables)
diff --git a/include/mmu.h b/include/mmu.h
index 20855e89eda3..17c04d2fa05f 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -5,10 +5,16 @@
 #include <linux/types.h>
 #include <errno.h>
 
-#define MAP_UNCACHED	0
-#define MAP_CACHED	1
-#define MAP_FAULT	2
-#define MAP_CODE	3
+#define MAP_UNCACHED		0
+#define MAP_CACHED		1
+#define MAP_FAULT		2
+#define MAP_CODE		3
+
+#ifdef CONFIG_ARCH_HAS_DMA_WRITE_COMBINE
+#define MAP_WRITECOMBINE	4
+#else
+#define MAP_WRITECOMBINE	MAP_UNCACHED
+#endif
 
 /*
  * Depending on the architecture the default mapping can be
-- 
2.39.5




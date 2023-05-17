Delivery-date: Wed, 17 May 2023 11:42:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfV-0049wN-Tt
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:42:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfR-0002vC-Eu
	for lore@pengutronix.de; Wed, 17 May 2023 11:42:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fch3yBE4WUKGg+JVTZlXEfVTjnpe/hlzbsOx8XYQfCk=; b=NnL5DxHBxg1E8K1JVHp8/V5tPy
	yGL63kj1u8+S92xwo+gv84vjcdRWsAlMb2MRjn1RVFhvQj8FJPC7TWNjoi7XDtzbNMx31MDy5K65p
	zpbrx5CJhreh+OkiekUOIwr4uY+0cSa0Emtfmrc9n9bdy3GnRetOgGb8YjSVXZ3B00UKVIMccTabQ
	VW1SeKK+8m8Hhd6A0sc5allOzyuV8enkEeXnQApikrLMhZ4ZLK3NtI+sFHq16QrIW0o2Lp3l9iMcK
	p02nOu1rNdNAMhYTzLSwk0fmlU91pVuOmP1RCNW6kPgZKuV6oo6E/bHrTliEYsDVOFIgeGR3gTgqB
	ze2Ard3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDeH-0096em-2f;
	Wed, 17 May 2023 09:40:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDe4-0096Lj-1p
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fch3yBE4WUKGg+JVTZlXEfVTjnpe/hlzbsOx8XYQfCk=; b=E0kcdaBR7BX2ad+M2GYPn8QOAm
	wqT408qb+dvOHpPIJ3Wqi26zimn9jTZkTa0P3jzOZybAcdaHMiqgtEU5pmHD8vExvom82InzbPrMN
	CkpcYIetrGWB49yvkcO4ucDv6ZWE87S5fuCDlbYCCVY842/uPcYg9CjrxhOG8qG3qTkg0soEYm7+o
	m+/0nM7ZOKD39Un8vZZwzJygtImEVJq08inSaO1cvBuulbMypMl3+J9+01wpBy+uAyRYDPRT6NS8J
	OE5i5XZ5w5o3D5+wJuEUTknNm+GzNWzxrIZ4/fU17qdZrfcno+JIbVmccQ83B2iEorcx2yKHJYMz9
	JXH+WT6Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Y-00DAy8-1I
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:03:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4X-000441-9g; Wed, 17 May 2023 11:03:49 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4W-000o8U-L6; Wed, 17 May 2023 11:03:48 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-00Gau3-7Z; Wed, 17 May 2023 11:03:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:38 +0200
Message-Id: <20230517090340.3954615-33-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100350_971845_ECDED1C1 
X-CRM114-Status: GOOD (  15.52  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 32/34] ARM: mmu32: Use pages for early MMU setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Up to now we use 1MiB sections to setup the page tables in PBL. There
are two places where this leads to problems. First is OP-TEE, we have
to map the OP-TEE area with PTE_EXT_XN to prevent the instruction
prefetcher from speculating into that area. With the current section
mapping we have to align OPTEE_SIZE to 1MiB boundaries. The second
problem comes with SRAM where the PBL might be running. This SRAM has
to be mapped executable, but at the same time we should map the
surrounding areas non executable which is not always possible with
1MiB mapping granularity.

We now have everything in place to use two level page tables from PBL,
so use arch_remap_range() for the problematic cases.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 31 +++++++------------------------
 1 file changed, 7 insertions(+), 24 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 785b20c7fd..705d27a045 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -111,8 +111,10 @@ void dma_flush_range(void *ptr, size_t size)
 	unsigned long end = start + size;
 
 	__dma_flush_range(start, end);
+#ifndef __PBL__
 	if (outer_cache.flush_range)
 		outer_cache.flush_range(start, end);
+#endif
 }
 
 void dma_inv_range(void *ptr, size_t size)
@@ -120,8 +122,10 @@ void dma_inv_range(void *ptr, size_t size)
 	unsigned long start = (unsigned long)ptr;
 	unsigned long end = start + size;
 
+#ifndef __PBL__
 	if (outer_cache.inv_range)
 		outer_cache.inv_range(start, end);
+#endif
 	__dma_inv_range(start, end);
 }
 
@@ -542,16 +546,6 @@ void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
 }
 
-static inline void map_region(unsigned long start, unsigned long size,
-			      uint64_t flags)
-
-{
-	start = ALIGN_DOWN(start, SZ_1M);
-	size  = ALIGN(size, SZ_1M);
-
-	create_sections(start, start + size - 1, flags);
-}
-
 void mmu_early_enable(unsigned long membase, unsigned long memsize)
 {
 	uint32_t *ttb = (uint32_t *)arm_mem_ttb(membase + memsize);
@@ -572,21 +566,10 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 	 */
 	create_flat_mapping();
 
-	/*
-	 * There can be SoCs that have a section shared between device memory
-	 * and the on-chip RAM hosting the PBL. Thus mark this section
-	 * uncachable, but executable.
-	 * On such SoCs, executing from OCRAM could cause the instruction
-	 * prefetcher to speculatively access that device memory, triggering
-	 * potential errant behavior.
-	 *
-	 * If your SoC has such a memory layout, you should rewrite the code
-	 * here to map the OCRAM page-wise.
-	 */
-	map_region((unsigned long)_stext, _etext - _stext, PMD_SECT_DEF_UNCACHED);
-
 	/* maps main memory as cachable */
-	map_region(membase, memsize - OPTEE_SIZE, PMD_SECT_DEF_CACHED);
+	arch_remap_range((void *)membase, memsize - OPTEE_SIZE, MAP_CACHED);
+	arch_remap_range((void *)membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_UNCACHED);
+	arch_remap_range(_stext, PAGE_ALIGN(_etext - _stext), MAP_CACHED);
 
 	__mmu_cache_on();
 }
-- 
2.39.2




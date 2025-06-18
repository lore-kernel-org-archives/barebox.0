Delivery-date: Wed, 18 Jun 2025 11:53:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRpTv-008ZRq-2o
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 11:53:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRpTu-0003Lh-11
	for lore@pengutronix.de; Wed, 18 Jun 2025 11:53:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sB2yc1LxxWEyaRzvBGxxLkjm5B9DE2nbYfwloJDU48g=; b=1iWwZ5EQ3WwCon7XHE6su0xFUQ
	tWS42pwnMt2hREdwXdU/F/OnYy+Kk4iexHBJl4tObzB6OVQ8iV560o/7cxNgeyvRPr9VkChYFaH+X
	lewIVcwu/5EwxlskpV7RrdaOEIfJM+PYMGfmbOZ7q869SYmIAqMWN8ysEgXgxw0r20hMvqrt4yoVu
	G9QIhO5r93mYrGJ5fAwxbwhqgIxh6dabUzwAcrWEkNbjUrlB0JSBD1I7Uqs1NFViRdMx5xiYa2uBQ
	eLQqsXkkL+HIXBi6SZEVLu7C8lD7gnGAbrZ8KnvEgHEyYAKrXKvETOxv7yRrfyMyMUo3n3g93PTDm
	x4ndRV2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpTM-00000009f5P-2V9q;
	Wed, 18 Jun 2025 09:52:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpC0-00000009c3J-0Ivk
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 09:34:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBx-0004ne-AU; Wed, 18 Jun 2025 11:34:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBw-0047Gm-3D;
	Wed, 18 Jun 2025 11:34:49 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBw-005SrZ-2u;
	Wed, 18 Jun 2025 11:34:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Jun 2025 11:34:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-mmu-xn-ro-v3-6-2a9825725934@pengutronix.de>
References: <20250618-mmu-xn-ro-v3-0-2a9825725934@pengutronix.de>
In-Reply-To: <20250618-mmu-xn-ro-v3-0-2a9825725934@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750239288; l=4991;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Ba9DrdxkS/r3mlYnkuByVBPZM6H8aRbAyLx68zWYVCE=;
 b=xZJ9AzMy9JL760cgyyizCKLcMt4PlDKXhEK0UVqdDDFp+m3cTvhprhA+ZJSD1FHmbevcAHkeb
 hU5nt3jAT27AVc8qnqhJzz7sL5RfD1d0zxWqf8uXVW6H62dXaPtmZh1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_023452_190428_95ADDD32 
X-CRM114-Status: GOOD (  16.23  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 6/6] ARM: MMU64: map text segment ro and data segments
 execute never
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With this all segments in the DRAM except the text segment are mapped
execute-never so that only the barebox code can actually be executed.
Also map the readonly data segment readonly so that it can't be
modified.

The mapping is only implemented in barebox proper. The PBL still maps
the whole DRAM rwx.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c            | 34 ++++++++++++++++++++++++++++++----
 arch/arm/include/asm/pgtable64.h |  1 +
 arch/arm/lib64/barebox.lds.S     |  5 +++--
 3 files changed, 34 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index c12c47819ca948ae20a5d604a88f68f78dcc1788..abcc970f4bffbd3c488a2c119ac371c3123b37a5 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -290,13 +290,19 @@ static unsigned long get_pte_attrs(unsigned flags)
 {
 	switch (flags) {
 	case MAP_CACHED:
-		return CACHED_MEM;
+		return attrs_xn() | CACHED_MEM;
 	case MAP_UNCACHED:
 		return attrs_xn() | UNCACHED_MEM;
 	case MAP_FAULT:
 		return 0x0;
 	case ARCH_MAP_WRITECOMBINE:
 		return attrs_xn() | MEM_ALLOC_WRITECOMBINE;
+	case MAP_CODE:
+		return CACHED_MEM | PTE_BLOCK_RO;
+	case ARCH_MAP_CACHED_RO:
+		return attrs_xn() | CACHED_MEM | PTE_BLOCK_RO;
+	case ARCH_MAP_CACHED_RWX:
+		return CACHED_MEM;
 	default:
 		return ~0UL;
 	}
@@ -314,7 +320,11 @@ static void early_remap_range(uint64_t addr, size_t size, unsigned flags, bool f
 
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags)
 {
-	unsigned long attrs = get_pte_attrs(flags);
+	unsigned long attrs;
+
+	flags = arm_mmu_maybe_skip_permissions(flags);
+
+	attrs = get_pte_attrs(flags);
 
 	if (attrs == ~0UL)
 		return -EINVAL;
@@ -355,6 +365,12 @@ void __mmu_init(bool mmu_on)
 {
 	uint64_t *ttb = get_ttb();
 	struct memory_bank *bank;
+	unsigned long text_start = (unsigned long)&_stext;
+	unsigned long code_start = text_start;
+	unsigned long code_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;
+	unsigned long text_size = (unsigned long)&_etext - text_start;
+	unsigned long rodata_start = (unsigned long)&__start_rodata;
+	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
 
 	// TODO: remap writable only while remapping?
 	// TODO: What memtype for ttb when barebox is EFI loader?
@@ -381,9 +397,19 @@ void __mmu_init(bool mmu_on)
 			pos = rsv->end + 1;
 		}
 
+		if (region_overlap_size(pos, bank->start + bank->size - pos,
+		    text_start, text_size)) {
+			remap_range((void *)pos, text_start - pos, MAP_CACHED);
+			/* skip barebox segments here, will be mapped below */
+			pos = text_start + text_size;
+		}
+
 		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
 	}
 
+	remap_range((void *)code_start, code_size, MAP_CODE);
+	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
+
 	/* Make zero page faulting to catch NULL pointer derefs */
 	zero_page_faulting();
 	create_guard_page();
@@ -463,7 +489,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 */
 	init_range(2);
 
-	early_remap_range(membase, memsize, MAP_CACHED, false);
+	early_remap_range(membase, memsize, ARCH_MAP_CACHED_RWX, false);
 
 	if (optee_get_membase(&optee_membase)) {
                 optee_membase = membase + memsize - OPTEE_SIZE;
@@ -482,7 +508,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT, false);
 
 	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
-			  MAP_CACHED, false);
+			  ARCH_MAP_CACHED_RWX, false);
 
 	mmu_enable();
 }
diff --git a/arch/arm/include/asm/pgtable64.h b/arch/arm/include/asm/pgtable64.h
index b88ffe6be5254e1b9d3968573d5e9b7a37828a55..6f6ef22717b76baaf7857b12d38c6074871ce143 100644
--- a/arch/arm/include/asm/pgtable64.h
+++ b/arch/arm/include/asm/pgtable64.h
@@ -59,6 +59,7 @@
 #define PTE_BLOCK_NG            (1 << 11)
 #define PTE_BLOCK_PXN           (UL(1) << 53)
 #define PTE_BLOCK_UXN           (UL(1) << 54)
+#define PTE_BLOCK_RO            (UL(1) << 7)
 
 /*
  * AttrIndx[2:0] encoding (mapping attributes defined in the MAIR* registers).
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 50e4b6f42cb8d4de92b7450e5b864b9056b61916..caddbedd610f68658b7ecf7616947ce02a84e5e8 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -28,18 +28,19 @@ SECTIONS
 	}
 	BAREBOX_BARE_INIT_SIZE
 
-	. = ALIGN(4);
+	. = ALIGN(4096);
 	__start_rodata = .;
 	.rodata : {
 		*(.rodata*)
 		RO_DATA_SECTION
 	}
 
+	. = ALIGN(4096);
+
 	__end_rodata = .;
 	_etext = .;
 	_sdata = .;
 
-	. = ALIGN(4);
 	.data : { *(.data*) }
 
 	.barebox_imd : { BAREBOX_IMD }

-- 
2.39.5




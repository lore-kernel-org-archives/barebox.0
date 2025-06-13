Delivery-date: Fri, 13 Jun 2025 11:09:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0Q7-006oTn-0k
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 11:09:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0Q6-0004qM-I2
	for lore@pengutronix.de; Fri, 13 Jun 2025 11:09:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RcRznk+6nrg0RH0aY1G7MAfD/0TrKW6Cug1EAQTXkZY=; b=QRiLsTk8dUHLIdwRws88ZOL0Vc
	DVq4pQlv3R1KoCYhkXw+/yQevRRByBPH951N5QQbaX93v3gwV2bt3tCAYiaAFiQpQLVh78Rvmf6nu
	gyVF8S9al0yal1lqq9K+A4LFx3rYwhpTyvk1+oYbHshNfu7HIfdfZEj3wp+hpyjWnbDVCChhSYvfP
	1emqYrhm2b2X2SAvJknpYKi0nJSiCQ/Xa8EkHEzbVXudfGh5X3fbHJ+kFzOLYMcF5Mj/YR63z7e0y
	czTz3+d12q74Fyldp4jk+SZ1MsBb0IBLBe8KEUpMufGa0XkbBlqMXWidYyJu2LcGdYWQTUUKX57lv
	tbIs3LCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0Pq-0000000Fs8x-44OF;
	Fri, 13 Jun 2025 09:09:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPzJe-0000000FiFC-3BrW
	for barebox@bombadil.infradead.org;
	Fri, 13 Jun 2025 07:59:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=RcRznk+6nrg0RH0aY1G7MAfD/0TrKW6Cug1EAQTXkZY=; b=ZkC1ZhHBZZ8Gaon/i4mdhaAM0J
	Xy/0JoT9aqHWBRG08X6Lhf2KD72ZlLQFAGXg8AKr9R5E39itg9GsMTkcFYEkBf5FdFbscnEfiX+6w
	IE1bOIBkF3TBoAP+PvNJJe0KP2KMegk+42I3PVz80zeirnM00BkPNqB52p39fUcC3xW63PHDODBgj
	F7pw7ZvBLvXuLuiiIdO/QyHu7IUO5MOEloABmYzHyTxfaINovo1ooOGti8eTtUHIRPR53dvF0jSSw
	XjoW3tIepflSN3za+uqz1KOKi+XuMdSX+dneN1OJ6U7yi4gVEyiarIxH31wf+Z9x3PjwxFO3UhH59
	4AbhZP4A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPzJc-00000002udt-40bK
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 07:59:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-0004cm-MS; Fri, 13 Jun 2025 09:58:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-003Fo2-1C;
	Fri, 13 Jun 2025 09:58:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-00CPUK-0t;
	Fri, 13 Jun 2025 09:58:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Jun 2025 09:58:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250613-arm-mmu-xn-ro-v1-7-60f05c6e7b4b@pengutronix.de>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
In-Reply-To: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749801531; l=4608;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=4RqQ6WCLBTtWPKTs99ylri87b5AHzBdXiPoJU/Zld38=;
 b=RhlZSFhK+juxoZ0uXlUvGd3aMGmqBNGbl3YDypmK2ROW7UjVizoGJilbPxfKB+oVRxpyyuyYI
 TTqCLZtxJFhCR7wnw0e963XJ65WyHQcY0dDknAGB/0aClW0CJjWlxgH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_085909_091454_1D29ED02 
X-CRM114-Status: GOOD (  15.12  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] ARM: MMU64: map text segment ro and data segments
 execute never
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With this all segments in the DRAM except the text segment are mapped
execute-never so that only the barebox code can actually be executed.
Also map the readonly data segment readonly so that it can't be
modified.

The mapping is only implemented in barebox proper. The PBL still maps
the whole DRAM rwx.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c            | 31 +++++++++++++++++++++++++++----
 arch/arm/include/asm/pgtable64.h |  1 +
 arch/arm/lib64/barebox.lds.S     |  5 +++--
 3 files changed, 31 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index dc81c1da6add38b59b44a9a4e247ab51ebc2692e..7b021a3f2909f7a445d253579a16cc68f6cbd765 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -312,13 +312,19 @@ static unsigned long get_pte_attrs(unsigned flags)
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
@@ -376,6 +382,10 @@ void __mmu_init(bool mmu_on)
 {
 	uint64_t *ttb = get_ttb();
 	struct memory_bank *bank;
+	unsigned long text_start = (unsigned long)&_stext;
+	unsigned long text_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;
+	unsigned long rodata_start = (unsigned long)&__start_rodata;
+	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
 
 	if (!request_barebox_region("ttb", (unsigned long)ttb,
 				  ARM_EARLY_PAGETABLE_SIZE))
@@ -400,7 +410,20 @@ void __mmu_init(bool mmu_on)
 			pos = rsv->end + 1;
 		}
 
-		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
+		if (IS_ENABLED(CONFIG_ARM_MMU_PERMISSIONS)) {
+			if (region_overlap_size(pos, bank->start + bank->size - pos,
+			    text_start, text_size)) {
+				remap_range((void *)pos, text_start - pos, MAP_CACHED);
+				remap_range((void *)text_start, text_size, MAP_CODE);
+				remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
+				remap_range((void *)(rodata_start + rodata_size),
+					    bank->start + bank->size - (rodata_start + rodata_size), MAP_CACHED);
+			} else {
+				remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
+			}
+		} else {
+			remap_range((void *)pos, bank->start + bank->size - pos, ARCH_MAP_CACHED_RWX);
+		}
 	}
 
 	/* Make zero page faulting to catch NULL pointer derefs */
@@ -482,7 +505,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 */
 	init_range(2);
 
-	early_remap_range(membase, memsize, MAP_CACHED);
+	early_remap_range(membase, memsize, ARCH_MAP_CACHED_RWX);
 
 	if (optee_get_membase(&optee_membase)) {
                 optee_membase = membase + memsize - OPTEE_SIZE;
@@ -501,7 +524,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);
 
 	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
-			  MAP_CACHED);
+			  ARCH_MAP_CACHED_RWX);
 
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




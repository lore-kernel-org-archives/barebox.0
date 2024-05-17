Delivery-date: Fri, 17 May 2024 08:45:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7rLn-000wqH-0O
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 08:45:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7rLm-0006wA-2a
	for lore@pengutronix.de; Fri, 17 May 2024 08:45:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jLESi186QKafWWDLfLzCJ4JqFHHgF+SDs2dezB+l660=; b=toRyIHbZ4+KbMJbLMW9i+7bfzl
	lnh4eYjYHPOQrs/s4t7obM1z0Ews7CJbL2U6NrAZT4vupJVBZaafqVh958Aj0RSaoa/ihSUQuM9AE
	a1HqMDTqPYTABqV9eDI2symzNWPUghVEb/PHHsFi7bIIgv+65APHMyz6G/MyiOuMLGP4r44vV2lWA
	hDcJ9VjHNbsiFFoYTON3U5ECGFViajXfYyHVrpU6gZd5Mg0vpSuE2XnffqG/0VVC6YCt8oPqfR84z
	SNmQvkvXY6Nz5ZjdTVpXyL15vwwZnpDmltxDBFojBQoKa85u1oBNtUNh2tI4JleZ0Y3X6+mNQ1qRY
	UytZ4iKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7rLG-00000006yUp-256B;
	Fri, 17 May 2024 06:45:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7rL8-00000006yQz-076A
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 06:45:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-0006Ws-Oq; Fri, 17 May 2024 08:45:12 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-001pem-CI; Fri, 17 May 2024 08:45:12 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-00Emcc-0s;
	Fri, 17 May 2024 08:45:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 08:45:07 +0200
Message-Id: <20240517064511.3307462-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517064511.3307462-1-a.fatoum@pengutronix.de>
References: <20240517064511.3307462-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_234514_300253_16F5E843 
X-CRM114-Status: GOOD (  16.21  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/6] treewide: use request_barebox_region for possible barebox memory regions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a prerequisite for allowing architectures to call
register_barebox_area() to register the whole barebox region.

No functional change (yet).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 arch/arm/cpu/cpu.c              | 2 +-
 arch/arm/cpu/mmu_32.c           | 8 ++++----
 arch/arm/cpu/mmu_64.c           | 4 ++--
 arch/arm/cpu/start.c            | 2 +-
 arch/arm/mach-imx/scratch.c     | 2 +-
 arch/mips/lib/cpu-probe.c       | 2 +-
 arch/powerpc/mach-mpc5xxx/cpu.c | 2 +-
 arch/powerpc/mach-mpc85xx/cpu.c | 2 +-
 arch/riscv/boot/start.c         | 4 ++--
 arch/riscv/cpu/core.c           | 2 +-
 common/memory.c                 | 6 +++---
 fs/pstore/ram_core.c            | 2 +-
 12 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 5f1ffe9a3c76..b00e9e51e5ea 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -102,7 +102,7 @@ static int arm_request_stack(void)
 	if (efi_is_payload())
 		return 0;
 
-	if (!request_sdram_region("stack", arm_stack_top - STACK_SIZE, STACK_SIZE))
+	if (!request_barebox_region("stack", arm_stack_top - STACK_SIZE, STACK_SIZE))
 		pr_err("Error: Cannot request SDRAM region for stack\n");
 
 	return 0;
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 3a8d025ecdee..24d83d933661 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -390,7 +390,7 @@ static void create_vector_table(unsigned long adr)
 	void *vectors;
 	u32 *pte;
 
-	vectors_sdram = request_sdram_region("vector table", adr, PAGE_SIZE);
+	vectors_sdram = request_barebox_region("vector table", adr, PAGE_SIZE);
 	if (vectors_sdram) {
 		/*
 		 * The vector table address is inside the SDRAM physical
@@ -486,7 +486,7 @@ static void create_guard_page(void)
 		return;
 
 	guard_page = arm_mem_guard_page_get();
-	request_sdram_region("guard page", guard_page, PAGE_SIZE);
+	request_barebox_region("guard page", guard_page, PAGE_SIZE);
 	remap_range((void *)guard_page, PAGE_SIZE, MAP_FAULT);
 
 	pr_debug("Created guard page\n");
@@ -535,8 +535,8 @@ void __mmu_init(bool mmu_on)
 	struct memory_bank *bank;
 	uint32_t *ttb = get_ttb();
 
-	if (!request_sdram_region("ttb", (unsigned long)ttb,
-				  ARM_EARLY_PAGETABLE_SIZE))
+	if (!request_barebox_region("ttb", (unsigned long)ttb,
+				    ARM_EARLY_PAGETABLE_SIZE))
 		/*
 		 * This can mean that:
 		 * - the early MMU code has put the ttb into a place
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 71c0d8930e63..7c7834201b65 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -219,7 +219,7 @@ static void create_guard_page(void)
 		return;
 
 	guard_page = arm_mem_guard_page_get();
-	request_sdram_region("guard page", guard_page, PAGE_SIZE);
+	request_barebox_region("guard page", guard_page, PAGE_SIZE);
 	remap_range((void *)guard_page, PAGE_SIZE, MAP_FAULT);
 
 	pr_debug("Created guard page\n");
@@ -233,7 +233,7 @@ void __mmu_init(bool mmu_on)
 	uint64_t *ttb = get_ttb();
 	struct memory_bank *bank;
 
-	if (!request_sdram_region("ttb", (unsigned long)ttb,
+	if (!request_barebox_region("ttb", (unsigned long)ttb,
 				  ARM_EARLY_PAGETABLE_SIZE))
 		/*
 		 * This can mean that:
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 2adc60fa8831..a73224bab930 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -134,7 +134,7 @@ EXPORT_SYMBOL_GPL(arm_mem_membase_get);
 static int barebox_memory_areas_init(void)
 {
 	if(barebox_boarddata)
-		request_sdram_region("board data", (unsigned long)barebox_boarddata,
+		request_barebox_region("board data", (unsigned long)barebox_boarddata,
 				     barebox_boarddata_size);
 
 	if (IS_ENABLED(CONFIG_KASAN))
diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
index 60d15a4f1a33..002b499fab3a 100644
--- a/arch/arm/mach-imx/scratch.c
+++ b/arch/arm/mach-imx/scratch.c
@@ -95,7 +95,7 @@ const struct optee_header *imx_scratch_get_optee_hdr(void)
 
 static int imx8m_reserve_scratch_area(void)
 {
-	return PTR_ERR_OR_ZERO(request_sdram_region("scratch area",
+	return PTR_ERR_OR_ZERO(request_barebox_region("scratch area",
 				    (ulong)arm_mem_scratch_get(),
 				    sizeof(struct imx_scratch_space)));
 }
diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
index fc202815973f..ccb27a81497f 100644
--- a/arch/mips/lib/cpu-probe.c
+++ b/arch/mips/lib/cpu-probe.c
@@ -231,7 +231,7 @@ unsigned long mips_stack_top;
 
 static int mips_request_stack(void)
 {
-	if (!request_sdram_region("stack", mips_stack_top - STACK_SIZE, STACK_SIZE))
+	if (!request_barebox_region("stack", mips_stack_top - STACK_SIZE, STACK_SIZE))
 		pr_err("Error: Cannot request SDRAM region for stack\n");
 
 	return 0;
diff --git a/arch/powerpc/mach-mpc5xxx/cpu.c b/arch/powerpc/mach-mpc5xxx/cpu.c
index 9c99bdd26f9b..647109b7fb63 100644
--- a/arch/powerpc/mach-mpc5xxx/cpu.c
+++ b/arch/powerpc/mach-mpc5xxx/cpu.c
@@ -40,7 +40,7 @@ static int mpc5xxx_reserve_region(void)
 	struct resource *r;
 
 	/* keep this in sync with the assembler routines setting up the stack */
-	r = request_sdram_region("stack", _text_base - STACK_SIZE, STACK_SIZE);
+	r = request_barebox_region("stack", _text_base - STACK_SIZE, STACK_SIZE);
 	if (r == NULL) {
 		pr_err("Failed to request stack region at: 0x%08lx/0x%08lx\n",
 			_text_base - STACK_SIZE, _text_base - 1);
diff --git a/arch/powerpc/mach-mpc85xx/cpu.c b/arch/powerpc/mach-mpc85xx/cpu.c
index 2119352f84a7..acfd4699a2ff 100644
--- a/arch/powerpc/mach-mpc85xx/cpu.c
+++ b/arch/powerpc/mach-mpc85xx/cpu.c
@@ -96,7 +96,7 @@ phys_size_t fsl_get_effective_memsize(void)
 
 static int fsl_reserve_region(void)
 {
-	request_sdram_region("stack", _text_base - STACK_SIZE,
+	request_barebox_region("stack", _text_base - STACK_SIZE,
 			STACK_SIZE);
 	return 0;
 }
diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
index d20526293bac..2e18105bbfb3 100644
--- a/arch/riscv/boot/start.c
+++ b/arch/riscv/boot/start.c
@@ -98,8 +98,8 @@ EXPORT_SYMBOL_GPL(riscv_mem_endmem_get);
 static int barebox_memory_areas_init(void)
 {
 	if(barebox_boarddata)
-		request_sdram_region("board data", (unsigned long)barebox_boarddata,
-				     barebox_boarddata_size);
+		request_barebox_region("board data", (unsigned long)barebox_boarddata,
+				       barebox_boarddata_size);
 
 	return 0;
 }
diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
index 38aa40275829..ad9030ede78b 100644
--- a/arch/riscv/cpu/core.c
+++ b/arch/riscv/cpu/core.c
@@ -28,7 +28,7 @@
 static int riscv_request_stack(void)
 {
 	extern unsigned long riscv_stack_top;
-	return PTR_ERR_OR_ZERO(request_sdram_region("stack", riscv_stack_top - STACK_SIZE, STACK_SIZE));
+	return PTR_ERR_OR_ZERO(request_barebox_region("stack", riscv_stack_top - STACK_SIZE, STACK_SIZE));
 }
 coredevice_initcall(riscv_request_stack);
 
diff --git a/common/memory.c b/common/memory.c
index 8e68b5e8bb20..eb7838d03613 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -103,15 +103,15 @@ static int mem_malloc_resource(void)
 	request_sdram_region("malloc space",
 			malloc_start,
 			malloc_end - malloc_start + 1);
-	request_sdram_region("barebox code",
+	request_barebox_region("barebox code",
 			(unsigned long)&_stext,
 			(unsigned long)&_etext -
 			(unsigned long)&_stext);
-	request_sdram_region("barebox data",
+	request_barebox_region("barebox data",
 			(unsigned long)&_sdata,
 			(unsigned long)&_edata -
 			(unsigned long)&_sdata);
-	request_sdram_region("barebox bss",
+	request_barebox_region("barebox bss",
 			(unsigned long)&__bss_start,
 			(unsigned long)&__bss_stop -
 			(unsigned long)&__bss_start);
diff --git a/fs/pstore/ram_core.c b/fs/pstore/ram_core.c
index 24948d701744..fbc936a44fd6 100644
--- a/fs/pstore/ram_core.c
+++ b/fs/pstore/ram_core.c
@@ -342,7 +342,7 @@ void persistent_ram_zap(struct persistent_ram_zone *prz)
 static int persistent_ram_buffer_map(phys_addr_t start, phys_addr_t size,
 		struct persistent_ram_zone *prz, int memtype)
 {
-	prz->res = request_sdram_region(prz->label ?: "ramoops", start, size);
+	prz->res = request_barebox_region(prz->label ?: "ramoops", start, size);
 	if (!prz->res)
 		return -ENOMEM;
 
-- 
2.39.2




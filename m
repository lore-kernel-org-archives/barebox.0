Delivery-date: Thu, 05 Jun 2025 21:45:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNGX6-0047vC-17
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 21:45:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNGX4-0005bX-Ms
	for lore@pengutronix.de; Thu, 05 Jun 2025 21:45:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4YjzQQ65AWgo0fN6XJo93cFljaRz7AAgR9D6rnredfA=; b=S21rTO3pjKQoue8B0RU/fIvBqI
	zdmVLwglBSPJsVFSVYYHOJw7qheP/x9rJIox+4WvwrwL8JvnwBcC4fSdh3fM3ZrSGYQqvu72jY1f4
	chIundfo8JtSeBJqLdR17BE4iD8k6iZ0Gsv1UmWDF+peRxO8NA30qYtbx3vHK38ZmNV7wpBGAVUCF
	kivsx3mLo6UqdDkmbhHpiD0EkvPDRSJ8tp6tR0lmd9MZlmfPv51KIdTdH2nWq2MlBqbEOnypQcUOe
	p2vfMCjRGlbn6Phps4ABRkRbHM3dvSbTxjGUmltWaqwOzopd+bxiwj2a8hRbWPLL8iySEKOFnDne7
	eJHaKXvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNGWR-0000000GWVh-3m4L;
	Thu, 05 Jun 2025 19:45:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNGVR-0000000GWIE-2vvw
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 19:44:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNGVN-0003sr-OF; Thu, 05 Jun 2025 21:44:01 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  5 Jun 2025 21:43:59 +0200
Message-Id: <20250605194401.1841679-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_124406_058172_A645CB48 
X-CRM114-Status: GOOD (  19.41  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/3] resource: supply memory type/attrs on all SDRAM requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When running as EFI loader, barebox is expected to provide a virtual
memory map that describes the memory regions known to barebox as well as
attributes like whether regions are write-back cached (usable as normal
memory) or reserved (e.g., for OP-TEE).

>From a security point of view, it's useful to have this information
always to inform MMU attributes, so let's make it mandatory.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v2 -> v3:
  - fix intermittent build breakage (Sascha)
---
 arch/arm/cpu/armv7r-mpu.c       |  5 ++--
 arch/arm/cpu/bootm-fip.c        |  3 ++-
 arch/arm/cpu/cpu.c              |  3 ++-
 arch/arm/cpu/mmu_32.c           | 13 +++++++---
 arch/arm/cpu/mmu_64.c           |  7 ++++--
 arch/arm/cpu/start.c            |  3 ++-
 arch/arm/lib32/bootm.c          | 18 +++++++++-----
 arch/arm/lib32/bootz.c          |  4 ++-
 arch/mips/lib/cpu-probe.c       |  3 ++-
 arch/powerpc/mach-mpc5xxx/cpu.c |  3 ++-
 arch/powerpc/mach-mpc85xx/cpu.c |  2 +-
 arch/riscv/boot/start.c         |  2 +-
 arch/riscv/cpu/core.c           |  2 +-
 common/bootm.c                  |  9 ++++---
 common/elf.c                    |  3 ++-
 common/memory.c                 | 43 ++++++++++++++++++++++++++-------
 common/memtest.c                |  4 ++-
 common/pe.c                     |  4 ++-
 common/uimage.c                 |  6 +++--
 drivers/tee/optee/of_fixup.c    |  3 +++
 fs/pstore/ram_core.c            |  6 ++++-
 include/memory.h                | 21 +++++++++++++---
 lib/Kconfig.hardening           |  7 ++++++
 lib/libfile.c                   | 13 ++++++++--
 pbl/handoff-data.c              |  3 ++-
 25 files changed, 141 insertions(+), 49 deletions(-)

diff --git a/arch/arm/cpu/armv7r-mpu.c b/arch/arm/cpu/armv7r-mpu.c
index 1de9e39cc5f5..4fb867c50a42 100644
--- a/arch/arm/cpu/armv7r-mpu.c
+++ b/arch/arm/cpu/armv7r-mpu.c
@@ -206,8 +206,9 @@ int armv7r_mpu_init_coherent(unsigned long start, enum size reg_size)
 static int armv7r_request_pool(void)
 {
 	if (dma_coherent_start && dma_coherent_size)
-		request_sdram_region("DMA coherent pool", dma_coherent_start,
-							dma_coherent_size);
+		request_sdram_region("DMA coherent pool",
+				     dma_coherent_start, dma_coherent_size,
+				     MEMTYPE_BOOT_SERVICES_DATA, MEMATTRS_RW);
 	return 0;
 }
 postmem_initcall(armv7r_request_pool);
diff --git a/arch/arm/cpu/bootm-fip.c b/arch/arm/cpu/bootm-fip.c
index 89201ade5f12..bd176f064524 100644
--- a/arch/arm/cpu/bootm-fip.c
+++ b/arch/arm/cpu/bootm-fip.c
@@ -37,7 +37,8 @@ static int desc_to_sdram(struct fip_image_desc *loadable, ulong load_address)
 		return 0;
 
 	res = request_sdram_region("fip", load_address,
-				   loadable->image->toc_e.size);
+				   loadable->image->toc_e.size,
+				   MEMTYPE_LOADER_CODE, MEMATTRS_RW);
 	if (!res)
 		return -EBUSY;
 
diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 800d6b3cabff..ab41da5cab50 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -104,7 +104,8 @@ static int arm_request_stack(void)
 	if (efi_is_payload())
 		return 0;
 
-	if (!request_barebox_region("stack", arm_stack_top - STACK_SIZE, STACK_SIZE))
+	if (!request_barebox_region("stack", arm_stack_top - STACK_SIZE, STACK_SIZE,
+				    MEMATTRS_RW))
 		pr_err("Error: Cannot request SDRAM region for stack\n");
 
 	return 0;
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 9f50194c7c2b..40462f6fa5cf 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -406,7 +406,8 @@ static void create_vector_table(unsigned long adr)
 	void *vectors;
 	u32 *pte;
 
-	vectors_sdram = request_barebox_region("vector table", adr, PAGE_SIZE);
+	vectors_sdram = request_barebox_region("vector table", adr, PAGE_SIZE,
+					       MEMATTRS_RWX); // FIXME
 	if (vectors_sdram) {
 		/*
 		 * The vector table address is inside the SDRAM physical
@@ -490,7 +491,8 @@ static void create_zero_page(void)
 	 * In case the zero page is in SDRAM request it to prevent others
 	 * from using it
 	 */
-	request_sdram_region("zero page", 0x0, PAGE_SIZE);
+	request_sdram_region("zero page", 0x0, PAGE_SIZE,
+			     MEMTYPE_BOOT_SERVICES_DATA, MEMATTRS_FAULT);
 
 	zero_page_faulting();
 	pr_debug("Created zero page\n");
@@ -504,7 +506,7 @@ static void create_guard_page(void)
 		return;
 
 	guard_page = arm_mem_guard_page_get();
-	request_barebox_region("guard page", guard_page, PAGE_SIZE);
+	request_barebox_region("guard page", guard_page, PAGE_SIZE, MEMATTRS_FAULT);
 	remap_range((void *)guard_page, PAGE_SIZE, MAP_FAULT);
 
 	pr_debug("Created guard page\n");
@@ -553,8 +555,11 @@ void __mmu_init(bool mmu_on)
 	struct memory_bank *bank;
 	uint32_t *ttb = get_ttb();
 
+	// TODO: remap writable only while remapping?
+	// TODO: What memtype for ttb when barebox is EFI loader?
 	if (!request_barebox_region("ttb", (unsigned long)ttb,
-				    ARM_EARLY_PAGETABLE_SIZE))
+				    ARM_EARLY_PAGETABLE_SIZE,
+				    MEMATTRS_RW))
 		/*
 		 * This can mean that:
 		 * - the early MMU code has put the ttb into a place
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index efd788c93e7b..d72ff020f485 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -338,7 +338,8 @@ static void create_guard_page(void)
 		return;
 
 	guard_page = arm_mem_guard_page_get();
-	request_barebox_region("guard page", guard_page, PAGE_SIZE);
+	request_barebox_region("guard page", guard_page, PAGE_SIZE,
+			       MEMATTRS_FAULT);
 	remap_range((void *)guard_page, PAGE_SIZE, MAP_FAULT);
 
 	pr_debug("Created guard page\n");
@@ -352,8 +353,10 @@ void __mmu_init(bool mmu_on)
 	uint64_t *ttb = get_ttb();
 	struct memory_bank *bank;
 
+	// TODO: remap writable only while remapping?
+	// TODO: What memtype for ttb when barebox is EFI loader?
 	if (!request_barebox_region("ttb", (unsigned long)ttb,
-				  ARM_EARLY_PAGETABLE_SIZE))
+				  ARM_EARLY_PAGETABLE_SIZE, MEMATTRS_RW))
 		/*
 		 * This can mean that:
 		 * - the early MMU code has put the ttb into a place
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index d6ab5a16b5bb..f7d4507e7158 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -120,7 +120,8 @@ static int barebox_memory_areas_init(void)
 {
 	if (kasan_enabled())
 		request_sdram_region("kasan shadow", kasan_shadow_base,
-				     mem_malloc_start() - kasan_shadow_base);
+				     mem_malloc_start() - kasan_shadow_base,
+				     MEMTYPE_BOOT_SERVICES_DATA, MEMATTRS_RW);
 
 	return 0;
 }
diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 963c83051de0..5849b55cc3b0 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -160,7 +160,8 @@ static int optee_verify_header_request_region(struct image_data *data, struct op
 		return ret;
 	}
 
-	data->tee_res = request_sdram_region("TEE", hdr->init_load_addr_lo, hdr->init_size);
+	data->tee_res = request_sdram_region("TEE", hdr->init_load_addr_lo, hdr->init_size,
+					     MEMTYPE_RESERVED, MEMATTRS_RW_DEVICE);
 	if (!data->tee_res) {
 		pr_err("Cannot request SDRAM region 0x%08x-0x%08x: %pe\n",
 		       hdr->init_load_addr_lo, hdr->init_load_addr_lo + hdr->init_size - 1,
@@ -502,7 +503,8 @@ static int do_bootz_linux(struct image_data *data)
 	if (ret)
 		return ret;
 
-	data->os_res = request_sdram_region("zimage", load_address, image_size);
+	data->os_res = request_sdram_region("zimage", load_address, image_size,
+					    MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
 	if (!data->os_res) {
 		pr_err("bootm/zImage: failed to request memory at 0x%lx to 0x%lx (%zu).\n",
 		       load_address, load_address + image_size, image_size);
@@ -626,13 +628,15 @@ static int do_bootm_aimage(struct image_data *data)
 	}
 
 	cmp = &header->kernel;
-	data->os_res = request_sdram_region("akernel", cmp->load_addr, cmp->size);
+	data->os_res = request_sdram_region("akernel", cmp->load_addr, cmp->size,
+					    MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
 	if (!data->os_res) {
 		pr_err("Cannot request region 0x%08x - 0x%08x, using default load address\n",
 				cmp->load_addr, cmp->size);
 
 		data->os_address = mem_start + PAGE_ALIGN(cmp->size * 4);
-		data->os_res = request_sdram_region("akernel", data->os_address, cmp->size);
+		data->os_res = request_sdram_region("akernel", data->os_address, cmp->size,
+						    MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
 		if (!data->os_res) {
 			pr_err("Cannot request region 0x%08x - 0x%08x\n",
 					cmp->load_addr, cmp->size);
@@ -653,7 +657,8 @@ static int do_bootm_aimage(struct image_data *data)
 	 */
 	cmp = &header->ramdisk;
 	if (cmp->size) {
-		data->initrd_res = request_sdram_region("ainitrd", cmp->load_addr, cmp->size);
+		data->initrd_res = request_sdram_region("ainitrd", cmp->load_addr, cmp->size,
+							MEMTYPE_LOADER_DATA, MEMATTRS_RW);
 		if (!data->initrd_res) {
 			ret = -ENOMEM;
 			goto err_out;
@@ -676,7 +681,8 @@ static int do_bootm_aimage(struct image_data *data)
 	if (cmp->size) {
 		void (*second)(void);
 
-		snd_stage_res = request_sdram_region("asecond", cmp->load_addr, cmp->size);
+		snd_stage_res = request_sdram_region("asecond", cmp->load_addr, cmp->size,
+						     MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
 		if (!snd_stage_res) {
 			ret = -ENOMEM;
 			goto err_out;
diff --git a/arch/arm/lib32/bootz.c b/arch/arm/lib32/bootz.c
index ab275c367711..ddc53431ebd3 100644
--- a/arch/arm/lib32/bootz.c
+++ b/arch/arm/lib32/bootz.c
@@ -87,7 +87,9 @@ static int do_bootz(int argc, char *argv[])
 		} else {
 			zimage = (void *)bank->start + SZ_8M;
 			res = request_sdram_region("zimage",
-					bank->start + SZ_8M, end);
+					bank->start + SZ_8M, end,
+					MEMTYPE_LOADER_CODE,
+					MEMATTRS_RWX);
 			if (!res) {
 				printf("can't request region for kernel\n");
 				goto err_out1;
diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
index ccb27a81497f..92d5c59e6610 100644
--- a/arch/mips/lib/cpu-probe.c
+++ b/arch/mips/lib/cpu-probe.c
@@ -231,7 +231,8 @@ unsigned long mips_stack_top;
 
 static int mips_request_stack(void)
 {
-	if (!request_barebox_region("stack", mips_stack_top - STACK_SIZE, STACK_SIZE))
+	if (!request_barebox_region("stack", mips_stack_top - STACK_SIZE, STACK_SIZE,
+				    MEMATTRS_RW))
 		pr_err("Error: Cannot request SDRAM region for stack\n");
 
 	return 0;
diff --git a/arch/powerpc/mach-mpc5xxx/cpu.c b/arch/powerpc/mach-mpc5xxx/cpu.c
index 80bf3ccacd03..b4e09cc80545 100644
--- a/arch/powerpc/mach-mpc5xxx/cpu.c
+++ b/arch/powerpc/mach-mpc5xxx/cpu.c
@@ -40,7 +40,8 @@ static int mpc5xxx_reserve_region(void)
 	struct resource *r;
 
 	/* keep this in sync with the assembler routines setting up the stack */
-	r = request_barebox_region("stack", _text_base - STACK_SIZE, STACK_SIZE);
+	r = request_barebox_region("stack", _text_base - STACK_SIZE, STACK_SIZE,
+				   MEMATTRS_RW);
 	if (r == NULL) {
 		pr_err("Failed to request stack region at: 0x%08lx/0x%08lx\n",
 			_text_base - STACK_SIZE, _text_base - 1);
diff --git a/arch/powerpc/mach-mpc85xx/cpu.c b/arch/powerpc/mach-mpc85xx/cpu.c
index b0580f774be4..23da0eac4c39 100644
--- a/arch/powerpc/mach-mpc85xx/cpu.c
+++ b/arch/powerpc/mach-mpc85xx/cpu.c
@@ -98,7 +98,7 @@ phys_size_t fsl_get_effective_memsize(void)
 static int fsl_reserve_region(void)
 {
 	request_barebox_region("stack", _text_base - STACK_SIZE,
-			STACK_SIZE);
+			STACK_SIZE, MEMATTRS_RW);
 	return 0;
 }
 coredevice_initcall(fsl_reserve_region);
diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
index ab9bb6f320f9..5091340c8a37 100644
--- a/arch/riscv/boot/start.c
+++ b/arch/riscv/boot/start.c
@@ -104,7 +104,7 @@ static int barebox_memory_areas_init(void)
 {
 	if(barebox_boarddata)
 		request_barebox_region("board data", (unsigned long)barebox_boarddata,
-				       barebox_boarddata_size);
+				       barebox_boarddata_size, MEMATTRS_RO);
 
 	return 0;
 }
diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
index 4889f774cbb3..b895a0da4311 100644
--- a/arch/riscv/cpu/core.c
+++ b/arch/riscv/cpu/core.c
@@ -30,7 +30,7 @@ static int riscv_request_stack(void)
 	extern unsigned long riscv_stack_top;
 	return request_barebox_region("stack",
 				      riscv_stack_top - STACK_SIZE,
-				      STACK_SIZE) ? 0 : -EINVAL;
+				      STACK_SIZE, MEMATTRS_RW) ? 0 : -EINVAL;
 }
 coredevice_initcall(riscv_request_stack);
 
diff --git a/common/bootm.c b/common/bootm.c
index acc784afa038..95211011fe8b 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -187,7 +187,8 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 		unsigned long kernel_size = data->fit_kernel_size;
 
 		data->os_res = request_sdram_region("kernel",
-				load_address, kernel_size);
+				load_address, kernel_size,
+				MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
 		if (!data->os_res) {
 			pr_err("unable to request SDRAM region for kernel at"
 					" 0x%08llx-0x%08llx\n",
@@ -298,8 +299,8 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 			return ERR_PTR(ret);
 		}
 		data->initrd_res = request_sdram_region("initrd",
-				load_address,
-				initrd_size);
+				load_address, initrd_size,
+				MEMTYPE_LOADER_DATA, MEMATTRS_RW);
 		if (!data->initrd_res) {
 			pr_err("unable to request SDRAM region for initrd at"
 					" 0x%08llx-0x%08llx\n",
@@ -533,7 +534,7 @@ int bootm_load_devicetree(struct image_data *data, void *fdt,
 	fdt_size = be32_to_cpu(((struct fdt_header *)fdt)->totalsize);
 
 	data->oftree_res = request_sdram_region("oftree", load_address,
-			fdt_size);
+			fdt_size, MEMTYPE_LOADER_DATA, MEMATTRS_RW);
 	if (!data->oftree_res) {
 		pr_err("unable to request SDRAM region for device tree at"
 				" 0x%08llx-0x%08llx\n",
diff --git a/common/elf.c b/common/elf.c
index 3cbe63f6b2e6..8578892366c3 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -32,7 +32,8 @@ static int elf_request_region(struct elf_image *elf, resource_size_t start,
 	if (!r)
 		return -ENOMEM;
 
-	r_new = request_sdram_region("elf_section", start, size);
+	r_new = request_sdram_region("elf_section", start, size,
+				     MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
 	if (!r_new) {
 		r_new = request_iomem_region("elf_section", start, size);
 		if (!r_new) {
diff --git a/common/memory.c b/common/memory.c
index 4e3cb1571e93..f407cf0ea7e3 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -67,7 +67,9 @@ static int mem_register_barebox(void)
 {
 	if (barebox_start && barebox_size)
 		barebox_res = request_sdram_region("barebox", barebox_start,
-						   barebox_size);
+						   barebox_size,
+						   MEMTYPE_BOOT_SERVICES_CODE,
+						   MEMATTRS_RWX); // FIXME
 	return 0;
 }
 postmem_initcall(mem_register_barebox);
@@ -80,18 +82,32 @@ bool inside_barebox_area(resource_size_t start, resource_size_t end)
 
 struct resource *request_barebox_region(const char *name,
 					resource_size_t start,
-					resource_size_t size)
+					resource_size_t size,
+					unsigned memattrs)
 {
 	resource_size_t end = start + size - 1;
+	enum resource_memtype memtype;
+
+	if (memattrs & MEMATTR_XP)
+		memtype = MEMTYPE_BOOT_SERVICES_DATA;
+	else
+		memtype = MEMTYPE_BOOT_SERVICES_CODE;
 
 	if (inside_barebox_area(start, end)) {
 		struct resource *iores;
 		iores = __request_region(barebox_res, start, end,
 					 name, IORESOURCE_MEM);
-		return !IS_ERR(iores) ? iores : NULL;
+		if (IS_ERR(iores))
+			return NULL;
+
+		iores->type = memtype;
+		iores->attrs = memattrs;
+		iores->flags |= IORESOURCE_TYPE_VALID;
+
+		return iores;
 	}
 
-	return request_sdram_region(name, start, size);
+	return request_sdram_region(name, start, size, memtype, memattrs);
 }
 
 static int mem_malloc_resource(void)
@@ -105,22 +121,27 @@ static int mem_malloc_resource(void)
 	 */
 	request_sdram_region("malloc space",
 			malloc_start,
-			malloc_end - malloc_start + 1);
+			malloc_end - malloc_start + 1,
+			MEMTYPE_BOOT_SERVICES_DATA, MEMATTRS_RW);
 	request_barebox_region("barebox code",
 			(unsigned long)&_stext,
 			(unsigned long)&_etext -
-			(unsigned long)&_stext);
+			(unsigned long)&_stext,
+			MEMATTRS_RX);
 	request_barebox_region("barebox data",
 			(unsigned long)&_sdata,
 			(unsigned long)&_edata -
-			(unsigned long)&_sdata);
+			(unsigned long)&_sdata,
+			MEMATTRS_RW);
 	request_barebox_region("barebox bss",
 			(unsigned long)&__bss_start,
 			(unsigned long)&__bss_stop -
-			(unsigned long)&__bss_start);
+			(unsigned long)&__bss_start,
+			MEMATTRS_RW);
 #endif
 #ifdef STACK_BASE
-	request_sdram_region("stack", STACK_BASE, STACK_SIZE);
+	request_sdram_region("stack", STACK_BASE, STACK_SIZE,
+			     MEMTYPE_BOOT_SERVICES_DATA, MEMATTRS_RW);
 #endif
 
 	return 0;
@@ -269,6 +290,10 @@ struct resource *reserve_sdram_region(const char *name, resource_size_t start,
 	if (!res)
 		return NULL;
 
+	res->type = MEMTYPE_RESERVED;
+	res->attrs = MEMATTRS_RW_DEVICE;
+	res->flags |= IORESOURCE_TYPE_VALID;
+
 	remap_range((void *)start, size, MAP_UNCACHED);
 
 	return res;
diff --git a/common/memtest.c b/common/memtest.c
index aa16d94eeda0..00b9e90b0765 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -25,7 +25,9 @@ static int alloc_memtest_region(struct list_head *list,
 	struct mem_test_resource *r;
 
 	r = xzalloc(sizeof(struct mem_test_resource));
-	r_new = request_sdram_region("memtest", start, size);
+	r_new = request_sdram_region("memtest", start, size,
+				     MEMTYPE_BOOT_SERVICES_DATA,
+				     MEMATTRS_RW);
 	if (!r_new)
 		return -EINVAL;
 
diff --git a/common/pe.c b/common/pe.c
index fd99761bddfd..0508670a5264 100644
--- a/common/pe.c
+++ b/common/pe.c
@@ -248,7 +248,9 @@ static struct resource *pe_alloc(size_t virt_size)
 	if (start + virt_size > end)
 		return NULL;
 
-	return request_sdram_region("pe-code", start, virt_size);
+	return request_sdram_region("pe-code", start, virt_size,
+				    MEMTYPE_LOADER_CODE,
+				    MEMATTRS_RWX);
 }
 
 unsigned long pe_get_mem_size(struct pe_image *pe)
diff --git a/common/uimage.c b/common/uimage.c
index 06a2c05ead67..3e456e9c58ab 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -347,7 +347,8 @@ static long uimage_sdram_flush(void *buf, unsigned long len)
 		release_sdram_region(uimage_resource);
 
 		uimage_resource = request_sdram_region("uimage",
-				start, size);
+				start, size, MEMTYPE_LOADER_CODE,
+				MEMATTRS_RWX);
 		if (!uimage_resource) {
 			resource_size_t prsize = start + size - 1;
 			printf("unable to request SDRAM %pa - %pa\n",
@@ -385,7 +386,8 @@ struct resource *uimage_load_to_sdram(struct uimage_handle *handle,
 		return NULL;
 
 	uimage_resource = request_sdram_region("uimage",
-				start, size);
+				start, size, MEMTYPE_LOADER_CODE,
+				MEMATTRS_RWX);
 	if (!uimage_resource) {
 		printf("unable to request SDRAM 0x%08llx-0x%08llx\n",
 			(unsigned long long)start,
diff --git a/drivers/tee/optee/of_fixup.c b/drivers/tee/optee/of_fixup.c
index e801c4c95070..223f67e872aa 100644
--- a/drivers/tee/optee/of_fixup.c
+++ b/drivers/tee/optee/of_fixup.c
@@ -38,6 +38,7 @@ int of_optee_fixup(struct device_node *root, void *_data)
 		res_core.end = arm_mem_endmem_get() - fixup_data->shm_size - 1;
 	}
 	res_core.flags = IORESOURCE_MEM | IORESOURCE_BUSY;
+	reserve_resource(&res_core);
 	res_core.name = "optee_core";
 
 	ret = of_fixup_reserved_memory(root, &res_core);
@@ -55,6 +56,8 @@ int of_optee_fixup(struct device_node *root, void *_data)
 		res_shm.end = arm_mem_endmem_get() - 1;
 	}
 	res_shm.flags = IORESOURCE_MEM;
+	res_shm.type = MEMTYPE_CONVENTIONAL;
+	res_shm.attrs = MEMATTRS_RW | MEMATTR_SP;
 	res_shm.name = "optee_shm";
 
 	return of_fixup_reserved_memory(root, &res_shm);
diff --git a/fs/pstore/ram_core.c b/fs/pstore/ram_core.c
index 496c803045c3..621987f1bade 100644
--- a/fs/pstore/ram_core.c
+++ b/fs/pstore/ram_core.c
@@ -342,10 +342,14 @@ void persistent_ram_zap(struct persistent_ram_zone *prz)
 static int persistent_ram_buffer_map(phys_addr_t start, phys_addr_t size,
 		struct persistent_ram_zone *prz, int memtype)
 {
-	prz->res = request_barebox_region(prz->label ?: "ramoops", start, size);
+	prz->res = request_barebox_region(prz->label ?: "ramoops", start, size,
+					  MEMATTRS_RW | MEMATTR_SP);
 	if (!prz->res)
 		return -ENOMEM;
 
+	prz->res->type = MEMTYPE_PERSISTENT;
+	prz->res->runtime = true;
+
 	prz->paddr = start;
 	prz->size = size;
 
diff --git a/include/memory.h b/include/memory.h
index 707c0f13130d..77bd4d266a72 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -37,10 +37,21 @@ struct resource *__request_sdram_region(const char *name, unsigned flags,
 
 static inline struct resource *request_sdram_region(const char *name,
 						    resource_size_t start,
-						    resource_size_t size)
+						    resource_size_t size,
+						    enum resource_memtype memtype,
+						    unsigned memattrs)
 {
+	struct resource *res;
+
 	/* IORESOURCE_MEM is implicit for all SDRAM regions */
-	return __request_sdram_region(name, 0, start, size);
+	res = __request_sdram_region(name, 0, start, size);
+	if (IS_ENABLED(CONFIG_MEMORY_ATTRIBUTES) && res) {
+		res->type = memtype;
+		res->attrs = memattrs;
+		res->flags |= IORESOURCE_TYPE_VALID;
+	}
+
+	return res;
 }
 
 struct resource *reserve_sdram_region(const char *name, resource_size_t start,
@@ -67,11 +78,13 @@ void register_barebox_area(resource_size_t start, resource_size_t size);
 bool inside_barebox_area(resource_size_t start, resource_size_t end);
 struct resource *request_barebox_region(const char *name,
 					resource_size_t start,
-					resource_size_t size);
+					resource_size_t size,
+					unsigned memattrs);
 #else
 static inline struct resource *request_barebox_region(const char *name,
 					resource_size_t start,
-					resource_size_t size)
+					resource_size_t size,
+					unsigned memattrs)
 {
 
 		return NULL;
diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index 7567f3e9aaaf..ac1acefafb2c 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -243,4 +243,11 @@ config PBL_STACKPROTECTOR_ALL
 
 endchoice
 
+config MEMORY_ATTRIBUTES
+	bool "record memory attributes" if EXPERIMENTAL
+	help
+	  Tag all SDRAM memory region requests with type and attributes.
+	  This is currently not acted upon, but protections (e.g. read-only)
+	  will in future be enforced by the MMU.
+
 endmenu
diff --git a/lib/libfile.c b/lib/libfile.c
index 995531248ea4..7ca13a34b41d 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -768,6 +768,7 @@ int cache_file(const char *path, char **newpath)
 struct resource *file_to_sdram(const char *filename, unsigned long adr)
 {
 	struct resource *res;
+	unsigned memattrs;
 	size_t size = BUFSIZ;
 	size_t ofs = 0;
 	ssize_t now;
@@ -777,8 +778,15 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
 	if (fd < 0)
 		return NULL;
 
+	/* FIXME: EFI payloads are started with MMU enabled, so for now
+	 * we keep attributes as RWX instead of remapping later on
+	 */
+	memattrs = IS_ENABLED(CONFIG_EFI_LOADER) ? MEMATTRS_RWX : MEMATTRS_RW;
+
 	while (1) {
-		res = request_sdram_region("image", adr, size);
+
+		res = request_sdram_region("image", adr, size,
+					   MEMTYPE_LOADER_CODE, memattrs);
 		if (!res) {
 			printf("unable to request SDRAM 0x%08lx-0x%08lx\n",
 				adr, adr + size - 1);
@@ -807,7 +815,8 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
 
 		if (now < BUFSIZ) {
 			release_sdram_region(res);
-			res = request_sdram_region("image", adr, ofs + now);
+			res = request_sdram_region("image", adr, ofs + now,
+						   MEMTYPE_LOADER_CODE, memattrs);
 			goto out;
 		}
 
diff --git a/pbl/handoff-data.c b/pbl/handoff-data.c
index a0a04cad0ca3..42e53f986bf1 100644
--- a/pbl/handoff-data.c
+++ b/pbl/handoff-data.c
@@ -202,7 +202,8 @@ static int handoff_data_reserve(void)
 
 	list_for_each_entry(hde, &hd->entries, list) {
 		const char *name = handoff_data_entry_name(hde);
-		request_barebox_region(name, (resource_size_t)hde->data, hde->size);
+		request_barebox_region(name, (resource_size_t)hde->data, hde->size,
+				       MEMATTRS_RO);
 	}
 
 	return 0;
-- 
2.39.5




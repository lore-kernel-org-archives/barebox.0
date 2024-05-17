Delivery-date: Fri, 17 May 2024 08:45:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7rLp-000wrO-0W
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 08:45:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7rLn-0006xI-VI
	for lore@pengutronix.de; Fri, 17 May 2024 08:45:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rwh6WRUS49EUoAui/dJADHnhukbooUW3Eji0FLggENs=; b=33N2rvTcW3EVWFjmuyJUMLYfhB
	QgFYEWE4UNXp1dGgmskdKLGaAL2FZiZcJsl4sOJmaWKi+rwPL0p8rIZgkLTC2LALn+sn70yabbgtR
	/pCSv2VPd5yd+tzJN/A1n9oY6OopSyHLWCgWQDiSsqZxFRtzFvxsWSQGlFTDQFsTFUKK5NVNu2677
	39m+4hi6pTOqz+BTVc5TNYawQ0v5pUDd06YOb/O0lamjOCbJX61GriPVPaYvUOV3g9WeE4NR4rluW
	5QUVJfeKXIW5ceip68As/9fmPDlAFCkWhI6kuTLAy1cVp7ZW2qTsZ8GnC55+SE3sxD0hwaYbGr8sa
	3VeobrRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7rLH-00000006yVR-2rDN;
	Fri, 17 May 2024 06:45:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7rL8-00000006yR1-0Fpl
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 06:45:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-0006XB-VB
	for barebox@lists.infradead.org; Fri, 17 May 2024 08:45:12 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-001pey-IN
	for barebox@lists.infradead.org; Fri, 17 May 2024 08:45:12 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-00Emcc-1X
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 08:45:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 May 2024 08:45:11 +0200
Message-Id: <20240517064511.3307462-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517064511.3307462-1-a.fatoum@pengutronix.de>
References: <20240517064511.3307462-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_234514_370992_18915FAC 
X-CRM114-Status: GOOD (  22.33  )
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
Subject: [PATCH v2 6/6] ARM: pass handoff data from PBL to proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

Use newly introduced handoff data to pass data from PBL to barebox
proper. This will allow us later to pass more SoC and/or board specific
data from PBL to barebox proper.

Link: https://lore.barebox.org/20240430105310.3149242-4-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - delete no longer used arm_mem_boarddata()
  - in PBL, add board data before computing size, so it's taken into
    account
  - in barebox proper, fix arm_mem_barebox_image() to take account of
    handoff data size
  - support NULL boarddata passed in by PBL entry point. This is
    possibly useful for boards that have board data in ROM that they
    want to pass in a custom manner
---
 arch/arm/cpu/start.c               | 74 ++++++++----------------------
 arch/arm/cpu/uncompress.c          | 36 +++++++++++++--
 arch/arm/include/asm/barebox-arm.h | 24 ++++++----
 3 files changed, 66 insertions(+), 68 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 8461184db467..2158edafa4a9 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -21,6 +21,7 @@
 #include <asm/mmu.h>
 #include <linux/kasan.h>
 #include <memory.h>
+#include <pbl/handoff-data.h>
 #include <uncompress.h>
 #include <compressed-dtb.h>
 #include <malloc.h>
@@ -38,10 +39,9 @@ static unsigned long barebox_boarddata_size;
 
 const struct barebox_boarddata *barebox_get_boarddata(void)
 {
-	if (!barebox_boarddata || !blob_is_arm_boarddata(barebox_boarddata))
-		return NULL;
+	size_t size;
 
-	return barebox_boarddata;
+	return handoff_data_get_entry(HANDOFF_DATA_BOARDDATA, &size);
 }
 
 u32 barebox_arm_machine(void)
@@ -56,19 +56,24 @@ void *barebox_arm_boot_dtb(void)
 	int ret = 0;
 	struct barebox_boarddata_compressed_dtb *compressed_dtb;
 	static void *boot_dtb;
+	void *blob;
+	size_t size;
 
 	if (boot_dtb)
 		return boot_dtb;
 
-	if (barebox_boarddata && blob_is_fdt(barebox_boarddata)) {
-		pr_debug("%s: using barebox_boarddata\n", __func__);
-		return barebox_boarddata;
-	}
+	blob = handoff_data_get_entry(HANDOFF_DATA_INTERNAL_DT, &size);
+	if (blob)
+		return blob;
 
-	if (!fdt_blob_can_be_decompressed(barebox_boarddata))
+	blob = handoff_data_get_entry(HANDOFF_DATA_INTERNAL_DT_Z, &size);
+	if (!blob)
 		return NULL;
 
-	compressed_dtb = barebox_boarddata;
+	if (!fdt_blob_can_be_decompressed(blob))
+		return NULL;
+
+	compressed_dtb = blob;
 
 	pr_debug("%s: using compressed_dtb\n", __func__);
 
@@ -94,18 +99,6 @@ void *barebox_arm_boot_dtb(void)
 	return boot_dtb;
 }
 
-static inline unsigned long arm_mem_boarddata(unsigned long membase,
-					      unsigned long endmem,
-					      unsigned long size)
-{
-	unsigned long mem;
-
-	mem = arm_mem_barebox_image(membase, endmem, arm_barebox_size);
-	mem -= ALIGN(size, 64);
-
-	return mem;
-}
-
 unsigned long arm_mem_ramoops_get(void)
 {
 	return arm_mem_ramoops(arm_stack_top);
@@ -143,10 +136,9 @@ __noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
 {
 	unsigned long endmem = membase + memsize;
 	unsigned long malloc_start, malloc_end;
-	unsigned long barebox_size = barebox_image_size + MAX_BSS_SIZE;
-	unsigned long barebox_base = arm_mem_barebox_image(membase,
-							   endmem,
-							   barebox_size);
+	unsigned long barebox_base = arm_mem_barebox_image(membase, endmem,
+							   barebox_image_size,
+							   boarddata);
 
 	if (IS_ENABLED(CONFIG_CPU_V7))
 		armv7_hyp_install();
@@ -164,37 +156,9 @@ __noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
 	arm_membase = membase;
 	arm_endmem = endmem;
 	arm_stack_top = arm_mem_stack_top(endmem);
-	arm_barebox_size = barebox_size;
+	arm_barebox_size = barebox_image_size + MAX_BSS_SIZE;
 	malloc_end = barebox_base;
 
-	if (boarddata) {
-		uint32_t totalsize = 0;
-		const char *name;
-
-		if (blob_is_fdt(boarddata)) {
-			totalsize = get_unaligned_be32(boarddata + 4);
-			name = "DTB";
-		} else if (blob_is_compressed_fdt(boarddata)) {
-			struct barebox_boarddata_compressed_dtb *bd = boarddata;
-			totalsize = bd->datalen + sizeof(*bd);
-			name = "Compressed DTB";
-		} else if (blob_is_arm_boarddata(boarddata)) {
-			totalsize = sizeof(struct barebox_arm_boarddata);
-			name = "machine type";
-		}
-
-		if (totalsize) {
-			unsigned long mem = arm_mem_boarddata(membase, endmem,
-							      totalsize);
-			pr_debug("found %s in boarddata, copying to 0x%08lx\n",
-				 name, mem);
-			barebox_boarddata = memcpy((void *)mem, boarddata,
-						   totalsize);
-			barebox_boarddata_size = totalsize;
-			malloc_end = mem;
-		}
-	}
-
 	/*
 	 * Maximum malloc space is the Kconfig value if given
 	 * or 1GB.
@@ -218,6 +182,8 @@ __noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
+	handoff_data_set(boarddata);
+
 	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
 		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1);
 
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 612a5b65ff4c..af702d510eb7 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -10,6 +10,7 @@
 #include <init.h>
 #include <linux/sizes.h>
 #include <pbl.h>
+#include <pbl/handoff-data.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
@@ -18,6 +19,7 @@
 #include <asm/cache.h>
 #include <asm/mmu.h>
 #include <asm/unaligned.h>
+#include <compressed-dtb.h>
 
 #include <debug_ll.h>
 
@@ -29,6 +31,24 @@ unsigned long free_mem_end_ptr;
 extern unsigned char input_data[];
 extern unsigned char input_data_end[];
 
+static void add_handoff_data(void *boarddata)
+{
+	if (!boarddata)
+		return;
+	if (blob_is_fdt(boarddata)) {
+		handoff_data_add(HANDOFF_DATA_INTERNAL_DT, boarddata,
+				 get_unaligned_be32(boarddata + 4));
+	} else if (blob_is_compressed_fdt(boarddata)) {
+		struct barebox_boarddata_compressed_dtb *bd = boarddata;
+
+		handoff_data_add(HANDOFF_DATA_INTERNAL_DT_Z, boarddata,
+				 bd->datalen + sizeof(*bd));
+	} else if (blob_is_arm_boarddata(boarddata)) {
+		handoff_data_add(HANDOFF_DATA_BOARDDATA, boarddata,
+				 sizeof(struct barebox_arm_boarddata));
+	}
+}
+
 void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 				  void *boarddata)
 {
@@ -38,6 +58,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	unsigned long barebox_base;
 	void *pg_start, *pg_end;
 	unsigned long pc = get_pc();
+	void *handoff_data;
 
 	/* piggy data is not relocated, so determine the bounds now */
 	pg_start = runtime_address(input_data);
@@ -56,9 +77,6 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	pg_len = pg_end - pg_start;
 	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
 
-	barebox_base = arm_mem_barebox_image(membase, endmem,
-					     uncompressed_len + MAX_BSS_SIZE);
-
 	setup_c();
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
@@ -66,6 +84,14 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	if (IS_ENABLED(CONFIG_MMU))
 		mmu_early_enable(membase, memsize);
 
+	/* Add handoff data now, so arm_mem_barebox_image takes it into account */
+	add_handoff_data(boarddata);
+
+	barebox_base = arm_mem_barebox_image(membase, endmem,
+					     uncompressed_len, NULL);
+
+	handoff_data = (void *)barebox_base + uncompressed_len + MAX_BSS_SIZE;
+
 	free_mem_ptr = barebox_base - ARM_MEM_EARLY_MALLOC_SIZE;
 	free_mem_end_ptr = barebox_base;
 
@@ -74,6 +100,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
 
+	handoff_data_move(handoff_data);
+
 	sync_caches_for_execution();
 
 	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
@@ -86,5 +114,5 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	if (IS_ENABLED(CONFIG_CPU_V7) && boot_cpu_mode() == HYP_MODE)
 		armv7_switch_to_hyp();
 
-	barebox(membase, memsize, boarddata);
+	barebox(membase, memsize, handoff_data);
 }
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 8447ef7ba7fa..e9afd8f4539c 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -18,6 +18,7 @@
 #include <linux/pagemap.h>
 #include <linux/types.h>
 #include <linux/compiler.h>
+#include <pbl/handoff-data.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/common.h>
 #include <asm/sections.h>
@@ -158,10 +159,22 @@ static inline unsigned long arm_mem_guard_page_get(void)
 	return arm_mem_guard_page(arm_mem_endmem_get());
 }
 
+/*
+ * When using compressed images in conjunction with relocatable images
+ * the PBL code must pick a suitable place where to uncompress the barebox
+ * image. For doing this the PBL code must know the size of the final
+ * image including the BSS segment. The BSS size is unknown to the PBL
+ * code, so define a maximum BSS size here.
+ */
+#define MAX_BSS_SIZE SZ_1M
+
 static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 						  unsigned long endmem,
-						  unsigned long size)
+						  unsigned long uncompressed_len,
+						  const struct handoff_data *handoff_data)
 {
+	unsigned long size = uncompressed_len + MAX_BSS_SIZE + __handoff_data_size(handoff_data);
+
 	endmem = arm_mem_ramoops(endmem);
 
 	return ALIGN_DOWN(endmem - size, SZ_1M);
@@ -237,15 +250,6 @@ void __barebox_arm64_head(ulong x0, ulong x1, ulong x2);
 			      __barebox_arm_head, arg0, arg1, arg2)
 #endif
 
-/*
- * When using compressed images in conjunction with relocatable images
- * the PBL code must pick a suitable place where to uncompress the barebox
- * image. For doing this the PBL code must know the size of the final
- * image including the BSS segment. The BSS size is unknown to the PBL
- * code, so define a maximum BSS size here.
- */
-#define MAX_BSS_SIZE SZ_1M
-
 #define barebox_image_size (__image_end - __image_start)
 
 #ifdef CONFIG_CPU_32
-- 
2.39.2




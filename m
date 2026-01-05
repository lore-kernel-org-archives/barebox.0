Delivery-date: Mon, 05 Jan 2026 09:07:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfd1-001S4S-0V
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:07:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcz-0008D4-19
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:07:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lk6wWHllVoKyo9p21Cwf4O4CzrvsUx45PHzqBdUEVYY=; b=hPt5IAIwGkLA1fmy4gd1ueyEDX
	ofezZxPA6Z/89xLByH/8xJJCTtE8pkZs1YWjpLENb1lSg/3jgNm889wWSveCOu1R7tXPAnEJPz3dZ
	S24bL+n8uLQAEnH1/Q1cjTEz1L+zz0KKq1QPif/AS7QirBgSbynQToIHGrtilBz9Zy7Dc1gObGIAx
	+iN/hYy/gUG+EY33BHQMzrjt5NsBrCXepyx+FUeMYJr4rmmeFp6mLBjzP2vDn40y6UbYjz/dY+l9D
	Z7tCaReIDtBiUBGJmXoWhv7Eyrp7F8KpYOIKtqInJcGjWv9ccwIGI91pkyeqaQSKFSP8FLDfIPczY
	9YzIaloQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcI-0000000Ax4f-1Mzm;
	Mon, 05 Jan 2026 08:07:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcG-0000000Ax32-3dfV
	for barebox@bombadil.infradead.org;
	Mon, 05 Jan 2026 08:07:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Lk6wWHllVoKyo9p21Cwf4O4CzrvsUx45PHzqBdUEVYY=; b=krzkdApbEYdam54AobKgYbhNf+
	dzeMmf+k1Pjqyx9fIahBNskxEKQq1OdpvWsEYJUZF76Feusd2vZj58HSjnlEkLkksT+beRSIve+7D
	ScrwW7un3pQVj5BnZGO6kaZcAUi1zYYliQyXk73N60/tFM+KXa+pMDbfQjm6Cz2tMqX7NbUNnYvjO
	KQJdph1igVW6ZI9/rUkFTgoGeNNIXk3Eu6nCxUZmj/KPDPBGirRJKC4ahwPbypod1wm+E+V/AZeZZ
	YN4sJmdtMheXHJZT/h60K2Aj4so8ZM4poXQIOPE52PcOTY2d9MO/xjEtdu09wBxXUkIHdCp3Wsokk
	iTtjqYEQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcE-00000007oBQ-0CIX
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:07:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfcA-0007f0-Jw; Mon, 05 Jan 2026 09:06:58 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:03:41 +0100
Message-ID: <20260105080653.3240497-10-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105080653.3240497-1-a.fatoum@barebox.org>
References: <20260105080653.3240497-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_080702_191679_60B2EF4C 
X-CRM114-Status: GOOD (  17.12  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/10] memory: always print errors on request_sdram_region failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A failed request_sdram_region is nearly always a problem and warrants a
print out.

Introduce request_sdram_region_silent() for the few cases, where an
error is tolerated and print an error message in the general case.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/armv7r-mpu.c |  6 +++---
 arch/arm/cpu/bootm-fip.c  |  6 +++---
 arch/arm/cpu/mmu_32.c     |  4 ++--
 common/elf.c              |  4 ++--
 common/memory.c           | 20 +++++++++++++-------
 include/memory.h          | 39 +++++++++++++++++++++++++++++++--------
 6 files changed, 54 insertions(+), 25 deletions(-)

diff --git a/arch/arm/cpu/armv7r-mpu.c b/arch/arm/cpu/armv7r-mpu.c
index 4fb867c50a42..d96411a61632 100644
--- a/arch/arm/cpu/armv7r-mpu.c
+++ b/arch/arm/cpu/armv7r-mpu.c
@@ -206,9 +206,9 @@ int armv7r_mpu_init_coherent(unsigned long start, enum size reg_size)
 static int armv7r_request_pool(void)
 {
 	if (dma_coherent_start && dma_coherent_size)
-		request_sdram_region("DMA coherent pool",
-				     dma_coherent_start, dma_coherent_size,
-				     MEMTYPE_BOOT_SERVICES_DATA, MEMATTRS_RW);
+		request_sdram_region_silent("DMA coherent pool",
+					    dma_coherent_start, dma_coherent_size,
+					    MEMTYPE_BOOT_SERVICES_DATA, MEMATTRS_RW);
 	return 0;
 }
 postmem_initcall(armv7r_request_pool);
diff --git a/arch/arm/cpu/bootm-fip.c b/arch/arm/cpu/bootm-fip.c
index 8d1ea3f109d1..a4da4c538abe 100644
--- a/arch/arm/cpu/bootm-fip.c
+++ b/arch/arm/cpu/bootm-fip.c
@@ -36,9 +36,9 @@ static int desc_to_sdram(struct fip_image_desc *loadable, ulong load_address)
 	if (desc_get_res(loadable))
 		return 0;
 
-	res = request_sdram_region("fip", load_address,
-				   loadable->image->toc_e.size,
-				   MEMTYPE_LOADER_CODE, MEMATTRS_RW);
+	res = request_sdram_region_silent("fip", load_address,
+					  loadable->image->toc_e.size,
+					  MEMTYPE_LOADER_CODE, MEMATTRS_RW);
 	if (!res)
 		return -EBUSY;
 
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 912d14e8cf82..caa41e1beb3a 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -540,8 +540,8 @@ static void create_zero_page(void)
 	 * In case the zero page is in SDRAM request it to prevent others
 	 * from using it
 	 */
-	request_sdram_region("zero page", 0x0, PAGE_SIZE,
-			     MEMTYPE_BOOT_SERVICES_DATA, MEMATTRS_FAULT);
+	request_sdram_region_silent("zero page", 0x0, PAGE_SIZE,
+				    MEMTYPE_BOOT_SERVICES_DATA, MEMATTRS_FAULT);
 
 	zero_page_faulting();
 	pr_debug("Created zero page\n");
diff --git a/common/elf.c b/common/elf.c
index 4f4151f722d7..330505e9a2bf 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -31,8 +31,8 @@ static int elf_request_region(struct elf_image *elf, resource_size_t start,
 	if (!r)
 		return -ENOMEM;
 
-	r_new = request_sdram_region("elf_segment", start, size,
-				     MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
+	r_new = request_sdram_region_silent("elf_segment", start, size,
+					    MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
 	if (!r_new) {
 		r_new = request_iomem_region("elf_segment", start, size);
 		if (!r_new) {
diff --git a/common/memory.c b/common/memory.c
index 7dc7f40db7fc..49ff0ef619d5 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -67,7 +67,7 @@ void register_barebox_area(resource_size_t start,
 static int mem_register_barebox(void)
 {
 	if (barebox_start && barebox_size)
-		barebox_res = request_sdram_region("barebox", barebox_start,
+		barebox_res = request_sdram_region_silent("barebox", barebox_start,
 						   barebox_size,
 						   MEMTYPE_BOOT_SERVICES_CODE,
 						   MEMATTRS_RWX); // FIXME
@@ -108,7 +108,7 @@ struct resource *request_barebox_region(const char *name,
 		return iores;
 	}
 
-	return request_sdram_region(name, start, size, memtype, memattrs);
+	return request_sdram_region_silent(name, start, size, memtype, memattrs);
 }
 
 static int mem_malloc_resource(void)
@@ -122,7 +122,7 @@ static int mem_malloc_resource(void)
 	 * regions are outside of sdram in which case
 	 * the following fails.
 	 */
-	request_sdram_region("malloc space",
+	request_sdram_region_silent("malloc space",
 			malloc_start,
 			malloc_end - malloc_start + 1,
 			MEMTYPE_BOOT_SERVICES_DATA, MEMATTRS_RW);
@@ -179,7 +179,7 @@ static int mem_malloc_resource(void)
 			MEMATTRS_RW);
 #endif
 #ifdef STACK_BASE
-	request_sdram_region("stack", STACK_BASE, STACK_SIZE,
+	request_sdram_region_silent("stack", STACK_BASE, STACK_SIZE,
 			     MEMTYPE_BOOT_SERVICES_DATA, MEMATTRS_RW);
 #endif
 
@@ -302,19 +302,25 @@ postmem_initcall(add_mem_devices);
  * Request a region from the registered sdram
  */
 struct resource *__request_sdram_region(const char *name,
-					resource_size_t start, resource_size_t size)
+					resource_size_t start, resource_size_t size,
+					bool verbose)
 {
 	struct memory_bank *bank;
+	resource_size_t end = start + size - 1;
 
 	for_each_memory_bank(bank) {
 		struct resource *res;
 
-		res = __request_region(bank->res, start, start + size - 1,
+		res = __request_region(bank->res, start, end,
 				       name, IORESOURCE_MEM);
 		if (!IS_ERR(res))
 			return res;
 	}
 
+	if (verbose)
+		pr_err("unable to request SDRAM region for %s at %pa-%pa\n",
+		       name, &start, &end);
+
 	return NULL;
 }
 
@@ -339,7 +345,7 @@ struct resource *reserve_sdram_region(const char *name, resource_size_t start,
 	 * want to set the reserved flag independently of whether
 	 * CONFIG_MEMORY_ATTRIBUTES is enabled or not
 	 */
-	res = __request_sdram_region(name, start, size);
+	res = __request_sdram_region(name, start, size, true);
 	if (!res)
 		return NULL;
 
diff --git a/include/memory.h b/include/memory.h
index 3475e9211b0c..6b7ada641c9d 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -39,7 +39,21 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
 	for_each_resource_region_reverse((bank)->res, region)
 
 struct resource *__request_sdram_region(const char *name,
-					resource_size_t start, resource_size_t size);
+					resource_size_t start, resource_size_t size,
+					bool verbose);
+
+static inline struct resource *sdram_region_with_attrs(struct resource *res,
+						       enum resource_memtype memtype,
+						       unsigned memattrs)
+{
+	if (IS_ENABLED(CONFIG_MEMORY_ATTRIBUTES) && res) {
+		res->type = memtype;
+		res->attrs = memattrs;
+		res->flags |= IORESOURCE_TYPE_VALID;
+	}
+
+	return res;
+}
 
 static inline struct resource *request_sdram_region(const char *name,
 						    resource_size_t start,
@@ -50,14 +64,23 @@ static inline struct resource *request_sdram_region(const char *name,
 	struct resource *res;
 
 	/* IORESOURCE_MEM is implicit for all SDRAM regions */
-	res = __request_sdram_region(name, start, size);
-	if (IS_ENABLED(CONFIG_MEMORY_ATTRIBUTES) && res) {
-		res->type = memtype;
-		res->attrs = memattrs;
-		res->flags |= IORESOURCE_TYPE_VALID;
-	}
+	res = __request_sdram_region(name, start, size, true);
 
-	return res;
+	return sdram_region_with_attrs(res, memtype, memattrs);
+}
+
+static inline struct resource *request_sdram_region_silent(const char *name,
+							   resource_size_t start,
+							   resource_size_t size,
+							   enum resource_memtype memtype,
+							   unsigned memattrs)
+{
+	struct resource *res;
+
+	/* IORESOURCE_MEM is implicit for all SDRAM regions */
+	res = __request_sdram_region(name, start, size, false);
+
+	return sdram_region_with_attrs(res, memtype, memattrs);
 }
 
 struct resource *reserve_sdram_region(const char *name, resource_size_t start,
-- 
2.47.3




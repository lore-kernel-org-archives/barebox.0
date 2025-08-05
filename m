Delivery-date: Tue, 05 Aug 2025 20:37:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXd-007NjY-1D
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 20:37:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXb-0001Dh-Vj
	for lore@pengutronix.de; Tue, 05 Aug 2025 20:37:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ctbntKwTbITktRUYj2OK4N1JUtcozw+rLlj+76dtJY0=; b=tbFcdoW2MulcKKZpjRZLaBB05P
	ImIEt3/3SJTGqrLqoEDVPPczqSO+YB9SdYXQMm1KUbg6b3siDqqRc+UbosZnH83UUe3CE7kUOXION
	fi/ZNqUcwqoIrLST16/DnEXiBXfb5EokwSv4kAECbMFVbkAh8tF+7GiXQqvO27T2yon4RJtUkKeyB
	YCPVCxUgHXSwzprLV+Nvt8BNrVC0pPdof7AJA0zf84YjJ6/tiL11upEiIp1H08WaLjJSXevDuqS6S
	U5a/iqzFhin3NEGA6SEL2Hs9MPcPn3JBo5o+g2l3dTUcydVnmpCoLfPVtBgzweVkgASzJ9ZKlUePC
	oq8iV3SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujMX2-0000000DYVk-1WAX;
	Tue, 05 Aug 2025 18:37:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLjR-0000000DSgn-1STW
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 17:45:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujLjO-0003rm-OF; Tue, 05 Aug 2025 19:45:46 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  5 Aug 2025 19:45:40 +0200
Message-Id: <20250805174541.2606267-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250805174541.2606267-1-a.fatoum@barebox.org>
References: <20250805174541.2606267-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_104549_396509_70684D54 
X-CRM114-Status: GOOD (  13.89  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 7/8] ARM: mmu: share common memory bank remapping code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The code is identical between ARM32 and 64 and is going to get more
complex with the addition of finer grained MMU permissions.

Let's move it to a common code file in anticipation.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmu-common.c | 46 +++++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/mmu_32.c     | 40 ----------------------------------
 arch/arm/cpu/mmu_64.c     | 35 -----------------------------
 3 files changed, 46 insertions(+), 75 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index f3416ae7f7ca..575fb32282d1 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -12,6 +12,7 @@
 #include <asm/barebox-arm.h>
 #include <memory.h>
 #include <zero_page.h>
+#include <range.h>
 #include "mmu-common.h"
 #include <efi/efi-mode.h>
 
@@ -69,6 +70,50 @@ void zero_page_faulting(void)
 	remap_range(0x0, PAGE_SIZE, MAP_FAULT);
 }
 
+static void mmu_remap_memory_banks(void)
+{
+	struct memory_bank *bank;
+	unsigned long text_start = (unsigned long)&_stext;
+	unsigned long code_start = text_start;
+	unsigned long code_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;
+	unsigned long text_size = (unsigned long)&_etext - text_start;
+	unsigned long rodata_start = (unsigned long)&__start_rodata;
+	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
+
+	/*
+	 * Early mmu init will have mapped everything but the initial memory area
+	 * (excluding final OPTEE_SIZE bytes) uncached. We have now discovered
+	 * all memory banks, so let's map all pages, excluding reserved memory areas,
+	 * cacheable and executable.
+	 */
+	for_each_memory_bank(bank) {
+		struct resource *rsv;
+		resource_size_t pos;
+
+		pos = bank->start;
+
+		/* Skip reserved regions */
+		for_each_reserved_region(bank, rsv) {
+			remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
+			pos = rsv->end + 1;
+		}
+
+		if (region_overlap_size(pos, bank->start + bank->size - pos,
+		    text_start, text_size)) {
+			remap_range((void *)pos, text_start - pos, MAP_CACHED);
+			/* skip barebox segments here, will be mapped below */
+			pos = text_start + text_size;
+		}
+
+		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
+	}
+
+	setup_trap_pages();
+
+	remap_range((void *)code_start, code_size, MAP_CODE);
+	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
+}
+
 static int mmu_init(void)
 {
 	if (efi_is_payload())
@@ -94,6 +139,7 @@ static int mmu_init(void)
 	}
 
 	__mmu_init(get_cr() & CR_M);
+	mmu_remap_memory_banks();
 
 	return 0;
 }
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 151e786c9b2d..985a063bbdda 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -19,7 +19,6 @@
 #include <asm/system_info.h>
 #include <asm/sections.h>
 #include <linux/pagemap.h>
-#include <range.h>
 
 #include "mmu_32.h"
 
@@ -579,14 +578,7 @@ void setup_trap_pages(void)
  */
 void __mmu_init(bool mmu_on)
 {
-	struct memory_bank *bank;
 	uint32_t *ttb = get_ttb();
-	unsigned long text_start = (unsigned long)&_stext;
-	unsigned long code_start = text_start;
-	unsigned long code_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;
-	unsigned long text_size = (unsigned long)&_etext - text_start;
-	unsigned long rodata_start = (unsigned long)&__start_rodata;
-	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
 
 	// TODO: remap writable only while remapping?
 	// TODO: What memtype for ttb when barebox is EFI loader?
@@ -604,38 +596,6 @@ void __mmu_init(bool mmu_on)
 					ttb);
 
 	pr_debug("ttb: 0x%p\n", ttb);
-
-	/*
-	 * Early mmu init will have mapped everything but the initial memory area
-	 * (excluding final OPTEE_SIZE bytes) uncached. We have now discovered
-	 * all memory banks, so let's map all pages, excluding reserved memory areas,
-	 * cacheable and executable.
-	 */
-	for_each_memory_bank(bank) {
-		struct resource *rsv;
-		resource_size_t pos;
-
-		pos = bank->start;
-
-		/* Skip reserved regions */
-		for_each_reserved_region(bank, rsv) {
-			remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
-			pos = rsv->end + 1;
-		}
-
-		if (region_overlap_size(pos, bank->start + bank->size - pos, text_start, text_size)) {
-			remap_range((void *)pos, code_start - pos, MAP_CACHED);
-			/* skip barebox segments here, will be mapped below */
-			pos = text_start + text_size;
-		}
-
-		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
-	}
-
-	setup_trap_pages();
-
-	remap_range((void *)code_start, code_size, MAP_CODE);
-	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
 }
 
 /*
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index a770be7ed611..e7d2e9697a7e 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -10,7 +10,6 @@
 #include <init.h>
 #include <mmu.h>
 #include <errno.h>
-#include <range.h>
 #include <zero_page.h>
 #include <linux/sizes.h>
 #include <asm/memory.h>
@@ -374,13 +373,6 @@ void setup_trap_pages(void)
 void __mmu_init(bool mmu_on)
 {
 	uint64_t *ttb = get_ttb();
-	struct memory_bank *bank;
-	unsigned long text_start = (unsigned long)&_stext;
-	unsigned long code_start = text_start;
-	unsigned long code_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;
-	unsigned long text_size = (unsigned long)&_etext - text_start;
-	unsigned long rodata_start = (unsigned long)&__start_rodata;
-	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
 
 	// TODO: remap writable only while remapping?
 	// TODO: What memtype for ttb when barebox is EFI loader?
@@ -394,33 +386,6 @@ void __mmu_init(bool mmu_on)
 		 *   the ttb will get corrupted.
 		 */
 		pr_crit("Can't request SDRAM region for ttb at %p\n", ttb);
-
-	for_each_memory_bank(bank) {
-		struct resource *rsv;
-		resource_size_t pos;
-
-		pos = bank->start;
-
-		/* Skip reserved regions */
-		for_each_reserved_region(bank, rsv) {
-			remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
-			pos = rsv->end + 1;
-		}
-
-		if (region_overlap_size(pos, bank->start + bank->size - pos,
-		    text_start, text_size)) {
-			remap_range((void *)pos, text_start - pos, MAP_CACHED);
-			/* skip barebox segments here, will be mapped below */
-			pos = text_start + text_size;
-		}
-
-		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
-	}
-
-	setup_trap_pages();
-
-	remap_range((void *)code_start, code_size, MAP_CODE);
-	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
 }
 
 void mmu_disable(void)
-- 
2.39.5




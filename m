Delivery-date: Fri, 12 May 2023 13:12:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgv-00F2Vl-BI
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:12:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgq-0005DH-E5
	for lore@pengutronix.de; Fri, 12 May 2023 13:12:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mCI8DGMju6eKLSsBFYLUF0FZ8INP7uvcM1o6uDRqBlE=; b=4/lNNeCffSWHmpDpx6YMrXeluE
	OHocUugBBj0lZjCFW12LnFpEbVh0FlYenAqsvQyG0toCHgwdqR1gM/PQ/vXWxbD4fSK80WIa827eL
	cDb6pHXr3kwxoMrGqkv4u72bo14RVKFaiYMjM39ID50z4ikxIKz+1lcFwhJxKgeY2ezo8+Md0cbdJ
	XXwFQ638EaEV3DiZPTkQHzaXsOcY8EMqKr8YQAUKn3ihULZVK+C9Y8DA7dxHONo/iRIfhBvxiMdWQ
	Ihuf6jy62vfCgNn/XATz+AslG3iwACy1Pb2tIlKAJ9Q/xfT52642h5QOJAVlHKnEMR2B/L7+K8A/q
	4w6ExJxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfh-00BkNg-1E;
	Fri, 12 May 2023 11:10:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfK-00Bk0x-2v
	for barebox@bombadil.infradead.org;
	Fri, 12 May 2023 11:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=mCI8DGMju6eKLSsBFYLUF0FZ8INP7uvcM1o6uDRqBlE=; b=lOCdq+PsjWLn4Lj+b7D/CHiMhv
	yYznIpoYflwUTze7wuE5wYfDdAyKWj/GbRFXdn4y+bmd4+Zog+hRI1gcD2KHvBSEvmZkOe2qb7W+u
	yHOlatACMd2Rmrs4V5yZvcMob+8TZaFn0XLsNd3VRCIX3/lktacOwRJrz2Y5zwMX6owkMQNxViBps
	dLmz7957N3pMezRoY5qYTyPPX/PFkIlXOxI2Qg+m8qFhMiz+BD6lvhWsbewOx2zghYII9VGx7rU5n
	qEGIO1XGhCoTw0I18puN71Poh1V/BLDH2iQBHRFdu2U3e/oRSkc4rD9imjJ3OK2kprJ4VMF80IcIv
	ApJL7TiQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfF-009833-1D
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf9-0003ge-8T; Fri, 12 May 2023 13:10:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-002wkD-L6; Fri, 12 May 2023 13:10:14 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055Dy-5W; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:09:50 +0200
Message-Id: <20230512111008.1120833-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121021_491719_7A0EBC57 
X-CRM114-Status: GOOD (  14.15  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/27] ARM: mmu32: implement zero_page_*()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have functions to access the zero page and to make it faulting again.
Implement them for AArch32.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Kconfig      |  3 ++-
 arch/arm/cpu/mmu-common.c | 11 +++++++++++
 arch/arm/cpu/mmu_32.c     |  5 ++---
 arch/arm/cpu/mmu_64.c     | 10 ----------
 4 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 26f07043fe..40dd35833a 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -11,6 +11,7 @@ config CPU_32
 	select HAVE_MOD_ARCH_SPECIFIC
 	select HAS_DMA
 	select HAVE_PBL_IMAGE
+	select ARCH_HAS_ZERO_PAGE
 
 config CPU_64
 	bool
@@ -19,6 +20,7 @@ config CPU_64
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DMA
 	select ARCH_WANT_FRAME_POINTERS
+	select ARCH_HAS_ZERO_PAGE
 
 # Select CPU types depending on the architecture selected. This selects
 # which CPUs we support in the kernel image, and the compiler instruction
@@ -92,7 +94,6 @@ config CPU_V8
 	select ARM_EXCEPTIONS
 	select GENERIC_FIND_NEXT_BIT
 	select ARCH_HAS_STACK_DUMP
-	select ARCH_HAS_ZERO_PAGE
 
 config CPU_XSC3
         bool
diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index e6cc3b974f..02f512c2c6 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -11,6 +11,7 @@
 #include <asm/system.h>
 #include <asm/barebox-arm.h>
 #include <memory.h>
+#include <zero_page.h>
 #include "mmu-common.h"
 
 void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
@@ -57,6 +58,16 @@ void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
 	free(mem);
 }
 
+void zero_page_access(void)
+{
+	arch_remap_range(0x0, PAGE_SIZE, MAP_CACHED);
+}
+
+void zero_page_faulting(void)
+{
+	arch_remap_range(0x0, PAGE_SIZE, MAP_FAULT);
+}
+
 static int mmu_init(void)
 {
 	if (list_empty(&memory_banks)) {
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index a1ecc49f03..7b31938ecd 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -9,6 +9,7 @@
 #include <init.h>
 #include <mmu.h>
 #include <errno.h>
+#include <zero_page.h>
 #include <linux/sizes.h>
 #include <asm/memory.h>
 #include <asm/barebox-arm.h>
@@ -362,7 +363,6 @@ static int set_vector_table(unsigned long adr)
 static void create_zero_page(void)
 {
 	struct resource *zero_sdram;
-	u32 *zero;
 
 	zero_sdram = request_sdram_region("zero page", 0x0, PAGE_SIZE);
 	if (zero_sdram) {
@@ -372,8 +372,7 @@ static void create_zero_page(void)
 		 */
 		pr_debug("zero page is in SDRAM area, currently not supported\n");
 	} else {
-		zero = arm_create_pte(0x0, pte_flags_uncached);
-		zero[0] = 0;
+		zero_page_faulting();
 		pr_debug("Created zero page\n");
 	}
 }
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 0639d0f1ce..c7c16b527b 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -172,16 +172,6 @@ static void mmu_enable(void)
 	set_cr(get_cr() | CR_M | CR_C | CR_I);
 }
 
-void zero_page_access(void)
-{
-	arch_remap_range(0x0, PAGE_SIZE, MAP_CACHED);
-}
-
-void zero_page_faulting(void)
-{
-	arch_remap_range(0x0, PAGE_SIZE, MAP_FAULT);
-}
-
 /*
  * Prepare MMU for usage enable it.
  */
-- 
2.39.2




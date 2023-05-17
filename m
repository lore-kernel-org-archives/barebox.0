Delivery-date: Wed, 17 May 2023 11:05:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD65-0048cn-Vk
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:05:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD63-0004uZ-Dt
	for lore@pengutronix.de; Wed, 17 May 2023 11:05:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mCI8DGMju6eKLSsBFYLUF0FZ8INP7uvcM1o6uDRqBlE=; b=Lkc4yimdi3WtJlsMIYy1ezjsuN
	ToDPcf3v128yJc6Bc6ux3ua6qh6y/o+26GvBoW4HhLIEj1OKJYqCCrH3MU6ZweV58up9xIlKBPHYr
	l5/vMt56czhEOtKKOiHqaoNQeOb2raffvdkSdXY1OyqDQcAOIR7Pe6vNZ3Q95CRqztlidWfLmb3Nm
	f7aHtrGMe++Aquagf/kqq+Pv2W5+pNCnFAp9hza/QoQFnpeFErwHUmt/NHlAYa9xp5prru6QO3Vz6
	x2/UPIyr5CKjkd1tT7Im+0zx9RyWSl10NQvyU7WrFf6SjLJD3VF0HH0wZCbBCnF+H6UMSiwNFzy1d
	DhgUaJfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4o-008yZz-0z;
	Wed, 17 May 2023 09:04:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4m-008yXW-11
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:04:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=mCI8DGMju6eKLSsBFYLUF0FZ8INP7uvcM1o6uDRqBlE=; b=hCWJ4N39KFbMFUqh14+cx47aUa
	STc5wm2kr5uVd6lLt0yXnv6wIbSKzDdnPUWhbvIXy8eMj3egjeAUDPRY+q3+VJo7Sjap0pkaUS4Zm
	J2gjrqHgt627ipeLJTjoVpoTF/3wnXcpaspqfGifJyb17nyoIr5KQ5tfYDpQPBGjJxa4CgWiCdBQt
	sxKLm/DSIIyE3avhEX4n1j3QZCC5B+PnUm0ozbpUUg9H2KKSGb8Cw68xfLG4hyCxCIlAv2fjs9Ki2
	23pCum2xPTzRT/GOx1uLUGVSRQZtlRlU6E7IKKwEPSdcTLHNsoy2DLq8bE7elMREt0Em/jGurmLOS
	INb7HYbw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pzD4j-004wsD-2i
	for barebox@lists.infradead.org; Wed, 17 May 2023 09:04:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4S-0003wn-Jt; Wed, 17 May 2023 11:03:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4R-000o6W-NE; Wed, 17 May 2023 11:03:43 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00Gart-RA; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:22 +0200
Message-Id: <20230517090340.3954615-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100401_157075_25D15B37 
X-CRM114-Status: GOOD (  14.68  )
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
Subject: [PATCH v2 16/34] ARM: mmu32: implement zero_page_*()
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




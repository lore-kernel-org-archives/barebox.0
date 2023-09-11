Delivery-date: Mon, 11 Sep 2023 17:10:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfiZ2-00Bcy7-7i
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 17:10:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfiYz-0005a3-Up
	for lore@pengutronix.de; Mon, 11 Sep 2023 17:10:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2c1x6Gy8GLjZL37svwS6ifjk7pNbrTU2d7/5pdKtV6w=; b=Un/G/c/EjO1OXSwy4uhZi00Mit
	QqI29xyW0rHOAAN4y4YERQ5aa3mqgz110qsKedw8tvWRYCeXuxxHIR/l1UDp5bpn1+3lWqjcIdFg8
	8sZo9CT+JJ3qMid6Pl9ZOZQsU39XlPRG7zqFmFika0ThhLEjy+mgLH+tW6pjoJ0PUwHH4nfnlAoZS
	HP2wbWAogz8oWFOzk3khGaVe6PunJ11Q+UFiBJuOvRzAIwOOtcWrUi3fMTvNI7d0T3Y0/cL44UCHp
	DRREoLV1PNSMHYyYKsrJzVxN6akM+pyJiIQ4RFAW8AaNX1/npJG5lTPAOY+TRC0YzkVuRKXGThx/N
	bBfUcNsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfiXM-000pSo-0J;
	Mon, 11 Sep 2023 15:09:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfiXG-000pOq-13
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:09:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX9-0004xU-JX; Mon, 11 Sep 2023 17:09:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX9-005a6B-5G; Mon, 11 Sep 2023 17:09:03 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX8-00F2ri-2P;
	Mon, 11 Sep 2023 17:09:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 17:08:59 +0200
Message-Id: <20230911150900.3584523-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
References: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_080910_515679_3E7EFD24 
X-CRM114-Status: GOOD (  21.32  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] ARM: mmu: catch stack overflowing into TTB with stack guard page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While barebox stack is often quite generous, due to its default of 32K,
bugs can make it overflow and on ARM, this clobbers the page tables
leading to even harder to debug problems than usual.

Let's add a 4K buffer zone between the page tables and the stack and
configure the MMU to trap all accesses into it.

Note that hitting the stack guard page can be silent if the exception
handler places it's frame there. Still a hanging barebox may be better
than an erratically behaving one.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/interrupts_32.c       | 21 +++++++++++++++--
 arch/arm/cpu/interrupts_64.c       | 38 +++++++++++++++++++++++-------
 arch/arm/cpu/mmu_32.c              | 16 +++++++++++++
 arch/arm/cpu/mmu_64.c              | 15 ++++++++++++
 arch/arm/include/asm/barebox-arm.h | 18 +++++++++++++-
 lib/Kconfig.hardening              | 10 ++++++++
 6 files changed, 107 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/interrupts_32.c b/arch/arm/cpu/interrupts_32.c
index 5bc790a796fb..468dcdd30e93 100644
--- a/arch/arm/cpu/interrupts_32.c
+++ b/arch/arm/cpu/interrupts_32.c
@@ -8,7 +8,9 @@
 
 #include <common.h>
 #include <abort.h>
+#include <linux/sizes.h>
 #include <asm/ptrace.h>
+#include <asm/barebox-arm.h>
 #include <asm/unwind.h>
 #include <init.h>
 
@@ -106,6 +108,22 @@ void do_prefetch_abort (struct pt_regs *pt_regs)
 	do_exception(pt_regs);
 }
 
+static const char *data_abort_reason(ulong far)
+{
+	ulong guard_page;
+
+	if (far < PAGE_SIZE)
+		return "NULL pointer dereference";
+
+	if (IS_ENABLED(CONFIG_STACK_GUARD_PAGE)) {
+		guard_page = arm_mem_guard_page_get();
+		if (guard_page <= far && far < guard_page + PAGE_SIZE)
+			return "stack overflow";
+	}
+
+	return "paging request";
+}
+
 /**
  * The CPU catches a data abort. That really should not happen!
  * @param[in] pt_regs Register set content when the accident happens
@@ -119,8 +137,7 @@ void do_data_abort (struct pt_regs *pt_regs)
 	asm volatile ("mrc     p15, 0, %0, c6, c0, 0" : "=r" (far) : : "cc");
 
 	printf("unable to handle %s at address 0x%08x\n",
-			far < PAGE_SIZE ? "NULL pointer dereference" :
-			"paging request", far);
+	       data_abort_reason(far), far);
 
 	do_exception(pt_regs);
 }
diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index d844915fee24..b3e7da179756 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -6,6 +6,7 @@
 #include <common.h>
 #include <abort.h>
 #include <asm/ptrace.h>
+#include <asm/barebox-arm.h>
 #include <asm/unwind.h>
 #include <init.h>
 #include <asm/system.h>
@@ -142,17 +143,38 @@ void do_bad_error(struct pt_regs *pt_regs)
 extern volatile int arm_ignore_data_abort;
 extern volatile int arm_data_abort_occurred;
 
-void do_sync(struct pt_regs *pt_regs, unsigned int esr, unsigned long far)
+static const char *data_abort_reason(ulong far)
 {
-	if ((esr >> ESR_ELx_EC_SHIFT) == ESR_ELx_EC_DABT_CUR &&
-			arm_ignore_data_abort) {
-		arm_data_abort_occurred = 1;
-		pt_regs->elr += 4;
-		return;
+	ulong guard_page;
+
+	if (far < PAGE_SIZE)
+		return "NULL pointer dereference: ";
+
+	if (IS_ENABLED(CONFIG_STACK_GUARD_PAGE)) {
+		guard_page = arm_mem_guard_page_get();
+		if (guard_page <= far && far < guard_page + PAGE_SIZE)
+			return "Stack overflow: ";
 	}
 
-	printf("%s exception (ESR 0x%08x) at 0x%016lx\n", esr_get_class_string(esr),
-	       esr, far);
+	return NULL;
+}
+
+void do_sync(struct pt_regs *pt_regs, unsigned int esr, unsigned long far)
+{
+	const char *extra = NULL;
+
+	if ((esr >> ESR_ELx_EC_SHIFT) == ESR_ELx_EC_DABT_CUR) {
+		if (arm_ignore_data_abort) {
+			arm_data_abort_occurred = 1;
+			pt_regs->elr += 4;
+			return;
+		}
+
+		extra = data_abort_reason(far);
+	}
+
+	printf("%s%s exception (ESR 0x%08x) at 0x%016lx\n", extra ?: "",
+	       esr_get_class_string(esr), esr, far);
 	do_exception(pt_regs);
 }
 
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index c5d64aa88bac..07b225067796 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -475,11 +475,27 @@ static void create_zero_page(void)
 	pr_debug("Created zero page\n");
 }
 
+static void create_guard_page(void)
+{
+	ulong guard_page;
+
+	if (!IS_ENABLED(CONFIG_STACK_GUARD_PAGE))
+		return;
+
+	guard_page = arm_mem_guard_page_get();
+	request_sdram_region("guard page", guard_page, PAGE_SIZE);
+	remap_range((void *)guard_page, PAGE_SIZE, MAP_FAULT);
+
+	pr_debug("Created guard page\n");
+}
+
 /*
  * Map vectors and zero page
  */
 static void vectors_init(void)
 {
+	create_guard_page();
+
 	/*
 	 * First try to use the vectors where they actually are, works
 	 * on ARMv7 and later.
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 3124f8f3a987..fb57260c90ae 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -204,6 +204,20 @@ static void mmu_enable(void)
 	set_cr(get_cr() | CR_M | CR_C | CR_I);
 }
 
+static void create_guard_page(void)
+{
+	ulong guard_page;
+
+	if (!IS_ENABLED(CONFIG_STACK_GUARD_PAGE))
+		return;
+
+	guard_page = arm_mem_guard_page_get();
+	request_sdram_region("guard page", guard_page, PAGE_SIZE);
+	remap_range((void *)guard_page, PAGE_SIZE, MAP_FAULT);
+
+	pr_debug("Created guard page\n");
+}
+
 /*
  * Prepare MMU for usage enable it.
  */
@@ -241,6 +255,7 @@ void __mmu_init(bool mmu_on)
 
 	/* Make zero page faulting to catch NULL pointer derefs */
 	zero_page_faulting();
+	create_guard_page();
 }
 
 void mmu_disable(void)
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index aceb7fdf74f8..382fa8505a66 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -15,6 +15,7 @@
 #include <linux/sizes.h>
 #include <asm-generic/memory_layout.h>
 #include <linux/kernel.h>
+#include <linux/pagemap.h>
 #include <linux/types.h>
 #include <linux/compiler.h>
 #include <asm/barebox-arm-head.h>
@@ -82,9 +83,19 @@ static inline unsigned long arm_mem_stack(unsigned long endmem)
 	return arm_mem_scratch(endmem) - STACK_SIZE;
 }
 
-static inline unsigned long arm_mem_ttb(unsigned long endmem)
+static inline unsigned long arm_mem_guard_page(unsigned long endmem)
 {
 	endmem = arm_mem_stack(endmem);
+
+	if (!IS_ENABLED(CONFIG_STACK_GUARD_PAGE))
+		return endmem;
+
+	return ALIGN_DOWN(endmem, PAGE_SIZE) - PAGE_SIZE;
+}
+
+static inline unsigned long arm_mem_ttb(unsigned long endmem)
+{
+	endmem = arm_mem_guard_page(endmem);
 	endmem = ALIGN_DOWN(endmem, ARM_EARLY_PAGETABLE_SIZE) - ARM_EARLY_PAGETABLE_SIZE;
 
 	return endmem;
@@ -121,6 +132,11 @@ static inline const void *arm_mem_scratch_get(void)
 	return (const void *)arm_mem_scratch(arm_mem_endmem_get());
 }
 
+static inline unsigned long arm_mem_guard_page_get(void)
+{
+	return arm_mem_guard_page(arm_mem_endmem_get());
+}
+
 static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 						  unsigned long endmem,
 						  unsigned long size)
diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index 503fdf7c0cc5..aad0d8b97024 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -1,5 +1,15 @@
 menu "Hardening options"
 
+config STACK_GUARD_PAGE
+	bool "Place guard page to catch stack overflows"
+	depends on ARM && MMU
+	help
+	  When enabled, barebox places a faulting guard page to catch total
+	  stack usage exceeding CONFIG_STACK_SIZE. On overflows, that hit
+	  the reserved 4KiB, barebox will panic and report a stack overflow.
+	  The report may not always succeed if the stack overflow impacts
+	  operation of the exception handler.
+
 config STACKPROTECTOR
 	bool
 
-- 
2.39.2



